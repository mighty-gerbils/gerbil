(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1708289483)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl244933_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp251093 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl244933_ __tmp251093))
           (let ()
             (declare (not safe))
             (hash-put! _tbl244933_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl244933_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl244933_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl244933_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl244933_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx244916_ . _args244918_)
        (let ((__tmp251095
               (lambda ()
                 (declare (not safe))
                 (if (null? _args244918_)
                     (gxc#compile-e__0 _stx244916_)
                     (let ((_arg1244923_ (car _args244918_))
                           (_rest244925_ (cdr _args244918_)))
                       (if (null? _rest244925_)
                           (gxc#compile-e__1 _stx244916_ _arg1244923_)
                           (let ((_arg2244928_ (car _rest244925_))
                                 (_rest244930_ (cdr _rest244925_)))
                             (if (null? _rest244930_)
                                 (gxc#compile-e__2
                                  _stx244916_
                                  _arg1244923_
                                  _arg2244928_)
                                 (apply gxc#compile-e
                                        _stx244916_
                                        _arg1244923_
                                        _arg2244928_
                                        _rest244930_))))))))
              (__tmp251094 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp251095
           gxc#current-compile-methods
           __tmp251094))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl244913_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp251096 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl244913_ __tmp251096))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl244913_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl244913_ '%#call gxc#basic-expression-type-call%))
           _tbl244913_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx244896_ . _args244898_)
        (let ((__tmp251098
               (lambda ()
                 (declare (not safe))
                 (if (null? _args244898_)
                     (gxc#compile-e__0 _stx244896_)
                     (let ((_arg1244903_ (car _args244898_))
                           (_rest244905_ (cdr _args244898_)))
                       (if (null? _rest244905_)
                           (gxc#compile-e__1 _stx244896_ _arg1244903_)
                           (let ((_arg2244908_ (car _rest244905_))
                                 (_rest244910_ (cdr _rest244905_)))
                             (if (null? _rest244910_)
                                 (gxc#compile-e__2
                                  _stx244896_
                                  _arg1244903_
                                  _arg2244908_)
                                 (apply gxc#compile-e
                                        _stx244896_
                                        _arg1244903_
                                        _arg2244908_
                                        _rest244910_))))))))
              (__tmp251097 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp251098
           gxc#current-compile-methods
           __tmp251097))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl244893_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp251099 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl244893_ __tmp251099))
           (let ()
             (declare (not safe))
             (hash-put! _tbl244893_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl244893_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl244893_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl244893_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl244893_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl244893_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl244893_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl244893_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl244893_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl244893_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl244893_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl244893_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl244893_ '%#set! gxc#collect-body-setq%))
           _tbl244893_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx244876_ . _args244878_)
        (let ((__tmp251101
               (lambda ()
                 (declare (not safe))
                 (if (null? _args244878_)
                     (gxc#compile-e__0 _stx244876_)
                     (let ((_arg1244883_ (car _args244878_))
                           (_rest244885_ (cdr _args244878_)))
                       (if (null? _rest244885_)
                           (gxc#compile-e__1 _stx244876_ _arg1244883_)
                           (let ((_arg2244888_ (car _rest244885_))
                                 (_rest244890_ (cdr _rest244885_)))
                             (if (null? _rest244890_)
                                 (gxc#compile-e__2
                                  _stx244876_
                                  _arg1244883_
                                  _arg2244888_)
                                 (apply gxc#compile-e
                                        _stx244876_
                                        _arg1244883_
                                        _arg2244888_
                                        _rest244890_))))))))
              (__tmp251100 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp251101
           gxc#current-compile-methods
           __tmp251100))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl244873_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp251102 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl244873_ __tmp251102))
           (let ()
             (declare (not safe))
             (hash-put! _tbl244873_ '%#begin gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl244873_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl244873_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl244873_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl244873_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl244873_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl244873_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl244873_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl244873_ '%#ref gxc#basic-expression-type-ref%))
           _tbl244873_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx244856_ . _args244858_)
        (let ((__tmp251104
               (lambda ()
                 (declare (not safe))
                 (if (null? _args244858_)
                     (gxc#compile-e__0 _stx244856_)
                     (let ((_arg1244863_ (car _args244858_))
                           (_rest244865_ (cdr _args244858_)))
                       (if (null? _rest244865_)
                           (gxc#compile-e__1 _stx244856_ _arg1244863_)
                           (let ((_arg2244868_ (car _rest244865_))
                                 (_rest244870_ (cdr _rest244865_)))
                             (if (null? _rest244870_)
                                 (gxc#compile-e__2
                                  _stx244856_
                                  _arg1244863_
                                  _arg2244868_)
                                 (apply gxc#compile-e
                                        _stx244856_
                                        _arg1244863_
                                        _arg2244868_
                                        _rest244870_))))))))
              (__tmp251103 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp251104
           gxc#current-compile-methods
           __tmp251103))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl244853_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp251105 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl244853_ __tmp251105))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl244853_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl244853_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl244853_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl244853_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl244853_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx244836_ . _args244838_)
        (let ((__tmp251107
               (lambda ()
                 (declare (not safe))
                 (if (null? _args244838_)
                     (gxc#compile-e__0 _stx244836_)
                     (let ((_arg1244843_ (car _args244838_))
                           (_rest244845_ (cdr _args244838_)))
                       (if (null? _rest244845_)
                           (gxc#compile-e__1 _stx244836_ _arg1244843_)
                           (let ((_arg2244848_ (car _rest244845_))
                                 (_rest244850_ (cdr _rest244845_)))
                             (if (null? _rest244850_)
                                 (gxc#compile-e__2
                                  _stx244836_
                                  _arg1244843_
                                  _arg2244848_)
                                 (apply gxc#compile-e
                                        _stx244836_
                                        _arg1244843_
                                        _arg2244848_
                                        _rest244850_))))))))
              (__tmp251106 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp251107
           gxc#current-compile-methods
           __tmp251106))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx244739_)
        (let* ((___stx249013249014_ _stx244739_)
               (_g244742244762_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249013249014_)))))
          (let ((___kont249015249016_
                 (lambda (_L244806_ _L244807_)
                   (let ((_sym244825_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244807_))))
                     (if (let ((__tmp251108 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp251108 _sym244825_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym244825_))
                         (let ((_type244826244828_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L244806_))))
                           (if _type244826244828_
                               (let ((_type244831_ _type244826244828_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym244825_
                                  _type244831_))
                               '#f))))))
                (___kont249017249018_ (lambda () '#!void)))
            (let ((___match249046249047_
                   (lambda (_e244748244774_
                            _hd244747244777_
                            _tl244746244779_
                            _e244751244782_
                            _hd244750244785_
                            _tl244749244787_
                            _e244754244790_
                            _hd244753244793_
                            _tl244752244795_
                            _e244757244798_
                            _hd244756244801_
                            _tl244755244803_)
                     (let ((_L244806_ _hd244756244801_)
                           (_L244807_ _hd244753244793_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L244807_))
                           (___kont249015249016_ _L244806_ _L244807_)
                           (___kont249017249018_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx249013249014_))
                  (let ((_e244748244774_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx249013249014_))))
                    (let ((_tl244746244779_
                           (let ()
                             (declare (not safe))
                             (##cdr _e244748244774_)))
                          (_hd244747244777_
                           (let ()
                             (declare (not safe))
                             (##car _e244748244774_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl244746244779_))
                          (let ((_e244751244782_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl244746244779_))))
                            (let ((_tl244749244787_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e244751244782_)))
                                  (_hd244750244785_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e244751244782_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd244750244785_))
                                  (let ((_e244754244790_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd244750244785_))))
                                    (let ((_tl244752244795_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e244754244790_)))
                                          (_hd244753244793_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e244754244790_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl244752244795_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl244749244787_))
                                              (let ((_e244757244798_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl244749244787_))))
                                                (let ((_tl244755244803_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e244757244798_)))
                                                      (_hd244756244801_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e244757244798_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244755244803_))
                                                      (___match249046249047_
                                                       _e244748244774_
                                                       _hd244747244777_
                                                       _tl244746244779_
                                                       _e244751244782_
                                                       _hd244750244785_
                                                       _tl244749244787_
                                                       _e244754244790_
                                                       _hd244753244793_
                                                       _tl244752244795_
                                                       _e244757244798_
                                                       _hd244756244801_
                                                       _tl244755244803_)
                                                      (___kont249017249018_))))
                                              (___kont249017249018_))
                                          (___kont249017249018_))))
                                  (___kont249017249018_))))
                          (___kont249017249018_))))
                  (___kont249017249018_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx244595_)
        (let* ((___stx249049249050_ _stx244595_)
               (_g244598244629_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249049249050_)))))
          (let ((___kont249051249052_
                 (lambda (_L244711_ _L244712_)
                   (let ((_sym244728_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244712_))))
                     (if (let ((__tmp251109 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp251109 _sym244728_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym244728_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym244728_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym244728_))
                             (let ((_type244729244731_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L244711_))))
                               (if _type244729244731_
                                   (let ((_type244734_ _type244729244731_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym244728_
                                      _type244734_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L244711_)))))
                (___kont249053249054_
                 (lambda (_L244658_ _L244659_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L244658_)))))
            (let ((___match249082249083_
                   (lambda (_e244604244679_
                            _hd244603244682_
                            _tl244602244684_
                            _e244607244687_
                            _hd244606244690_
                            _tl244605244692_
                            _e244610244695_
                            _hd244609244698_
                            _tl244608244700_
                            _e244613244703_
                            _hd244612244706_
                            _tl244611244708_)
                     (let ((_L244711_ _hd244612244706_)
                           (_L244712_ _hd244609244698_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L244712_))
                           (___kont249051249052_ _L244711_ _L244712_)
                           (___kont249053249054_
                            _hd244612244706_
                            _hd244606244690_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx249049249050_))
                  (let ((_e244604244679_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx249049249050_))))
                    (let ((_tl244602244684_
                           (let ()
                             (declare (not safe))
                             (##cdr _e244604244679_)))
                          (_hd244603244682_
                           (let ()
                             (declare (not safe))
                             (##car _e244604244679_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl244602244684_))
                          (let ((_e244607244687_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl244602244684_))))
                            (let ((_tl244605244692_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e244607244687_)))
                                  (_hd244606244690_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e244607244687_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd244606244690_))
                                  (let ((_e244610244695_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd244606244690_))))
                                    (let ((_tl244608244700_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e244610244695_)))
                                          (_hd244609244698_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e244610244695_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl244608244700_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl244605244692_))
                                              (let ((_e244613244703_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl244605244692_))))
                                                (let ((_tl244611244708_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e244613244703_)))
                                                      (_hd244612244706_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e244613244703_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244611244708_))
                                                      (___match249082249083_
                                                       _e244604244679_
                                                       _hd244603244682_
                                                       _tl244602244684_
                                                       _e244607244687_
                                                       _hd244606244690_
                                                       _tl244605244692_
                                                       _e244610244695_
                                                       _hd244609244698_
                                                       _tl244608244700_
                                                       _e244613244703_
                                                       _hd244612244706_
                                                       _tl244611244708_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g244598244629_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g244598244629_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl244605244692_))
                                              (let ((_e244624244650_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl244605244692_))))
                                                (let ((_tl244622244655_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e244624244650_)))
                                                      (_hd244623244653_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e244624244650_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244622244655_))
                                                      (___kont249053249054_
                                                       _hd244623244653_
                                                       _hd244606244690_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g244598244629_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g244598244629_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl244605244692_))
                                      (let ((_e244624244650_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl244605244692_))))
                                        (let ((_tl244622244655_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e244624244650_)))
                                              (_hd244623244653_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e244624244650_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl244622244655_))
                                              (___kont249053249054_
                                               _hd244623244653_
                                               _hd244606244690_)
                                              (let ()
                                                (declare (not safe))
                                                (_g244598244629_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g244598244629_))))))
                          (let () (declare (not safe)) (_g244598244629_)))))
                  (let () (declare (not safe)) (_g244598244629_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx244380_)
        (letrec ((_collect-e244382_
                  (lambda (_hd244539_ _expr244540_)
                    (let* ((___stx249105249106_ _hd244539_)
                           (_g244543244553_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx249105249106_)))))
                      (let ((___kont249107249108_
                             (lambda (_L244573_)
                               (let ((_sym244584_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L244573_))))
                                 (if (let ((__tmp251110
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp251110 _sym244584_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym244584_))
                                     (let ((_type244585244587_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr244540_))))
                                       (if _type244585244587_
                                           (let ((_type244590_
                                                  _type244585244587_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym244584_
                                              _type244590_
                                              '#t))
                                           '#f))))))
                            (___kont249109249110_ (lambda () '#!void)))
                        (let ((___match249118249119_
                               (lambda (_e244548244565_
                                        _hd244547244568_
                                        _tl244546244570_)
                                 (let ((_L244573_ _hd244547244568_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L244573_))
                                       (___kont249107249108_ _L244573_)
                                       (___kont249109249110_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx249105249106_))
                              (let ((_e244548244565_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx249105249106_))))
                                (let ((_tl244546244570_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e244548244565_)))
                                      (_hd244547244568_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e244548244565_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl244546244570_))
                                      (___match249118249119_
                                       _e244548244565_
                                       _hd244547244568_
                                       _tl244546244570_)
                                      (___kont249109249110_))))
                              (___kont249109249110_))))))))
          (let* ((_g244384244419_
                  (lambda (_g244385244416_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g244385244416_))))
                 (_g244383244536_
                  (lambda (_g244385244422_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g244385244422_))
                        (let ((_e244391244424_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g244385244422_))))
                          (let ((_hd244390244427_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e244391244424_)))
                                (_tl244389244429_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e244391244424_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl244389244429_))
                                (let ((_e244394244432_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl244389244429_))))
                                  (let ((_hd244393244435_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244394244432_)))
                                        (_tl244392244437_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244394244432_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd244393244435_))
                                        (let ((_g251111_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd244393244435_
                                                  '0))))
                                          (begin
                                            (let ((_g251112_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g251111_)
                                                         (##vector-length
                                                          _g251111_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g251112_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g251112_)))
                                            (let ((_target244395244440_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g251111_
                                                      0)))
                                                  (_tl244397244442_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g251111_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl244397244442_))
                                                  (letrec ((_loop244398244445_
                                                            (lambda (_hd244396244448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr244402244450_
                             _hd244403244452_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd244396244448_))
                          (let ((_e244399244455_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd244396244448_))))
                            (let ((_lp-hd244400244458_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e244399244455_)))
                                  (_lp-tl244401244460_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e244399244455_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd244400244458_))
                                  (let ((_e244408244463_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd244400244458_))))
                                    (let ((_hd244407244466_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e244408244463_)))
                                          (_tl244406244468_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e244408244463_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl244406244468_))
                                          (let ((_e244411244471_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl244406244468_))))
                                            (let ((_hd244410244474_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e244411244471_)))
                                                  (_tl244409244476_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e244411244471_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl244409244476_))
                                                  (let ((__tmp251117
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd244410244474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr244402244450_)))
                (__tmp251116
                 (let ()
                   (declare (not safe))
                   (cons _hd244407244466_ _hd244403244452_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop244398244445_
                                                     _lp-tl244401244460_
                                                     __tmp251117
                                                     __tmp251116))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244384244419_
                                                     _g244385244422_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g244384244419_
                                             _g244385244422_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g244384244419_ _g244385244422_)))))
                          (let ((_expr244404244479_
                                 (reverse _expr244402244450_))
                                (_hd244405244481_ (reverse _hd244403244452_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl244392244437_))
                                (let ((_e244414244484_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl244392244437_))))
                                  (let ((_hd244413244487_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244414244484_)))
                                        (_tl244412244489_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244414244484_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl244412244489_))
                                        ((lambda (_L244492_
                                                  _L244493_
                                                  _L244494_)
                                           (for-each
                                            _collect-e244382_
                                            (let ((__tmp251113
                                                   (lambda (_g244514244517_
                                                            _g244515244519_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g244514244517_
                                                             _g244515244519_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp251113
                                                      '()
                                                      _L244494_))
                                            (let ((__tmp251114
                                                   (lambda (_g244521244524_
                                                            _g244522244526_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g244521244524_
                                                             _g244522244526_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp251114
                                                      '()
                                                      _L244493_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp251115
                                                   (lambda (_g244528244531_
                                                            _g244529244533_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g244528244531_
                                                             _g244529244533_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp251115
                                                      '()
                                                      _L244493_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L244492_)))
                                         _hd244413244487_
                                         _expr244404244479_
                                         _hd244405244481_)
                                        (let ()
                                          (declare (not safe))
                                          (_g244384244419_ _g244385244422_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g244384244419_ _g244385244422_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop244398244445_
                                                       _target244395244440_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244384244419_
                                                     _g244385244422_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g244384244419_ _g244385244422_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g244384244419_ _g244385244422_)))))
                        (let ()
                          (declare (not safe))
                          (_g244384244419_ _g244385244422_))))))
            (declare (not safe))
            (_g244383244536_ _stx244380_)))))
    (define gxc#collect-type-call%
      (lambda (_stx243872_)
        (let* ((___stx249121249122_ _stx243872_)
               (_g243876243991_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249121249122_)))))
          (let ((___kont249123249124_
                 (lambda (_L244330_ _L244331_ _L244332_ _L244333_ _L244334_)
                   (let ((__tmp251121
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244333_)))
                         (__tmp251120
                          (let () (declare (not safe)) (gx#stx-e _L244332_)))
                         (__tmp251119
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244331_)))
                         (__tmp251118
                          (let () (declare (not safe)) (gx#stx-e _L244330_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp251121
                      __tmp251120
                      __tmp251119
                      __tmp251118))))
                (___kont249125249126_
                 (lambda (_L244158_ _L244159_ _L244160_ _L244161_)
                   (let ((__tmp251124
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244160_)))
                         (__tmp251123
                          (let () (declare (not safe)) (gx#stx-e _L244159_)))
                         (__tmp251122
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244158_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp251124
                      __tmp251123
                      __tmp251122
                      '#f))))
                (___kont249127249128_
                 (lambda (_L244028_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp251125
                           (lambda (_g244041244044_ _g244042244046_)
                             (let ()
                               (declare (not safe))
                               (cons _g244041244044_ _g244042244046_)))))
                      (declare (not safe))
                      (foldr1 __tmp251125 '() _L244028_))))))
            (let* ((___match249378249379_
                    (lambda (_e243977243996_
                             _hd243976243999_
                             _tl243975244001_
                             ___splice249129249130_
                             _target243978244004_
                             _tl243980244006_)
                      (letrec ((_loop243981244009_
                                (lambda (_hd243979244012_ _expr243985244014_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd243979244012_))
                                      (let ((_e243982244017_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd243979244012_))))
                                        (let ((_lp-tl243984244022_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243982244017_)))
                                              (_lp-hd243983244020_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243982244017_))))
                                          (let ((__tmp251126
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd243983244020_
                                                         _expr243985244014_))))
                                            (declare (not safe))
                                            (_loop243981244009_
                                             _lp-tl243984244022_
                                             __tmp251126))))
                                      (let ((_expr243986244025_
                                             (reverse _expr243985244014_)))
                                        (___kont249127249128_
                                         _expr243986244025_))))))
                        (let ()
                          (declare (not safe))
                          (_loop243981244009_ _target243978244004_ '())))))
                   (___match249258249259_
                    (lambda (_e243885244202_
                             _hd243884244205_
                             _tl243883244207_
                             _e243888244210_
                             _hd243887244213_
                             _tl243886244215_
                             _e243891244218_
                             _hd243890244221_
                             _tl243889244223_
                             _e243894244226_
                             _hd243893244229_
                             _tl243892244231_
                             _e243897244234_
                             _hd243896244237_
                             _tl243895244239_
                             _e243900244242_
                             _hd243899244245_
                             _tl243898244247_
                             _e243903244250_
                             _hd243902244253_
                             _tl243901244255_
                             _e243906244258_
                             _hd243905244261_
                             _tl243904244263_
                             _e243909244266_
                             _hd243908244269_
                             _tl243907244271_
                             _e243912244274_
                             _hd243911244277_
                             _tl243910244279_
                             _e243915244282_
                             _hd243914244285_
                             _tl243913244287_
                             _e243918244290_
                             _hd243917244293_
                             _tl243916244295_
                             _e243921244298_
                             _hd243920244301_
                             _tl243919244303_
                             _e243924244306_
                             _hd243923244309_
                             _tl243922244311_
                             _e243927244314_
                             _hd243926244317_
                             _tl243925244319_
                             _e243930244322_
                             _hd243929244325_
                             _tl243928244327_)
                      (let ((_L244330_ _hd243929244325_)
                            (_L244331_ _hd243920244301_)
                            (_L244332_ _hd243911244277_)
                            (_L244333_ _hd243902244253_)
                            (_L244334_ _hd243893244229_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L244334_
                               'bind-method!))
                            (___kont249123249124_
                             _L244330_
                             _L244331_
                             _L244332_
                             _L244333_
                             _L244334_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl243883244207_))
                                (let ((___splice249129249130_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl243883244207_
                                          '0))))
                                  (let ((_tl243980244006_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice249129249130_
                                            '1)))
                                        (_target243978244004_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice249129249130_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl243980244006_))
                                        (___match249378249379_
                                         _e243885244202_
                                         _hd243884244205_
                                         _tl243883244207_
                                         ___splice249129249130_
                                         _target243978244004_
                                         _tl243980244006_)
                                        (let ()
                                          (declare (not safe))
                                          (_g243876243991_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g243876243991_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx249121249122_))
                  (let ((_e243885244202_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx249121249122_))))
                    (let ((_tl243883244207_
                           (let ()
                             (declare (not safe))
                             (##cdr _e243885244202_)))
                          (_hd243884244205_
                           (let ()
                             (declare (not safe))
                             (##car _e243885244202_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl243883244207_))
                          (let ((_e243888244210_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl243883244207_))))
                            (let ((_tl243886244215_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e243888244210_)))
                                  (_hd243887244213_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e243888244210_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd243887244213_))
                                  (let ((_e243891244218_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd243887244213_))))
                                    (let ((_tl243889244223_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e243891244218_)))
                                          (_hd243890244221_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e243891244218_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd243890244221_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd243890244221_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl243889244223_))
                                                  (let ((_e243894244226_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl243889244223_))))
                                                    (let ((_tl243892244231_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e243894244226_)))
                                                          (_hd243893244229_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e243894244226_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl243892244231_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl243886244215_))
                      (let ((_e243897244234_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl243886244215_))))
                        (let ((_tl243895244239_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243897244234_)))
                              (_hd243896244237_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243897244234_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd243896244237_))
                              (let ((_e243900244242_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd243896244237_))))
                                (let ((_tl243898244247_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243900244242_)))
                                      (_hd243899244245_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243900244242_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd243899244245_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd243899244245_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl243898244247_))
                                              (let ((_e243903244250_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl243898244247_))))
                                                (let ((_tl243901244255_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243903244250_)))
                                                      (_hd243902244253_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243903244250_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243901244255_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl243895244239_))
                                                          (let ((_e243906244258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl243895244239_))))
                    (let ((_tl243904244263_
                           (let ()
                             (declare (not safe))
                             (##cdr _e243906244258_)))
                          (_hd243905244261_
                           (let ()
                             (declare (not safe))
                             (##car _e243906244258_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd243905244261_))
                          (let ((_e243909244266_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd243905244261_))))
                            (let ((_tl243907244271_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e243909244266_)))
                                  (_hd243908244269_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e243909244266_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd243908244269_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd243908244269_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl243907244271_))
                                          (let ((_e243912244274_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl243907244271_))))
                                            (let ((_tl243910244279_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e243912244274_)))
                                                  (_hd243911244277_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e243912244274_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl243910244279_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl243904244263_))
                                                      (let ((_e243915244282_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl243904244263_))))
                (let ((_tl243913244287_
                       (let () (declare (not safe)) (##cdr _e243915244282_)))
                      (_hd243914244285_
                       (let () (declare (not safe)) (##car _e243915244282_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd243914244285_))
                      (let ((_e243918244290_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd243914244285_))))
                        (let ((_tl243916244295_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243918244290_)))
                              (_hd243917244293_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243918244290_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd243917244293_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd243917244293_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243916244295_))
                                      (let ((_e243921244298_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243916244295_))))
                                        (let ((_tl243919244303_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243921244298_)))
                                              (_hd243920244301_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243921244298_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243919244303_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl243913244287_))
                                                  (let ((_e243924244306_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl243913244287_))))
                                                    (let ((_tl243922244311_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e243924244306_)))
                                                          (_hd243923244309_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e243924244306_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd243923244309_))
                                                          (let ((_e243927244314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd243923244309_))))
                    (let ((_tl243925244319_
                           (let ()
                             (declare (not safe))
                             (##cdr _e243927244314_)))
                          (_hd243926244317_
                           (let ()
                             (declare (not safe))
                             (##car _e243927244314_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd243926244317_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd243926244317_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl243925244319_))
                                  (let ((_e243930244322_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl243925244319_))))
                                    (let ((_tl243928244327_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e243930244322_)))
                                          (_hd243929244325_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e243930244322_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl243928244327_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243922244311_))
                                              (___match249258249259_
                                               _e243885244202_
                                               _hd243884244205_
                                               _tl243883244207_
                                               _e243888244210_
                                               _hd243887244213_
                                               _tl243886244215_
                                               _e243891244218_
                                               _hd243890244221_
                                               _tl243889244223_
                                               _e243894244226_
                                               _hd243893244229_
                                               _tl243892244231_
                                               _e243897244234_
                                               _hd243896244237_
                                               _tl243895244239_
                                               _e243900244242_
                                               _hd243899244245_
                                               _tl243898244247_
                                               _e243903244250_
                                               _hd243902244253_
                                               _tl243901244255_
                                               _e243906244258_
                                               _hd243905244261_
                                               _tl243904244263_
                                               _e243909244266_
                                               _hd243908244269_
                                               _tl243907244271_
                                               _e243912244274_
                                               _hd243911244277_
                                               _tl243910244279_
                                               _e243915244282_
                                               _hd243914244285_
                                               _tl243913244287_
                                               _e243918244290_
                                               _hd243917244293_
                                               _tl243916244295_
                                               _e243921244298_
                                               _hd243920244301_
                                               _tl243919244303_
                                               _e243924244306_
                                               _hd243923244309_
                                               _tl243922244311_
                                               _e243927244314_
                                               _hd243926244317_
                                               _tl243925244319_
                                               _e243930244322_
                                               _hd243929244325_
                                               _tl243928244327_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl243883244207_))
                                                  (let ((___splice249129249130_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl243883244207_
                                                            '0))))
                                                    (let ((_tl243980244006_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249129249130_
                                                              '1)))
                                                          (_target243978244004_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249129249130_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl243980244006_))
                                                          (___match249378249379_
                                                           _e243885244202_
                                                           _hd243884244205_
                                                           _tl243883244207_
                                                           ___splice249129249130_
                                                           _target243978244004_
                                                           _tl243980244006_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g243876243991_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g243876243991_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl243883244207_))
                                              (let ((___splice249129249130_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl243883244207_
                                                        '0))))
                                                (let ((_tl243980244006_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249129249130_
                                                          '1)))
                                                      (_target243978244004_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249129249130_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243980244006_))
                                                      (___match249378249379_
                                                       _e243885244202_
                                                       _hd243884244205_
                                                       _tl243883244207_
                                                       ___splice249129249130_
                                                       _target243978244004_
                                                       _tl243980244006_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g243876243991_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g243876243991_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl243883244207_))
                                      (let ((___splice249129249130_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl243883244207_
                                                '0))))
                                        (let ((_tl243980244006_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249129249130_
                                                  '1)))
                                              (_target243978244004_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249129249130_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243980244006_))
                                              (___match249378249379_
                                               _e243885244202_
                                               _hd243884244205_
                                               _tl243883244207_
                                               ___splice249129249130_
                                               _target243978244004_
                                               _tl243980244006_)
                                              (let ()
                                                (declare (not safe))
                                                (_g243876243991_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243876243991_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl243883244207_))
                                  (let ((___splice249129249130_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl243883244207_
                                            '0))))
                                    (let ((_tl243980244006_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249129249130_
                                              '1)))
                                          (_target243978244004_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249129249130_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl243980244006_))
                                          (___match249378249379_
                                           _e243885244202_
                                           _hd243884244205_
                                           _tl243883244207_
                                           ___splice249129249130_
                                           _target243978244004_
                                           _tl243980244006_)
                                          (let ()
                                            (declare (not safe))
                                            (_g243876243991_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g243876243991_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl243883244207_))
                              (let ((___splice249129249130_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl243883244207_
                                        '0))))
                                (let ((_tl243980244006_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249129249130_
                                          '1)))
                                      (_target243978244004_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249129249130_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl243980244006_))
                                      (___match249378249379_
                                       _e243885244202_
                                       _hd243884244205_
                                       _tl243883244207_
                                       ___splice249129249130_
                                       _target243978244004_
                                       _tl243980244006_)
                                      (let ()
                                        (declare (not safe))
                                        (_g243876243991_)))))
                              (let ()
                                (declare (not safe))
                                (_g243876243991_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl243883244207_))
                      (let ((___splice249129249130_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl243883244207_ '0))))
                        (let ((_tl243980244006_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249129249130_ '1)))
                              (_target243978244004_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249129249130_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl243980244006_))
                              (___match249378249379_
                               _e243885244202_
                               _hd243884244205_
                               _tl243883244207_
                               ___splice249129249130_
                               _target243978244004_
                               _tl243980244006_)
                              (let ()
                                (declare (not safe))
                                (_g243876243991_)))))
                      (let () (declare (not safe)) (_g243876243991_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243913244287_))
                                                      (if (let ((__tmp251127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp251127 'bind-method!))
                  (let ((_L244158_ _hd243920244301_)
                        (_L244159_ _hd243911244277_)
                        (_L244160_ _hd243902244253_)
                        (_L244161_ _hd243893244229_))
                    (___kont249125249126_
                     _L244158_
                     _L244159_
                     _L244160_
                     _L244161_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl243883244207_))
                      (let ((___splice249129249130_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl243883244207_ '0))))
                        (let ((_tl243980244006_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249129249130_ '1)))
                              (_target243978244004_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249129249130_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl243980244006_))
                              (___match249378249379_
                               _e243885244202_
                               _hd243884244205_
                               _tl243883244207_
                               ___splice249129249130_
                               _target243978244004_
                               _tl243980244006_)
                              (let ()
                                (declare (not safe))
                                (_g243876243991_)))))
                      (let () (declare (not safe)) (_g243876243991_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl243883244207_))
                  (let ((___splice249129249130_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl243883244207_ '0))))
                    (let ((_tl243980244006_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249129249130_ '1)))
                          (_target243978244004_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249129249130_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl243980244006_))
                          (___match249378249379_
                           _e243885244202_
                           _hd243884244205_
                           _tl243883244207_
                           ___splice249129249130_
                           _target243978244004_
                           _tl243980244006_)
                          (let () (declare (not safe)) (_g243876243991_)))))
                  (let () (declare (not safe)) (_g243876243991_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl243883244207_))
                                                  (let ((___splice249129249130_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl243883244207_
                                                            '0))))
                                                    (let ((_tl243980244006_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249129249130_
                                                              '1)))
                                                          (_target243978244004_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249129249130_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl243980244006_))
                                                          (___match249378249379_
                                                           _e243885244202_
                                                           _hd243884244205_
                                                           _tl243883244207_
                                                           ___splice249129249130_
                                                           _target243978244004_
                                                           _tl243980244006_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g243876243991_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g243876243991_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl243883244207_))
                                          (let ((___splice249129249130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl243883244207_
                                                    '0))))
                                            (let ((_tl243980244006_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249129249130_
                                                      '1)))
                                                  (_target243978244004_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249129249130_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl243980244006_))
                                                  (___match249378249379_
                                                   _e243885244202_
                                                   _hd243884244205_
                                                   _tl243883244207_
                                                   ___splice249129249130_
                                                   _target243978244004_
                                                   _tl243980244006_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g243876243991_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g243876243991_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl243883244207_))
                                      (let ((___splice249129249130_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl243883244207_
                                                '0))))
                                        (let ((_tl243980244006_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249129249130_
                                                  '1)))
                                              (_target243978244004_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249129249130_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243980244006_))
                                              (___match249378249379_
                                               _e243885244202_
                                               _hd243884244205_
                                               _tl243883244207_
                                               ___splice249129249130_
                                               _target243978244004_
                                               _tl243980244006_)
                                              (let ()
                                                (declare (not safe))
                                                (_g243876243991_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243876243991_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl243883244207_))
                                  (let ((___splice249129249130_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl243883244207_
                                            '0))))
                                    (let ((_tl243980244006_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249129249130_
                                              '1)))
                                          (_target243978244004_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249129249130_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl243980244006_))
                                          (___match249378249379_
                                           _e243885244202_
                                           _hd243884244205_
                                           _tl243883244207_
                                           ___splice249129249130_
                                           _target243978244004_
                                           _tl243980244006_)
                                          (let ()
                                            (declare (not safe))
                                            (_g243876243991_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g243876243991_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl243883244207_))
                          (let ((___splice249129249130_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl243883244207_
                                    '0))))
                            (let ((_tl243980244006_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice249129249130_ '1)))
                                  (_target243978244004_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice249129249130_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl243980244006_))
                                  (___match249378249379_
                                   _e243885244202_
                                   _hd243884244205_
                                   _tl243883244207_
                                   ___splice249129249130_
                                   _target243978244004_
                                   _tl243980244006_)
                                  (let ()
                                    (declare (not safe))
                                    (_g243876243991_)))))
                          (let () (declare (not safe)) (_g243876243991_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl243883244207_))
                  (let ((___splice249129249130_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl243883244207_ '0))))
                    (let ((_tl243980244006_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249129249130_ '1)))
                          (_target243978244004_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249129249130_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl243980244006_))
                          (___match249378249379_
                           _e243885244202_
                           _hd243884244205_
                           _tl243883244207_
                           ___splice249129249130_
                           _target243978244004_
                           _tl243980244006_)
                          (let () (declare (not safe)) (_g243876243991_)))))
                  (let () (declare (not safe)) (_g243876243991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl243883244207_))
                                                      (let ((___splice249129249130_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl243883244207_ '0))))
                (let ((_tl243980244006_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice249129249130_ '1)))
                      (_target243978244004_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice249129249130_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl243980244006_))
                      (___match249378249379_
                       _e243885244202_
                       _hd243884244205_
                       _tl243883244207_
                       ___splice249129249130_
                       _target243978244004_
                       _tl243980244006_)
                      (let () (declare (not safe)) (_g243876243991_)))))
              (let () (declare (not safe)) (_g243876243991_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl243883244207_))
                                              (let ((___splice249129249130_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl243883244207_
                                                        '0))))
                                                (let ((_tl243980244006_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249129249130_
                                                          '1)))
                                                      (_target243978244004_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249129249130_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243980244006_))
                                                      (___match249378249379_
                                                       _e243885244202_
                                                       _hd243884244205_
                                                       _tl243883244207_
                                                       ___splice249129249130_
                                                       _target243978244004_
                                                       _tl243980244006_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g243876243991_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g243876243991_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl243883244207_))
                                          (let ((___splice249129249130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl243883244207_
                                                    '0))))
                                            (let ((_tl243980244006_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249129249130_
                                                      '1)))
                                                  (_target243978244004_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249129249130_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl243980244006_))
                                                  (___match249378249379_
                                                   _e243885244202_
                                                   _hd243884244205_
                                                   _tl243883244207_
                                                   ___splice249129249130_
                                                   _target243978244004_
                                                   _tl243980244006_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g243876243991_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g243876243991_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl243883244207_))
                                      (let ((___splice249129249130_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl243883244207_
                                                '0))))
                                        (let ((_tl243980244006_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249129249130_
                                                  '1)))
                                              (_target243978244004_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249129249130_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243980244006_))
                                              (___match249378249379_
                                               _e243885244202_
                                               _hd243884244205_
                                               _tl243883244207_
                                               ___splice249129249130_
                                               _target243978244004_
                                               _tl243980244006_)
                                              (let ()
                                                (declare (not safe))
                                                (_g243876243991_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243876243991_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl243883244207_))
                              (let ((___splice249129249130_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl243883244207_
                                        '0))))
                                (let ((_tl243980244006_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249129249130_
                                          '1)))
                                      (_target243978244004_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249129249130_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl243980244006_))
                                      (___match249378249379_
                                       _e243885244202_
                                       _hd243884244205_
                                       _tl243883244207_
                                       ___splice249129249130_
                                       _target243978244004_
                                       _tl243980244006_)
                                      (let ()
                                        (declare (not safe))
                                        (_g243876243991_)))))
                              (let ()
                                (declare (not safe))
                                (_g243876243991_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl243883244207_))
                      (let ((___splice249129249130_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl243883244207_ '0))))
                        (let ((_tl243980244006_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249129249130_ '1)))
                              (_target243978244004_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249129249130_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl243980244006_))
                              (___match249378249379_
                               _e243885244202_
                               _hd243884244205_
                               _tl243883244207_
                               ___splice249129249130_
                               _target243978244004_
                               _tl243980244006_)
                              (let ()
                                (declare (not safe))
                                (_g243876243991_)))))
                      (let () (declare (not safe)) (_g243876243991_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl243883244207_))
                  (let ((___splice249129249130_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl243883244207_ '0))))
                    (let ((_tl243980244006_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249129249130_ '1)))
                          (_target243978244004_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249129249130_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl243980244006_))
                          (___match249378249379_
                           _e243885244202_
                           _hd243884244205_
                           _tl243883244207_
                           ___splice249129249130_
                           _target243978244004_
                           _tl243980244006_)
                          (let () (declare (not safe)) (_g243876243991_)))))
                  (let () (declare (not safe)) (_g243876243991_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl243883244207_))
                                                  (let ((___splice249129249130_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl243883244207_
                                                            '0))))
                                                    (let ((_tl243980244006_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249129249130_
                                                              '1)))
                                                          (_target243978244004_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249129249130_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl243980244006_))
                                                          (___match249378249379_
                                                           _e243885244202_
                                                           _hd243884244205_
                                                           _tl243883244207_
                                                           ___splice249129249130_
                                                           _target243978244004_
                                                           _tl243980244006_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g243876243991_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g243876243991_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl243883244207_))
                                              (let ((___splice249129249130_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl243883244207_
                                                        '0))))
                                                (let ((_tl243980244006_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249129249130_
                                                          '1)))
                                                      (_target243978244004_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249129249130_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243980244006_))
                                                      (___match249378249379_
                                                       _e243885244202_
                                                       _hd243884244205_
                                                       _tl243883244207_
                                                       ___splice249129249130_
                                                       _target243978244004_
                                                       _tl243980244006_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g243876243991_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g243876243991_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl243883244207_))
                                          (let ((___splice249129249130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl243883244207_
                                                    '0))))
                                            (let ((_tl243980244006_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249129249130_
                                                      '1)))
                                                  (_target243978244004_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249129249130_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl243980244006_))
                                                  (___match249378249379_
                                                   _e243885244202_
                                                   _hd243884244205_
                                                   _tl243883244207_
                                                   ___splice249129249130_
                                                   _target243978244004_
                                                   _tl243980244006_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g243876243991_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g243876243991_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl243883244207_))
                                  (let ((___splice249129249130_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl243883244207_
                                            '0))))
                                    (let ((_tl243980244006_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249129249130_
                                              '1)))
                                          (_target243978244004_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249129249130_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl243980244006_))
                                          (___match249378249379_
                                           _e243885244202_
                                           _hd243884244205_
                                           _tl243883244207_
                                           ___splice249129249130_
                                           _target243978244004_
                                           _tl243980244006_)
                                          (let ()
                                            (declare (not safe))
                                            (_g243876243991_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g243876243991_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl243883244207_))
                          (let ((___splice249129249130_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl243883244207_
                                    '0))))
                            (let ((_tl243980244006_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice249129249130_ '1)))
                                  (_target243978244004_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice249129249130_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl243980244006_))
                                  (___match249378249379_
                                   _e243885244202_
                                   _hd243884244205_
                                   _tl243883244207_
                                   ___splice249129249130_
                                   _target243978244004_
                                   _tl243980244006_)
                                  (let ()
                                    (declare (not safe))
                                    (_g243876243991_)))))
                          (let () (declare (not safe)) (_g243876243991_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl243883244207_))
                      (let ((___splice249129249130_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl243883244207_ '0))))
                        (let ((_tl243980244006_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249129249130_ '1)))
                              (_target243978244004_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249129249130_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl243980244006_))
                              (___match249378249379_
                               _e243885244202_
                               _hd243884244205_
                               _tl243883244207_
                               ___splice249129249130_
                               _target243978244004_
                               _tl243980244006_)
                              (let ()
                                (declare (not safe))
                                (_g243876243991_)))))
                      (let () (declare (not safe)) (_g243876243991_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl243883244207_))
                                                      (let ((___splice249129249130_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl243883244207_ '0))))
                (let ((_tl243980244006_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice249129249130_ '1)))
                      (_target243978244004_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice249129249130_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl243980244006_))
                      (___match249378249379_
                       _e243885244202_
                       _hd243884244205_
                       _tl243883244207_
                       ___splice249129249130_
                       _target243978244004_
                       _tl243980244006_)
                      (let () (declare (not safe)) (_g243876243991_)))))
              (let () (declare (not safe)) (_g243876243991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl243883244207_))
                                                  (let ((___splice249129249130_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl243883244207_
                                                            '0))))
                                                    (let ((_tl243980244006_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249129249130_
                                                              '1)))
                                                          (_target243978244004_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249129249130_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl243980244006_))
                                                          (___match249378249379_
                                                           _e243885244202_
                                                           _hd243884244205_
                                                           _tl243883244207_
                                                           ___splice249129249130_
                                                           _target243978244004_
                                                           _tl243980244006_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g243876243991_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g243876243991_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl243883244207_))
                                              (let ((___splice249129249130_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl243883244207_
                                                        '0))))
                                                (let ((_tl243980244006_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249129249130_
                                                          '1)))
                                                      (_target243978244004_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249129249130_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243980244006_))
                                                      (___match249378249379_
                                                       _e243885244202_
                                                       _hd243884244205_
                                                       _tl243883244207_
                                                       ___splice249129249130_
                                                       _target243978244004_
                                                       _tl243980244006_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g243876243991_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g243876243991_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl243883244207_))
                                      (let ((___splice249129249130_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl243883244207_
                                                '0))))
                                        (let ((_tl243980244006_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249129249130_
                                                  '1)))
                                              (_target243978244004_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249129249130_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243980244006_))
                                              (___match249378249379_
                                               _e243885244202_
                                               _hd243884244205_
                                               _tl243883244207_
                                               ___splice249129249130_
                                               _target243978244004_
                                               _tl243980244006_)
                                              (let ()
                                                (declare (not safe))
                                                (_g243876243991_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243876243991_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl243883244207_))
                              (let ((___splice249129249130_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl243883244207_
                                        '0))))
                                (let ((_tl243980244006_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249129249130_
                                          '1)))
                                      (_target243978244004_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249129249130_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl243980244006_))
                                      (___match249378249379_
                                       _e243885244202_
                                       _hd243884244205_
                                       _tl243883244207_
                                       ___splice249129249130_
                                       _target243978244004_
                                       _tl243980244006_)
                                      (let ()
                                        (declare (not safe))
                                        (_g243876243991_)))))
                              (let ()
                                (declare (not safe))
                                (_g243876243991_))))))
                  (let () (declare (not safe)) (_g243876243991_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx243812_)
        (let* ((___stx249381249382_ _stx243812_)
               (_g243815243828_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249381249382_)))))
          (let ((___kont249383249384_
                 (lambda (_L243856_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L243856_))))
                (___kont249385249386_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx249381249382_))
                (let ((_e243820243840_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx249381249382_))))
                  (let ((_tl243818243845_
                         (let () (declare (not safe)) (##cdr _e243820243840_)))
                        (_hd243819243843_
                         (let ()
                           (declare (not safe))
                           (##car _e243820243840_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl243818243845_))
                        (let ((_e243823243848_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl243818243845_))))
                          (let ((_tl243821243853_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e243823243848_)))
                                (_hd243822243851_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e243823243848_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl243821243853_))
                                (___kont249383249384_ _hd243822243851_)
                                (___kont249385249386_))))
                        (___kont249385249386_))))
                (___kont249385249386_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx243692_)
        (let* ((_g243694243711_
                (lambda (_g243695243708_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243695243708_))))
               (_g243693243809_
                (lambda (_g243695243714_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243695243714_))
                      (let ((_e243700243716_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243695243714_))))
                        (let ((_hd243699243719_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243700243716_)))
                              (_tl243698243721_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243700243716_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243698243721_))
                              (let ((_e243703243724_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243698243721_))))
                                (let ((_hd243702243727_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243703243724_)))
                                      (_tl243701243729_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243703243724_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243701243729_))
                                      (let ((_e243706243732_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243701243729_))))
                                        (let ((_hd243705243735_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243706243732_)))
                                              (_tl243704243737_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243706243732_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243704243737_))
                                              ((lambda (_L243740_ _L243741_)
                                                 (let* ((___stx249403249404_
                                                         _L243741_)
                                                        (_g243757243768_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx249403249404_)))))
                                                   (let ((___kont249405249406_
                                                          (lambda (_L243788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L243789_)
                    (let ((_$e243801_
                           (let ((__tmp251128
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L243789_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp251128))))
                      (if _$e243801_
                          ((lambda (_type-e243804_)
                             (_type-e243804_ _stx243692_ _L243741_))
                           _$e243801_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L243740_))))))
                 (___kont249407249408_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L243740_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match249414249415_
                                                            (lambda (_e243763243780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd243762243783_
                             _tl243761243785_)
                      (let ((_L243788_ _tl243761243785_)
                            (_L243789_ _hd243762243783_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L243789_))
                            (___kont249405249406_ _L243788_ _L243789_)
                            (___kont249407249408_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx249403249404_))
                   (let ((_e243763243780_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx249403249404_))))
                     (let ((_tl243761243785_
                            (let ()
                              (declare (not safe))
                              (##cdr _e243763243780_)))
                           (_hd243762243783_
                            (let ()
                              (declare (not safe))
                              (##car _e243763243780_))))
                       (___match249414249415_
                        _e243763243780_
                        _hd243762243783_
                        _tl243761243785_)))
                   (___kont249407249408_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd243705243735_
                                               _hd243702243727_)
                                              (let ()
                                                (declare (not safe))
                                                (_g243694243711_
                                                 _g243695243714_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243694243711_ _g243695243714_)))))
                              (let ()
                                (declare (not safe))
                                (_g243694243711_ _g243695243714_)))))
                      (let ()
                        (declare (not safe))
                        (_g243694243711_ _g243695243714_))))))
          (declare (not safe))
          (_g243693243809_ _stx243692_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx243536_ _ann243537_)
        (let* ((_g243539243576_
                (lambda (_g243540243573_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243540243573_))))
               (_g243538243689_
                (lambda (_g243540243579_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243540243579_))
                      (let ((_e243550243581_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243540243579_))))
                        (let ((_hd243549243584_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243550243581_)))
                              (_tl243548243586_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243550243581_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243548243586_))
                              (let ((_e243553243589_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243548243586_))))
                                (let ((_hd243552243592_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243553243589_)))
                                      (_tl243551243594_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243553243589_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243551243594_))
                                      (let ((_e243556243597_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243551243594_))))
                                        (let ((_hd243555243600_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243556243597_)))
                                              (_tl243554243602_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243556243597_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl243554243602_))
                                              (let ((_e243559243605_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl243554243602_))))
                                                (let ((_hd243558243608_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243559243605_)))
                                                      (_tl243557243610_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243559243605_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl243557243610_))
                                                      (let ((_e243562243613_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl243557243610_))))
                (let ((_hd243561243616_
                       (let () (declare (not safe)) (##car _e243562243613_)))
                      (_tl243560243618_
                       (let () (declare (not safe)) (##cdr _e243562243613_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl243560243618_))
                      (let ((_e243565243621_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl243560243618_))))
                        (let ((_hd243564243624_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243565243621_)))
                              (_tl243563243626_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243565243621_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243563243626_))
                              (let ((_e243568243629_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243563243626_))))
                                (let ((_hd243567243632_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243568243629_)))
                                      (_tl243566243634_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243568243629_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243566243634_))
                                      (let ((_e243571243637_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243566243634_))))
                                        (let ((_hd243570243640_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243571243637_)))
                                              (_tl243569243642_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243571243637_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243569243642_))
                                              ((lambda (_L243645_
                                                        _L243646_
                                                        _L243647_
                                                        _L243648_
                                                        _L243649_
                                                        _L243650_
                                                        _L243651_)
                                                 (let ((_type-id243681_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L243651_)))
                                                       (_super243682_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L243650_)))
                                                       (_slots243683_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L243649_)))
                                                       (_ctor-method243684_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L243648_)))
                                                       (_struct?243685_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L243647_)))
                                                       (_final?243686_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L243646_)))
                                                       (_metaclass243687_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L243645_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L243645_))
                                                            '#f)))
                                                   (let ((__obj251086
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
                                                      __obj251086
                                                      _type-id243681_
                                                      _super243682_
                                                      _slots243683_
                                                      _ctor-method243684_
                                                      _struct?243685_
                                                      _final?243686_
                                                      _metaclass243687_)
                                                     __obj251086)))
                                               _hd243570243640_
                                               _hd243567243632_
                                               _hd243564243624_
                                               _hd243561243616_
                                               _hd243558243608_
                                               _hd243555243600_
                                               _hd243552243592_)
                                              (let ()
                                                (declare (not safe))
                                                (_g243539243576_
                                                 _g243540243579_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243539243576_ _g243540243579_)))))
                              (let ()
                                (declare (not safe))
                                (_g243539243576_ _g243540243579_)))))
                      (let ()
                        (declare (not safe))
                        (_g243539243576_ _g243540243579_)))))
              (let ()
                (declare (not safe))
                (_g243539243576_ _g243540243579_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g243539243576_
                                                 _g243540243579_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243539243576_ _g243540243579_)))))
                              (let ()
                                (declare (not safe))
                                (_g243539243576_ _g243540243579_)))))
                      (let ()
                        (declare (not safe))
                        (_g243539243576_ _g243540243579_))))))
          (declare (not safe))
          (_g243538243689_ _ann243537_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx243484_ _ann243485_)
        (let* ((_g243487243500_
                (lambda (_g243488243497_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243488243497_))))
               (_g243486243533_
                (lambda (_g243488243503_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243488243503_))
                      (let ((_e243492243505_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243488243503_))))
                        (let ((_hd243491243508_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243492243505_)))
                              (_tl243490243510_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243492243505_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243490243510_))
                              (let ((_e243495243513_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243490243510_))))
                                (let ((_hd243494243516_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243495243513_)))
                                      (_tl243493243518_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243495243513_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl243493243518_))
                                      ((lambda (_L243521_)
                                         (let ((__tmp251129
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L243521_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp251129)))
                                       _hd243494243516_)
                                      (let ()
                                        (declare (not safe))
                                        (_g243487243500_ _g243488243503_)))))
                              (let ()
                                (declare (not safe))
                                (_g243487243500_ _g243488243503_)))))
                      (let ()
                        (declare (not safe))
                        (_g243487243500_ _g243488243503_))))))
          (declare (not safe))
          (_g243486243533_ _ann243485_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx243432_ _ann243433_)
        (let* ((_g243435243448_
                (lambda (_g243436243445_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243436243445_))))
               (_g243434243481_
                (lambda (_g243436243451_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243436243451_))
                      (let ((_e243440243453_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243436243451_))))
                        (let ((_hd243439243456_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243440243453_)))
                              (_tl243438243458_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243440243453_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243438243458_))
                              (let ((_e243443243461_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243438243458_))))
                                (let ((_hd243442243464_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243443243461_)))
                                      (_tl243441243466_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243443243461_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl243441243466_))
                                      ((lambda (_L243469_)
                                         (let ((__tmp251130
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L243469_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp251130)))
                                       _hd243442243464_)
                                      (let ()
                                        (declare (not safe))
                                        (_g243435243448_ _g243436243451_)))))
                              (let ()
                                (declare (not safe))
                                (_g243435243448_ _g243436243451_)))))
                      (let ()
                        (declare (not safe))
                        (_g243435243448_ _g243436243451_))))))
          (declare (not safe))
          (_g243434243481_ _ann243433_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx243348_ _ann243349_)
        (let* ((_g243351243372_
                (lambda (_g243352243369_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243352243369_))))
               (_g243350243429_
                (lambda (_g243352243375_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243352243375_))
                      (let ((_e243358243377_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243352243375_))))
                        (let ((_hd243357243380_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243358243377_)))
                              (_tl243356243382_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243358243377_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243356243382_))
                              (let ((_e243361243385_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243356243382_))))
                                (let ((_hd243360243388_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243361243385_)))
                                      (_tl243359243390_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243361243385_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243359243390_))
                                      (let ((_e243364243393_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243359243390_))))
                                        (let ((_hd243363243396_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243364243393_)))
                                              (_tl243362243398_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243364243393_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl243362243398_))
                                              (let ((_e243367243401_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl243362243398_))))
                                                (let ((_hd243366243404_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243367243401_)))
                                                      (_tl243365243406_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243367243401_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243365243406_))
                                                      ((lambda (_L243409_
                                                                _L243410_
                                                                _L243411_)
                                                         (let ((__tmp251133
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L243411_)))
                       (__tmp251132
                        (let () (declare (not safe)) (gx#stx-e _L243410_)))
                       (__tmp251131
                        (let () (declare (not safe)) (gx#stx-e _L243409_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp251133
                    __tmp251132
                    __tmp251131)))
               _hd243366243404_
               _hd243363243396_
               _hd243360243388_)
              (let ()
                (declare (not safe))
                (_g243351243372_ _g243352243375_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g243351243372_
                                                 _g243352243375_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243351243372_ _g243352243375_)))))
                              (let ()
                                (declare (not safe))
                                (_g243351243372_ _g243352243375_)))))
                      (let ()
                        (declare (not safe))
                        (_g243351243372_ _g243352243375_))))))
          (declare (not safe))
          (_g243350243429_ _ann243349_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx243264_ _ann243265_)
        (let* ((_g243267243288_
                (lambda (_g243268243285_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243268243285_))))
               (_g243266243345_
                (lambda (_g243268243291_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243268243291_))
                      (let ((_e243274243293_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243268243291_))))
                        (let ((_hd243273243296_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243274243293_)))
                              (_tl243272243298_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243274243293_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243272243298_))
                              (let ((_e243277243301_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243272243298_))))
                                (let ((_hd243276243304_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243277243301_)))
                                      (_tl243275243306_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243277243301_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243275243306_))
                                      (let ((_e243280243309_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243275243306_))))
                                        (let ((_hd243279243312_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243280243309_)))
                                              (_tl243278243314_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243280243309_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl243278243314_))
                                              (let ((_e243283243317_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl243278243314_))))
                                                (let ((_hd243282243320_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243283243317_)))
                                                      (_tl243281243322_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243283243317_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243281243322_))
                                                      ((lambda (_L243325_
                                                                _L243326_
                                                                _L243327_)
                                                         (let ((__tmp251136
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L243327_)))
                       (__tmp251135
                        (let () (declare (not safe)) (gx#stx-e _L243326_)))
                       (__tmp251134
                        (let () (declare (not safe)) (gx#stx-e _L243325_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp251136
                    __tmp251135
                    __tmp251134)))
               _hd243282243320_
               _hd243279243312_
               _hd243276243304_)
              (let ()
                (declare (not safe))
                (_g243267243288_ _g243268243291_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g243267243288_
                                                 _g243268243291_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243267243288_ _g243268243291_)))))
                              (let ()
                                (declare (not safe))
                                (_g243267243288_ _g243268243291_)))))
                      (let ()
                        (declare (not safe))
                        (_g243267243288_ _g243268243291_))))))
          (declare (not safe))
          (_g243266243345_ _ann243265_))))
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
      (lambda (_stx242384_)
        (let* ((___stx249417249418_ _stx242384_)
               (_g242390242586_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249417249418_)))))
          (let ((___kont249419249420_
                 (lambda (_L243252_)
                   (let ((__obj251087
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj251087
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L243252_))
                      '#f)
                     __obj251087)))
                (___kont249421249422_
                 (lambda (_L243179_
                          _L243180_
                          _L243181_
                          _L243182_
                          _L243183_
                          _L243184_)
                   (let* ((_tab243234_
                           (let () (declare (not safe)) (gx#stx-e _L243181_)))
                          (_keys243236_
                           (if _tab243234_
                               (let ((__tmp251137 (vector->list _tab243234_)))
                                 (declare (not safe))
                                 (filter values __tmp251137))
                               '#f)))
                     (let ((__tmp251138
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L243180_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys243236_
                        __tmp251138)))))
                (___kont249423249424_
                 (lambda (_L242912_
                          _L242913_
                          _L242914_
                          _L242915_
                          _L242916_
                          _L242917_
                          _L242918_
                          _L242919_
                          _L242920_
                          _L242921_)
                   (let ((__tmp251140
                          (map gx#stx-e
                               (let ((__tmp251141
                                      (lambda (_g243014243017_ _g243015243019_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g243014243017_
                                                _g243015243019_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp251141 '() _L242914_))))
                         (__tmp251139
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L242918_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp251140
                      __tmp251139))))
                (___kont249427249428_
                 (lambda (_L242622_)
                   (let ((__obj251088
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj251088
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L242622_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L242622_)))
                     __obj251088)))
                (___kont249429249430_
                 (lambda (_L242599_)
                   (let ((__obj251089
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj251089
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L242599_))
                      '#f)
                     __obj251089))))
            (let* ((___match249736249737_
                    (lambda (_e242577242614_ _hd242576242617_ _tl242575242619_)
                      (let ((_L242622_ _tl242575242619_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L242622_))
                            (___kont249427249428_ _L242622_)
                            (___kont249429249430_ _tl242575242619_)))))
                   (___match249730249731_
                    (lambda (_e242471242636_
                             _hd242470242639_
                             _tl242469242641_
                             _e242474242644_
                             _hd242473242647_
                             _tl242472242649_
                             _e242477242652_
                             _hd242476242655_
                             _tl242475242657_
                             _e242480242660_
                             _hd242479242663_
                             _tl242478242665_
                             _e242483242668_
                             _hd242482242671_
                             _tl242481242673_
                             _e242486242676_
                             _hd242485242679_
                             _tl242484242681_
                             _e242489242684_
                             _hd242488242687_
                             _tl242487242689_
                             _e242492242692_
                             _hd242491242695_
                             _tl242490242697_
                             _e242495242700_
                             _hd242494242703_
                             _tl242493242705_
                             _e242498242708_
                             _hd242497242711_
                             _tl242496242713_
                             _e242501242716_
                             _hd242500242719_
                             _tl242499242721_
                             _e242504242724_
                             _hd242503242727_
                             _tl242502242729_
                             _e242507242732_
                             _hd242506242735_
                             _tl242505242737_
                             _e242510242740_
                             _hd242509242743_
                             _tl242508242745_
                             ___splice249425249426_
                             _target242511242748_
                             _tl242513242750_
                             _e242528242753_
                             _hd242527242756_
                             _tl242526242758_
                             _e242531242761_
                             _hd242530242764_
                             _tl242529242766_
                             _e242534242769_
                             _hd242533242772_
                             _tl242532242774_)
                      (letrec ((_loop242514242777_
                                (lambda (_hd242512242780_
                                         _-absent-value242518242782_
                                         _key242519242784_
                                         _-xkwvar242520242786_
                                         _-hash-ref242521242788_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd242512242780_))
                                      (let ((_e242515242791_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd242512242780_))))
                                        (let ((_lp-tl242517242796_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242515242791_)))
                                              (_lp-hd242516242794_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242515242791_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd242516242794_))
                                              (let ((_e242537242799_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd242516242794_))))
                                                (let ((_tl242535242804_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242537242799_)))
                                                      (_hd242536242802_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242537242799_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd242536242802_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd242536242802_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl242535242804_))
                      (let ((_e242540242807_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl242535242804_))))
                        (let ((_tl242538242812_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242540242807_)))
                              (_hd242539242810_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242540242807_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd242539242810_))
                              (let ((_e242543242815_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd242539242810_))))
                                (let ((_tl242541242820_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242543242815_)))
                                      (_hd242542242818_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242543242815_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd242542242818_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd242542242818_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242541242820_))
                                              (let ((_e242546242823_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242541242820_))))
                                                (let ((_tl242544242828_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242546242823_)))
                                                      (_hd242545242826_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242546242823_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242544242828_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242538242812_))
                                                          (let ((_e242549242831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242538242812_))))
                    (let ((_tl242547242836_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242549242831_)))
                          (_hd242548242834_
                           (let ()
                             (declare (not safe))
                             (##car _e242549242831_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242548242834_))
                          (let ((_e242552242839_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242548242834_))))
                            (let ((_tl242550242844_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242552242839_)))
                                  (_hd242551242842_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242552242839_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242551242842_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd242551242842_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242550242844_))
                                          (let ((_e242555242847_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242550242844_))))
                                            (let ((_tl242553242852_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242555242847_)))
                                                  (_hd242554242850_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242555242847_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242553242852_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl242547242836_))
                                                      (let ((_e242558242855_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl242547242836_))))
                (let ((_tl242556242860_
                       (let () (declare (not safe)) (##cdr _e242558242855_)))
                      (_hd242557242858_
                       (let () (declare (not safe)) (##car _e242558242855_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd242557242858_))
                      (let ((_e242561242863_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd242557242858_))))
                        (let ((_tl242559242868_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242561242863_)))
                              (_hd242560242866_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242561242863_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd242560242866_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd242560242866_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242559242868_))
                                      (let ((_e242564242871_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242559242868_))))
                                        (let ((_tl242562242876_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242564242871_)))
                                              (_hd242563242874_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242564242871_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242562242876_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242556242860_))
                                                  (let ((_e242567242879_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242556242860_))))
                                                    (let ((_tl242565242884_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242567242879_)))
                                                          (_hd242566242882_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242567242879_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd242566242882_))
                                                          (let ((_e242570242887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd242566242882_))))
                    (let ((_tl242568242892_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242570242887_)))
                          (_hd242569242890_
                           (let ()
                             (declare (not safe))
                             (##car _e242570242887_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd242569242890_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd242569242890_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242568242892_))
                                  (let ((_e242573242895_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242568242892_))))
                                    (let ((_tl242571242900_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242573242895_)))
                                          (_hd242572242898_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242573242895_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242571242900_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242565242884_))
                                              (let ((__tmp251156
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd242572242898_
                                                             _-absent-value242518242782_)))
                                                    (__tmp251155
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd242563242874_
                                                             _key242519242784_)))
                                                    (__tmp251154
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd242554242850_
                                                             _-xkwvar242520242786_)))
                                                    (__tmp251153
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd242545242826_
                                                             _-hash-ref242521242788_))))
                                                (declare (not safe))
                                                (_loop242514242777_
                                                 _lp-tl242517242796_
                                                 __tmp251156
                                                 __tmp251155
                                                 __tmp251154
                                                 __tmp251153))
                                              (___match249736249737_
                                               _e242471242636_
                                               _hd242470242639_
                                               _tl242469242641_))
                                          (___match249736249737_
                                           _e242471242636_
                                           _hd242470242639_
                                           _tl242469242641_))))
                                  (___match249736249737_
                                   _e242471242636_
                                   _hd242470242639_
                                   _tl242469242641_))
                              (___match249736249737_
                               _e242471242636_
                               _hd242470242639_
                               _tl242469242641_))
                          (___match249736249737_
                           _e242471242636_
                           _hd242470242639_
                           _tl242469242641_))))
                  (___match249736249737_
                   _e242471242636_
                   _hd242470242639_
                   _tl242469242641_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249736249737_
                                                   _e242471242636_
                                                   _hd242470242639_
                                                   _tl242469242641_))
                                              (___match249736249737_
                                               _e242471242636_
                                               _hd242470242639_
                                               _tl242469242641_))))
                                      (___match249736249737_
                                       _e242471242636_
                                       _hd242470242639_
                                       _tl242469242641_))
                                  (___match249736249737_
                                   _e242471242636_
                                   _hd242470242639_
                                   _tl242469242641_))
                              (___match249736249737_
                               _e242471242636_
                               _hd242470242639_
                               _tl242469242641_))))
                      (___match249736249737_
                       _e242471242636_
                       _hd242470242639_
                       _tl242469242641_))))
              (___match249736249737_
               _e242471242636_
               _hd242470242639_
               _tl242469242641_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249736249737_
                                                   _e242471242636_
                                                   _hd242470242639_
                                                   _tl242469242641_))))
                                          (___match249736249737_
                                           _e242471242636_
                                           _hd242470242639_
                                           _tl242469242641_))
                                      (___match249736249737_
                                       _e242471242636_
                                       _hd242470242639_
                                       _tl242469242641_))
                                  (___match249736249737_
                                   _e242471242636_
                                   _hd242470242639_
                                   _tl242469242641_))))
                          (___match249736249737_
                           _e242471242636_
                           _hd242470242639_
                           _tl242469242641_))))
                  (___match249736249737_
                   _e242471242636_
                   _hd242470242639_
                   _tl242469242641_))
              (___match249736249737_
               _e242471242636_
               _hd242470242639_
               _tl242469242641_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match249736249737_
                                               _e242471242636_
                                               _hd242470242639_
                                               _tl242469242641_))
                                          (___match249736249737_
                                           _e242471242636_
                                           _hd242470242639_
                                           _tl242469242641_))
                                      (___match249736249737_
                                       _e242471242636_
                                       _hd242470242639_
                                       _tl242469242641_))))
                              (___match249736249737_
                               _e242471242636_
                               _hd242470242639_
                               _tl242469242641_))))
                      (___match249736249737_
                       _e242471242636_
                       _hd242470242639_
                       _tl242469242641_))
                  (___match249736249737_
                   _e242471242636_
                   _hd242470242639_
                   _tl242469242641_))
              (___match249736249737_
               _e242471242636_
               _hd242470242639_
               _tl242469242641_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match249736249737_
                                               _e242471242636_
                                               _hd242470242639_
                                               _tl242469242641_))))
                                      (let ((_-hash-ref242525242909_
                                             (reverse _-hash-ref242521242788_))
                                            (_-xkwvar242524242907_
                                             (reverse _-xkwvar242520242786_))
                                            (_key242523242905_
                                             (reverse _key242519242784_))
                                            (_-absent-value242522242903_
                                             (reverse _-absent-value242518242782_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl242478242665_))
                                            (let ((_L242912_ _hd242533242772_)
                                                  (_L242913_
                                                   _-absent-value242522242903_)
                                                  (_L242914_ _key242523242905_)
                                                  (_L242915_
                                                   _-xkwvar242524242907_)
                                                  (_L242916_
                                                   _-hash-ref242525242909_)
                                                  (_L242917_ _hd242509242743_)
                                                  (_L242918_ _hd242500242719_)
                                                  (_L242919_ _hd242491242695_)
                                                  (_L242920_ _tl242475242657_)
                                                  (_L242921_ _hd242476242655_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L242921_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L242920_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L242919_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L242921_
                                                          _L242917_))
                                                       (let ((__tmp251151
                                                              (let ((__tmp251152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g242974242977_ _g242975242979_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g242974242977_ _g242975242979_)))))
                        (declare (not safe))
                        (foldr1 __tmp251152 '() _L242914_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp251151))
               (let ((__tmp251150
                      (lambda (_g242981242983_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g242981242983_
                           'hash-ref))))
                     (__tmp251148
                      (let ((__tmp251149
                             (lambda (_g242985242988_ _g242986242990_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g242985242988_ _g242986242990_)))))
                        (declare (not safe))
                        (foldr1 __tmp251149 '() _L242916_))))
                 (declare (not safe))
                 (andmap1 __tmp251150 __tmp251148))
               (let ((__tmp251147
                      (lambda (_g242992242994_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g242992242994_
                           'absent-value))))
                     (__tmp251145
                      (let ((__tmp251146
                             (lambda (_g242996242999_ _g242997243001_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g242996242999_ _g242997243001_)))))
                        (declare (not safe))
                        (foldr1 __tmp251146 '() _L242913_))))
                 (declare (not safe))
                 (andmap1 __tmp251147 __tmp251145))
               (let ((__tmp251144
                      (lambda (_g243003243005_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g243003243005_ _L242921_))))
                     (__tmp251142
                      (let ((__tmp251143
                             (lambda (_g243007243010_ _g243008243012_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g243007243010_ _g243008243012_)))))
                        (declare (not safe))
                        (foldr1 __tmp251143 '() _L242915_))))
                 (declare (not safe))
                 (andmap1 __tmp251144 __tmp251142)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont249423249424_
                                                   _L242912_
                                                   _L242913_
                                                   _L242914_
                                                   _L242915_
                                                   _L242916_
                                                   _L242917_
                                                   _L242918_
                                                   _L242919_
                                                   _L242920_
                                                   _L242921_)
                                                  (___match249736249737_
                                                   _e242471242636_
                                                   _hd242470242639_
                                                   _tl242469242641_)))
                                            (___match249736249737_
                                             _e242471242636_
                                             _hd242470242639_
                                             _tl242469242641_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop242514242777_
                           _target242511242748_
                           '()
                           '()
                           '()
                           '())))))
                   (___match249602249603_
                    (lambda (_e242471242636_
                             _hd242470242639_
                             _tl242469242641_
                             _e242474242644_
                             _hd242473242647_
                             _tl242472242649_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242473242647_))
                          (let ((_e242477242652_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242473242647_))))
                            (let ((_tl242475242657_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242477242652_)))
                                  (_hd242476242655_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242477242652_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242472242649_))
                                  (let ((_e242480242660_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242472242649_))))
                                    (let ((_tl242478242665_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242480242660_)))
                                          (_hd242479242663_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242480242660_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd242479242663_))
                                          (let ((_e242483242668_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd242479242663_))))
                                            (let ((_tl242481242673_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242483242668_)))
                                                  (_hd242482242671_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242483242668_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd242482242671_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd242482242671_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242481242673_))
                                                          (let ((_e242486242676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242481242673_))))
                    (let ((_tl242484242681_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242486242676_)))
                          (_hd242485242679_
                           (let ()
                             (declare (not safe))
                             (##car _e242486242676_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242485242679_))
                          (let ((_e242489242684_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242485242679_))))
                            (let ((_tl242487242689_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242489242684_)))
                                  (_hd242488242687_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242489242684_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242488242687_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd242488242687_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242487242689_))
                                          (let ((_e242492242692_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242487242689_))))
                                            (let ((_tl242490242697_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242492242692_)))
                                                  (_hd242491242695_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242492242692_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242490242697_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl242484242681_))
                                                      (let ((_e242495242700_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl242484242681_))))
                (let ((_tl242493242705_
                       (let () (declare (not safe)) (##cdr _e242495242700_)))
                      (_hd242494242703_
                       (let () (declare (not safe)) (##car _e242495242700_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd242494242703_))
                      (let ((_e242498242708_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd242494242703_))))
                        (let ((_tl242496242713_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242498242708_)))
                              (_hd242497242711_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242498242708_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd242497242711_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd242497242711_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242496242713_))
                                      (let ((_e242501242716_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242496242713_))))
                                        (let ((_tl242499242721_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242501242716_)))
                                              (_hd242500242719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242501242716_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242499242721_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242493242705_))
                                                  (let ((_e242504242724_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242493242705_))))
                                                    (let ((_tl242502242729_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242504242724_)))
                                                          (_hd242503242727_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242504242724_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd242503242727_))
                                                          (let ((_e242507242732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd242503242727_))))
                    (let ((_tl242505242737_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242507242732_)))
                          (_hd242506242735_
                           (let ()
                             (declare (not safe))
                             (##car _e242507242732_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd242506242735_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd242506242735_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242505242737_))
                                  (let ((_e242510242740_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242505242737_))))
                                    (let ((_tl242508242745_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242510242740_)))
                                          (_hd242509242743_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242510242740_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242508242745_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl242502242729_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl242502242729_))
                                                        '1)
                                                  (let ((___splice249425249426_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl242502242729_
                                                            '1))))
                                                    (let ((_tl242513242750_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249425249426_
                                                              '1)))
                                                          (_target242511242748_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249425249426_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242513242750_))
                                                          (let ((_e242528242753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242513242750_))))
                    (let ((_tl242526242758_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242528242753_)))
                          (_hd242527242756_
                           (let ()
                             (declare (not safe))
                             (##car _e242528242753_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242527242756_))
                          (let ((_e242531242761_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242527242756_))))
                            (let ((_tl242529242766_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242531242761_)))
                                  (_hd242530242764_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242531242761_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242530242764_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd242530242764_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242529242766_))
                                          (let ((_e242534242769_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242529242766_))))
                                            (let ((_tl242532242774_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242534242769_)))
                                                  (_hd242533242772_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242534242769_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242532242774_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242526242758_))
                                                      (___match249730249731_
                                                       _e242471242636_
                                                       _hd242470242639_
                                                       _tl242469242641_
                                                       _e242474242644_
                                                       _hd242473242647_
                                                       _tl242472242649_
                                                       _e242477242652_
                                                       _hd242476242655_
                                                       _tl242475242657_
                                                       _e242480242660_
                                                       _hd242479242663_
                                                       _tl242478242665_
                                                       _e242483242668_
                                                       _hd242482242671_
                                                       _tl242481242673_
                                                       _e242486242676_
                                                       _hd242485242679_
                                                       _tl242484242681_
                                                       _e242489242684_
                                                       _hd242488242687_
                                                       _tl242487242689_
                                                       _e242492242692_
                                                       _hd242491242695_
                                                       _tl242490242697_
                                                       _e242495242700_
                                                       _hd242494242703_
                                                       _tl242493242705_
                                                       _e242498242708_
                                                       _hd242497242711_
                                                       _tl242496242713_
                                                       _e242501242716_
                                                       _hd242500242719_
                                                       _tl242499242721_
                                                       _e242504242724_
                                                       _hd242503242727_
                                                       _tl242502242729_
                                                       _e242507242732_
                                                       _hd242506242735_
                                                       _tl242505242737_
                                                       _e242510242740_
                                                       _hd242509242743_
                                                       _tl242508242745_
                                                       ___splice249425249426_
                                                       _target242511242748_
                                                       _tl242513242750_
                                                       _e242528242753_
                                                       _hd242527242756_
                                                       _tl242526242758_
                                                       _e242531242761_
                                                       _hd242530242764_
                                                       _tl242529242766_
                                                       _e242534242769_
                                                       _hd242533242772_
                                                       _tl242532242774_)
                                                      (___match249736249737_
                                                       _e242471242636_
                                                       _hd242470242639_
                                                       _tl242469242641_))
                                                  (___match249736249737_
                                                   _e242471242636_
                                                   _hd242470242639_
                                                   _tl242469242641_))))
                                          (___match249736249737_
                                           _e242471242636_
                                           _hd242470242639_
                                           _tl242469242641_))
                                      (___match249736249737_
                                       _e242471242636_
                                       _hd242470242639_
                                       _tl242469242641_))
                                  (___match249736249737_
                                   _e242471242636_
                                   _hd242470242639_
                                   _tl242469242641_))))
                          (___match249736249737_
                           _e242471242636_
                           _hd242470242639_
                           _tl242469242641_))))
                  (___match249736249737_
                   _e242471242636_
                   _hd242470242639_
                   _tl242469242641_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249736249737_
                                                   _e242471242636_
                                                   _hd242470242639_
                                                   _tl242469242641_))
                                              (___match249736249737_
                                               _e242471242636_
                                               _hd242470242639_
                                               _tl242469242641_))
                                          (___match249736249737_
                                           _e242471242636_
                                           _hd242470242639_
                                           _tl242469242641_))))
                                  (___match249736249737_
                                   _e242471242636_
                                   _hd242470242639_
                                   _tl242469242641_))
                              (___match249736249737_
                               _e242471242636_
                               _hd242470242639_
                               _tl242469242641_))
                          (___match249736249737_
                           _e242471242636_
                           _hd242470242639_
                           _tl242469242641_))))
                  (___match249736249737_
                   _e242471242636_
                   _hd242470242639_
                   _tl242469242641_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249736249737_
                                                   _e242471242636_
                                                   _hd242470242639_
                                                   _tl242469242641_))
                                              (___match249736249737_
                                               _e242471242636_
                                               _hd242470242639_
                                               _tl242469242641_))))
                                      (___match249736249737_
                                       _e242471242636_
                                       _hd242470242639_
                                       _tl242469242641_))
                                  (___match249736249737_
                                   _e242471242636_
                                   _hd242470242639_
                                   _tl242469242641_))
                              (___match249736249737_
                               _e242471242636_
                               _hd242470242639_
                               _tl242469242641_))))
                      (___match249736249737_
                       _e242471242636_
                       _hd242470242639_
                       _tl242469242641_))))
              (___match249736249737_
               _e242471242636_
               _hd242470242639_
               _tl242469242641_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249736249737_
                                                   _e242471242636_
                                                   _hd242470242639_
                                                   _tl242469242641_))))
                                          (___match249736249737_
                                           _e242471242636_
                                           _hd242470242639_
                                           _tl242469242641_))
                                      (___match249736249737_
                                       _e242471242636_
                                       _hd242470242639_
                                       _tl242469242641_))
                                  (___match249736249737_
                                   _e242471242636_
                                   _hd242470242639_
                                   _tl242469242641_))))
                          (___match249736249737_
                           _e242471242636_
                           _hd242470242639_
                           _tl242469242641_))))
                  (___match249736249737_
                   _e242471242636_
                   _hd242470242639_
                   _tl242469242641_))
              (___match249736249737_
               _e242471242636_
               _hd242470242639_
               _tl242469242641_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249736249737_
                                                   _e242471242636_
                                                   _hd242470242639_
                                                   _tl242469242641_))))
                                          (___match249736249737_
                                           _e242471242636_
                                           _hd242470242639_
                                           _tl242469242641_))))
                                  (___match249736249737_
                                   _e242471242636_
                                   _hd242470242639_
                                   _tl242469242641_))))
                          (___match249736249737_
                           _e242471242636_
                           _hd242470242639_
                           _tl242469242641_))))
                   (___match249590249591_
                    (lambda (_e242404243027_
                             _hd242403243030_
                             _tl242402243032_
                             _e242407243035_
                             _hd242406243038_
                             _tl242405243040_
                             _e242410243043_
                             _hd242409243046_
                             _tl242408243048_
                             _e242413243051_
                             _hd242412243054_
                             _tl242411243056_
                             _e242416243059_
                             _hd242415243062_
                             _tl242414243064_
                             _e242419243067_
                             _hd242418243070_
                             _tl242417243072_
                             _e242422243075_
                             _hd242421243078_
                             _tl242420243080_
                             _e242425243083_
                             _hd242424243086_
                             _tl242423243088_
                             _e242428243091_
                             _hd242427243094_
                             _tl242426243096_
                             _e242431243099_
                             _hd242430243102_
                             _tl242429243104_
                             _e242434243107_
                             _hd242433243110_
                             _tl242432243112_
                             _e242437243115_
                             _hd242436243118_
                             _tl242435243120_
                             _e242440243123_
                             _hd242439243126_
                             _tl242438243128_
                             _e242443243131_
                             _hd242442243134_
                             _tl242441243136_
                             _e242446243139_
                             _hd242445243142_
                             _tl242444243144_
                             _e242449243147_
                             _hd242448243150_
                             _tl242447243152_
                             _e242452243155_
                             _hd242451243158_
                             _tl242450243160_
                             _e242455243163_
                             _hd242454243166_
                             _tl242453243168_
                             _e242458243171_
                             _hd242457243174_
                             _tl242456243176_)
                      (let ((_L243179_ _hd242457243174_)
                            (_L243180_ _hd242448243150_)
                            (_L243181_ _hd242439243126_)
                            (_L243182_ _hd242430243102_)
                            (_L243183_ _hd242421243078_)
                            (_L243184_ _hd242406243038_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L243184_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L243183_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L243182_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L243184_ _L243179_)))
                            (___kont249421249422_
                             _L243179_
                             _L243180_
                             _L243181_
                             _L243182_
                             _L243183_
                             _L243184_)
                            (___match249602249603_
                             _e242404243027_
                             _hd242403243030_
                             _tl242402243032_
                             _e242407243035_
                             _hd242406243038_
                             _tl242405243040_)))))
                   (___match249444249445_
                    (lambda (_e242404243027_ _hd242403243030_ _tl242402243032_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242402243032_))
                          (let ((_e242407243035_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242402243032_))))
                            (let ((_tl242405243040_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242407243035_)))
                                  (_hd242406243038_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242407243035_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242405243040_))
                                  (let ((_e242410243043_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242405243040_))))
                                    (let ((_tl242408243048_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242410243043_)))
                                          (_hd242409243046_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242410243043_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd242409243046_))
                                          (let ((_e242413243051_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd242409243046_))))
                                            (let ((_tl242411243056_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242413243051_)))
                                                  (_hd242412243054_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242413243051_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd242412243054_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd242412243054_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242411243056_))
                                                          (let ((_e242416243059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242411243056_))))
                    (let ((_tl242414243064_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242416243059_)))
                          (_hd242415243062_
                           (let ()
                             (declare (not safe))
                             (##car _e242416243059_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242415243062_))
                          (let ((_e242419243067_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242415243062_))))
                            (let ((_tl242417243072_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242419243067_)))
                                  (_hd242418243070_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242419243067_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242418243070_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd242418243070_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242417243072_))
                                          (let ((_e242422243075_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242417243072_))))
                                            (let ((_tl242420243080_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242422243075_)))
                                                  (_hd242421243078_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242422243075_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242420243080_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl242414243064_))
                                                      (let ((_e242425243083_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl242414243064_))))
                (let ((_tl242423243088_
                       (let () (declare (not safe)) (##cdr _e242425243083_)))
                      (_hd242424243086_
                       (let () (declare (not safe)) (##car _e242425243083_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd242424243086_))
                      (let ((_e242428243091_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd242424243086_))))
                        (let ((_tl242426243096_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242428243091_)))
                              (_hd242427243094_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242428243091_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd242427243094_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd242427243094_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242426243096_))
                                      (let ((_e242431243099_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242426243096_))))
                                        (let ((_tl242429243104_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242431243099_)))
                                              (_hd242430243102_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242431243099_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242429243104_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242423243088_))
                                                  (let ((_e242434243107_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242423243088_))))
                                                    (let ((_tl242432243112_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242434243107_)))
                                                          (_hd242433243110_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242434243107_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd242433243110_))
                                                          (let ((_e242437243115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd242433243110_))))
                    (let ((_tl242435243120_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242437243115_)))
                          (_hd242436243118_
                           (let ()
                             (declare (not safe))
                             (##car _e242437243115_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd242436243118_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd242436243118_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242435243120_))
                                  (let ((_e242440243123_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242435243120_))))
                                    (let ((_tl242438243128_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242440243123_)))
                                          (_hd242439243126_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242440243123_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242438243128_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242432243112_))
                                              (let ((_e242443243131_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242432243112_))))
                                                (let ((_tl242441243136_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242443243131_)))
                                                      (_hd242442243134_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242443243131_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd242442243134_))
                                                      (let ((_e242446243139_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd242442243134_))))
                (let ((_tl242444243144_
                       (let () (declare (not safe)) (##cdr _e242446243139_)))
                      (_hd242445243142_
                       (let () (declare (not safe)) (##car _e242446243139_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd242445243142_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd242445243142_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242444243144_))
                              (let ((_e242449243147_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242444243144_))))
                                (let ((_tl242447243152_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242449243147_)))
                                      (_hd242448243150_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242449243147_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242447243152_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242441243136_))
                                          (let ((_e242452243155_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242441243136_))))
                                            (let ((_tl242450243160_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242452243155_)))
                                                  (_hd242451243158_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242452243155_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd242451243158_))
                                                  (let ((_e242455243163_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd242451243158_))))
                                                    (let ((_tl242453243168_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242455243163_)))
                                                          (_hd242454243166_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242455243163_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd242454243166_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd242454243166_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242453243168_))
                          (let ((_e242458243171_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242453243168_))))
                            (let ((_tl242456243176_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242458243171_)))
                                  (_hd242457243174_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242458243171_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242456243176_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242450243160_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242408243048_))
                                          (___match249590249591_
                                           _e242404243027_
                                           _hd242403243030_
                                           _tl242402243032_
                                           _e242407243035_
                                           _hd242406243038_
                                           _tl242405243040_
                                           _e242410243043_
                                           _hd242409243046_
                                           _tl242408243048_
                                           _e242413243051_
                                           _hd242412243054_
                                           _tl242411243056_
                                           _e242416243059_
                                           _hd242415243062_
                                           _tl242414243064_
                                           _e242419243067_
                                           _hd242418243070_
                                           _tl242417243072_
                                           _e242422243075_
                                           _hd242421243078_
                                           _tl242420243080_
                                           _e242425243083_
                                           _hd242424243086_
                                           _tl242423243088_
                                           _e242428243091_
                                           _hd242427243094_
                                           _tl242426243096_
                                           _e242431243099_
                                           _hd242430243102_
                                           _tl242429243104_
                                           _e242434243107_
                                           _hd242433243110_
                                           _tl242432243112_
                                           _e242437243115_
                                           _hd242436243118_
                                           _tl242435243120_
                                           _e242440243123_
                                           _hd242439243126_
                                           _tl242438243128_
                                           _e242443243131_
                                           _hd242442243134_
                                           _tl242441243136_
                                           _e242446243139_
                                           _hd242445243142_
                                           _tl242444243144_
                                           _e242449243147_
                                           _hd242448243150_
                                           _tl242447243152_
                                           _e242452243155_
                                           _hd242451243158_
                                           _tl242450243160_
                                           _e242455243163_
                                           _hd242454243166_
                                           _tl242453243168_
                                           _e242458243171_
                                           _hd242457243174_
                                           _tl242456243176_)
                                          (___match249602249603_
                                           _e242404243027_
                                           _hd242403243030_
                                           _tl242402243032_
                                           _e242407243035_
                                           _hd242406243038_
                                           _tl242405243040_))
                                      (___match249602249603_
                                       _e242404243027_
                                       _hd242403243030_
                                       _tl242402243032_
                                       _e242407243035_
                                       _hd242406243038_
                                       _tl242405243040_))
                                  (___match249602249603_
                                   _e242404243027_
                                   _hd242403243030_
                                   _tl242402243032_
                                   _e242407243035_
                                   _hd242406243038_
                                   _tl242405243040_))))
                          (___match249602249603_
                           _e242404243027_
                           _hd242403243030_
                           _tl242402243032_
                           _e242407243035_
                           _hd242406243038_
                           _tl242405243040_))
                      (___match249602249603_
                       _e242404243027_
                       _hd242403243030_
                       _tl242402243032_
                       _e242407243035_
                       _hd242406243038_
                       _tl242405243040_))
                  (___match249602249603_
                   _e242404243027_
                   _hd242403243030_
                   _tl242402243032_
                   _e242407243035_
                   _hd242406243038_
                   _tl242405243040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249602249603_
                                                   _e242404243027_
                                                   _hd242403243030_
                                                   _tl242402243032_
                                                   _e242407243035_
                                                   _hd242406243038_
                                                   _tl242405243040_))))
                                          (___match249602249603_
                                           _e242404243027_
                                           _hd242403243030_
                                           _tl242402243032_
                                           _e242407243035_
                                           _hd242406243038_
                                           _tl242405243040_))
                                      (___match249602249603_
                                       _e242404243027_
                                       _hd242403243030_
                                       _tl242402243032_
                                       _e242407243035_
                                       _hd242406243038_
                                       _tl242405243040_))))
                              (___match249602249603_
                               _e242404243027_
                               _hd242403243030_
                               _tl242402243032_
                               _e242407243035_
                               _hd242406243038_
                               _tl242405243040_))
                          (___match249602249603_
                           _e242404243027_
                           _hd242403243030_
                           _tl242402243032_
                           _e242407243035_
                           _hd242406243038_
                           _tl242405243040_))
                      (___match249602249603_
                       _e242404243027_
                       _hd242403243030_
                       _tl242402243032_
                       _e242407243035_
                       _hd242406243038_
                       _tl242405243040_))))
              (___match249602249603_
               _e242404243027_
               _hd242403243030_
               _tl242402243032_
               _e242407243035_
               _hd242406243038_
               _tl242405243040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match249602249603_
                                               _e242404243027_
                                               _hd242403243030_
                                               _tl242402243032_
                                               _e242407243035_
                                               _hd242406243038_
                                               _tl242405243040_))
                                          (___match249602249603_
                                           _e242404243027_
                                           _hd242403243030_
                                           _tl242402243032_
                                           _e242407243035_
                                           _hd242406243038_
                                           _tl242405243040_))))
                                  (___match249602249603_
                                   _e242404243027_
                                   _hd242403243030_
                                   _tl242402243032_
                                   _e242407243035_
                                   _hd242406243038_
                                   _tl242405243040_))
                              (___match249602249603_
                               _e242404243027_
                               _hd242403243030_
                               _tl242402243032_
                               _e242407243035_
                               _hd242406243038_
                               _tl242405243040_))
                          (___match249602249603_
                           _e242404243027_
                           _hd242403243030_
                           _tl242402243032_
                           _e242407243035_
                           _hd242406243038_
                           _tl242405243040_))))
                  (___match249602249603_
                   _e242404243027_
                   _hd242403243030_
                   _tl242402243032_
                   _e242407243035_
                   _hd242406243038_
                   _tl242405243040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249602249603_
                                                   _e242404243027_
                                                   _hd242403243030_
                                                   _tl242402243032_
                                                   _e242407243035_
                                                   _hd242406243038_
                                                   _tl242405243040_))
                                              (___match249602249603_
                                               _e242404243027_
                                               _hd242403243030_
                                               _tl242402243032_
                                               _e242407243035_
                                               _hd242406243038_
                                               _tl242405243040_))))
                                      (___match249602249603_
                                       _e242404243027_
                                       _hd242403243030_
                                       _tl242402243032_
                                       _e242407243035_
                                       _hd242406243038_
                                       _tl242405243040_))
                                  (___match249602249603_
                                   _e242404243027_
                                   _hd242403243030_
                                   _tl242402243032_
                                   _e242407243035_
                                   _hd242406243038_
                                   _tl242405243040_))
                              (___match249602249603_
                               _e242404243027_
                               _hd242403243030_
                               _tl242402243032_
                               _e242407243035_
                               _hd242406243038_
                               _tl242405243040_))))
                      (___match249602249603_
                       _e242404243027_
                       _hd242403243030_
                       _tl242402243032_
                       _e242407243035_
                       _hd242406243038_
                       _tl242405243040_))))
              (___match249602249603_
               _e242404243027_
               _hd242403243030_
               _tl242402243032_
               _e242407243035_
               _hd242406243038_
               _tl242405243040_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249602249603_
                                                   _e242404243027_
                                                   _hd242403243030_
                                                   _tl242402243032_
                                                   _e242407243035_
                                                   _hd242406243038_
                                                   _tl242405243040_))))
                                          (___match249602249603_
                                           _e242404243027_
                                           _hd242403243030_
                                           _tl242402243032_
                                           _e242407243035_
                                           _hd242406243038_
                                           _tl242405243040_))
                                      (___match249602249603_
                                       _e242404243027_
                                       _hd242403243030_
                                       _tl242402243032_
                                       _e242407243035_
                                       _hd242406243038_
                                       _tl242405243040_))
                                  (___match249602249603_
                                   _e242404243027_
                                   _hd242403243030_
                                   _tl242402243032_
                                   _e242407243035_
                                   _hd242406243038_
                                   _tl242405243040_))))
                          (___match249602249603_
                           _e242404243027_
                           _hd242403243030_
                           _tl242402243032_
                           _e242407243035_
                           _hd242406243038_
                           _tl242405243040_))))
                  (___match249602249603_
                   _e242404243027_
                   _hd242403243030_
                   _tl242402243032_
                   _e242407243035_
                   _hd242406243038_
                   _tl242405243040_))
              (___match249602249603_
               _e242404243027_
               _hd242403243030_
               _tl242402243032_
               _e242407243035_
               _hd242406243038_
               _tl242405243040_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249602249603_
                                                   _e242404243027_
                                                   _hd242403243030_
                                                   _tl242402243032_
                                                   _e242407243035_
                                                   _hd242406243038_
                                                   _tl242405243040_))))
                                          (___match249602249603_
                                           _e242404243027_
                                           _hd242403243030_
                                           _tl242402243032_
                                           _e242407243035_
                                           _hd242406243038_
                                           _tl242405243040_))))
                                  (___match249602249603_
                                   _e242404243027_
                                   _hd242403243030_
                                   _tl242402243032_
                                   _e242407243035_
                                   _hd242406243038_
                                   _tl242405243040_))))
                          (___match249736249737_
                           _e242404243027_
                           _hd242403243030_
                           _tl242402243032_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx249417249418_))
                  (let ((_e242395243244_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx249417249418_))))
                    (let ((_tl242393243249_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242395243244_)))
                          (_hd242394243247_
                           (let ()
                             (declare (not safe))
                             (##car _e242395243244_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L243252_ _tl242393243249_))
                            (___kont249419249420_ _L243252_))
                          (___match249444249445_
                           _e242395243244_
                           _hd242394243247_
                           _tl242393243249_))))
                  (let () (declare (not safe)) (_g242390242586_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx242339_)
        (letrec ((_clause-e242341_
                  (lambda (_form242382_)
                    (let ((__obj251090
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
                       __obj251090
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form242382_))
                       (if (let ((__tmp251157
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp251157))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form242382_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form242382_))
                               '#f)
                           '#f))
                      __obj251090))))
          (let* ((_g242343242353_
                  (lambda (_g242344242350_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g242344242350_))))
                 (_g242342242379_
                  (lambda (_g242344242356_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g242344242356_))
                        (let ((_e242348242358_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g242344242356_))))
                          (let ((_hd242347242361_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e242348242358_)))
                                (_tl242346242363_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e242348242358_))))
                            ((lambda (_L242366_)
                               (let ((_clauses242377_
                                      (map _clause-e242341_ _L242366_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses242377_)))
                             _tl242346242363_)))
                        (let ()
                          (declare (not safe))
                          (_g242343242353_ _g242344242356_))))))
            (declare (not safe))
            (_g242342242379_ _stx242339_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx242271_)
        (let* ((_g242273242290_
                (lambda (_g242274242287_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g242274242287_))))
               (_g242272242336_
                (lambda (_g242274242293_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g242274242293_))
                      (let ((_e242279242295_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g242274242293_))))
                        (let ((_hd242278242298_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242279242295_)))
                              (_tl242277242300_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242279242295_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242277242300_))
                              (let ((_e242282242303_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242277242300_))))
                                (let ((_hd242281242306_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242282242303_)))
                                      (_tl242280242308_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242282242303_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242280242308_))
                                      (let ((_e242285242311_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242280242308_))))
                                        (let ((_hd242284242314_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242285242311_)))
                                              (_tl242283242316_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242285242311_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242283242316_))
                                              ((lambda (_L242319_ _L242320_)
                                                 (let ((__tmp251158
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L242319_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp251158
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd242284242314_
                                               _hd242281242306_)
                                              (let ()
                                                (declare (not safe))
                                                (_g242273242290_
                                                 _g242274242293_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g242273242290_ _g242274242293_)))))
                              (let ()
                                (declare (not safe))
                                (_g242273242290_ _g242274242293_)))))
                      (let ()
                        (declare (not safe))
                        (_g242273242290_ _g242274242293_))))))
          (declare (not safe))
          (_g242272242336_ _stx242271_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx242176_)
        (let* ((___stx249745249746_ _stx242176_)
               (_g242179242199_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249745249746_)))))
          (let ((___kont249747249748_
                 (lambda (_L242243_ _L242244_)
                   (let ((_type-e242261242263_
                          (let ((__tmp251159
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L242244_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp251159))))
                     (if _type-e242261242263_
                         (let ((_type-e242266_ _type-e242261242263_))
                           (_type-e242266_ _stx242176_ _L242243_))
                         '#f))))
                (___kont249749249750_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx249745249746_))
                (let ((_e242185242211_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx249745249746_))))
                  (let ((_tl242183242216_
                         (let () (declare (not safe)) (##cdr _e242185242211_)))
                        (_hd242184242214_
                         (let ()
                           (declare (not safe))
                           (##car _e242185242211_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl242183242216_))
                        (let ((_e242188242219_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl242183242216_))))
                          (let ((_tl242186242224_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e242188242219_)))
                                (_hd242187242222_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e242188242219_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd242187242222_))
                                (let ((_e242191242227_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd242187242222_))))
                                  (let ((_tl242189242232_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e242191242227_)))
                                        (_hd242190242230_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e242191242227_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd242190242230_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd242190242230_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl242189242232_))
                                                (let ((_e242194242235_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl242189242232_))))
                                                  (let ((_tl242192242240_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e242194242235_)))
                                                        (_hd242193242238_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e242194242235_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl242192242240_))
                                                        (___kont249747249748_
                                                         _tl242186242224_
                                                         _hd242193242238_)
                                                        (___kont249749249750_))))
                                                (___kont249749249750_))
                                            (___kont249749249750_))
                                        (___kont249749249750_))))
                                (___kont249749249750_))))
                        (___kont249749249750_))))
                (___kont249749249750_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx242125_)
        (let* ((_g242127242140_
                (lambda (_g242128242137_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g242128242137_))))
               (_g242126242173_
                (lambda (_g242128242143_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g242128242143_))
                      (let ((_e242132242145_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g242128242143_))))
                        (let ((_hd242131242148_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242132242145_)))
                              (_tl242130242150_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242132242145_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242130242150_))
                              (let ((_e242135242153_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242130242150_))))
                                (let ((_hd242134242156_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242135242153_)))
                                      (_tl242133242158_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242135242153_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242133242158_))
                                      ((lambda (_L242161_)
                                         (let ((__tmp251160
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L242161_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp251160)))
                                       _hd242134242156_)
                                      (let ()
                                        (declare (not safe))
                                        (_g242127242140_ _g242128242143_)))))
                              (let ()
                                (declare (not safe))
                                (_g242127242140_ _g242128242143_)))))
                      (let ()
                        (declare (not safe))
                        (_g242127242140_ _g242128242143_))))))
          (declare (not safe))
          (_g242126242173_ _stx242125_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form241359_)
        (let* ((___stx249783249784_ _form241359_)
               (_g241364241521_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249783249784_)))))
          (let ((___kont249785249786_
                 (lambda (_L242045_ _L242046_ _L242047_) '#t))
                (___kont249791249792_
                 (lambda (_L241833_
                          _L241834_
                          _L241835_
                          _L241836_
                          _L241837_
                          _L241838_)
                   '#t))
                (___kont249797249798_
                 (lambda (_L241629_ _L241630_ _L241631_ _L241632_) '#t))
                (___kont249799249800_ (lambda () '#f)))
            (let* ((___match249924249925_
                    (lambda (_e241483241533_
                             _hd241482241536_
                             _tl241481241538_
                             _e241486241541_
                             _hd241485241544_
                             _tl241484241546_
                             _e241489241549_
                             _hd241488241552_
                             _tl241487241554_
                             _e241492241557_
                             _hd241491241560_
                             _tl241490241562_
                             _e241495241565_
                             _hd241494241568_
                             _tl241493241570_
                             _e241498241573_
                             _hd241497241576_
                             _tl241496241578_
                             _e241501241581_
                             _hd241500241584_
                             _tl241499241586_
                             _e241504241589_
                             _hd241503241592_
                             _tl241502241594_
                             _e241507241597_
                             _hd241506241600_
                             _tl241505241602_
                             _e241510241605_
                             _hd241509241608_
                             _tl241508241610_
                             _e241513241613_
                             _hd241512241616_
                             _tl241511241618_
                             _e241516241621_
                             _hd241515241624_
                             _tl241514241626_)
                      (let ((_L241629_ _hd241515241624_)
                            (_L241630_ _hd241506241600_)
                            (_L241631_ _hd241497241576_)
                            (_L241632_ _hd241482241536_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L241632_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L241631_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L241632_ _L241629_))
                                 (let ((__tmp251161
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L241630_
                                           _L241632_))))
                                   (declare (not safe))
                                   (not __tmp251161)))
                            (___kont249797249798_
                             _L241629_
                             _L241630_
                             _L241631_
                             _L241632_)
                            (___kont249799249800_)))))
                   (___match249896249897_
                    (lambda (_e241483241533_
                             _hd241482241536_
                             _tl241481241538_
                             _e241486241541_
                             _hd241485241544_
                             _tl241484241546_
                             _e241489241549_
                             _hd241488241552_
                             _tl241487241554_
                             _e241492241557_
                             _hd241491241560_
                             _tl241490241562_
                             _e241495241565_
                             _hd241494241568_
                             _tl241493241570_
                             _e241498241573_
                             _hd241497241576_
                             _tl241496241578_
                             _e241501241581_
                             _hd241500241584_
                             _tl241499241586_
                             _e241504241589_
                             _hd241503241592_
                             _tl241502241594_
                             _e241507241597_
                             _hd241506241600_
                             _tl241505241602_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl241499241586_))
                          (let ((_e241510241605_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl241499241586_))))
                            (let ((_tl241508241610_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e241510241605_)))
                                  (_hd241509241608_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e241510241605_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd241509241608_))
                                  (let ((_e241513241613_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd241509241608_))))
                                    (let ((_tl241511241618_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e241513241613_)))
                                          (_hd241512241616_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e241513241613_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd241512241616_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd241512241616_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl241511241618_))
                                                  (let ((_e241516241621_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl241511241618_))))
                                                    (let ((_tl241514241626_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e241516241621_)))
                                                          (_hd241515241624_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e241516241621_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl241514241626_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl241508241610_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl241484241546_))
                          (___match249924249925_
                           _e241483241533_
                           _hd241482241536_
                           _tl241481241538_
                           _e241486241541_
                           _hd241485241544_
                           _tl241484241546_
                           _e241489241549_
                           _hd241488241552_
                           _tl241487241554_
                           _e241492241557_
                           _hd241491241560_
                           _tl241490241562_
                           _e241495241565_
                           _hd241494241568_
                           _tl241493241570_
                           _e241498241573_
                           _hd241497241576_
                           _tl241496241578_
                           _e241501241581_
                           _hd241500241584_
                           _tl241499241586_
                           _e241504241589_
                           _hd241503241592_
                           _tl241502241594_
                           _e241507241597_
                           _hd241506241600_
                           _tl241505241602_
                           _e241510241605_
                           _hd241509241608_
                           _tl241508241610_
                           _e241513241613_
                           _hd241512241616_
                           _tl241511241618_
                           _e241516241621_
                           _hd241515241624_
                           _tl241514241626_)
                          (___kont249799249800_))
                      (___kont249799249800_))
                  (___kont249799249800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont249799249800_))
                                              (___kont249799249800_))
                                          (___kont249799249800_))))
                                  (___kont249799249800_))))
                          (___kont249799249800_))))
                   (___match249826249827_
                    (lambda (_e241419241673_
                             _hd241418241676_
                             _tl241417241678_
                             ___splice249793249794_
                             _target241420241681_
                             _tl241422241683_)
                      (letrec ((_loop241423241686_
                                (lambda (_hd241421241689_ _arg241427241691_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd241421241689_))
                                      (let ((_e241424241694_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd241421241689_))))
                                        (let ((_lp-tl241426241699_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241424241694_)))
                                              (_lp-hd241425241697_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241424241694_))))
                                          (let ((__tmp251176
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd241425241697_
                                                         _arg241427241691_))))
                                            (declare (not safe))
                                            (_loop241423241686_
                                             _lp-tl241426241699_
                                             __tmp251176))))
                                      (let ((_arg241428241702_
                                             (reverse _arg241427241691_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241417241678_))
                                            (let ((_e241431241705_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241417241678_))))
                                              (let ((_tl241429241710_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241431241705_)))
                                                    (_hd241430241708_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241431241705_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd241430241708_))
                                                    (let ((_e241434241713_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd241430241708_))))
                                                      (let ((_tl241432241718_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241434241713_)))
                    (_hd241433241716_
                     (let () (declare (not safe)) (##car _e241434241713_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241433241716_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd241433241716_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241432241718_))
                            (let ((_e241437241721_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241432241718_))))
                              (let ((_tl241435241726_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241437241721_)))
                                    (_hd241436241724_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241437241721_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241436241724_))
                                    (let ((_e241440241729_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241436241724_))))
                                      (let ((_tl241438241734_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241440241729_)))
                                            (_hd241439241732_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241440241729_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241439241732_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241439241732_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241438241734_))
                                                    (let ((_e241443241737_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241438241734_))))
                                                      (let ((_tl241441241742_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241443241737_)))
                    (_hd241442241740_
                     (let () (declare (not safe)) (##car _e241443241737_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241441241742_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl241435241726_))
                        (let ((_e241446241745_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl241435241726_))))
                          (let ((_tl241444241750_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e241446241745_)))
                                (_hd241445241748_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e241446241745_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd241445241748_))
                                (let ((_e241449241753_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd241445241748_))))
                                  (let ((_tl241447241758_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241449241753_)))
                                        (_hd241448241756_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241449241753_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd241448241756_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd241448241756_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl241447241758_))
                                                (let ((_e241452241761_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl241447241758_))))
                                                  (let ((_tl241450241766_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e241452241761_)))
                                                        (_hd241451241764_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e241452241761_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl241450241766_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl241444241750_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl241444241750_))
                              '1)
                        (let ((___splice249795249796_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl241444241750_
                                  '1))))
                          (let ((_tl241455241771_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice249795249796_ '1)))
                                (_target241453241769_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice249795249796_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241455241771_))
                                (let ((_e241464241774_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241455241771_))))
                                  (let ((_tl241462241779_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241464241774_)))
                                        (_hd241463241777_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241464241774_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd241463241777_))
                                        (let ((_e241467241782_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd241463241777_))))
                                          (let ((_tl241465241787_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e241467241782_)))
                                                (_hd241466241785_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e241467241782_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd241466241785_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd241466241785_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl241465241787_))
                                                        (let ((_e241470241790_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl241465241787_))))
                  (let ((_tl241468241795_
                         (let () (declare (not safe)) (##cdr _e241470241790_)))
                        (_hd241469241793_
                         (let ()
                           (declare (not safe))
                           (##car _e241470241790_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl241468241795_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241462241779_))
                            (letrec ((_loop241456241798_
                                      (lambda (_hd241454241801_
                                               _xarg241460241803_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd241454241801_))
                                            (let ((_e241457241806_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd241454241801_))))
                                              (let ((_lp-tl241459241811_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241457241806_)))
                                                    (_lp-hd241458241809_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241457241806_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd241458241809_))
                                                    (let ((_e241473241814_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd241458241809_))))
                                                      (let ((_tl241471241819_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241473241814_)))
                    (_hd241472241817_
                     (let () (declare (not safe)) (##car _e241473241814_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241472241817_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd241472241817_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241471241819_))
                            (let ((_e241476241822_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241471241819_))))
                              (let ((_tl241474241827_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241476241822_)))
                                    (_hd241475241825_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241476241822_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241474241827_))
                                    (let ((__tmp251175
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd241475241825_
                                                   _xarg241460241803_))))
                                      (declare (not safe))
                                      (_loop241456241798_
                                       _lp-tl241459241811_
                                       __tmp251175))
                                    (___match249896249897_
                                     _e241419241673_
                                     _hd241418241676_
                                     _tl241417241678_
                                     _e241431241705_
                                     _hd241430241708_
                                     _tl241429241710_
                                     _e241434241713_
                                     _hd241433241716_
                                     _tl241432241718_
                                     _e241437241721_
                                     _hd241436241724_
                                     _tl241435241726_
                                     _e241440241729_
                                     _hd241439241732_
                                     _tl241438241734_
                                     _e241443241737_
                                     _hd241442241740_
                                     _tl241441241742_
                                     _e241446241745_
                                     _hd241445241748_
                                     _tl241444241750_
                                     _e241449241753_
                                     _hd241448241756_
                                     _tl241447241758_
                                     _e241452241761_
                                     _hd241451241764_
                                     _tl241450241766_))))
                            (___match249896249897_
                             _e241419241673_
                             _hd241418241676_
                             _tl241417241678_
                             _e241431241705_
                             _hd241430241708_
                             _tl241429241710_
                             _e241434241713_
                             _hd241433241716_
                             _tl241432241718_
                             _e241437241721_
                             _hd241436241724_
                             _tl241435241726_
                             _e241440241729_
                             _hd241439241732_
                             _tl241438241734_
                             _e241443241737_
                             _hd241442241740_
                             _tl241441241742_
                             _e241446241745_
                             _hd241445241748_
                             _tl241444241750_
                             _e241449241753_
                             _hd241448241756_
                             _tl241447241758_
                             _e241452241761_
                             _hd241451241764_
                             _tl241450241766_))
                        (___match249896249897_
                         _e241419241673_
                         _hd241418241676_
                         _tl241417241678_
                         _e241431241705_
                         _hd241430241708_
                         _tl241429241710_
                         _e241434241713_
                         _hd241433241716_
                         _tl241432241718_
                         _e241437241721_
                         _hd241436241724_
                         _tl241435241726_
                         _e241440241729_
                         _hd241439241732_
                         _tl241438241734_
                         _e241443241737_
                         _hd241442241740_
                         _tl241441241742_
                         _e241446241745_
                         _hd241445241748_
                         _tl241444241750_
                         _e241449241753_
                         _hd241448241756_
                         _tl241447241758_
                         _e241452241761_
                         _hd241451241764_
                         _tl241450241766_))
                    (___match249896249897_
                     _e241419241673_
                     _hd241418241676_
                     _tl241417241678_
                     _e241431241705_
                     _hd241430241708_
                     _tl241429241710_
                     _e241434241713_
                     _hd241433241716_
                     _tl241432241718_
                     _e241437241721_
                     _hd241436241724_
                     _tl241435241726_
                     _e241440241729_
                     _hd241439241732_
                     _tl241438241734_
                     _e241443241737_
                     _hd241442241740_
                     _tl241441241742_
                     _e241446241745_
                     _hd241445241748_
                     _tl241444241750_
                     _e241449241753_
                     _hd241448241756_
                     _tl241447241758_
                     _e241452241761_
                     _hd241451241764_
                     _tl241450241766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match249896249897_
                                                     _e241419241673_
                                                     _hd241418241676_
                                                     _tl241417241678_
                                                     _e241431241705_
                                                     _hd241430241708_
                                                     _tl241429241710_
                                                     _e241434241713_
                                                     _hd241433241716_
                                                     _tl241432241718_
                                                     _e241437241721_
                                                     _hd241436241724_
                                                     _tl241435241726_
                                                     _e241440241729_
                                                     _hd241439241732_
                                                     _tl241438241734_
                                                     _e241443241737_
                                                     _hd241442241740_
                                                     _tl241441241742_
                                                     _e241446241745_
                                                     _hd241445241748_
                                                     _tl241444241750_
                                                     _e241449241753_
                                                     _hd241448241756_
                                                     _tl241447241758_
                                                     _e241452241761_
                                                     _hd241451241764_
                                                     _tl241450241766_))))
                                            (let ((_xarg241461241830_
                                                   (reverse _xarg241460241803_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl241429241710_))
                                                  (let ((_L241833_
                                                         _hd241469241793_)
                                                        (_L241834_
                                                         _xarg241461241830_)
                                                        (_L241835_
                                                         _hd241451241764_)
                                                        (_L241836_
                                                         _hd241442241740_)
                                                        (_L241837_
                                                         _tl241422241683_)
                                                        (_L241838_
                                                         _arg241428241702_))
                                                    (if (and (let ((__tmp251173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp251174
                                   (lambda (_g241881241884_ _g241882241886_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g241881241884_
                                             _g241882241886_)))))
                              (declare (not safe))
                              (foldr1 __tmp251174 '() _L241838_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp251173))
                     (let () (declare (not safe)) (gx#identifier? _L241837_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L241836_ 'apply))
                     (fx= (length (let ((__tmp251171
                                         (lambda (_g241888241891_
                                                  _g241889241893_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g241888241891_
                                                   _g241889241893_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp251171 '() _L241838_)))
                          (length (let ((__tmp251172
                                         (lambda (_g241895241898_
                                                  _g241896241900_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g241895241898_
                                                   _g241896241900_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp251172 '() _L241834_))))
                     (let ((__tmp251169
                            (let ((__tmp251170
                                   (lambda (_g241902241905_ _g241903241907_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g241902241905_
                                             _g241903241907_)))))
                              (declare (not safe))
                              (foldr1 __tmp251170 '() _L241838_)))
                           (__tmp251167
                            (let ((__tmp251168
                                   (lambda (_g241909241912_ _g241910241914_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g241909241912_
                                             _g241910241914_)))))
                              (declare (not safe))
                              (foldr1 __tmp251168 '() _L241834_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp251169 __tmp251167))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L241837_ _L241833_))
                     (let ((__tmp251162
                            (let ((__tmp251166
                                   (lambda (_g241916241918_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g241916241918_
                                        _L241835_))))
                                  (__tmp251163
                                   (let ((__tmp251165
                                          (lambda (_g241920241923_
                                                   _g241921241925_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g241920241923_
                                                    _g241921241925_))))
                                         (__tmp251164
                                          (let ()
                                            (declare (not safe))
                                            (cons _L241837_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp251165
                                             __tmp251164
                                             _L241838_))))
                              (declare (not safe))
                              (find __tmp251166 __tmp251163))))
                       (declare (not safe))
                       (not __tmp251162)))
                (___kont249791249792_
                 _L241833_
                 _L241834_
                 _L241835_
                 _L241836_
                 _L241837_
                 _L241838_)
                (___match249896249897_
                 _e241419241673_
                 _hd241418241676_
                 _tl241417241678_
                 _e241431241705_
                 _hd241430241708_
                 _tl241429241710_
                 _e241434241713_
                 _hd241433241716_
                 _tl241432241718_
                 _e241437241721_
                 _hd241436241724_
                 _tl241435241726_
                 _e241440241729_
                 _hd241439241732_
                 _tl241438241734_
                 _e241443241737_
                 _hd241442241740_
                 _tl241441241742_
                 _e241446241745_
                 _hd241445241748_
                 _tl241444241750_
                 _e241449241753_
                 _hd241448241756_
                 _tl241447241758_
                 _e241452241761_
                 _hd241451241764_
                 _tl241450241766_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249896249897_
                                                   _e241419241673_
                                                   _hd241418241676_
                                                   _tl241417241678_
                                                   _e241431241705_
                                                   _hd241430241708_
                                                   _tl241429241710_
                                                   _e241434241713_
                                                   _hd241433241716_
                                                   _tl241432241718_
                                                   _e241437241721_
                                                   _hd241436241724_
                                                   _tl241435241726_
                                                   _e241440241729_
                                                   _hd241439241732_
                                                   _tl241438241734_
                                                   _e241443241737_
                                                   _hd241442241740_
                                                   _tl241441241742_
                                                   _e241446241745_
                                                   _hd241445241748_
                                                   _tl241444241750_
                                                   _e241449241753_
                                                   _hd241448241756_
                                                   _tl241447241758_
                                                   _e241452241761_
                                                   _hd241451241764_
                                                   _tl241450241766_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop241456241798_ _target241453241769_ '())))
                            (___match249896249897_
                             _e241419241673_
                             _hd241418241676_
                             _tl241417241678_
                             _e241431241705_
                             _hd241430241708_
                             _tl241429241710_
                             _e241434241713_
                             _hd241433241716_
                             _tl241432241718_
                             _e241437241721_
                             _hd241436241724_
                             _tl241435241726_
                             _e241440241729_
                             _hd241439241732_
                             _tl241438241734_
                             _e241443241737_
                             _hd241442241740_
                             _tl241441241742_
                             _e241446241745_
                             _hd241445241748_
                             _tl241444241750_
                             _e241449241753_
                             _hd241448241756_
                             _tl241447241758_
                             _e241452241761_
                             _hd241451241764_
                             _tl241450241766_))
                        (___match249896249897_
                         _e241419241673_
                         _hd241418241676_
                         _tl241417241678_
                         _e241431241705_
                         _hd241430241708_
                         _tl241429241710_
                         _e241434241713_
                         _hd241433241716_
                         _tl241432241718_
                         _e241437241721_
                         _hd241436241724_
                         _tl241435241726_
                         _e241440241729_
                         _hd241439241732_
                         _tl241438241734_
                         _e241443241737_
                         _hd241442241740_
                         _tl241441241742_
                         _e241446241745_
                         _hd241445241748_
                         _tl241444241750_
                         _e241449241753_
                         _hd241448241756_
                         _tl241447241758_
                         _e241452241761_
                         _hd241451241764_
                         _tl241450241766_))))
                (___match249896249897_
                 _e241419241673_
                 _hd241418241676_
                 _tl241417241678_
                 _e241431241705_
                 _hd241430241708_
                 _tl241429241710_
                 _e241434241713_
                 _hd241433241716_
                 _tl241432241718_
                 _e241437241721_
                 _hd241436241724_
                 _tl241435241726_
                 _e241440241729_
                 _hd241439241732_
                 _tl241438241734_
                 _e241443241737_
                 _hd241442241740_
                 _tl241441241742_
                 _e241446241745_
                 _hd241445241748_
                 _tl241444241750_
                 _e241449241753_
                 _hd241448241756_
                 _tl241447241758_
                 _e241452241761_
                 _hd241451241764_
                 _tl241450241766_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match249896249897_
                                                     _e241419241673_
                                                     _hd241418241676_
                                                     _tl241417241678_
                                                     _e241431241705_
                                                     _hd241430241708_
                                                     _tl241429241710_
                                                     _e241434241713_
                                                     _hd241433241716_
                                                     _tl241432241718_
                                                     _e241437241721_
                                                     _hd241436241724_
                                                     _tl241435241726_
                                                     _e241440241729_
                                                     _hd241439241732_
                                                     _tl241438241734_
                                                     _e241443241737_
                                                     _hd241442241740_
                                                     _tl241441241742_
                                                     _e241446241745_
                                                     _hd241445241748_
                                                     _tl241444241750_
                                                     _e241449241753_
                                                     _hd241448241756_
                                                     _tl241447241758_
                                                     _e241452241761_
                                                     _hd241451241764_
                                                     _tl241450241766_))
                                                (___match249896249897_
                                                 _e241419241673_
                                                 _hd241418241676_
                                                 _tl241417241678_
                                                 _e241431241705_
                                                 _hd241430241708_
                                                 _tl241429241710_
                                                 _e241434241713_
                                                 _hd241433241716_
                                                 _tl241432241718_
                                                 _e241437241721_
                                                 _hd241436241724_
                                                 _tl241435241726_
                                                 _e241440241729_
                                                 _hd241439241732_
                                                 _tl241438241734_
                                                 _e241443241737_
                                                 _hd241442241740_
                                                 _tl241441241742_
                                                 _e241446241745_
                                                 _hd241445241748_
                                                 _tl241444241750_
                                                 _e241449241753_
                                                 _hd241448241756_
                                                 _tl241447241758_
                                                 _e241452241761_
                                                 _hd241451241764_
                                                 _tl241450241766_))))
                                        (___match249896249897_
                                         _e241419241673_
                                         _hd241418241676_
                                         _tl241417241678_
                                         _e241431241705_
                                         _hd241430241708_
                                         _tl241429241710_
                                         _e241434241713_
                                         _hd241433241716_
                                         _tl241432241718_
                                         _e241437241721_
                                         _hd241436241724_
                                         _tl241435241726_
                                         _e241440241729_
                                         _hd241439241732_
                                         _tl241438241734_
                                         _e241443241737_
                                         _hd241442241740_
                                         _tl241441241742_
                                         _e241446241745_
                                         _hd241445241748_
                                         _tl241444241750_
                                         _e241449241753_
                                         _hd241448241756_
                                         _tl241447241758_
                                         _e241452241761_
                                         _hd241451241764_
                                         _tl241450241766_))))
                                (___match249896249897_
                                 _e241419241673_
                                 _hd241418241676_
                                 _tl241417241678_
                                 _e241431241705_
                                 _hd241430241708_
                                 _tl241429241710_
                                 _e241434241713_
                                 _hd241433241716_
                                 _tl241432241718_
                                 _e241437241721_
                                 _hd241436241724_
                                 _tl241435241726_
                                 _e241440241729_
                                 _hd241439241732_
                                 _tl241438241734_
                                 _e241443241737_
                                 _hd241442241740_
                                 _tl241441241742_
                                 _e241446241745_
                                 _hd241445241748_
                                 _tl241444241750_
                                 _e241449241753_
                                 _hd241448241756_
                                 _tl241447241758_
                                 _e241452241761_
                                 _hd241451241764_
                                 _tl241450241766_))))
                        (___match249896249897_
                         _e241419241673_
                         _hd241418241676_
                         _tl241417241678_
                         _e241431241705_
                         _hd241430241708_
                         _tl241429241710_
                         _e241434241713_
                         _hd241433241716_
                         _tl241432241718_
                         _e241437241721_
                         _hd241436241724_
                         _tl241435241726_
                         _e241440241729_
                         _hd241439241732_
                         _tl241438241734_
                         _e241443241737_
                         _hd241442241740_
                         _tl241441241742_
                         _e241446241745_
                         _hd241445241748_
                         _tl241444241750_
                         _e241449241753_
                         _hd241448241756_
                         _tl241447241758_
                         _e241452241761_
                         _hd241451241764_
                         _tl241450241766_))
                    (___match249896249897_
                     _e241419241673_
                     _hd241418241676_
                     _tl241417241678_
                     _e241431241705_
                     _hd241430241708_
                     _tl241429241710_
                     _e241434241713_
                     _hd241433241716_
                     _tl241432241718_
                     _e241437241721_
                     _hd241436241724_
                     _tl241435241726_
                     _e241440241729_
                     _hd241439241732_
                     _tl241438241734_
                     _e241443241737_
                     _hd241442241740_
                     _tl241441241742_
                     _e241446241745_
                     _hd241445241748_
                     _tl241444241750_
                     _e241449241753_
                     _hd241448241756_
                     _tl241447241758_
                     _e241452241761_
                     _hd241451241764_
                     _tl241450241766_))
                (___kont249799249800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont249799249800_))
                                            (___kont249799249800_))
                                        (___kont249799249800_))))
                                (___kont249799249800_))))
                        (___kont249799249800_))
                    (___kont249799249800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont249799249800_))
                                                (___kont249799249800_))
                                            (___kont249799249800_))))
                                    (___kont249799249800_))))
                            (___kont249799249800_))
                        (___kont249799249800_))
                    (___kont249799249800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont249799249800_))))
                                            (___kont249799249800_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop241423241686_ _target241420241681_ '())))))
                   (___match249814249815_
                    (lambda (_e241371241933_
                             _hd241370241936_
                             _tl241369241938_
                             ___splice249787249788_
                             _target241372241941_
                             _tl241374241943_)
                      (letrec ((_loop241375241946_
                                (lambda (_hd241373241949_ _arg241379241951_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd241373241949_))
                                      (let ((_e241376241954_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd241373241949_))))
                                        (let ((_lp-tl241378241959_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241376241954_)))
                                              (_lp-hd241377241957_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241376241954_))))
                                          (let ((__tmp251190
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd241377241957_
                                                         _arg241379241951_))))
                                            (declare (not safe))
                                            (_loop241375241946_
                                             _lp-tl241378241959_
                                             __tmp251190))))
                                      (let ((_arg241380241962_
                                             (reverse _arg241379241951_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241369241938_))
                                            (let ((_e241383241965_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241369241938_))))
                                              (let ((_tl241381241970_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241383241965_)))
                                                    (_hd241382241968_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241383241965_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd241382241968_))
                                                    (let ((_e241386241973_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd241382241968_))))
                                                      (let ((_tl241384241978_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241386241973_)))
                    (_hd241385241976_
                     (let () (declare (not safe)) (##car _e241386241973_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241385241976_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd241385241976_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241384241978_))
                            (let ((_e241389241981_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241384241978_))))
                              (let ((_tl241387241986_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241389241981_)))
                                    (_hd241388241984_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241389241981_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241388241984_))
                                    (let ((_e241392241989_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241388241984_))))
                                      (let ((_tl241390241994_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241392241989_)))
                                            (_hd241391241992_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241392241989_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241391241992_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241391241992_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241390241994_))
                                                    (let ((_e241395241997_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241390241994_))))
                                                      (let ((_tl241393242002_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241395241997_)))
                    (_hd241394242000_
                     (let () (declare (not safe)) (##car _e241395241997_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241393242002_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl241387241986_))
                        (let ((___splice249789249790_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl241387241986_
                                  '0))))
                          (let ((_tl241398242007_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice249789249790_ '1)))
                                (_target241396242005_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice249789249790_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl241398242007_))
                                (letrec ((_loop241399242010_
                                          (lambda (_hd241397242013_
                                                   _xarg241403242015_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd241397242013_))
                                                (let ((_e241400242018_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd241397242013_))))
                                                  (let ((_lp-tl241402242023_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e241400242018_)))
                                                        (_lp-hd241401242021_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e241400242018_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd241401242021_))
                                                        (let ((_e241407242026_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd241401242021_))))
                  (let ((_tl241405242031_
                         (let () (declare (not safe)) (##cdr _e241407242026_)))
                        (_hd241406242029_
                         (let ()
                           (declare (not safe))
                           (##car _e241407242026_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd241406242029_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd241406242029_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241405242031_))
                                (let ((_e241410242034_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241405242031_))))
                                  (let ((_tl241408242039_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241410242034_)))
                                        (_hd241409242037_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241410242034_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241408242039_))
                                        (let ((__tmp251189
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd241409242037_
                                                       _xarg241403242015_))))
                                          (declare (not safe))
                                          (_loop241399242010_
                                           _lp-tl241402242023_
                                           __tmp251189))
                                        (___match249826249827_
                                         _e241371241933_
                                         _hd241370241936_
                                         _tl241369241938_
                                         ___splice249787249788_
                                         _target241372241941_
                                         _tl241374241943_))))
                                (___match249826249827_
                                 _e241371241933_
                                 _hd241370241936_
                                 _tl241369241938_
                                 ___splice249787249788_
                                 _target241372241941_
                                 _tl241374241943_))
                            (___match249826249827_
                             _e241371241933_
                             _hd241370241936_
                             _tl241369241938_
                             ___splice249787249788_
                             _target241372241941_
                             _tl241374241943_))
                        (___match249826249827_
                         _e241371241933_
                         _hd241370241936_
                         _tl241369241938_
                         ___splice249787249788_
                         _target241372241941_
                         _tl241374241943_))))
                (___match249826249827_
                 _e241371241933_
                 _hd241370241936_
                 _tl241369241938_
                 ___splice249787249788_
                 _target241372241941_
                 _tl241374241943_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg241404242042_
                                                       (reverse _xarg241403242015_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl241381241970_))
                                                      (let ((_L242045_
                                                             _xarg241404242042_)
                                                            (_L242046_
                                                             _hd241394242000_)
                                                            (_L242047_
                                                             _arg241380241962_))
                                                        (if (and (let ((__tmp251187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp251188
                                       (lambda (_g242075242078_
                                                _g242076242080_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g242075242078_
                                                 _g242076242080_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp251188 '() _L242047_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp251187))
                         (fx= (length (let ((__tmp251185
                                             (lambda (_g242082242085_
                                                      _g242083242087_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g242082242085_
                                                       _g242083242087_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp251185 '() _L242047_)))
                              (length (let ((__tmp251186
                                             (lambda (_g242089242092_
                                                      _g242090242094_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g242089242092_
                                                       _g242090242094_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp251186 '() _L242045_))))
                         (let ((__tmp251183
                                (let ((__tmp251184
                                       (lambda (_g242096242099_
                                                _g242097242101_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g242096242099_
                                                 _g242097242101_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp251184 '() _L242047_)))
                               (__tmp251181
                                (let ((__tmp251182
                                       (lambda (_g242103242106_
                                                _g242104242108_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g242103242106_
                                                 _g242104242108_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp251182 '() _L242045_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp251183
                                    __tmp251181))
                         (let ((__tmp251177
                                (let ((__tmp251180
                                       (lambda (_g242110242112_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g242110242112_
                                            _L242046_))))
                                      (__tmp251178
                                       (let ((__tmp251179
                                              (lambda (_g242114242117_
                                                       _g242115242119_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g242114242117_
                                                        _g242115242119_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp251179 '() _L242047_))))
                                  (declare (not safe))
                                  (find __tmp251180 __tmp251178))))
                           (declare (not safe))
                           (not __tmp251177)))
                    (___kont249785249786_ _L242045_ _L242046_ _L242047_)
                    (___match249826249827_
                     _e241371241933_
                     _hd241370241936_
                     _tl241369241938_
                     ___splice249787249788_
                     _target241372241941_
                     _tl241374241943_)))
              (___match249826249827_
               _e241371241933_
               _hd241370241936_
               _tl241369241938_
               ___splice249787249788_
               _target241372241941_
               _tl241374241943_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop241399242010_
                                     _target241396242005_
                                     '())))
                                (___match249826249827_
                                 _e241371241933_
                                 _hd241370241936_
                                 _tl241369241938_
                                 ___splice249787249788_
                                 _target241372241941_
                                 _tl241374241943_))))
                        (___match249826249827_
                         _e241371241933_
                         _hd241370241936_
                         _tl241369241938_
                         ___splice249787249788_
                         _target241372241941_
                         _tl241374241943_))
                    (___match249826249827_
                     _e241371241933_
                     _hd241370241936_
                     _tl241369241938_
                     ___splice249787249788_
                     _target241372241941_
                     _tl241374241943_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match249826249827_
                                                     _e241371241933_
                                                     _hd241370241936_
                                                     _tl241369241938_
                                                     ___splice249787249788_
                                                     _target241372241941_
                                                     _tl241374241943_))
                                                (___match249826249827_
                                                 _e241371241933_
                                                 _hd241370241936_
                                                 _tl241369241938_
                                                 ___splice249787249788_
                                                 _target241372241941_
                                                 _tl241374241943_))
                                            (___match249826249827_
                                             _e241371241933_
                                             _hd241370241936_
                                             _tl241369241938_
                                             ___splice249787249788_
                                             _target241372241941_
                                             _tl241374241943_))))
                                    (___match249826249827_
                                     _e241371241933_
                                     _hd241370241936_
                                     _tl241369241938_
                                     ___splice249787249788_
                                     _target241372241941_
                                     _tl241374241943_))))
                            (___match249826249827_
                             _e241371241933_
                             _hd241370241936_
                             _tl241369241938_
                             ___splice249787249788_
                             _target241372241941_
                             _tl241374241943_))
                        (___match249826249827_
                         _e241371241933_
                         _hd241370241936_
                         _tl241369241938_
                         ___splice249787249788_
                         _target241372241941_
                         _tl241374241943_))
                    (___match249826249827_
                     _e241371241933_
                     _hd241370241936_
                     _tl241369241938_
                     ___splice249787249788_
                     _target241372241941_
                     _tl241374241943_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match249826249827_
                                                     _e241371241933_
                                                     _hd241370241936_
                                                     _tl241369241938_
                                                     ___splice249787249788_
                                                     _target241372241941_
                                                     _tl241374241943_))))
                                            (___match249826249827_
                                             _e241371241933_
                                             _hd241370241936_
                                             _tl241369241938_
                                             ___splice249787249788_
                                             _target241372241941_
                                             _tl241374241943_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop241375241946_ _target241372241941_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx249783249784_))
                  (let ((_e241371241933_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx249783249784_))))
                    (let ((_tl241369241938_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241371241933_)))
                          (_hd241370241936_
                           (let ()
                             (declare (not safe))
                             (##car _e241371241933_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd241370241936_))
                          (let ((___splice249787249788_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd241370241936_
                                    '0))))
                            (let ((_tl241374241943_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice249787249788_ '1)))
                                  (_target241372241941_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice249787249788_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl241374241943_))
                                  (___match249814249815_
                                   _e241371241933_
                                   _hd241370241936_
                                   _tl241369241938_
                                   ___splice249787249788_
                                   _target241372241941_
                                   _tl241374241943_)
                                  (___match249826249827_
                                   _e241371241933_
                                   _hd241370241936_
                                   _tl241369241938_
                                   ___splice249787249788_
                                   _target241372241941_
                                   _tl241374241943_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241369241938_))
                              (let ((_e241486241541_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241369241938_))))
                                (let ((_tl241484241546_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241486241541_)))
                                      (_hd241485241544_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241486241541_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd241485241544_))
                                      (let ((_e241489241549_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd241485241544_))))
                                        (let ((_tl241487241554_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241489241549_)))
                                              (_hd241488241552_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241489241549_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd241488241552_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd241488241552_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl241487241554_))
                                                      (let ((_e241492241557_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl241487241554_))))
                (let ((_tl241490241562_
                       (let () (declare (not safe)) (##cdr _e241492241557_)))
                      (_hd241491241560_
                       (let () (declare (not safe)) (##car _e241492241557_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd241491241560_))
                      (let ((_e241495241565_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd241491241560_))))
                        (let ((_tl241493241570_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241495241565_)))
                              (_hd241494241568_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241495241565_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd241494241568_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd241494241568_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl241493241570_))
                                      (let ((_e241498241573_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl241493241570_))))
                                        (let ((_tl241496241578_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241498241573_)))
                                              (_hd241497241576_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241498241573_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241496241578_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl241490241562_))
                                                  (let ((_e241501241581_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl241490241562_))))
                                                    (let ((_tl241499241586_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e241501241581_)))
                                                          (_hd241500241584_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e241501241581_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd241500241584_))
                                                          (let ((_e241504241589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd241500241584_))))
                    (let ((_tl241502241594_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241504241589_)))
                          (_hd241503241592_
                           (let ()
                             (declare (not safe))
                             (##car _e241504241589_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd241503241592_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd241503241592_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl241502241594_))
                                  (let ((_e241507241597_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl241502241594_))))
                                    (let ((_tl241505241602_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e241507241597_)))
                                          (_hd241506241600_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e241507241597_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl241505241602_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl241499241586_))
                                              (let ((_e241510241605_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl241499241586_))))
                                                (let ((_tl241508241610_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e241510241605_)))
                                                      (_hd241509241608_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e241510241605_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd241509241608_))
                                                      (let ((_e241513241613_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd241509241608_))))
                (let ((_tl241511241618_
                       (let () (declare (not safe)) (##cdr _e241513241613_)))
                      (_hd241512241616_
                       (let () (declare (not safe)) (##car _e241513241613_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd241512241616_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd241512241616_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241511241618_))
                              (let ((_e241516241621_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241511241618_))))
                                (let ((_tl241514241626_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241516241621_)))
                                      (_hd241515241624_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241516241621_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl241514241626_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl241508241610_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241484241546_))
                                              (___match249924249925_
                                               _e241371241933_
                                               _hd241370241936_
                                               _tl241369241938_
                                               _e241486241541_
                                               _hd241485241544_
                                               _tl241484241546_
                                               _e241489241549_
                                               _hd241488241552_
                                               _tl241487241554_
                                               _e241492241557_
                                               _hd241491241560_
                                               _tl241490241562_
                                               _e241495241565_
                                               _hd241494241568_
                                               _tl241493241570_
                                               _e241498241573_
                                               _hd241497241576_
                                               _tl241496241578_
                                               _e241501241581_
                                               _hd241500241584_
                                               _tl241499241586_
                                               _e241504241589_
                                               _hd241503241592_
                                               _tl241502241594_
                                               _e241507241597_
                                               _hd241506241600_
                                               _tl241505241602_
                                               _e241510241605_
                                               _hd241509241608_
                                               _tl241508241610_
                                               _e241513241613_
                                               _hd241512241616_
                                               _tl241511241618_
                                               _e241516241621_
                                               _hd241515241624_
                                               _tl241514241626_)
                                              (___kont249799249800_))
                                          (___kont249799249800_))
                                      (___kont249799249800_))))
                              (___kont249799249800_))
                          (___kont249799249800_))
                      (___kont249799249800_))))
              (___kont249799249800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont249799249800_))
                                          (___kont249799249800_))))
                                  (___kont249799249800_))
                              (___kont249799249800_))
                          (___kont249799249800_))))
                  (___kont249799249800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont249799249800_))
                                              (___kont249799249800_))))
                                      (___kont249799249800_))
                                  (___kont249799249800_))
                              (___kont249799249800_))))
                      (___kont249799249800_))))
              (___kont249799249800_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont249799249800_))
                                              (___kont249799249800_))))
                                      (___kont249799249800_))))
                              (___kont249799249800_)))))
                  (___kont249799249800_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form240827_)
        (let* ((___stx249927249928_ _form240827_)
               (_g240831240955_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249927249928_)))))
          (let ((___kont249929249930_
                 (lambda (_L241325_ _L241326_ _L241327_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L241326_))))
                (___kont249935249936_
                 (lambda (_L241173_ _L241174_ _L241175_ _L241176_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L241173_))))
                (___kont249939249940_
                 (lambda (_L241040_ _L241041_ _L241042_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L241040_)))))
            (let* ((___match250036250037_
                    (lambda (_e240923240960_
                             _hd240922240963_
                             _tl240921240965_
                             _e240926240968_
                             _hd240925240971_
                             _tl240924240973_
                             _e240929240976_
                             _hd240928240979_
                             _tl240927240981_
                             _e240932240984_
                             _hd240931240987_
                             _tl240930240989_
                             _e240935240992_
                             _hd240934240995_
                             _tl240933240997_
                             _e240938241000_
                             _hd240937241003_
                             _tl240936241005_
                             _e240941241008_
                             _hd240940241011_
                             _tl240939241013_
                             _e240944241016_
                             _hd240943241019_
                             _tl240942241021_
                             _e240947241024_
                             _hd240946241027_
                             _tl240945241029_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl240939241013_))
                          (let ((_e240950241032_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl240939241013_))))
                            (let ((_tl240948241037_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e240950241032_)))
                                  (_hd240949241035_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e240950241032_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl240948241037_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl240924240973_))
                                      (___kont249939249940_
                                       _hd240946241027_
                                       _hd240937241003_
                                       _hd240922240963_)
                                      (let ()
                                        (declare (not safe))
                                        (_g240831240955_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g240831240955_)))))
                          (let () (declare (not safe)) (_g240831240955_)))))
                   (___match249966249967_
                    (lambda (_e240884241077_
                             _hd240883241080_
                             _tl240882241082_
                             ___splice249937249938_
                             _target240885241085_
                             _tl240887241087_)
                      (letrec ((_loop240888241090_
                                (lambda (_hd240886241093_ _arg240892241095_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd240886241093_))
                                      (let ((_e240889241098_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd240886241093_))))
                                        (let ((_lp-tl240891241103_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240889241098_)))
                                              (_lp-hd240890241101_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240889241098_))))
                                          (let ((__tmp251191
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd240890241101_
                                                         _arg240892241095_))))
                                            (declare (not safe))
                                            (_loop240888241090_
                                             _lp-tl240891241103_
                                             __tmp251191))))
                                      (let ((_arg240893241106_
                                             (reverse _arg240892241095_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl240882241082_))
                                            (let ((_e240896241109_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl240882241082_))))
                                              (let ((_tl240894241114_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e240896241109_)))
                                                    (_hd240895241112_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e240896241109_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd240895241112_))
                                                    (let ((_e240899241117_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd240895241112_))))
                                                      (let ((_tl240897241122_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e240899241117_)))
                    (_hd240898241120_
                     (let () (declare (not safe)) (##car _e240899241117_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd240898241120_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd240898241120_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl240897241122_))
                            (let ((_e240902241125_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl240897241122_))))
                              (let ((_tl240900241130_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e240902241125_)))
                                    (_hd240901241128_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e240902241125_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd240901241128_))
                                    (let ((_e240905241133_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd240901241128_))))
                                      (let ((_tl240903241138_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e240905241133_)))
                                            (_hd240904241136_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e240905241133_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd240904241136_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd240904241136_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl240903241138_))
                                                    (let ((_e240908241141_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl240903241138_))))
                                                      (let ((_tl240906241146_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e240908241141_)))
                    (_hd240907241144_
                     (let () (declare (not safe)) (##car _e240908241141_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl240906241146_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl240900241130_))
                        (let ((_e240911241149_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl240900241130_))))
                          (let ((_tl240909241154_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e240911241149_)))
                                (_hd240910241152_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e240911241149_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd240910241152_))
                                (let ((_e240914241157_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd240910241152_))))
                                  (let ((_tl240912241162_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e240914241157_)))
                                        (_hd240913241160_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e240914241157_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd240913241160_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd240913241160_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl240912241162_))
                                                (let ((_e240917241165_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl240912241162_))))
                                                  (let ((_tl240915241170_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e240917241165_)))
                                                        (_hd240916241168_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e240917241165_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl240915241170_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl240894241114_))
                                                            (___kont249935249936_
                                                             _hd240916241168_
                                                             _hd240907241144_
                                                             _tl240887241087_
                                                             _arg240893241106_)
                                                            (___match250036250037_
                                                             _e240884241077_
                                                             _hd240883241080_
                                                             _tl240882241082_
                                                             _e240896241109_
                                                             _hd240895241112_
                                                             _tl240894241114_
                                                             _e240899241117_
                                                             _hd240898241120_
                                                             _tl240897241122_
                                                             _e240902241125_
                                                             _hd240901241128_
                                                             _tl240900241130_
                                                             _e240905241133_
                                                             _hd240904241136_
                                                             _tl240903241138_
                                                             _e240908241141_
                                                             _hd240907241144_
                                                             _tl240906241146_
                                                             _e240911241149_
                                                             _hd240910241152_
                                                             _tl240909241154_
                                                             _e240914241157_
                                                             _hd240913241160_
                                                             _tl240912241162_
                                                             _e240917241165_
                                                             _hd240916241168_
                                                             _tl240915241170_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g240831240955_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g240831240955_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g240831240955_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g240831240955_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g240831240955_)))))
                        (let () (declare (not safe)) (_g240831240955_)))
                    (let () (declare (not safe)) (_g240831240955_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g240831240955_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g240831240955_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g240831240955_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g240831240955_)))))
                            (let () (declare (not safe)) (_g240831240955_)))
                        (let () (declare (not safe)) (_g240831240955_)))
                    (let () (declare (not safe)) (_g240831240955_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g240831240955_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g240831240955_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop240888241090_ _target240885241085_ '())))))
                   (___match249954249955_
                    (lambda (_e240838241213_
                             _hd240837241216_
                             _tl240836241218_
                             ___splice249931249932_
                             _target240839241221_
                             _tl240841241223_)
                      (letrec ((_loop240842241226_
                                (lambda (_hd240840241229_ _arg240846241231_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd240840241229_))
                                      (let ((_e240843241234_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd240840241229_))))
                                        (let ((_lp-tl240845241239_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240843241234_)))
                                              (_lp-hd240844241237_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240843241234_))))
                                          (let ((__tmp251193
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd240844241237_
                                                         _arg240846241231_))))
                                            (declare (not safe))
                                            (_loop240842241226_
                                             _lp-tl240845241239_
                                             __tmp251193))))
                                      (let ((_arg240847241242_
                                             (reverse _arg240846241231_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl240836241218_))
                                            (let ((_e240850241245_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl240836241218_))))
                                              (let ((_tl240848241250_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e240850241245_)))
                                                    (_hd240849241248_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e240850241245_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd240849241248_))
                                                    (let ((_e240853241253_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd240849241248_))))
                                                      (let ((_tl240851241258_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e240853241253_)))
                    (_hd240852241256_
                     (let () (declare (not safe)) (##car _e240853241253_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd240852241256_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd240852241256_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl240851241258_))
                            (let ((_e240856241261_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl240851241258_))))
                              (let ((_tl240854241266_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e240856241261_)))
                                    (_hd240855241264_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e240856241261_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd240855241264_))
                                    (let ((_e240859241269_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd240855241264_))))
                                      (let ((_tl240857241274_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e240859241269_)))
                                            (_hd240858241272_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e240859241269_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd240858241272_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd240858241272_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl240857241274_))
                                                    (let ((_e240862241277_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl240857241274_))))
                                                      (let ((_tl240860241282_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e240862241277_)))
                    (_hd240861241280_
                     (let () (declare (not safe)) (##car _e240862241277_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl240860241282_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl240854241266_))
                        (let ((___splice249933249934_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl240854241266_
                                  '0))))
                          (let ((_tl240865241287_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice249933249934_ '1)))
                                (_target240863241285_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice249933249934_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl240865241287_))
                                (letrec ((_loop240866241290_
                                          (lambda (_hd240864241293_
                                                   _xarg240870241295_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd240864241293_))
                                                (let ((_e240867241298_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd240864241293_))))
                                                  (let ((_lp-tl240869241303_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e240867241298_)))
                                                        (_lp-hd240868241301_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e240867241298_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd240868241301_))
                                                        (let ((_e240874241306_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd240868241301_))))
                  (let ((_tl240872241311_
                         (let () (declare (not safe)) (##cdr _e240874241306_)))
                        (_hd240873241309_
                         (let ()
                           (declare (not safe))
                           (##car _e240874241306_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd240873241309_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd240873241309_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl240872241311_))
                                (let ((_e240877241314_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl240872241311_))))
                                  (let ((_tl240875241319_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e240877241314_)))
                                        (_hd240876241317_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e240877241314_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl240875241319_))
                                        (let ((__tmp251192
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd240876241317_
                                                       _xarg240870241295_))))
                                          (declare (not safe))
                                          (_loop240866241290_
                                           _lp-tl240869241303_
                                           __tmp251192))
                                        (___match249966249967_
                                         _e240838241213_
                                         _hd240837241216_
                                         _tl240836241218_
                                         ___splice249931249932_
                                         _target240839241221_
                                         _tl240841241223_))))
                                (___match249966249967_
                                 _e240838241213_
                                 _hd240837241216_
                                 _tl240836241218_
                                 ___splice249931249932_
                                 _target240839241221_
                                 _tl240841241223_))
                            (___match249966249967_
                             _e240838241213_
                             _hd240837241216_
                             _tl240836241218_
                             ___splice249931249932_
                             _target240839241221_
                             _tl240841241223_))
                        (___match249966249967_
                         _e240838241213_
                         _hd240837241216_
                         _tl240836241218_
                         ___splice249931249932_
                         _target240839241221_
                         _tl240841241223_))))
                (___match249966249967_
                 _e240838241213_
                 _hd240837241216_
                 _tl240836241218_
                 ___splice249931249932_
                 _target240839241221_
                 _tl240841241223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg240871241322_
                                                       (reverse _xarg240870241295_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl240848241250_))
                                                      (___kont249929249930_
                                                       _xarg240871241322_
                                                       _hd240861241280_
                                                       _arg240847241242_)
                                                      (___match249966249967_
                                                       _e240838241213_
                                                       _hd240837241216_
                                                       _tl240836241218_
                                                       ___splice249931249932_
                                                       _target240839241221_
                                                       _tl240841241223_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop240866241290_
                                     _target240863241285_
                                     '())))
                                (___match249966249967_
                                 _e240838241213_
                                 _hd240837241216_
                                 _tl240836241218_
                                 ___splice249931249932_
                                 _target240839241221_
                                 _tl240841241223_))))
                        (___match249966249967_
                         _e240838241213_
                         _hd240837241216_
                         _tl240836241218_
                         ___splice249931249932_
                         _target240839241221_
                         _tl240841241223_))
                    (___match249966249967_
                     _e240838241213_
                     _hd240837241216_
                     _tl240836241218_
                     ___splice249931249932_
                     _target240839241221_
                     _tl240841241223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match249966249967_
                                                     _e240838241213_
                                                     _hd240837241216_
                                                     _tl240836241218_
                                                     ___splice249931249932_
                                                     _target240839241221_
                                                     _tl240841241223_))
                                                (___match249966249967_
                                                 _e240838241213_
                                                 _hd240837241216_
                                                 _tl240836241218_
                                                 ___splice249931249932_
                                                 _target240839241221_
                                                 _tl240841241223_))
                                            (___match249966249967_
                                             _e240838241213_
                                             _hd240837241216_
                                             _tl240836241218_
                                             ___splice249931249932_
                                             _target240839241221_
                                             _tl240841241223_))))
                                    (___match249966249967_
                                     _e240838241213_
                                     _hd240837241216_
                                     _tl240836241218_
                                     ___splice249931249932_
                                     _target240839241221_
                                     _tl240841241223_))))
                            (___match249966249967_
                             _e240838241213_
                             _hd240837241216_
                             _tl240836241218_
                             ___splice249931249932_
                             _target240839241221_
                             _tl240841241223_))
                        (___match249966249967_
                         _e240838241213_
                         _hd240837241216_
                         _tl240836241218_
                         ___splice249931249932_
                         _target240839241221_
                         _tl240841241223_))
                    (___match249966249967_
                     _e240838241213_
                     _hd240837241216_
                     _tl240836241218_
                     ___splice249931249932_
                     _target240839241221_
                     _tl240841241223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match249966249967_
                                                     _e240838241213_
                                                     _hd240837241216_
                                                     _tl240836241218_
                                                     ___splice249931249932_
                                                     _target240839241221_
                                                     _tl240841241223_))))
                                            (___match249966249967_
                                             _e240838241213_
                                             _hd240837241216_
                                             _tl240836241218_
                                             ___splice249931249932_
                                             _target240839241221_
                                             _tl240841241223_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop240842241226_ _target240839241221_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx249927249928_))
                  (let ((_e240838241213_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx249927249928_))))
                    (let ((_tl240836241218_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240838241213_)))
                          (_hd240837241216_
                           (let ()
                             (declare (not safe))
                             (##car _e240838241213_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd240837241216_))
                          (let ((___splice249931249932_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd240837241216_
                                    '0))))
                            (let ((_tl240841241223_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice249931249932_ '1)))
                                  (_target240839241221_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice249931249932_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl240841241223_))
                                  (___match249954249955_
                                   _e240838241213_
                                   _hd240837241216_
                                   _tl240836241218_
                                   ___splice249931249932_
                                   _target240839241221_
                                   _tl240841241223_)
                                  (___match249966249967_
                                   _e240838241213_
                                   _hd240837241216_
                                   _tl240836241218_
                                   ___splice249931249932_
                                   _target240839241221_
                                   _tl240841241223_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl240836241218_))
                              (let ((_e240926240968_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl240836241218_))))
                                (let ((_tl240924240973_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240926240968_)))
                                      (_hd240925240971_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240926240968_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd240925240971_))
                                      (let ((_e240929240976_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd240925240971_))))
                                        (let ((_tl240927240981_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240929240976_)))
                                              (_hd240928240979_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240929240976_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd240928240979_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd240928240979_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl240927240981_))
                                                      (let ((_e240932240984_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl240927240981_))))
                (let ((_tl240930240989_
                       (let () (declare (not safe)) (##cdr _e240932240984_)))
                      (_hd240931240987_
                       (let () (declare (not safe)) (##car _e240932240984_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd240931240987_))
                      (let ((_e240935240992_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd240931240987_))))
                        (let ((_tl240933240997_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e240935240992_)))
                              (_hd240934240995_
                               (let ()
                                 (declare (not safe))
                                 (##car _e240935240992_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd240934240995_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd240934240995_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl240933240997_))
                                      (let ((_e240938241000_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl240933240997_))))
                                        (let ((_tl240936241005_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240938241000_)))
                                              (_hd240937241003_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240938241000_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl240936241005_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl240930240989_))
                                                  (let ((_e240941241008_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl240930240989_))))
                                                    (let ((_tl240939241013_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e240941241008_)))
                                                          (_hd240940241011_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e240941241008_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd240940241011_))
                                                          (let ((_e240944241016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd240940241011_))))
                    (let ((_tl240942241021_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240944241016_)))
                          (_hd240943241019_
                           (let ()
                             (declare (not safe))
                             (##car _e240944241016_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd240943241019_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd240943241019_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl240942241021_))
                                  (let ((_e240947241024_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl240942241021_))))
                                    (let ((_tl240945241029_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e240947241024_)))
                                          (_hd240946241027_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e240947241024_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl240945241029_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl240939241013_))
                                              (let ((_e240950241032_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl240939241013_))))
                                                (let ((_tl240948241037_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e240950241032_)))
                                                      (_hd240949241035_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e240950241032_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl240948241037_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl240924240973_))
                                                          (___kont249939249940_
                                                           _hd240946241027_
                                                           _hd240937241003_
                                                           _hd240837241216_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g240831240955_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g240831240955_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g240831240955_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g240831240955_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g240831240955_)))
                              (let () (declare (not safe)) (_g240831240955_)))
                          (let () (declare (not safe)) (_g240831240955_)))))
                  (let () (declare (not safe)) (_g240831240955_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g240831240955_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g240831240955_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g240831240955_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g240831240955_)))
                              (let ()
                                (declare (not safe))
                                (_g240831240955_)))))
                      (let () (declare (not safe)) (_g240831240955_)))))
              (let () (declare (not safe)) (_g240831240955_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g240831240955_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g240831240955_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g240831240955_)))))
                              (let ()
                                (declare (not safe))
                                (_g240831240955_))))))
                  (let () (declare (not safe)) (_g240831240955_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form240631_)
        (let* ((_g240633240647_
                (lambda (_g240634240644_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g240634240644_))))
               (_g240632240824_
                (lambda (_g240634240650_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g240634240650_))
                      (let ((_e240639240652_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g240634240650_))))
                        (let ((_hd240638240655_
                               (let ()
                                 (declare (not safe))
                                 (##car _e240639240652_)))
                              (_tl240637240657_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e240639240652_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl240637240657_))
                              (let ((_e240642240660_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl240637240657_))))
                                (let ((_hd240641240663_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240642240660_)))
                                      (_tl240640240665_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240642240660_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl240640240665_))
                                      ((lambda (_L240668_ _L240669_)
                                         (let* ((___stx250049250050_ _L240669_)
                                                (_g240684240712_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx250049250050_)))))
                                           (let ((___kont250051250052_
                                                  (lambda (_L240803_)
                                                    (length (let ((__tmp251194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g240813240816_ _g240814240818_)
                             (let ()
                               (declare (not safe))
                               (cons _g240813240816_ _g240814240818_)))))
                      (declare (not safe))
                      (foldr1 __tmp251194 '() _L240803_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont250055250056_
                                                  (lambda (_L240754_ _L240755_)
                                                    (let ((__tmp251195
                                                           (length (let ((__tmp251196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g240766240769_ _g240767240771_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g240766240769_
                                            _g240767240771_)))))
                             (declare (not safe))
                             (foldr1 __tmp251196 '() _L240755_)))))
              (declare (not safe))
              (cons __tmp251195 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont250059250060_
                                                  (lambda (_L240717_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match250074250075_
                                                     (lambda (___splice250057250058_
                                                              _target240698240730_
                                                              _tl240700240732_)
                                                       (letrec ((_loop240701240735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd240699240738_ _arg240705240740_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd240699240738_))
                               (let ((_e240702240743_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd240699240738_))))
                                 (let ((_lp-tl240704240748_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e240702240743_)))
                                       (_lp-hd240703240746_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e240702240743_))))
                                   (let ((__tmp251197
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd240703240746_
                                                  _arg240705240740_))))
                                     (declare (not safe))
                                     (_loop240701240735_
                                      _lp-tl240704240748_
                                      __tmp251197))))
                               (let ((_arg240706240751_
                                      (reverse _arg240705240740_)))
                                 (___kont250055250056_
                                  _tl240700240732_
                                  _arg240706240751_))))))
                 (let ()
                   (declare (not safe))
                   (_loop240701240735_ _target240698240730_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match250068250069_
                                                     (lambda (___splice250053250054_
                                                              _target240687240779_
                                                              _tl240689240781_)
                                                       (letrec ((_loop240690240784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd240688240787_ _arg240694240789_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd240688240787_))
                               (let ((_e240691240792_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd240688240787_))))
                                 (let ((_lp-tl240693240797_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e240691240792_)))
                                       (_lp-hd240692240795_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e240691240792_))))
                                   (let ((__tmp251198
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd240692240795_
                                                  _arg240694240789_))))
                                     (declare (not safe))
                                     (_loop240690240784_
                                      _lp-tl240693240797_
                                      __tmp251198))))
                               (let ((_arg240695240800_
                                      (reverse _arg240694240789_)))
                                 (___kont250051250052_ _arg240695240800_))))))
                 (let ()
                   (declare (not safe))
                   (_loop240690240784_ _target240687240779_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx250049250050_))
                                                   (let ((___splice250053250054_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx250049250050_
                                                             '0))))
                                                     (let ((_tl240689240781_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice250053250054_
                                                               '1)))
                                                           (_target240687240779_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice250053250054_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl240689240781_))
                                                           (___match250068250069_
                                                            ___splice250053250054_
                                                            _target240687240779_
                                                            _tl240689240781_)
                                                           (___match250074250075_
                                                            ___splice250053250054_
                                                            _target240687240779_
                                                            _tl240689240781_))))
                                                   (___kont250059250060_
                                                    ___stx250049250050_))))))
                                       _hd240641240663_
                                       _hd240638240655_)
                                      (let ()
                                        (declare (not safe))
                                        (_g240633240647_ _g240634240650_)))))
                              (let ()
                                (declare (not safe))
                                (_g240633240647_ _g240634240650_)))))
                      (let ()
                        (declare (not safe))
                        (_g240633240647_ _g240634240650_))))))
          (declare (not safe))
          (_g240632240824_ _form240631_))))
    (define gxc#lambda-expr?
      (lambda (_expr240584_)
        (let* ((___stx250077250078_ _expr240584_)
               (_g240587240597_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250077250078_)))))
          (let ((___kont250079250080_ (lambda (_L240617_) '#t))
                (___kont250081250082_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx250077250078_))
                (let ((_e240592240609_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx250077250078_))))
                  (let ((_tl240590240614_
                         (let () (declare (not safe)) (##cdr _e240592240609_)))
                        (_hd240591240612_
                         (let ()
                           (declare (not safe))
                           (##car _e240592240609_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd240591240612_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd240591240612_))
                            (___kont250079250080_ _tl240590240614_)
                            (___kont250081250082_))
                        (___kont250081250082_))))
                (___kont250081250082_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr240537_)
        (let* ((___stx250095250096_ _expr240537_)
               (_g240540240550_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250095250096_)))))
          (let ((___kont250097250098_ (lambda (_L240570_) '#t))
                (___kont250099250100_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx250095250096_))
                (let ((_e240545240562_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx250095250096_))))
                  (let ((_tl240543240567_
                         (let () (declare (not safe)) (##cdr _e240545240562_)))
                        (_hd240544240565_
                         (let ()
                           (declare (not safe))
                           (##car _e240545240562_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd240544240565_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd240544240565_))
                            (___kont250097250098_ _tl240543240567_)
                            (___kont250099250100_))
                        (___kont250099250100_))))
                (___kont250099250100_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr240406_)
        (let* ((___stx250113250114_ _expr240406_)
               (_g240409240439_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250113250114_)))))
          (let ((___kont250115250116_
                 (lambda (_L240507_ _L240508_ _L240509_)
                   (if (let () (declare (not safe)) (gx#identifier? _L240509_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L240508_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L240507_))
                           '#f)
                       '#f)))
                (___kont250117250118_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx250113250114_))
                (let ((_e240416240451_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx250113250114_))))
                  (let ((_tl240414240456_
                         (let () (declare (not safe)) (##cdr _e240416240451_)))
                        (_hd240415240454_
                         (let ()
                           (declare (not safe))
                           (##car _e240416240451_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd240415240454_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd240415240454_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl240414240456_))
                                (let ((_e240419240459_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl240414240456_))))
                                  (let ((_tl240417240464_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e240419240459_)))
                                        (_hd240418240462_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e240419240459_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd240418240462_))
                                        (let ((_e240422240467_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd240418240462_))))
                                          (let ((_tl240420240472_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e240422240467_)))
                                                (_hd240421240470_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e240422240467_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd240421240470_))
                                                (let ((_e240425240475_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd240421240470_))))
                                                  (let ((_tl240423240480_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e240425240475_)))
                                                        (_hd240424240478_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e240425240475_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd240424240478_))
                                                        (let ((_e240428240483_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd240424240478_))))
                  (let ((_tl240426240488_
                         (let () (declare (not safe)) (##cdr _e240428240483_)))
                        (_hd240427240486_
                         (let ()
                           (declare (not safe))
                           (##car _e240428240483_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl240426240488_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl240423240480_))
                            (let ((_e240431240491_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl240423240480_))))
                              (let ((_tl240429240496_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e240431240491_)))
                                    (_hd240430240494_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e240431240491_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl240429240496_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl240420240472_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl240417240464_))
                                            (let ((_e240434240499_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl240417240464_))))
                                              (let ((_tl240432240504_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e240434240499_)))
                                                    (_hd240433240502_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e240434240499_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl240432240504_))
                                                    (___kont250115250116_
                                                     _hd240433240502_
                                                     _hd240430240494_
                                                     _hd240427240486_)
                                                    (___kont250117250118_))))
                                            (___kont250117250118_))
                                        (___kont250117250118_))
                                    (___kont250117250118_))))
                            (___kont250117250118_))
                        (___kont250117250118_))))
                (___kont250117250118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250117250118_))))
                                        (___kont250117250118_))))
                                (___kont250117250118_))
                            (___kont250117250118_))
                        (___kont250117250118_))))
                (___kont250117250118_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr239731_)
        (let* ((___stx250175250176_ _expr239731_)
               (_g239734239892_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250175250176_)))))
          (let ((___kont250177250178_
                 (lambda (_L240280_
                          _L240281_
                          _L240282_
                          _L240283_
                          _L240284_
                          _L240285_
                          _L240286_
                          _L240287_
                          _L240288_
                          _L240289_
                          _L240290_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L240287_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L240283_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L240282_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L240290_
                                      _L240281_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L240289_
                                          _L240286_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L240284_
                                              _L240280_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L240288_
                                              _L240285_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont250179250180_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx250175250176_))
                (let ((_e239749239904_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx250175250176_))))
                  (let ((_tl239747239909_
                         (let () (declare (not safe)) (##cdr _e239749239904_)))
                        (_hd239748239907_
                         (let ()
                           (declare (not safe))
                           (##car _e239749239904_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd239748239907_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd239748239907_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl239747239909_))
                                (let ((_e239752239912_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl239747239909_))))
                                  (let ((_tl239750239917_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239752239912_)))
                                        (_hd239751239915_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239752239912_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd239751239915_))
                                        (let ((_e239755239920_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd239751239915_))))
                                          (let ((_tl239753239925_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e239755239920_)))
                                                (_hd239754239923_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e239755239920_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd239754239923_))
                                                (let ((_e239758239928_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd239754239923_))))
                                                  (let ((_tl239756239933_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239758239928_)))
                                                        (_hd239757239931_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239758239928_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd239757239931_))
                                                        (let ((_e239761239936_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd239757239931_))))
                  (let ((_tl239759239941_
                         (let () (declare (not safe)) (##cdr _e239761239936_)))
                        (_hd239760239939_
                         (let ()
                           (declare (not safe))
                           (##car _e239761239936_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl239759239941_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239756239933_))
                            (let ((_e239764239944_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239756239933_))))
                              (let ((_tl239762239949_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239764239944_)))
                                    (_hd239763239947_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239764239944_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd239763239947_))
                                    (let ((_e239767239952_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd239763239947_))))
                                      (let ((_tl239765239957_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239767239952_)))
                                            (_hd239766239955_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239767239952_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd239766239955_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd239766239955_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl239765239957_))
                                                    (let ((_e239770239960_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl239765239957_))))
                                                      (let ((_tl239768239965_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239770239960_)))
                    (_hd239769239963_
                     (let () (declare (not safe)) (##car _e239770239960_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd239769239963_))
                    (let ((_e239773239968_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd239769239963_))))
                      (let ((_tl239771239973_
                             (let ()
                               (declare (not safe))
                               (##cdr _e239773239968_)))
                            (_hd239772239971_
                             (let ()
                               (declare (not safe))
                               (##car _e239773239968_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd239772239971_))
                            (let ((_e239776239976_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd239772239971_))))
                              (let ((_tl239774239981_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239776239976_)))
                                    (_hd239775239979_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239776239976_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd239775239979_))
                                    (let ((_e239779239984_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd239775239979_))))
                                      (let ((_tl239777239989_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239779239984_)))
                                            (_hd239778239987_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239779239984_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl239777239989_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239774239981_))
                                                (let ((_e239782239992_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239774239981_))))
                                                  (let ((_tl239780239997_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239782239992_)))
                                                        (_hd239781239995_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239782239992_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl239780239997_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl239771239973_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl239768239965_))
                        (let ((_e239785240000_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl239768239965_))))
                          (let ((_tl239783240005_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239785240000_)))
                                (_hd239784240003_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239785240000_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd239784240003_))
                                (let ((_e239788240008_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd239784240003_))))
                                  (let ((_tl239786240013_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239788240008_)))
                                        (_hd239787240011_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239788240008_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd239787240011_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd239787240011_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239786240013_))
                                                (let ((_e239791240016_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239786240013_))))
                                                  (let ((_tl239789240021_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239791240016_)))
                                                        (_hd239790240019_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239791240016_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd239790240019_))
                                                        (let ((_e239794240024_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd239790240019_))))
                  (let ((_tl239792240029_
                         (let () (declare (not safe)) (##cdr _e239794240024_)))
                        (_hd239793240027_
                         (let ()
                           (declare (not safe))
                           (##car _e239794240024_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl239789240021_))
                        (let ((_e239797240032_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl239789240021_))))
                          (let ((_tl239795240037_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239797240032_)))
                                (_hd239796240035_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239797240032_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd239796240035_))
                                (let ((_e239800240040_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd239796240035_))))
                                  (let ((_tl239798240045_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239800240040_)))
                                        (_hd239799240043_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239800240040_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd239799240043_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd239799240043_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239798240045_))
                                                (let ((_e239803240048_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239798240045_))))
                                                  (let ((_tl239801240053_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239803240048_)))
                                                        (_hd239802240051_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239803240048_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd239802240051_))
                                                        (let ((_e239806240056_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd239802240051_))))
                  (let ((_tl239804240061_
                         (let () (declare (not safe)) (##cdr _e239806240056_)))
                        (_hd239805240059_
                         (let ()
                           (declare (not safe))
                           (##car _e239806240056_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd239805240059_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd239805240059_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl239804240061_))
                                (let ((_e239809240064_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl239804240061_))))
                                  (let ((_tl239807240069_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239809240064_)))
                                        (_hd239808240067_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239809240064_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl239807240069_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl239801240053_))
                                            (let ((_e239812240072_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl239801240053_))))
                                              (let ((_tl239810240077_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e239812240072_)))
                                                    (_hd239811240075_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e239812240072_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd239811240075_))
                                                    (let ((_e239815240080_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd239811240075_))))
                                                      (let ((_tl239813240085_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239815240080_)))
                    (_hd239814240083_
                     (let () (declare (not safe)) (##car _e239815240080_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd239814240083_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd239814240083_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239813240085_))
                            (let ((_e239818240088_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239813240085_))))
                              (let ((_tl239816240093_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239818240088_)))
                                    (_hd239817240091_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239818240088_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl239816240093_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl239810240077_))
                                        (let ((_e239821240096_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl239810240077_))))
                                          (let ((_tl239819240101_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e239821240096_)))
                                                (_hd239820240099_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e239821240096_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd239820240099_))
                                                (let ((_e239824240104_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd239820240099_))))
                                                  (let ((_tl239822240109_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239824240104_)))
                                                        (_hd239823240107_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239824240104_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd239823240107_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd239823240107_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl239822240109_))
                        (let ((_e239827240112_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl239822240109_))))
                          (let ((_tl239825240117_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239827240112_)))
                                (_hd239826240115_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239827240112_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl239825240117_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl239795240037_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl239783240005_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl239762239949_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl239753239925_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl239750239917_))
                                                    (let ((_e239830240120_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl239750239917_))))
                                                      (let ((_tl239828240125_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239830240120_)))
                    (_hd239829240123_
                     (let () (declare (not safe)) (##car _e239830240120_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd239829240123_))
                    (let ((_e239833240128_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd239829240123_))))
                      (let ((_tl239831240133_
                             (let ()
                               (declare (not safe))
                               (##cdr _e239833240128_)))
                            (_hd239832240131_
                             (let ()
                               (declare (not safe))
                               (##car _e239833240128_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd239832240131_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd239832240131_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl239831240133_))
                                    (let ((_e239836240136_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl239831240133_))))
                                      (let ((_tl239834240141_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239836240136_)))
                                            (_hd239835240139_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239836240136_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl239834240141_))
                                            (let ((_e239839240144_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl239834240141_))))
                                              (let ((_tl239837240149_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e239839240144_)))
                                                    (_hd239838240147_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e239839240144_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd239838240147_))
                                                    (let ((_e239842240152_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd239838240147_))))
                                                      (let ((_tl239840240157_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239842240152_)))
                    (_hd239841240155_
                     (let () (declare (not safe)) (##car _e239842240152_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd239841240155_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd239841240155_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239840240157_))
                            (let ((_e239845240160_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239840240157_))))
                              (let ((_tl239843240165_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239845240160_)))
                                    (_hd239844240163_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239845240160_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd239844240163_))
                                    (let ((_e239848240168_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd239844240163_))))
                                      (let ((_tl239846240173_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239848240168_)))
                                            (_hd239847240171_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239848240168_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd239847240171_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd239847240171_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl239846240173_))
                                                    (let ((_e239851240176_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl239846240173_))))
                                                      (let ((_tl239849240181_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239851240176_)))
                    (_hd239850240179_
                     (let () (declare (not safe)) (##car _e239851240176_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl239849240181_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl239843240165_))
                        (let ((_e239854240184_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl239843240165_))))
                          (let ((_tl239852240189_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239854240184_)))
                                (_hd239853240187_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239854240184_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd239853240187_))
                                (let ((_e239857240192_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd239853240187_))))
                                  (let ((_tl239855240197_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239857240192_)))
                                        (_hd239856240195_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239857240192_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd239856240195_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd239856240195_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239855240197_))
                                                (let ((_e239860240200_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239855240197_))))
                                                  (let ((_tl239858240205_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239860240200_)))
                                                        (_hd239859240203_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239860240200_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl239858240205_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl239852240189_))
                                                            (let ((_e239863240208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl239852240189_))))
                      (let ((_tl239861240213_
                             (let ()
                               (declare (not safe))
                               (##cdr _e239863240208_)))
                            (_hd239862240211_
                             (let ()
                               (declare (not safe))
                               (##car _e239863240208_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd239862240211_))
                            (let ((_e239866240216_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd239862240211_))))
                              (let ((_tl239864240221_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239866240216_)))
                                    (_hd239865240219_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239866240216_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd239865240219_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd239865240219_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl239864240221_))
                                            (let ((_e239869240224_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl239864240221_))))
                                              (let ((_tl239867240229_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e239869240224_)))
                                                    (_hd239868240227_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e239869240224_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl239867240229_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl239861240213_))
                                                        (let ((_e239872240232_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl239861240213_))))
                  (let ((_tl239870240237_
                         (let () (declare (not safe)) (##cdr _e239872240232_)))
                        (_hd239871240235_
                         (let ()
                           (declare (not safe))
                           (##car _e239872240232_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd239871240235_))
                        (let ((_e239875240240_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd239871240235_))))
                          (let ((_tl239873240245_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239875240240_)))
                                (_hd239874240243_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239875240240_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd239874240243_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd239874240243_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl239873240245_))
                                        (let ((_e239878240248_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl239873240245_))))
                                          (let ((_tl239876240253_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e239878240248_)))
                                                (_hd239877240251_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e239878240248_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl239876240253_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl239870240237_))
                                                    (let ((_e239881240256_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl239870240237_))))
                                                      (let ((_tl239879240261_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239881240256_)))
                    (_hd239880240259_
                     (let () (declare (not safe)) (##car _e239881240256_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd239880240259_))
                    (let ((_e239884240264_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd239880240259_))))
                      (let ((_tl239882240269_
                             (let ()
                               (declare (not safe))
                               (##cdr _e239884240264_)))
                            (_hd239883240267_
                             (let ()
                               (declare (not safe))
                               (##car _e239884240264_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd239883240267_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd239883240267_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl239882240269_))
                                    (let ((_e239887240272_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl239882240269_))))
                                      (let ((_tl239885240277_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239887240272_)))
                                            (_hd239886240275_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239887240272_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl239885240277_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl239879240261_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl239837240149_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl239828240125_))
                                                        (___kont250177250178_
                                                         _hd239886240275_
                                                         _hd239877240251_
                                                         _hd239859240203_
                                                         _hd239850240179_
                                                         _hd239835240139_
                                                         _hd239826240115_
                                                         _hd239817240091_
                                                         _hd239808240067_
                                                         _hd239793240027_
                                                         _hd239778239987_
                                                         _hd239760239939_)
                                                        (___kont250179250180_))
                                                    (___kont250179250180_))
                                                (___kont250179250180_))
                                            (___kont250179250180_))))
                                    (___kont250179250180_))
                                (___kont250179250180_))
                            (___kont250179250180_))))
                    (___kont250179250180_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250179250180_))
                                                (___kont250179250180_))))
                                        (___kont250179250180_))
                                    (___kont250179250180_))
                                (___kont250179250180_))))
                        (___kont250179250180_))))
                (___kont250179250180_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250179250180_))))
                                            (___kont250179250180_))
                                        (___kont250179250180_))
                                    (___kont250179250180_))))
                            (___kont250179250180_))))
                    (___kont250179250180_))
                (___kont250179250180_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250179250180_))
                                            (___kont250179250180_))
                                        (___kont250179250180_))))
                                (___kont250179250180_))))
                        (___kont250179250180_))
                    (___kont250179250180_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250179250180_))
                                                (___kont250179250180_))
                                            (___kont250179250180_))))
                                    (___kont250179250180_))))
                            (___kont250179250180_))
                        (___kont250179250180_))
                    (___kont250179250180_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250179250180_))))
                                            (___kont250179250180_))))
                                    (___kont250179250180_))
                                (___kont250179250180_))
                            (___kont250179250180_))))
                    (___kont250179250180_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250179250180_))
                                                (___kont250179250180_))
                                            (___kont250179250180_))
                                        (___kont250179250180_))
                                    (___kont250179250180_))
                                (___kont250179250180_))))
                        (___kont250179250180_))
                    (___kont250179250180_))
                (___kont250179250180_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250179250180_))))
                                        (___kont250179250180_))
                                    (___kont250179250180_))))
                            (___kont250179250180_))
                        (___kont250179250180_))
                    (___kont250179250180_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250179250180_))))
                                            (___kont250179250180_))
                                        (___kont250179250180_))))
                                (___kont250179250180_))
                            (___kont250179250180_))
                        (___kont250179250180_))))
                (___kont250179250180_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250179250180_))
                                            (___kont250179250180_))
                                        (___kont250179250180_))))
                                (___kont250179250180_))))
                        (___kont250179250180_))))
                (___kont250179250180_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250179250180_))
                                            (___kont250179250180_))
                                        (___kont250179250180_))))
                                (___kont250179250180_))))
                        (___kont250179250180_))
                    (___kont250179250180_))
                (___kont250179250180_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250179250180_))
                                            (___kont250179250180_))))
                                    (___kont250179250180_))))
                            (___kont250179250180_))))
                    (___kont250179250180_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250179250180_))
                                                (___kont250179250180_))
                                            (___kont250179250180_))))
                                    (___kont250179250180_))))
                            (___kont250179250180_))
                        (___kont250179250180_))))
                (___kont250179250180_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250179250180_))))
                                        (___kont250179250180_))))
                                (___kont250179250180_))
                            (___kont250179250180_))
                        (___kont250179250180_))))
                (___kont250179250180_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx239473_ _id239474_ _clauses239475_ _gensym?239476_)
        (let _lp239478_ ((_rest239480_ _clauses239475_)
                         (_ids239481_ '())
                         (_impls239482_ '())
                         (_clauses239483_ '()))
          (let* ((_rest239484239492_ _rest239480_)
                 (_else239486239500_
                  (lambda ()
                    (values (reverse _ids239481_)
                            (reverse _impls239482_)
                            (reverse _clauses239483_))))
                 (_K239488239705_
                  (lambda (_rest239503_ _clause239504_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause239504_))
                        (let ((__tmp251254
                               (let ()
                                 (declare (not safe))
                                 (cons _clause239504_ _clauses239483_))))
                          (declare (not safe))
                          (_lp239478_
                           _rest239503_
                           _ids239481_
                           _impls239482_
                           __tmp251254))
                        (let* ((_g239506239517_
                                (lambda (_g239507239514_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g239507239514_))))
                               (_g239505239702_
                                (lambda (_g239507239520_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g239507239520_))
                                      (let ((_e239512239522_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g239507239520_))))
                                        (let ((_hd239511239525_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e239512239522_)))
                                              (_tl239510239527_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e239512239522_))))
                                          ((lambda (_L239530_ _L239531_)
                                             (let* ((_id239548_
                                                     (let ((__tmp251201
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id239474_)))
                                                           (__tmp251200
                                                            (length _clauses239483_))
                                                           (__tmp251199
                                                            (if _gensym?239476_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp251201
                                                        '"__"
                                                        __tmp251200
                                                        __tmp251199)))
                                                    (_id239550_
                                                     (let ((__tmp251202
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx239473_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id239548_
                                                        __tmp251202)))
                                                    (_impl239552_
                                                     (let ((__tmp251203
                                                            (let ((__tmp251205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp251204
                           (let ()
                             (declare (not safe))
                             (cons _L239531_ _L239530_))))
                      (declare (not safe))
                      (cons __tmp251205 __tmp251204))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp251203 _stx239473_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause239699_
                                                     (let* ((___stx250559250560_
                                                             _L239531_)
                                                            (_g239556239584_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx250559250560_)))))
               (let ((___kont250561250562_
                      (lambda (_L239678_)
                        (let ((__tmp251206
                               (let ((__tmp251207
                                      (let ((__tmp251208
                                             (let ((__tmp251209
                                                    (let ((__tmp251215
                                                           (let ((__tmp251216
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id239550_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp251216)))
                  (__tmp251210
                   (let ((__tmp251211
                          (lambda (_g239688239691_ _g239689239693_)
                            (let ((__tmp251212
                                   (let ((__tmp251214
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp251213
                                          (let ()
                                            (declare (not safe))
                                            (cons _g239688239691_ '()))))
                                     (declare (not safe))
                                     (cons __tmp251214 __tmp251213))))
                              (declare (not safe))
                              (cons __tmp251212 _g239689239693_)))))
                     (declare (not safe))
                     (foldr1 __tmp251211 '() _L239678_))))
              (declare (not safe))
              (cons __tmp251215 __tmp251210))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp251209))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp251208
                                         _stx239473_))))
                                 (declare (not safe))
                                 (cons __tmp251207 '()))))
                          (declare (not safe))
                          (cons _L239531_ __tmp251206))))
                     (___kont250565250566_
                      (lambda (_L239629_ _L239630_)
                        (let ((__tmp251217
                               (let ((__tmp251218
                                      (let ((__tmp251219
                                             (let ((__tmp251220
                                                    (let ((__tmp251234
                                                           (let ((__tmp251235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp251235)))
                  (__tmp251221
                   (let ((__tmp251232
                          (let ((__tmp251233
                                 (let ()
                                   (declare (not safe))
                                   (cons _id239550_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp251233)))
                         (__tmp251222
                          (let ((__tmp251228
                                 (let ((__tmp251229
                                        (let ((__tmp251231
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp251230
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L239629_ '()))))
                                          (declare (not safe))
                                          (cons __tmp251231 __tmp251230))))
                                   (declare (not safe))
                                   (cons __tmp251229 '())))
                                (__tmp251223
                                 (let ((__tmp251224
                                        (lambda (_g239641239644_
                                                 _g239642239646_)
                                          (let ((__tmp251225
                                                 (let ((__tmp251227
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp251226
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g239641239644_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp251227
                                                         __tmp251226))))
                                            (declare (not safe))
                                            (cons __tmp251225
                                                  _g239642239646_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp251224 '() _L239630_))))
                            (declare (not safe))
                            (foldr1 cons __tmp251228 __tmp251223))))
                     (declare (not safe))
                     (cons __tmp251232 __tmp251222))))
              (declare (not safe))
              (cons __tmp251234 __tmp251221))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp251220))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp251219
                                         _stx239473_))))
                                 (declare (not safe))
                                 (cons __tmp251218 '()))))
                          (declare (not safe))
                          (cons _L239531_ __tmp251217))))
                     (___kont250569250570_
                      (lambda (_L239589_)
                        (let ((__tmp251236
                               (let ((__tmp251237
                                      (let ((__tmp251238
                                             (let ((__tmp251239
                                                    (let ((__tmp251247
                                                           (let ((__tmp251248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp251248)))
                  (__tmp251240
                   (let ((__tmp251245
                          (let ((__tmp251246
                                 (let ()
                                   (declare (not safe))
                                   (cons _id239550_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp251246)))
                         (__tmp251241
                          (let ((__tmp251242
                                 (let ((__tmp251244
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp251243
                                        (let ()
                                          (declare (not safe))
                                          (cons _L239589_ '()))))
                                   (declare (not safe))
                                   (cons __tmp251244 __tmp251243))))
                            (declare (not safe))
                            (cons __tmp251242 '()))))
                     (declare (not safe))
                     (cons __tmp251245 __tmp251241))))
              (declare (not safe))
              (cons __tmp251247 __tmp251240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp251239))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp251238
                                         _stx239473_))))
                                 (declare (not safe))
                                 (cons __tmp251237 '()))))
                          (declare (not safe))
                          (cons _L239531_ __tmp251236)))))
                 (let* ((___match250584250585_
                         (lambda (___splice250567250568_
                                  _target239570239605_
                                  _tl239572239607_)
                           (letrec ((_loop239573239610_
                                     (lambda (_hd239571239613_
                                              _arg239577239615_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd239571239613_))
                                           (let ((_e239574239618_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd239571239613_))))
                                             (let ((_lp-tl239576239623_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e239574239618_)))
                                                   (_lp-hd239575239621_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e239574239618_))))
                                               (let ((__tmp251249
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd239575239621_
                                                              _arg239577239615_))))
                                                 (declare (not safe))
                                                 (_loop239573239610_
                                                  _lp-tl239576239623_
                                                  __tmp251249))))
                                           (let ((_arg239578239626_
                                                  (reverse _arg239577239615_)))
                                             (___kont250565250566_
                                              _tl239572239607_
                                              _arg239578239626_))))))
                             (let ()
                               (declare (not safe))
                               (_loop239573239610_
                                _target239570239605_
                                '())))))
                        (___match250578250579_
                         (lambda (___splice250563250564_
                                  _target239559239654_
                                  _tl239561239656_)
                           (letrec ((_loop239562239659_
                                     (lambda (_hd239560239662_
                                              _arg239566239664_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd239560239662_))
                                           (let ((_e239563239667_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd239560239662_))))
                                             (let ((_lp-tl239565239672_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e239563239667_)))
                                                   (_lp-hd239564239670_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e239563239667_))))
                                               (let ((__tmp251250
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd239564239670_
                                                              _arg239566239664_))))
                                                 (declare (not safe))
                                                 (_loop239562239659_
                                                  _lp-tl239565239672_
                                                  __tmp251250))))
                                           (let ((_arg239567239675_
                                                  (reverse _arg239566239664_)))
                                             (___kont250561250562_
                                              _arg239567239675_))))))
                             (let ()
                               (declare (not safe))
                               (_loop239562239659_
                                _target239559239654_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx250559250560_))
                       (let ((___splice250563250564_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx250559250560_
                                 '0))))
                         (let ((_tl239561239656_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice250563250564_ '1)))
                               (_target239559239654_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice250563250564_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl239561239656_))
                               (___match250578250579_
                                ___splice250563250564_
                                _target239559239654_
                                _tl239561239656_)
                               (___match250584250585_
                                ___splice250563250564_
                                _target239559239654_
                                _tl239561239656_))))
                       (___kont250569250570_ ___stx250559250560_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp251253
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id239550_
                                                              _ids239481_)))
                                                     (__tmp251252
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl239552_
                                                              _impls239482_)))
                                                     (__tmp251251
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause239699_
                                                              _clauses239483_))))
                                                 (declare (not safe))
                                                 (_lp239478_
                                                  _rest239503_
                                                  __tmp251253
                                                  __tmp251252
                                                  __tmp251251))))
                                           _tl239510239527_
                                           _hd239511239525_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g239506239517_ _g239507239520_))))))
                          (declare (not safe))
                          (_g239505239702_ _clause239504_))))))
            (if (let () (declare (not safe)) (##pair? _rest239484239492_))
                (let ((_hd239489239708_
                       (let ()
                         (declare (not safe))
                         (##car _rest239484239492_)))
                      (_tl239490239710_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest239484239492_))))
                  (let* ((_clause239713_ _hd239489239708_)
                         (_rest239715_ _tl239490239710_))
                    (declare (not safe))
                    (_K239488239705_ _rest239715_ _clause239713_)))
                (let () (declare (not safe)) (_else239486239500_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx239720_ _id239721_ _clauses239722_)
        (let ((_gensym?239724_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx239720_
           _id239721_
           _clauses239722_
           _gensym?239724_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g251256_
        (let ((_g251255_ (let () (declare (not safe)) (##length _g251256_))))
          (cond ((let () (declare (not safe)) (##fx= _g251255_ 3))
                 (apply (lambda (_stx239720_ _id239721_ _clauses239722_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx239720_
                             _id239721_
                             _clauses239722_)))
                        _g251256_))
                ((let () (declare (not safe)) (##fx= _g251255_ 4))
                 (apply (lambda (_stx239726_
                                 _id239727_
                                 _clauses239728_
                                 _gensym?239729_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx239726_
                             _id239727_
                             _clauses239728_
                             _gensym?239729_)))
                        _g251256_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g251256_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx238750_)
        (letrec ((_case-lambda-clause-def238752_
                  (lambda (_id239469_ _impl239470_)
                    (let ((__tmp251257
                           (let ((__tmp251258
                                  (let ((__tmp251261
                                         (let ()
                                           (declare (not safe))
                                           (cons _id239469_ '())))
                                        (__tmp251259
                                         (let ((__tmp251260
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl239470_))))
                                           (declare (not safe))
                                           (cons __tmp251260 '()))))
                                    (declare (not safe))
                                    (cons __tmp251261 __tmp251259))))
                             (declare (not safe))
                             (cons '%#define-values __tmp251258))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp251257 _stx238750_))))
                 (_opt-lambda-dispatch-name238753_
                  (lambda (_id239465_)
                    (if (uninterned-symbol? _id239465_)
                        (let ((_str239467_ (symbol->string _id239465_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str239467_))
                              '"%"
                              _id239465_))
                        _id239465_)))
                 (_kw-lambda-dispatch-name238754_
                  (lambda (_id239460_ _name239461_)
                    (if (uninterned-symbol? _id239460_)
                        (let ((_str239463_ (symbol->string _id239460_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str239463_))
                              _name239461_
                              _id239460_))
                        _id239460_))))
          (let* ((___stx250607250608_ _stx238750_)
                 (_g238759238818_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx250607250608_)))))
            (let ((___kont250609250610_
                   (lambda (_L239369_ _L239370_)
                     (let* ((___stx250587250588_ _L239369_)
                            (_g239387239401_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx250587250588_)))))
                       (let ((___kont250589250590_
                              (lambda (_L239445_) _stx238750_))
                             (___kont250591250592_
                              (lambda (_L239414_)
                                (let ((_g251262_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx238750_
                                          _L239370_
                                          _L239414_))))
                                  (begin
                                    (let ((_g251263_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g251262_)
                                                 (##vector-length _g251262_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g251263_ 3)))
                                          (error "Context expects 3 values"
                                                 _g251263_)))
                                    (let ((_ids239424_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g251262_ 0)))
                                          (_impls239425_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g251262_ 1)))
                                          (_clauses239426_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g251262_ 2))))
                                      (let* ((_g251264_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids239424_))
                                             (_defs239429_
                                              (map _case-lambda-clause-def238752_
                                                   _ids239424_
                                                   _impls239425_)))
                                        (let ((__tmp251266
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L239370_)))
                                              (__tmp251265
                                               (map gxc#identifier-symbol
                                                    _ids239424_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp251266
                                           '" => "
                                           __tmp251265))
                                        (let ((__tmp251267
                                               (let ((__tmp251268
                                                      (let ((__tmp251269
                                                             (let ((__tmp251270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp251271
                                   (let ((__tmp251272
                                          (let ((__tmp251277
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L239370_ '())))
                                                (__tmp251273
                                                 (let ((__tmp251274
                                                        (let ((__tmp251276
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses239426_)))
                      (__tmp251275
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp251276 __tmp251275))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp251274 '()))))
                                            (declare (not safe))
                                            (cons __tmp251277 __tmp251273))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp251272))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp251271
                               _stx238750_))))
                       (declare (not safe))
                       (cons __tmp251270 '()))))
                (declare (not safe))
                (foldr1 cons __tmp251269 _defs239429_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp251268))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp251267
                                           _stx238750_)))))))))
                         (let ((___match250598250599_
                                (lambda (_e239392239437_
                                         _hd239391239440_
                                         _tl239390239442_)
                                  (let ((_L239445_ _tl239390239442_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L239445_))
                                        (___kont250589250590_ _L239445_)
                                        (___kont250591250592_
                                         _tl239390239442_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx250587250588_))
                               (let ((_e239392239437_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx250587250588_))))
                                 (let ((_tl239390239442_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e239392239437_)))
                                       (_hd239391239440_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e239392239437_))))
                                   (___match250598250599_
                                    _e239392239437_
                                    _hd239391239440_
                                    _tl239390239442_)))
                               (let ()
                                 (declare (not safe))
                                 (_g239387239401_))))))))
                  (___kont250611250612_
                   (lambda (_L239187_ _L239188_)
                     (let* ((_g239204239234_
                             (lambda (_g239205239231_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g239205239231_))))
                            (_g239203239329_
                             (lambda (_g239205239237_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g239205239237_))
                                   (let ((_e239211239239_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g239205239237_))))
                                     (let ((_hd239210239242_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e239211239239_)))
                                           (_tl239209239244_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e239211239239_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl239209239244_))
                                           (let ((_e239214239247_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl239209239244_))))
                                             (let ((_hd239213239250_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e239214239247_)))
                                                   (_tl239212239252_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e239214239247_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd239213239250_))
                                                   (let ((_e239217239255_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd239213239250_))))
                                                     (let ((_hd239216239258_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e239217239255_)))
                                                           (_tl239215239260_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e239217239255_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd239216239258_))
                                                           (let ((_e239220239263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd239216239258_))))
                     (let ((_hd239219239266_
                            (let ()
                              (declare (not safe))
                              (##car _e239220239263_)))
                           (_tl239218239268_
                            (let ()
                              (declare (not safe))
                              (##cdr _e239220239263_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd239219239266_))
                           (let ((_e239223239271_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd239219239266_))))
                             (let ((_hd239222239274_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e239223239271_)))
                                   (_tl239221239276_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e239223239271_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl239221239276_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl239218239268_))
                                       (let ((_e239226239279_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl239218239268_))))
                                         (let ((_hd239225239282_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e239226239279_)))
                                               (_tl239224239284_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e239226239279_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl239224239284_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl239215239260_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl239212239252_))
                                                       (let ((_e239229239287_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl239212239252_))))
                 (let ((_hd239228239290_
                        (let () (declare (not safe)) (##car _e239229239287_)))
                       (_tl239227239292_
                        (let () (declare (not safe)) (##cdr _e239229239287_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl239227239292_))
                       ((lambda (_L239295_ _L239296_ _L239297_)
                          (let* ((_lambda-id239321_
                                  (let ((__tmp251280
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L239188_)))
                                        (__tmp251278
                                         (let ((__tmp251279
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L239297_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name238753_
                                            __tmp251279))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp251280
                                     '"__"
                                     __tmp251278)))
                                 (_lambda-id239323_
                                  (let ((__tmp251281
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx238750_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id239321_
                                     __tmp251281)))
                                 (_g251282_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id239323_)))
                                 (_new-case-lambda-expr239326_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L239295_
                                     _L239297_
                                     _lambda-id239323_))))
                            (let ((__tmp251284
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L239188_)))
                                  (__tmp251283
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id239323_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp251284
                               '" => "
                               __tmp251283))
                            (let ((__tmp251285
                                   (let ((__tmp251286
                                          (let ((__tmp251294
                                                 (let ((__tmp251295
                                                        (let ((__tmp251296
                                                               (let ((__tmp251299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id239323_ '())))
                             (__tmp251297
                              (let ((__tmp251298
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L239296_))))
                                (declare (not safe))
                                (cons __tmp251298 '()))))
                         (declare (not safe))
                         (cons __tmp251299 __tmp251297))))
                  (declare (not safe))
                  (cons '%#define-values __tmp251296))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp251295
                                                    _stx238750_)))
                                                (__tmp251287
                                                 (let ((__tmp251288
                                                        (let ((__tmp251289
                                                               (let ((__tmp251290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp251291
                                     (let ((__tmp251293
                                            (let ()
                                              (declare (not safe))
                                              (cons _L239188_ '())))
                                           (__tmp251292
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr239326_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp251293 __tmp251292))))
                                (declare (not safe))
                                (cons '%#define-values __tmp251291))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp251290 _stx238750_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp251289))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp251288 '()))))
                                            (declare (not safe))
                                            (cons __tmp251294 __tmp251287))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp251286))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp251285
                               _stx238750_))))
                        _hd239228239290_
                        _hd239225239282_
                        _hd239222239274_)
                       (let ()
                         (declare (not safe))
                         (_g239204239234_ _g239205239237_)))))
               (let () (declare (not safe)) (_g239204239234_ _g239205239237_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g239204239234_
                                                      _g239205239237_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g239204239234_
                                                  _g239205239237_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g239204239234_ _g239205239237_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g239204239234_ _g239205239237_)))))
                           (let ()
                             (declare (not safe))
                             (_g239204239234_ _g239205239237_)))))
                   (let ()
                     (declare (not safe))
                     (_g239204239234_ _g239205239237_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g239204239234_
                                                      _g239205239237_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g239204239234_
                                              _g239205239237_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g239204239234_ _g239205239237_))))))
                       (declare (not safe))
                       (_g239203239329_ _L239187_))))
                  (___kont250613250614_
                   (lambda (_L238901_ _L238902_)
                     (let* ((_g238918238971_
                             (lambda (_g238919238968_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g238919238968_))))
                            (_g238917239147_
                             (lambda (_g238919238974_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g238919238974_))
                                   (let ((_e238927238976_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g238919238974_))))
                                     (let ((_hd238926238979_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e238927238976_)))
                                           (_tl238925238981_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e238927238976_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl238925238981_))
                                           (let ((_e238930238984_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl238925238981_))))
                                             (let ((_hd238929238987_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e238930238984_)))
                                                   (_tl238928238989_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e238930238984_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd238929238987_))
                                                   (let ((_e238933238992_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd238929238987_))))
                                                     (let ((_hd238932238995_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e238933238992_)))
                                                           (_tl238931238997_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e238933238992_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd238932238995_))
                                                           (let ((_e238936239000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd238932238995_))))
                     (let ((_hd238935239003_
                            (let ()
                              (declare (not safe))
                              (##car _e238936239000_)))
                           (_tl238934239005_
                            (let ()
                              (declare (not safe))
                              (##cdr _e238936239000_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd238935239003_))
                           (let ((_e238939239008_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd238935239003_))))
                             (let ((_hd238938239011_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e238939239008_)))
                                   (_tl238937239013_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e238939239008_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl238937239013_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl238934239005_))
                                       (let ((_e238942239016_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl238934239005_))))
                                         (let ((_hd238941239019_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e238942239016_)))
                                               (_tl238940239021_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e238942239016_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd238941239019_))
                                               (let ((_e238945239024_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd238941239019_))))
                                                 (let ((_hd238944239027_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e238945239024_)))
                                                       (_tl238943239029_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e238945239024_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl238943239029_))
                                                       (let ((_e238948239032_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl238943239029_))))
                 (let ((_hd238947239035_
                        (let () (declare (not safe)) (##car _e238948239032_)))
                       (_tl238946239037_
                        (let () (declare (not safe)) (##cdr _e238948239032_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd238947239035_))
                       (let ((_e238951239040_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd238947239035_))))
                         (let ((_hd238950239043_
                                (let ()
                                  (declare (not safe))
                                  (##car _e238951239040_)))
                               (_tl238949239045_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e238951239040_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd238950239043_))
                               (let ((_e238954239048_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd238950239043_))))
                                 (let ((_hd238953239051_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e238954239048_)))
                                       (_tl238952239053_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e238954239048_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd238953239051_))
                                       (let ((_e238957239056_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd238953239051_))))
                                         (let ((_hd238956239059_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e238957239056_)))
                                               (_tl238955239061_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e238957239056_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl238955239061_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl238952239053_))
                                                   (let ((_e238960239064_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl238952239053_))))
                                                     (let ((_hd238959239067_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e238960239064_)))
                                                           (_tl238958239069_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e238960239064_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl238958239069_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl238949239045_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl238946239037_))
                           (let ((_e238963239072_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl238946239037_))))
                             (let ((_hd238962239075_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e238963239072_)))
                                   (_tl238961239077_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e238963239072_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl238961239077_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl238940239021_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl238931238997_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl238928238989_))
                                               (let ((_e238966239080_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl238928238989_))))
                                                 (let ((_hd238965239083_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e238966239080_)))
                                                       (_tl238964239085_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e238966239080_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl238964239085_))
                                                       ((lambda (_L239088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L239089_
                         _L239090_
                         _L239091_
                         _L239092_)
                  (let* ((_get-kws-id239132_
                          (let ((__tmp251302
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L238902_)))
                                (__tmp251300
                                 (let ((__tmp251301
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L239092_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name238754_
                                    __tmp251301
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp251302 '"__" __tmp251300)))
                         (_get-kws-id239134_
                          (let ((__tmp251303
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx238750_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id239132_
                             __tmp251303)))
                         (_main-id239136_
                          (let ((__tmp251306
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L238902_)))
                                (__tmp251304
                                 (let ((__tmp251305
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L239091_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name238754_
                                    __tmp251305
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp251306 '"__" __tmp251304)))
                         (_main-id239138_
                          (let ((__tmp251307
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx238750_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id239136_
                             __tmp251307)))
                         (_g251308_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id239134_)))
                         (_g251309_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id239138_)))
                         (_new-kw-dispatch239142_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L239088_
                             _L239092_
                             _get-kws-id239134_)))
                         (_new-get-kws239144_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L239089_
                             _L239091_
                             _main-id239138_))))
                    (let ((__tmp251312
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L238902_)))
                          (__tmp251311
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id239134_)))
                          (__tmp251310
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id239138_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp251312
                       '" => "
                       __tmp251311
                       '" => "
                       __tmp251310))
                    (let ((__tmp251313
                           (let ((__tmp251314
                                  (let ((__tmp251327
                                         (let ((__tmp251328
                                                (let ((__tmp251329
                                                       (let ((__tmp251330
                                                              (let ((__tmp251332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id239138_ '())))
                            (__tmp251331
                             (let ()
                               (declare (not safe))
                               (cons _L239090_ '()))))
                        (declare (not safe))
                        (cons __tmp251332 __tmp251331))))
                 (declare (not safe))
                 (cons '%#define-values __tmp251330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251329
                                                   _stx238750_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp251328)))
                                        (__tmp251315
                                         (let ((__tmp251322
                                                (let ((__tmp251323
                                                       (let ((__tmp251324
                                                              (let ((__tmp251326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id239134_ '())))
                            (__tmp251325
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws239144_ '()))))
                        (declare (not safe))
                        (cons __tmp251326 __tmp251325))))
                 (declare (not safe))
                 (cons '%#define-values __tmp251324))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251323
                                                   _stx238750_)))
                                               (__tmp251316
                                                (let ((__tmp251317
                                                       (let ((__tmp251318
                                                              (let ((__tmp251319
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp251321
                                    (let ()
                                      (declare (not safe))
                                      (cons _L238902_ '())))
                                   (__tmp251320
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch239142_ '()))))
                               (declare (not safe))
                               (cons __tmp251321 __tmp251320))))
                        (declare (not safe))
                        (cons '%#define-values __tmp251319))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp251318 _stx238750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp251317 '()))))
                                           (declare (not safe))
                                           (cons __tmp251322 __tmp251316))))
                                    (declare (not safe))
                                    (cons __tmp251327 __tmp251315))))
                             (declare (not safe))
                             (cons '%#begin __tmp251314))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp251313 _stx238750_))))
                _hd238965239083_
                _hd238962239075_
                _hd238959239067_
                _hd238956239059_
                _hd238938239011_)
               (let ()
                 (declare (not safe))
                 (_g238918238971_ _g238919238974_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g238918238971_
                                                  _g238919238974_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g238918238971_
                                              _g238919238974_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g238918238971_ _g238919238974_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g238918238971_ _g238919238974_)))))
                           (let ()
                             (declare (not safe))
                             (_g238918238971_ _g238919238974_)))
                       (let ()
                         (declare (not safe))
                         (_g238918238971_ _g238919238974_)))
                   (let ()
                     (declare (not safe))
                     (_g238918238971_ _g238919238974_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g238918238971_
                                                      _g238919238974_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g238918238971_
                                                  _g238919238974_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g238918238971_ _g238919238974_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g238918238971_ _g238919238974_)))))
                       (let ()
                         (declare (not safe))
                         (_g238918238971_ _g238919238974_)))))
               (let ()
                 (declare (not safe))
                 (_g238918238971_ _g238919238974_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g238918238971_
                                                  _g238919238974_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g238918238971_ _g238919238974_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g238918238971_ _g238919238974_)))))
                           (let ()
                             (declare (not safe))
                             (_g238918238971_ _g238919238974_)))))
                   (let ()
                     (declare (not safe))
                     (_g238918238971_ _g238919238974_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g238918238971_
                                                      _g238919238974_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g238918238971_
                                              _g238919238974_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g238918238971_ _g238919238974_))))))
                       (declare (not safe))
                       (_g238917239147_ _L238901_))))
                  (___kont250615250616_
                   (lambda (_L238847_ _L238848_)
                     (let ((__tmp251333
                            (let ((__tmp251334
                                   (let ((__tmp251335
                                          (let ((__tmp251336
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L238847_))))
                                            (declare (not safe))
                                            (cons __tmp251336 '()))))
                                     (declare (not safe))
                                     (cons _L238848_ __tmp251335))))
                              (declare (not safe))
                              (cons '%#define-values __tmp251334))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp251333 _stx238750_)))))
              (let* ((___match250700250701_
                      (lambda (_e238793238869_
                               _hd238792238872_
                               _tl238791238874_
                               _e238796238877_
                               _hd238795238880_
                               _tl238794238882_
                               _e238799238885_
                               _hd238798238888_
                               _tl238797238890_
                               _e238802238893_
                               _hd238801238896_
                               _tl238800238898_)
                        (let ((_L238901_ _hd238801238896_)
                              (_L238902_ _hd238798238888_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L238902_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L238901_)))
                              (___kont250613250614_ _L238901_ _L238902_)
                              (___kont250615250616_
                               _hd238801238896_
                               _hd238795238880_)))))
                     (___match250672250673_
                      (lambda (_e238779239155_
                               _hd238778239158_
                               _tl238777239160_
                               _e238782239163_
                               _hd238781239166_
                               _tl238780239168_
                               _e238785239171_
                               _hd238784239174_
                               _tl238783239176_
                               _e238788239179_
                               _hd238787239182_
                               _tl238786239184_)
                        (let ((_L239187_ _hd238787239182_)
                              (_L239188_ _hd238784239174_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L239188_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L239187_)))
                              (___kont250611250612_ _L239187_ _L239188_)
                              (___match250700250701_
                               _e238779239155_
                               _hd238778239158_
                               _tl238777239160_
                               _e238782239163_
                               _hd238781239166_
                               _tl238780239168_
                               _e238785239171_
                               _hd238784239174_
                               _tl238783239176_
                               _e238788239179_
                               _hd238787239182_
                               _tl238786239184_)))))
                     (___match250644250645_
                      (lambda (_e238765239337_
                               _hd238764239340_
                               _tl238763239342_
                               _e238768239345_
                               _hd238767239348_
                               _tl238766239350_
                               _e238771239353_
                               _hd238770239356_
                               _tl238769239358_
                               _e238774239361_
                               _hd238773239364_
                               _tl238772239366_)
                        (let ((_L239369_ _hd238773239364_)
                              (_L239370_ _hd238770239356_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L239370_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L239369_)))
                              (___kont250609250610_ _L239369_ _L239370_)
                              (___match250672250673_
                               _e238765239337_
                               _hd238764239340_
                               _tl238763239342_
                               _e238768239345_
                               _hd238767239348_
                               _tl238766239350_
                               _e238771239353_
                               _hd238770239356_
                               _tl238769239358_
                               _e238774239361_
                               _hd238773239364_
                               _tl238772239366_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx250607250608_))
                    (let ((_e238765239337_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx250607250608_))))
                      (let ((_tl238763239342_
                             (let ()
                               (declare (not safe))
                               (##cdr _e238765239337_)))
                            (_hd238764239340_
                             (let ()
                               (declare (not safe))
                               (##car _e238765239337_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl238763239342_))
                            (let ((_e238768239345_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl238763239342_))))
                              (let ((_tl238766239350_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238768239345_)))
                                    (_hd238767239348_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238768239345_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd238767239348_))
                                    (let ((_e238771239353_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd238767239348_))))
                                      (let ((_tl238769239358_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e238771239353_)))
                                            (_hd238770239356_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e238771239353_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl238769239358_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl238766239350_))
                                                (let ((_e238774239361_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl238766239350_))))
                                                  (let ((_tl238772239366_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238774239361_)))
                                                        (_hd238773239364_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238774239361_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl238772239366_))
                                                        (___match250644250645_
                                                         _e238765239337_
                                                         _hd238764239340_
                                                         _tl238763239342_
                                                         _e238768239345_
                                                         _hd238767239348_
                                                         _tl238766239350_
                                                         _e238771239353_
                                                         _hd238770239356_
                                                         _tl238769239358_
                                                         _e238774239361_
                                                         _hd238773239364_
                                                         _tl238772239366_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g238759238818_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g238759238818_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl238766239350_))
                                                (let ((_e238813238839_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl238766239350_))))
                                                  (let ((_tl238811238844_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238813238839_)))
                                                        (_hd238812238842_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238813238839_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl238811238844_))
                                                        (___kont250615250616_
                                                         _hd238812238842_
                                                         _hd238767239348_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g238759238818_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g238759238818_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl238766239350_))
                                        (let ((_e238813238839_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl238766239350_))))
                                          (let ((_tl238811238844_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e238813238839_)))
                                                (_hd238812238842_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e238813238839_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl238811238844_))
                                                (___kont250615250616_
                                                 _hd238812238842_
                                                 _hd238767239348_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g238759238818_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g238759238818_))))))
                            (let () (declare (not safe)) (_g238759238818_)))))
                    (let () (declare (not safe)) (_g238759238818_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx237682_)
        (letrec* ((_bind-e__249003249004_
                   (lambda (_id238734_ _expr238735_ _compile?238736_)
                     (let ((__tmp251339
                            (let ()
                              (declare (not safe))
                              (cons _id238734_ '())))
                           (__tmp251337
                            (let ((__tmp251338
                                   (if _compile?238736_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr238735_))
                                       _expr238735_)))
                              (declare (not safe))
                              (cons __tmp251338 '()))))
                       (declare (not safe))
                       (cons __tmp251339 __tmp251337))))
                  (_bind-e__0__249005249006_
                   (lambda (_id238741_ _expr238742_)
                     (let ((_compile?238744_ '#t))
                       (declare (not safe))
                       (_bind-e__249003249004_
                        _id238741_
                        _expr238742_
                        _compile?238744_))))
                  (_bind-e237684_
                   (lambda _g251341_
                     (let ((_g251340_
                            (let ()
                              (declare (not safe))
                              (##length _g251341_))))
                       (cond ((let () (declare (not safe)) (##fx= _g251340_ 2))
                              (apply (lambda (_id238741_ _expr238742_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__249005249006_
                                          _id238741_
                                          _expr238742_)))
                                     _g251341_))
                             ((let () (declare (not safe)) (##fx= _g251340_ 3))
                              (apply (lambda (_id238746_
                                              _expr238747_
                                              _compile?238748_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__249003249004_
                                          _id238746_
                                          _expr238747_
                                          _compile?238748_)))
                                     _g251341_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g251341_))))))
                  (_compile-bindings237685_
                   (lambda (_bindings238318_)
                     (let _lp238320_ ((_rest238322_ _bindings238318_)
                                      (_lift1238323_ '())
                                      (_lift2238324_ '())
                                      (_bind238325_ '()))
                       (let* ((_rest238326238334_ _rest238322_)
                              (_else238328238342_
                               (lambda ()
                                 (values (reverse _lift1238323_)
                                         (reverse _lift2238324_)
                                         (reverse _bind238325_))))
                              (_K238330238721_
                               (lambda (_rest238345_ _hd238346_)
                                 (let* ((___stx250743250744_ _hd238346_)
                                        (_g238350238386_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx250743250744_)))))
                                   (let ((___kont250745250746_
                                          (lambda (_L238628_ _L238629_)
                                            (let* ((___stx250723250724_
                                                    _L238628_)
                                                   (_g238644238658_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx250723250724_)))))
                                              (let ((___kont250725250726_
                                                     (lambda (_L238706_)
                                                       (let ((__tmp251342
                                                              (let ((__tmp251343
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__249003249004_
                                _L238629_
                                _L238628_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp251343 _bind238325_))))
                 (declare (not safe))
                 (_lp238320_
                  _rest238345_
                  _lift1238323_
                  _lift2238324_
                  __tmp251342))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250727250728_
                                                     (lambda (_L238671_)
                                                       (let ((_g251344_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx237682_
                         _L238629_
                         _L238671_
                         '#t))))
                 (begin
                   (let ((_g251345_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g251344_)
                                (##vector-length _g251344_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g251345_ 3)))
                         (error "Context expects 3 values" _g251345_)))
                   (let ((_ids238681_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g251344_ 0)))
                         (_impls238682_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g251344_ 1)))
                         (_clauses238683_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g251344_ 2))))
                     (let* ((_g251346_
                             (for-each gx#core-bind-runtime! _ids238681_))
                            (_xbind238686_
                             (map _bind-e237684_ _ids238681_ _impls238682_))
                            (_expr*238688_
                             (let ((__tmp251348
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses238683_)))
                                   (__tmp251347
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp251348
                                __tmp251347)))
                            (_bind*238690_
                             (let ()
                               (declare (not safe))
                               (_bind-e__249003249004_
                                _L238629_
                                _expr*238688_
                                '#f))))
                       (let ((__tmp251350
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L238629_)))
                             (__tmp251349
                              (map gxc#identifier-symbol _ids238681_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp251350
                          '" => "
                          __tmp251349))
                       (let ((__tmp251352
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2238324_ _xbind238686_)))
                             (__tmp251351
                              (let ()
                                (declare (not safe))
                                (cons _bind*238690_ _bind238325_))))
                         (declare (not safe))
                         (_lp238320_
                          _rest238345_
                          _lift1238323_
                          __tmp251352
                          __tmp251351)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match250734250735_
                                                       (lambda (_e238649238698_
                                                                _hd238648238701_
                                                                _tl238647238703_)
                                                         (let ((_L238706_
                                                                _tl238647238703_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L238706_))
                       (___kont250725250726_ _L238706_)
                       (___kont250727250728_ _tl238647238703_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx250723250724_))
                                                      (let ((_e238649238698_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx250723250724_))))
                (let ((_tl238647238703_
                       (let () (declare (not safe)) (##cdr _e238649238698_)))
                      (_hd238648238701_
                       (let () (declare (not safe)) (##car _e238649238698_))))
                  (___match250734250735_
                   _e238649238698_
                   _hd238648238701_
                   _tl238647238703_)))
              (let () (declare (not safe)) (_g238644238658_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont250747250748_
                                          (lambda (_L238456_ _L238457_)
                                            (let* ((_g238471238501_
                                                    (lambda (_g238472238498_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g238472238498_))))
                                                   (_g238470238596_
                                                    (lambda (_g238472238504_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g238472238504_))
                                                          (let ((_e238478238506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g238472238504_))))
                    (let ((_hd238477238509_
                           (let ()
                             (declare (not safe))
                             (##car _e238478238506_)))
                          (_tl238476238511_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238478238506_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238476238511_))
                          (let ((_e238481238514_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238476238511_))))
                            (let ((_hd238480238517_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238481238514_)))
                                  (_tl238479238519_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238481238514_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd238480238517_))
                                  (let ((_e238484238522_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd238480238517_))))
                                    (let ((_hd238483238525_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238484238522_)))
                                          (_tl238482238527_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238484238522_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd238483238525_))
                                          (let ((_e238487238530_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd238483238525_))))
                                            (let ((_hd238486238533_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e238487238530_)))
                                                  (_tl238485238535_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e238487238530_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd238486238533_))
                                                  (let ((_e238490238538_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd238486238533_))))
                                                    (let ((_hd238489238541_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e238490238538_)))
                                                          (_tl238488238543_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e238490238538_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl238488238543_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl238485238535_))
                      (let ((_e238493238546_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl238485238535_))))
                        (let ((_hd238492238549_
                               (let ()
                                 (declare (not safe))
                                 (##car _e238493238546_)))
                              (_tl238491238551_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e238493238546_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl238491238551_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl238482238527_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl238479238519_))
                                      (let ((_e238496238554_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl238479238519_))))
                                        (let ((_hd238495238557_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238496238554_)))
                                              (_tl238494238559_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238496238554_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl238494238559_))
                                              ((lambda (_L238562_
                                                        _L238563_
                                                        _L238564_)
                                                 (let* ((_lambda-id238588_
                                                         (let ((__tmp251354
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L238457_)))
                       (__tmp251353 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp251354 __tmp251353)))
                (_lambda-id238590_
                 (let ((__tmp251355
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx237682_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id238588_ __tmp251355)))
                (_g251356_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id238590_)))
                (_new-case-lambda-expr238593_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L238562_
                    _L238564_
                    _lambda-id238590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp251358
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L238457_)))
                                                         (__tmp251357
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id238590_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp251358
                                                      '" => "
                                                      __tmp251357))
                                                   (let ((__tmp251361
                                                          (let ((__tmp251362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__249003249004_
                            _L238457_
                            _new-case-lambda-expr238593_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp251362 _rest238345_)))
                 (__tmp251359
                  (let ((__tmp251360
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__249005249006_
                            _lambda-id238590_
                            _L238563_))))
                    (declare (not safe))
                    (cons __tmp251360 _lift1238323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp238320_
                                                      __tmp251361
                                                      __tmp251359
                                                      _lift2238324_
                                                      _bind238325_))))
                                               _hd238495238557_
                                               _hd238492238549_
                                               _hd238489238541_)
                                              (let ()
                                                (declare (not safe))
                                                (_g238471238501_
                                                 _g238472238504_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g238471238501_ _g238472238504_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g238471238501_ _g238472238504_)))
                              (let ()
                                (declare (not safe))
                                (_g238471238501_ _g238472238504_)))))
                      (let ()
                        (declare (not safe))
                        (_g238471238501_ _g238472238504_)))
                  (let ()
                    (declare (not safe))
                    (_g238471238501_ _g238472238504_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g238471238501_
                                                     _g238472238504_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g238471238501_
                                             _g238472238504_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g238471238501_ _g238472238504_)))))
                          (let ()
                            (declare (not safe))
                            (_g238471238501_ _g238472238504_)))))
                  (let ()
                    (declare (not safe))
                    (_g238471238501_ _g238472238504_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g238470238596_ _L238456_))))
                                         (___kont250749250750_
                                          (lambda (_L238407_ _L238408_)
                                            (let ((__tmp251363
                                                   (let ((__tmp251364
                                                          (let ((__tmp251365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp251366
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L238407_))))
                           (declare (not safe))
                           (cons __tmp251366 '()))))
                    (declare (not safe))
                    (cons _L238408_ __tmp251365))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp251364
                                                           _bind238325_))))
                                              (declare (not safe))
                                              (_lp238320_
                                               _rest238345_
                                               _lift1238323_
                                               _lift2238324_
                                               __tmp251363)))))
                                     (let* ((___match250794250795_
                                             (lambda (_e238367238432_
                                                      _hd238366238435_
                                                      _tl238365238437_
                                                      _e238370238440_
                                                      _hd238369238443_
                                                      _tl238368238445_
                                                      _e238373238448_
                                                      _hd238372238451_
                                                      _tl238371238453_)
                                               (let ((_L238456_
                                                      _hd238372238451_)
                                                     (_L238457_
                                                      _hd238369238443_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L238457_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L238456_)))
                                                     (___kont250747250748_
                                                      _L238456_
                                                      _L238457_)
                                                     (___kont250749250750_
                                                      _hd238372238451_
                                                      _hd238366238435_)))))
                                            (___match250772250773_
                                             (lambda (_e238356238604_
                                                      _hd238355238607_
                                                      _tl238354238609_
                                                      _e238359238612_
                                                      _hd238358238615_
                                                      _tl238357238617_
                                                      _e238362238620_
                                                      _hd238361238623_
                                                      _tl238360238625_)
                                               (let ((_L238628_
                                                      _hd238361238623_)
                                                     (_L238629_
                                                      _hd238358238615_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L238629_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L238628_)))
                                                     (___kont250745250746_
                                                      _L238628_
                                                      _L238629_)
                                                     (___match250794250795_
                                                      _e238356238604_
                                                      _hd238355238607_
                                                      _tl238354238609_
                                                      _e238359238612_
                                                      _hd238358238615_
                                                      _tl238357238617_
                                                      _e238362238620_
                                                      _hd238361238623_
                                                      _tl238360238625_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx250743250744_))
                                           (let ((_e238356238604_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx250743250744_))))
                                             (let ((_tl238354238609_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e238356238604_)))
                                                   (_hd238355238607_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e238356238604_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd238355238607_))
                                                   (let ((_e238359238612_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd238355238607_))))
                                                     (let ((_tl238357238617_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e238359238612_)))
                                                           (_hd238358238615_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e238359238612_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl238357238617_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl238354238609_))
                       (let ((_e238362238620_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl238354238609_))))
                         (let ((_tl238360238625_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e238362238620_)))
                               (_hd238361238623_
                                (let ()
                                  (declare (not safe))
                                  (##car _e238362238620_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl238360238625_))
                               (___match250772250773_
                                _e238356238604_
                                _hd238355238607_
                                _tl238354238609_
                                _e238359238612_
                                _hd238358238615_
                                _tl238357238617_
                                _e238362238620_
                                _hd238361238623_
                                _tl238360238625_)
                               (let ()
                                 (declare (not safe))
                                 (_g238350238386_)))))
                       (let () (declare (not safe)) (_g238350238386_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl238354238609_))
                       (let ((_e238381238399_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl238354238609_))))
                         (let ((_tl238379238404_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e238381238399_)))
                               (_hd238380238402_
                                (let ()
                                  (declare (not safe))
                                  (##car _e238381238399_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl238379238404_))
                               (___kont250749250750_
                                _hd238380238402_
                                _hd238355238607_)
                               (let ()
                                 (declare (not safe))
                                 (_g238350238386_)))))
                       (let () (declare (not safe)) (_g238350238386_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl238354238609_))
                                                       (let ((_e238381238399_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl238354238609_))))
                 (let ((_tl238379238404_
                        (let () (declare (not safe)) (##cdr _e238381238399_)))
                       (_hd238380238402_
                        (let () (declare (not safe)) (##car _e238381238399_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl238379238404_))
                       (___kont250749250750_ _hd238380238402_ _hd238355238607_)
                       (let () (declare (not safe)) (_g238350238386_)))))
               (let () (declare (not safe)) (_g238350238386_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g238350238386_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest238326238334_))
                             (let ((_hd238331238724_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest238326238334_)))
                                   (_tl238332238726_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest238326238334_))))
                               (let* ((_hd238729_ _hd238331238724_)
                                      (_rest238731_ _tl238332238726_))
                                 (declare (not safe))
                                 (_K238330238721_ _rest238731_ _hd238729_)))
                             (let ()
                               (declare (not safe))
                               (_else238328238342_)))))))
                  (_lift-kw-lambda?237686_
                   (lambda (_bind238242_)
                     (let* ((___stx250811250812_ _bind238242_)
                            (_g238245238262_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx250811250812_)))))
                       (let ((___kont250813250814_
                              (lambda (_L238298_ _L238299_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L238299_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L238298_))
                                    '#f)))
                             (___kont250815250816_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx250811250812_))
                             (let ((_e238251238274_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx250811250812_))))
                               (let ((_tl238249238279_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e238251238274_)))
                                     (_hd238250238277_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e238251238274_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd238250238277_))
                                     (let ((_e238254238282_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd238250238277_))))
                                       (let ((_tl238252238287_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e238254238282_)))
                                             (_hd238253238285_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e238254238282_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl238252238287_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl238249238279_))
                                                 (let ((_e238257238290_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl238249238279_))))
                                                   (let ((_tl238255238295_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e238257238290_)))
                                                         (_hd238256238293_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e238257238290_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl238255238295_))
                                                         (___kont250813250814_
                                                          _hd238256238293_
                                                          _hd238253238285_)
                                                         (___kont250815250816_))))
                                                 (___kont250815250816_))
                                             (___kont250815250816_))))
                                     (___kont250815250816_))))
                             (___kont250815250816_))))))
                  (_lift-kw-lambda-bindings237687_
                   (lambda (_bindings237854_)
                     (let _lp237856_ ((_rest237858_ _bindings237854_)
                                      (_lift1237859_ '())
                                      (_lift2237860_ '())
                                      (_bind237861_ '()))
                       (let* ((_rest237862237870_ _rest237858_)
                              (_else237864237878_
                               (lambda ()
                                 (values (reverse _lift1237859_)
                                         (reverse _lift2237860_)
                                         (reverse _bind237861_))))
                              (_K237866238230_
                               (lambda (_rest237881_ _hd237882_)
                                 (let* ((___stx250841250842_ _hd237882_)
                                        (_g237885237910_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx250841250842_)))))
                                   (let ((___kont250843250844_
                                          (lambda (_L237980_ _L237981_)
                                            (let* ((_g237995238048_
                                                    (lambda (_g237996238045_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g237996238045_))))
                                                   (_g237994238224_
                                                    (lambda (_g237996238051_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g237996238051_))
                                                          (let ((_e238004238053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g237996238051_))))
                    (let ((_hd238003238056_
                           (let ()
                             (declare (not safe))
                             (##car _e238004238053_)))
                          (_tl238002238058_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238004238053_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238002238058_))
                          (let ((_e238007238061_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238002238058_))))
                            (let ((_hd238006238064_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238007238061_)))
                                  (_tl238005238066_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238007238061_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd238006238064_))
                                  (let ((_e238010238069_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd238006238064_))))
                                    (let ((_hd238009238072_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238010238069_)))
                                          (_tl238008238074_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238010238069_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd238009238072_))
                                          (let ((_e238013238077_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd238009238072_))))
                                            (let ((_hd238012238080_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e238013238077_)))
                                                  (_tl238011238082_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e238013238077_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd238012238080_))
                                                  (let ((_e238016238085_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd238012238080_))))
                                                    (let ((_hd238015238088_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e238016238085_)))
                                                          (_tl238014238090_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e238016238085_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl238014238090_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl238011238082_))
                      (let ((_e238019238093_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl238011238082_))))
                        (let ((_hd238018238096_
                               (let ()
                                 (declare (not safe))
                                 (##car _e238019238093_)))
                              (_tl238017238098_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e238019238093_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd238018238096_))
                              (let ((_e238022238101_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd238018238096_))))
                                (let ((_hd238021238104_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e238022238101_)))
                                      (_tl238020238106_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e238022238101_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl238020238106_))
                                      (let ((_e238025238109_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl238020238106_))))
                                        (let ((_hd238024238112_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238025238109_)))
                                              (_tl238023238114_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238025238109_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd238024238112_))
                                              (let ((_e238028238117_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd238024238112_))))
                                                (let ((_hd238027238120_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e238028238117_)))
                                                      (_tl238026238122_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e238028238117_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd238027238120_))
                                                      (let ((_e238031238125_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd238027238120_))))
                (let ((_hd238030238128_
                       (let () (declare (not safe)) (##car _e238031238125_)))
                      (_tl238029238130_
                       (let () (declare (not safe)) (##cdr _e238031238125_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd238030238128_))
                      (let ((_e238034238133_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd238030238128_))))
                        (let ((_hd238033238136_
                               (let ()
                                 (declare (not safe))
                                 (##car _e238034238133_)))
                              (_tl238032238138_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e238034238133_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl238032238138_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl238029238130_))
                                  (let ((_e238037238141_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl238029238130_))))
                                    (let ((_hd238036238144_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238037238141_)))
                                          (_tl238035238146_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238037238141_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl238035238146_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl238026238122_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl238023238114_))
                                                  (let ((_e238040238149_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl238023238114_))))
                                                    (let ((_hd238039238152_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e238040238149_)))
                                                          (_tl238038238154_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e238040238149_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl238038238154_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl238017238098_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl238008238074_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl238005238066_))
                              (let ((_e238043238157_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl238005238066_))))
                                (let ((_hd238042238160_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e238043238157_)))
                                      (_tl238041238162_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e238043238157_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl238041238162_))
                                      ((lambda (_L238165_
                                                _L238166_
                                                _L238167_
                                                _L238168_
                                                _L238169_)
                                         (let* ((_get-kws-id238209_
                                                 (let ((__tmp251368
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237981_)))
                                                       (__tmp251367
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp251368
                                                    __tmp251367)))
                                                (_get-kws-id238211_
                                                 (let ((__tmp251369
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx237682_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id238209_
                                                    __tmp251369)))
                                                (_main-id238213_
                                                 (let ((__tmp251371
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237981_)))
                                                       (__tmp251370
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp251371
                                                    __tmp251370)))
                                                (_main-id238215_
                                                 (let ((__tmp251372
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx237682_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id238213_
                                                    __tmp251372)))
                                                (_g251373_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id238211_)))
                                                (_g251374_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id238215_)))
                                                (_new-kw-dispatch238219_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L238165_
                                                    _L238169_
                                                    _get-kws-id238211_)))
                                                (_new-get-kws238221_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L238166_
                                                    _L238168_
                                                    _main-id238215_))))
                                           (let ((__tmp251377
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L237981_)))
                                                 (__tmp251376
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id238211_)))
                                                 (__tmp251375
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id238215_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp251377
                                              '" => "
                                              __tmp251376
                                              '" => "
                                              __tmp251375))
                                           (let ((__tmp251382
                                                  (let ((__tmp251383
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__249003249004_
                                                            _main-id238215_
                                                            _L238167_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp251383
                                                          _lift1237859_)))
                                                 (__tmp251380
                                                  (let ((__tmp251381
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__249003249004_
                                                            _get-kws-id238211_
                                                            _new-get-kws238221_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp251381
                                                          _lift2237860_)))
                                                 (__tmp251378
                                                  (let ((__tmp251379
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__249003249004_
                                                            _L237981_
                                                            _new-kw-dispatch238219_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp251379
                                                          _bind237861_))))
                                             (declare (not safe))
                                             (_lp237856_
                                              _rest237881_
                                              __tmp251382
                                              __tmp251380
                                              __tmp251378))))
                                       _hd238042238160_
                                       _hd238039238152_
                                       _hd238036238144_
                                       _hd238033238136_
                                       _hd238015238088_)
                                      (let ()
                                        (declare (not safe))
                                        (_g237995238048_ _g237996238051_)))))
                              (let ()
                                (declare (not safe))
                                (_g237995238048_ _g237996238051_)))
                          (let ()
                            (declare (not safe))
                            (_g237995238048_ _g237996238051_)))
                      (let ()
                        (declare (not safe))
                        (_g237995238048_ _g237996238051_)))
                  (let ()
                    (declare (not safe))
                    (_g237995238048_ _g237996238051_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237995238048_
                                                     _g237996238051_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g237995238048_
                                                 _g237996238051_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g237995238048_
                                             _g237996238051_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237995238048_ _g237996238051_)))
                              (let ()
                                (declare (not safe))
                                (_g237995238048_ _g237996238051_)))))
                      (let ()
                        (declare (not safe))
                        (_g237995238048_ _g237996238051_)))))
              (let ()
                (declare (not safe))
                (_g237995238048_ _g237996238051_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g237995238048_
                                                 _g237996238051_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237995238048_ _g237996238051_)))))
                              (let ()
                                (declare (not safe))
                                (_g237995238048_ _g237996238051_)))))
                      (let ()
                        (declare (not safe))
                        (_g237995238048_ _g237996238051_)))
                  (let ()
                    (declare (not safe))
                    (_g237995238048_ _g237996238051_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237995238048_
                                                     _g237996238051_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237995238048_
                                             _g237996238051_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237995238048_ _g237996238051_)))))
                          (let ()
                            (declare (not safe))
                            (_g237995238048_ _g237996238051_)))))
                  (let ()
                    (declare (not safe))
                    (_g237995238048_ _g237996238051_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g237994238224_ _L237980_))))
                                         (___kont250845250846_
                                          (lambda (_L237931_ _L237932_)
                                            (let ((__tmp251384
                                                   (let ((__tmp251385
                                                          (let ((__tmp251386
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L237931_ '()))))
                    (declare (not safe))
                    (cons _L237932_ __tmp251386))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp251385
                                                           _bind237861_))))
                                              (declare (not safe))
                                              (_lp237856_
                                               _rest237881_
                                               _lift1237859_
                                               _lift2237860_
                                               __tmp251384)))))
                                     (let ((___match250868250869_
                                            (lambda (_e237891237956_
                                                     _hd237890237959_
                                                     _tl237889237961_
                                                     _e237894237964_
                                                     _hd237893237967_
                                                     _tl237892237969_
                                                     _e237897237972_
                                                     _hd237896237975_
                                                     _tl237895237977_)
                                              (let ((_L237980_
                                                     _hd237896237975_)
                                                    (_L237981_
                                                     _hd237893237967_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L237981_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L237980_)))
                                                    (___kont250843250844_
                                                     _L237980_
                                                     _L237981_)
                                                    (___kont250845250846_
                                                     _hd237896237975_
                                                     _hd237890237959_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx250841250842_))
                                           (let ((_e237891237956_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx250841250842_))))
                                             (let ((_tl237889237961_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e237891237956_)))
                                                   (_hd237890237959_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e237891237956_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd237890237959_))
                                                   (let ((_e237894237964_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd237890237959_))))
                                                     (let ((_tl237892237969_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e237894237964_)))
                                                           (_hd237893237967_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e237894237964_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl237892237969_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl237889237961_))
                       (let ((_e237897237972_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl237889237961_))))
                         (let ((_tl237895237977_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e237897237972_)))
                               (_hd237896237975_
                                (let ()
                                  (declare (not safe))
                                  (##car _e237897237972_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl237895237977_))
                               (___match250868250869_
                                _e237891237956_
                                _hd237890237959_
                                _tl237889237961_
                                _e237894237964_
                                _hd237893237967_
                                _tl237892237969_
                                _e237897237972_
                                _hd237896237975_
                                _tl237895237977_)
                               (let ()
                                 (declare (not safe))
                                 (_g237885237910_)))))
                       (let () (declare (not safe)) (_g237885237910_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl237889237961_))
                       (let ((_e237905237923_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl237889237961_))))
                         (let ((_tl237903237928_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e237905237923_)))
                               (_hd237904237926_
                                (let ()
                                  (declare (not safe))
                                  (##car _e237905237923_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl237903237928_))
                               (___kont250845250846_
                                _hd237904237926_
                                _hd237890237959_)
                               (let ()
                                 (declare (not safe))
                                 (_g237885237910_)))))
                       (let () (declare (not safe)) (_g237885237910_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl237889237961_))
                                                       (let ((_e237905237923_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl237889237961_))))
                 (let ((_tl237903237928_
                        (let () (declare (not safe)) (##cdr _e237905237923_)))
                       (_hd237904237926_
                        (let () (declare (not safe)) (##car _e237905237923_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl237903237928_))
                       (___kont250845250846_ _hd237904237926_ _hd237890237959_)
                       (let () (declare (not safe)) (_g237885237910_)))))
               (let () (declare (not safe)) (_g237885237910_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g237885237910_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest237862237870_))
                             (let ((_hd237867238233_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest237862237870_)))
                                   (_tl237868238235_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest237862237870_))))
                               (let* ((_hd238238_ _hd237867238233_)
                                      (_rest238240_ _tl237868238235_))
                                 (declare (not safe))
                                 (_K237866238230_ _rest238240_ _hd238238_)))
                             (let ()
                               (declare (not safe))
                               (_else237864237878_))))))))
          (let* ((___stx250885250886_ _stx237682_)
                 (_g237690237716_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx250885250886_)))))
            (let ((___kont250887250888_
                   (lambda (_L237776_ _L237777_)
                     (let ((__tmp251388
                            (lambda ()
                              (if (let ((__tmp251415
                                         (let ((__tmp251416
                                                (lambda (_g237805237808_
                                                         _g237806237810_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g237805237808_
                                                          _g237806237810_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp251416
                                                   '()
                                                   _L237777_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?237686_
                                            __tmp251415))
                                  (let ((_g251402_
                                         (let ((__tmp251404
                                                (let ((__tmp251405
                                                       (lambda (_g237812237815_
                                                                _g237813237817_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g237812237815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g237813237817_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp251405
                                                          '()
                                                          _L237777_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings237687_
                                            __tmp251404))))
                                    (begin
                                      (let ((_g251403_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g251402_)
                                                   (##vector-length _g251402_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g251403_ 3)))
                                            (error "Context expects 3 values"
                                                   _g251403_)))
                                      (let ((_lift1237820_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g251402_ 0)))
                                            (_lift2237821_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g251402_ 1)))
                                            (_hd237822_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g251402_ 2))))
                                        (let* ((_expr237824_
                                                (let ((__tmp251406
                                                       (let ((__tmp251407
                                                              (let ((__tmp251408
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L237776_ '()))))
                        (declare (not safe))
                        (cons _hd237822_ __tmp251408))))
                 (declare (not safe))
                 (cons '%#let-values __tmp251407))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251406
                                                   _stx237682_)))
                                               (_expr237826_
                                                (let ((__tmp251409
                                                       (let ((__tmp251410
                                                              (let ((__tmp251411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr237824_ '()))))
                        (declare (not safe))
                        (cons _lift2237821_ __tmp251411))))
                 (declare (not safe))
                 (cons '%#let-values __tmp251410))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251409
                                                   _stx237682_)))
                                               (_expr237828_
                                                (let ((__tmp251412
                                                       (let ((__tmp251413
                                                              (let ((__tmp251414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr237826_ '()))))
                        (declare (not safe))
                        (cons _lift1237820_ __tmp251414))))
                 (declare (not safe))
                 (cons '%#let-values __tmp251413))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251412
                                                   _stx237682_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr237828_))))))
                                  (let ((_g251389_
                                         (let ((__tmp251391
                                                (let ((__tmp251392
                                                       (lambda (_g237830237833_
                                                                _g237831237835_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g237830237833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g237831237835_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp251392
                                                          '()
                                                          _L237777_))))
                                           (declare (not safe))
                                           (_compile-bindings237685_
                                            __tmp251391))))
                                    (begin
                                      (let ((_g251390_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g251389_)
                                                   (##vector-length _g251389_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g251390_ 3)))
                                            (error "Context expects 3 values"
                                                   _g251390_)))
                                      (let ((_lift1237838_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g251389_ 0)))
                                            (_lift2237839_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g251389_ 1)))
                                            (_hd237840_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g251389_ 2))))
                                        (let* ((_body237842_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L237776_)))
                                               (_expr237844_
                                                (let ((__tmp251393
                                                       (let ((__tmp251394
                                                              (let ((__tmp251395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body237842_ '()))))
                        (declare (not safe))
                        (cons _hd237840_ __tmp251395))))
                 (declare (not safe))
                 (cons '%#let-values __tmp251394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251393
                                                   _stx237682_)))
                                               (_expr237846_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2237839_))
                                                    _expr237844_
                                                    (let ((__tmp251396
                                                           (let ((__tmp251397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp251398
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr237844_ '()))))
                            (declare (not safe))
                            (cons _lift2237839_ __tmp251398))))
                     (declare (not safe))
                     (cons '%#let-values __tmp251397))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp251396 _stx237682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr237848_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1237838_))
                                                    _expr237846_
                                                    (let ((__tmp251399
                                                           (let ((__tmp251400
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp251401
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr237846_ '()))))
                            (declare (not safe))
                            (cons _lift1237838_ __tmp251401))))
                     (declare (not safe))
                     (cons '%#let-values __tmp251400))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp251399 _stx237682_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr237848_)))))))
                           (__tmp251387
                            (let ((__obj251091
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj251091)
                              __obj251091)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp251388
                        gx#current-expander-context
                        __tmp251387))))
                  (___kont250891250892_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx237682_)))))
              (let ((___match250912250913_
                     (lambda (_e237696237728_
                              _hd237695237731_
                              _tl237694237733_
                              _e237699237736_
                              _hd237698237739_
                              _tl237697237741_
                              ___splice250889250890_
                              _target237700237744_
                              _tl237702237746_)
                       (letrec ((_loop237703237749_
                                 (lambda (_hd237701237752_ _bind237707237754_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd237701237752_))
                                       (let ((_e237704237757_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd237701237752_))))
                                         (let ((_lp-tl237706237762_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e237704237757_)))
                                               (_lp-hd237705237760_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e237704237757_))))
                                           (let ((__tmp251419
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd237705237760_
                                                          _bind237707237754_))))
                                             (declare (not safe))
                                             (_loop237703237749_
                                              _lp-tl237706237762_
                                              __tmp251419))))
                                       (let ((_bind237708237765_
                                              (reverse _bind237707237754_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl237697237741_))
                                             (let ((_e237711237768_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl237697237741_))))
                                               (let ((_tl237709237773_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e237711237768_)))
                                                     (_hd237710237771_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e237711237768_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl237709237773_))
                                                     (let ((_L237776_
                                                            _hd237710237771_)
                                                           (_L237777_
                                                            _bind237708237765_))
                                                       (if (let ((__tmp251417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp251418
                                 (lambda (_g237797237800_ _g237798237802_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g237797237800_ _g237798237802_)))))
                            (declare (not safe))
                            (foldr1 __tmp251418 '() _L237777_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp251417))
                   (___kont250887250888_ _L237776_ _L237777_)
                   (___kont250891250892_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont250891250892_))))
                                             (___kont250891250892_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop237703237749_ _target237700237744_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx250885250886_))
                    (let ((_e237696237728_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx250885250886_))))
                      (let ((_tl237694237733_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237696237728_)))
                            (_hd237695237731_
                             (let ()
                               (declare (not safe))
                               (##car _e237696237728_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237694237733_))
                            (let ((_e237699237736_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237694237733_))))
                              (let ((_tl237697237741_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237699237736_)))
                                    (_hd237698237739_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237699237736_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd237698237739_))
                                    (let ((___splice250889250890_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd237698237739_
                                              '0))))
                                      (let ((_tl237702237746_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice250889250890_
                                                '1)))
                                            (_target237700237744_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice250889250890_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl237702237746_))
                                            (___match250912250913_
                                             _e237696237728_
                                             _hd237695237731_
                                             _tl237694237733_
                                             _e237699237736_
                                             _hd237698237739_
                                             _tl237697237741_
                                             ___splice250889250890_
                                             _target237700237744_
                                             _tl237702237746_)
                                            (___kont250891250892_))))
                                    (___kont250891250892_))))
                            (___kont250891250892_))))
                    (___kont250891250892_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx236826_)
        (letrec* ((_bind-e__249008249009_
                   (lambda (_id237666_ _expr237667_ _compile?237668_)
                     (let ((__tmp251422
                            (let ()
                              (declare (not safe))
                              (cons _id237666_ '())))
                           (__tmp251420
                            (let ((__tmp251421
                                   (if _compile?237668_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr237667_))
                                       _expr237667_)))
                              (declare (not safe))
                              (cons __tmp251421 '()))))
                       (declare (not safe))
                       (cons __tmp251422 __tmp251420))))
                  (_bind-e__0__249010249011_
                   (lambda (_id237673_ _expr237674_)
                     (let ((_compile?237676_ '#t))
                       (declare (not safe))
                       (_bind-e__249008249009_
                        _id237673_
                        _expr237674_
                        _compile?237676_))))
                  (_bind-e236828_
                   (lambda _g251424_
                     (let ((_g251423_
                            (let ()
                              (declare (not safe))
                              (##length _g251424_))))
                       (cond ((let () (declare (not safe)) (##fx= _g251423_ 2))
                              (apply (lambda (_id237673_ _expr237674_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__249010249011_
                                          _id237673_
                                          _expr237674_)))
                                     _g251424_))
                             ((let () (declare (not safe)) (##fx= _g251423_ 3))
                              (apply (lambda (_id237678_
                                              _expr237679_
                                              _compile?237680_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__249008249009_
                                          _id237678_
                                          _expr237679_
                                          _compile?237680_)))
                                     _g251424_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g251424_))))))
                  (_compile-bindings236829_
                   (lambda (_rest236964_)
                     (let _lp236966_ ((_rest236968_ _rest236964_)
                                      (_bind236969_ '()))
                       (let* ((_rest236970236978_ _rest236968_)
                              (_else236972236986_
                               (lambda () (reverse _bind236969_)))
                              (_K236974237653_
                               (lambda (_rest236989_ _hd236990_)
                                 (let* ((___stx250935250936_ _hd236990_)
                                        (_g236995237042_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx250935250936_)))))
                                   (let ((___kont250937250938_
                                          (lambda (_L237560_ _L237561_)
                                            (let* ((___stx250915250916_
                                                    _L237560_)
                                                   (_g237576237590_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx250915250916_)))))
                                              (let ((___kont250917250918_
                                                     (lambda (_L237638_)
                                                       (let ((__tmp251425
                                                              (let ((__tmp251426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__249008249009_
                                _L237561_
                                _L237560_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp251426 _bind236969_))))
                 (declare (not safe))
                 (_lp236966_ _rest236989_ __tmp251425))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250919250920_
                                                     (lambda (_L237603_)
                                                       (let ((_g251427_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx236826_
                         _L237561_
                         _L237603_
                         '#t))))
                 (begin
                   (let ((_g251428_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g251427_)
                                (##vector-length _g251427_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g251428_ 3)))
                         (error "Context expects 3 values" _g251428_)))
                   (let ((_ids237613_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g251427_ 0)))
                         (_impls237614_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g251427_ 1)))
                         (_clauses237615_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g251427_ 2))))
                     (let* ((_g251429_
                             (for-each gx#core-bind-runtime! _ids237613_))
                            (_xbind237618_
                             (map _bind-e236828_ _ids237613_ _impls237614_))
                            (_expr*237620_
                             (let ((__tmp251431
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses237615_)))
                                   (__tmp251430
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp251431
                                __tmp251430)))
                            (_bind*237622_
                             (let ()
                               (declare (not safe))
                               (_bind-e__249008249009_
                                _L237561_
                                _expr*237620_
                                '#f))))
                       (let ((__tmp251433
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L237561_)))
                             (__tmp251432
                              (map gxc#identifier-symbol _ids237613_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp251433
                          '" => "
                          __tmp251432))
                       (let ((__tmp251434
                              (let ((__tmp251435
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind236969_
                                               _xbind237618_))))
                                (declare (not safe))
                                (cons _bind*237622_ __tmp251435))))
                         (declare (not safe))
                         (_lp236966_ _rest236989_ __tmp251434)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match250926250927_
                                                       (lambda (_e237581237630_
                                                                _hd237580237633_
                                                                _tl237579237635_)
                                                         (let ((_L237638_
                                                                _tl237579237635_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L237638_))
                       (___kont250917250918_ _L237638_)
                       (___kont250919250920_ _tl237579237635_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx250915250916_))
                                                      (let ((_e237581237630_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx250915250916_))))
                (let ((_tl237579237635_
                       (let () (declare (not safe)) (##cdr _e237581237630_)))
                      (_hd237580237633_
                       (let () (declare (not safe)) (##car _e237581237630_))))
                  (___match250926250927_
                   _e237581237630_
                   _hd237580237633_
                   _tl237579237635_)))
              (let () (declare (not safe)) (_g237576237590_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont250939250940_
                                          (lambda (_L237388_ _L237389_)
                                            (let* ((_g237403237433_
                                                    (lambda (_g237404237430_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g237404237430_))))
                                                   (_g237402237528_
                                                    (lambda (_g237404237436_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g237404237436_))
                                                          (let ((_e237410237438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g237404237436_))))
                    (let ((_hd237409237441_
                           (let ()
                             (declare (not safe))
                             (##car _e237410237438_)))
                          (_tl237408237443_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237410237438_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl237408237443_))
                          (let ((_e237413237446_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl237408237443_))))
                            (let ((_hd237412237449_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237413237446_)))
                                  (_tl237411237451_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237413237446_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd237412237449_))
                                  (let ((_e237416237454_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd237412237449_))))
                                    (let ((_hd237415237457_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237416237454_)))
                                          (_tl237414237459_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237416237454_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd237415237457_))
                                          (let ((_e237419237462_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd237415237457_))))
                                            (let ((_hd237418237465_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e237419237462_)))
                                                  (_tl237417237467_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e237419237462_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd237418237465_))
                                                  (let ((_e237422237470_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd237418237465_))))
                                                    (let ((_hd237421237473_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237422237470_)))
                                                          (_tl237420237475_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237422237470_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237420237475_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl237417237467_))
                      (let ((_e237425237478_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl237417237467_))))
                        (let ((_hd237424237481_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237425237478_)))
                              (_tl237423237483_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237425237478_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237423237483_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl237414237459_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237411237451_))
                                      (let ((_e237428237486_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237411237451_))))
                                        (let ((_hd237427237489_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237428237486_)))
                                              (_tl237426237491_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237428237486_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237426237491_))
                                              ((lambda (_L237494_
                                                        _L237495_
                                                        _L237496_)
                                                 (let* ((_lambda-id237520_
                                                         (let ((__tmp251437
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L237389_)))
                       (__tmp251436 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp251437 __tmp251436)))
                (_lambda-id237522_
                 (let ((__tmp251438
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx236826_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id237520_ __tmp251438)))
                (_g251439_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id237522_)))
                (_new-case-lambda-expr237525_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L237494_
                    _L237496_
                    _lambda-id237522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp251441
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L237389_)))
                                                         (__tmp251440
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id237522_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp251441
                                                      '" => "
                                                      __tmp251440))
                                                   (let ((__tmp251444
                                                          (let ((__tmp251445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__249008249009_
                            _L237389_
                            _new-case-lambda-expr237525_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp251445 _rest236989_)))
                 (__tmp251442
                  (let ((__tmp251443
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__249010249011_
                            _lambda-id237522_
                            _L237495_))))
                    (declare (not safe))
                    (cons __tmp251443 _bind236969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp236966_
                                                      __tmp251444
                                                      __tmp251442))))
                                               _hd237427237489_
                                               _hd237424237481_
                                               _hd237421237473_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237403237433_
                                                 _g237404237436_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237403237433_ _g237404237436_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g237403237433_ _g237404237436_)))
                              (let ()
                                (declare (not safe))
                                (_g237403237433_ _g237404237436_)))))
                      (let ()
                        (declare (not safe))
                        (_g237403237433_ _g237404237436_)))
                  (let ()
                    (declare (not safe))
                    (_g237403237433_ _g237404237436_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237403237433_
                                                     _g237404237436_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237403237433_
                                             _g237404237436_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237403237433_ _g237404237436_)))))
                          (let ()
                            (declare (not safe))
                            (_g237403237433_ _g237404237436_)))))
                  (let ()
                    (declare (not safe))
                    (_g237403237433_ _g237404237436_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g237402237528_ _L237388_))))
                                         (___kont250941250942_
                                          (lambda (_L237112_ _L237113_)
                                            (let* ((_g237127237180_
                                                    (lambda (_g237128237177_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g237128237177_))))
                                                   (_g237126237356_
                                                    (lambda (_g237128237183_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g237128237183_))
                                                          (let ((_e237136237185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g237128237183_))))
                    (let ((_hd237135237188_
                           (let ()
                             (declare (not safe))
                             (##car _e237136237185_)))
                          (_tl237134237190_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237136237185_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl237134237190_))
                          (let ((_e237139237193_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl237134237190_))))
                            (let ((_hd237138237196_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237139237193_)))
                                  (_tl237137237198_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237139237193_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd237138237196_))
                                  (let ((_e237142237201_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd237138237196_))))
                                    (let ((_hd237141237204_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237142237201_)))
                                          (_tl237140237206_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237142237201_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd237141237204_))
                                          (let ((_e237145237209_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd237141237204_))))
                                            (let ((_hd237144237212_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e237145237209_)))
                                                  (_tl237143237214_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e237145237209_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd237144237212_))
                                                  (let ((_e237148237217_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd237144237212_))))
                                                    (let ((_hd237147237220_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237148237217_)))
                                                          (_tl237146237222_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237148237217_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237146237222_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl237143237214_))
                      (let ((_e237151237225_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl237143237214_))))
                        (let ((_hd237150237228_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237151237225_)))
                              (_tl237149237230_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237151237225_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd237150237228_))
                              (let ((_e237154237233_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd237150237228_))))
                                (let ((_hd237153237236_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237154237233_)))
                                      (_tl237152237238_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237154237233_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237152237238_))
                                      (let ((_e237157237241_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237152237238_))))
                                        (let ((_hd237156237244_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237157237241_)))
                                              (_tl237155237246_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237157237241_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd237156237244_))
                                              (let ((_e237160237249_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd237156237244_))))
                                                (let ((_hd237159237252_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e237160237249_)))
                                                      (_tl237158237254_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e237160237249_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd237159237252_))
                                                      (let ((_e237163237257_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd237159237252_))))
                (let ((_hd237162237260_
                       (let () (declare (not safe)) (##car _e237163237257_)))
                      (_tl237161237262_
                       (let () (declare (not safe)) (##cdr _e237163237257_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd237162237260_))
                      (let ((_e237166237265_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd237162237260_))))
                        (let ((_hd237165237268_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237166237265_)))
                              (_tl237164237270_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237166237265_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237164237270_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl237161237262_))
                                  (let ((_e237169237273_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl237161237262_))))
                                    (let ((_hd237168237276_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237169237273_)))
                                          (_tl237167237278_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237169237273_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237167237278_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237158237254_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl237155237246_))
                                                  (let ((_e237172237281_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl237155237246_))))
                                                    (let ((_hd237171237284_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237172237281_)))
                                                          (_tl237170237286_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237172237281_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237170237286_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl237149237230_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl237140237206_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl237137237198_))
                              (let ((_e237175237289_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl237137237198_))))
                                (let ((_hd237174237292_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237175237289_)))
                                      (_tl237173237294_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237175237289_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl237173237294_))
                                      ((lambda (_L237297_
                                                _L237298_
                                                _L237299_
                                                _L237300_
                                                _L237301_)
                                         (let* ((_get-kws-id237341_
                                                 (let ((__tmp251447
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237113_)))
                                                       (__tmp251446
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp251447
                                                    __tmp251446)))
                                                (_get-kws-id237343_
                                                 (let ((__tmp251448
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx236826_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id237341_
                                                    __tmp251448)))
                                                (_main-id237345_
                                                 (let ((__tmp251450
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237113_)))
                                                       (__tmp251449
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp251450
                                                    __tmp251449)))
                                                (_main-id237347_
                                                 (let ((__tmp251451
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx236826_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id237345_
                                                    __tmp251451)))
                                                (_g251452_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id237343_)))
                                                (_g251453_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id237347_)))
                                                (_new-kw-dispatch237351_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L237297_
                                                    _L237301_
                                                    _get-kws-id237343_)))
                                                (_new-get-kws237353_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L237298_
                                                    _L237300_
                                                    _main-id237347_))))
                                           (let ((__tmp251456
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L237113_)))
                                                 (__tmp251455
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id237343_)))
                                                 (__tmp251454
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id237347_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp251456
                                              '" => "
                                              __tmp251455
                                              '" => "
                                              __tmp251454))
                                           (let ((__tmp251457
                                                  (let ((__tmp251462
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__249008249009_
                                                            _main-id237347_
                                                            _L237299_
                                                            '#f)))
                                                        (__tmp251458
                                                         (let ((__tmp251461
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__249008249009_
                           _get-kws-id237343_
                           _new-get-kws237353_
                           '#f)))
                       (__tmp251459
                        (let ((__tmp251460
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__249008249009_
                                  _L237113_
                                  _new-kw-dispatch237351_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp251460 _rest236989_))))
                   (declare (not safe))
                   (cons __tmp251461 __tmp251459))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp251462
                                                          __tmp251458))))
                                             (declare (not safe))
                                             (_lp236966_
                                              __tmp251457
                                              _bind236969_))))
                                       _hd237174237292_
                                       _hd237171237284_
                                       _hd237168237276_
                                       _hd237165237268_
                                       _hd237147237220_)
                                      (let ()
                                        (declare (not safe))
                                        (_g237127237180_ _g237128237183_)))))
                              (let ()
                                (declare (not safe))
                                (_g237127237180_ _g237128237183_)))
                          (let ()
                            (declare (not safe))
                            (_g237127237180_ _g237128237183_)))
                      (let ()
                        (declare (not safe))
                        (_g237127237180_ _g237128237183_)))
                  (let ()
                    (declare (not safe))
                    (_g237127237180_ _g237128237183_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237127237180_
                                                     _g237128237183_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g237127237180_
                                                 _g237128237183_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g237127237180_
                                             _g237128237183_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237127237180_ _g237128237183_)))
                              (let ()
                                (declare (not safe))
                                (_g237127237180_ _g237128237183_)))))
                      (let ()
                        (declare (not safe))
                        (_g237127237180_ _g237128237183_)))))
              (let ()
                (declare (not safe))
                (_g237127237180_ _g237128237183_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g237127237180_
                                                 _g237128237183_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237127237180_ _g237128237183_)))))
                              (let ()
                                (declare (not safe))
                                (_g237127237180_ _g237128237183_)))))
                      (let ()
                        (declare (not safe))
                        (_g237127237180_ _g237128237183_)))
                  (let ()
                    (declare (not safe))
                    (_g237127237180_ _g237128237183_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237127237180_
                                                     _g237128237183_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237127237180_
                                             _g237128237183_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237127237180_ _g237128237183_)))))
                          (let ()
                            (declare (not safe))
                            (_g237127237180_ _g237128237183_)))))
                  (let ()
                    (declare (not safe))
                    (_g237127237180_ _g237128237183_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g237126237356_ _L237112_))))
                                         (___kont250943250944_
                                          (lambda (_L237063_ _L237064_)
                                            (let ((__tmp251463
                                                   (let ((__tmp251464
                                                          (let ((__tmp251465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp251466
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L237063_))))
                           (declare (not safe))
                           (cons __tmp251466 '()))))
                    (declare (not safe))
                    (cons _L237064_ __tmp251465))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp251464
                                                           _bind236969_))))
                                              (declare (not safe))
                                              (_lp236966_
                                               _rest236989_
                                               __tmp251463)))))
                                     (let* ((___match251010251011_
                                             (lambda (_e237023237088_
                                                      _hd237022237091_
                                                      _tl237021237093_
                                                      _e237026237096_
                                                      _hd237025237099_
                                                      _tl237024237101_
                                                      _e237029237104_
                                                      _hd237028237107_
                                                      _tl237027237109_)
                                               (let ((_L237112_
                                                      _hd237028237107_)
                                                     (_L237113_
                                                      _hd237025237099_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L237113_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L237112_)))
                                                     (___kont250941250942_
                                                      _L237112_
                                                      _L237113_)
                                                     (___kont250943250944_
                                                      _hd237028237107_
                                                      _hd237022237091_)))))
                                            (___match250988250989_
                                             (lambda (_e237012237364_
                                                      _hd237011237367_
                                                      _tl237010237369_
                                                      _e237015237372_
                                                      _hd237014237375_
                                                      _tl237013237377_
                                                      _e237018237380_
                                                      _hd237017237383_
                                                      _tl237016237385_)
                                               (let ((_L237388_
                                                      _hd237017237383_)
                                                     (_L237389_
                                                      _hd237014237375_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L237389_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L237388_)))
                                                     (___kont250939250940_
                                                      _L237388_
                                                      _L237389_)
                                                     (___match251010251011_
                                                      _e237012237364_
                                                      _hd237011237367_
                                                      _tl237010237369_
                                                      _e237015237372_
                                                      _hd237014237375_
                                                      _tl237013237377_
                                                      _e237018237380_
                                                      _hd237017237383_
                                                      _tl237016237385_)))))
                                            (___match250966250967_
                                             (lambda (_e237001237536_
                                                      _hd237000237539_
                                                      _tl236999237541_
                                                      _e237004237544_
                                                      _hd237003237547_
                                                      _tl237002237549_
                                                      _e237007237552_
                                                      _hd237006237555_
                                                      _tl237005237557_)
                                               (let ((_L237560_
                                                      _hd237006237555_)
                                                     (_L237561_
                                                      _hd237003237547_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L237561_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L237560_)))
                                                     (___kont250937250938_
                                                      _L237560_
                                                      _L237561_)
                                                     (___match250988250989_
                                                      _e237001237536_
                                                      _hd237000237539_
                                                      _tl236999237541_
                                                      _e237004237544_
                                                      _hd237003237547_
                                                      _tl237002237549_
                                                      _e237007237552_
                                                      _hd237006237555_
                                                      _tl237005237557_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx250935250936_))
                                           (let ((_e237001237536_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx250935250936_))))
                                             (let ((_tl236999237541_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e237001237536_)))
                                                   (_hd237000237539_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e237001237536_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd237000237539_))
                                                   (let ((_e237004237544_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd237000237539_))))
                                                     (let ((_tl237002237549_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e237004237544_)))
                                                           (_hd237003237547_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e237004237544_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl237002237549_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl236999237541_))
                       (let ((_e237007237552_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl236999237541_))))
                         (let ((_tl237005237557_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e237007237552_)))
                               (_hd237006237555_
                                (let ()
                                  (declare (not safe))
                                  (##car _e237007237552_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl237005237557_))
                               (___match250966250967_
                                _e237001237536_
                                _hd237000237539_
                                _tl236999237541_
                                _e237004237544_
                                _hd237003237547_
                                _tl237002237549_
                                _e237007237552_
                                _hd237006237555_
                                _tl237005237557_)
                               (let ()
                                 (declare (not safe))
                                 (_g236995237042_)))))
                       (let () (declare (not safe)) (_g236995237042_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl236999237541_))
                       (let ((_e237037237055_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl236999237541_))))
                         (let ((_tl237035237060_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e237037237055_)))
                               (_hd237036237058_
                                (let ()
                                  (declare (not safe))
                                  (##car _e237037237055_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl237035237060_))
                               (___kont250943250944_
                                _hd237036237058_
                                _hd237000237539_)
                               (let ()
                                 (declare (not safe))
                                 (_g236995237042_)))))
                       (let () (declare (not safe)) (_g236995237042_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl236999237541_))
                                                       (let ((_e237037237055_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl236999237541_))))
                 (let ((_tl237035237060_
                        (let () (declare (not safe)) (##cdr _e237037237055_)))
                       (_hd237036237058_
                        (let () (declare (not safe)) (##car _e237037237055_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl237035237060_))
                       (___kont250943250944_ _hd237036237058_ _hd237000237539_)
                       (let () (declare (not safe)) (_g236995237042_)))))
               (let () (declare (not safe)) (_g236995237042_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g236995237042_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest236970236978_))
                             (let ((_hd236975237656_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest236970236978_)))
                                   (_tl236976237658_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest236970236978_))))
                               (let* ((_hd237661_ _hd236975237656_)
                                      (_rest237663_ _tl236976237658_))
                                 (declare (not safe))
                                 (_K236974237653_ _rest237663_ _hd237661_)))
                             (let ()
                               (declare (not safe))
                               (_else236972236986_))))))))
          (let* ((___stx251027251028_ _stx236826_)
                 (_g236832236859_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx251027251028_)))))
            (let ((___kont251029251030_
                   (lambda (_L236919_ _L236920_ _L236921_)
                     (let ((__tmp251468
                            (lambda ()
                              (let ((_hd236958_
                                     (let ((__tmp251469
                                            (let ((__tmp251470
                                                   (lambda (_g236950236953_
                                                            _g236951236955_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g236950236953_
                                                             _g236951236955_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp251470
                                                      '()
                                                      _L236920_))))
                                       (declare (not safe))
                                       (_compile-bindings236829_ __tmp251469)))
                                    (_body236959_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L236919_))))
                                (let ((__tmp251471
                                       (let ((__tmp251472
                                              (let ((__tmp251473
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body236959_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd236958_
                                                      __tmp251473))))
                                         (declare (not safe))
                                         (cons _L236921_ __tmp251472))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp251471
                                   _stx236826_)))))
                           (__tmp251467
                            (let ((__obj251092
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj251092)
                              __obj251092)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp251468
                        gx#current-expander-context
                        __tmp251467))))
                  (___kont251033251034_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx236826_)))))
              (let ((___match251054251055_
                     (lambda (_e236839236871_
                              _hd236838236874_
                              _tl236837236876_
                              _e236842236879_
                              _hd236841236882_
                              _tl236840236884_
                              ___splice251031251032_
                              _target236843236887_
                              _tl236845236889_)
                       (letrec ((_loop236846236892_
                                 (lambda (_hd236844236895_ _bind236850236897_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd236844236895_))
                                       (let ((_e236847236900_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd236844236895_))))
                                         (let ((_lp-tl236849236905_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e236847236900_)))
                                               (_lp-hd236848236903_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e236847236900_))))
                                           (let ((__tmp251476
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd236848236903_
                                                          _bind236850236897_))))
                                             (declare (not safe))
                                             (_loop236846236892_
                                              _lp-tl236849236905_
                                              __tmp251476))))
                                       (let ((_bind236851236908_
                                              (reverse _bind236850236897_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl236840236884_))
                                             (let ((_e236854236911_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl236840236884_))))
                                               (let ((_tl236852236916_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e236854236911_)))
                                                     (_hd236853236914_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e236854236911_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl236852236916_))
                                                     (let ((_L236919_
                                                            _hd236853236914_)
                                                           (_L236920_
                                                            _bind236851236908_)
                                                           (_L236921_
                                                            _hd236838236874_))
                                                       (if (let ((__tmp251474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp251475
                                 (lambda (_g236942236945_ _g236943236947_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g236942236945_ _g236943236947_)))))
                            (declare (not safe))
                            (foldr1 __tmp251475 '() _L236920_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp251474))
                   (___kont251029251030_ _L236919_ _L236920_ _L236921_)
                   (___kont251033251034_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont251033251034_))))
                                             (___kont251033251034_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop236846236892_ _target236843236887_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx251027251028_))
                    (let ((_e236839236871_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx251027251028_))))
                      (let ((_tl236837236876_
                             (let ()
                               (declare (not safe))
                               (##cdr _e236839236871_)))
                            (_hd236838236874_
                             (let ()
                               (declare (not safe))
                               (##car _e236839236871_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl236837236876_))
                            (let ((_e236842236879_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl236837236876_))))
                              (let ((_tl236840236884_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e236842236879_)))
                                    (_hd236841236882_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e236842236879_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd236841236882_))
                                    (let ((___splice251031251032_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd236841236882_
                                              '0))))
                                      (let ((_tl236845236889_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice251031251032_
                                                '1)))
                                            (_target236843236887_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice251031251032_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl236845236889_))
                                            (___match251054251055_
                                             _e236839236871_
                                             _hd236838236874_
                                             _tl236837236876_
                                             _e236842236879_
                                             _hd236841236882_
                                             _tl236840236884_
                                             ___splice251031251032_
                                             _target236843236887_
                                             _tl236845236889_)
                                            (___kont251033251034_))))
                                    (___kont251033251034_))))
                            (___kont251033251034_))))
                    (___kont251033251034_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind236744_)
        (let* ((___stx251057251058_ _bind236744_)
               (_g236747236764_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx251057251058_)))))
          (let ((___kont251059251060_
                 (lambda (_L236800_ _L236801_)
                   (if (let () (declare (not safe)) (gx#identifier? _L236801_))
                       (let ((_$e236817_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L236800_))))
                         (if _$e236817_
                             _$e236817_
                             (let ((_$e236820_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L236800_))))
                               (if _$e236820_
                                   _$e236820_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L236800_))))))
                       '#f)))
                (___kont251061251062_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx251057251058_))
                (let ((_e236753236776_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx251057251058_))))
                  (let ((_tl236751236781_
                         (let () (declare (not safe)) (##cdr _e236753236776_)))
                        (_hd236752236779_
                         (let ()
                           (declare (not safe))
                           (##car _e236753236776_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd236752236779_))
                        (let ((_e236756236784_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd236752236779_))))
                          (let ((_tl236754236789_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e236756236784_)))
                                (_hd236755236787_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e236756236784_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl236754236789_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl236751236781_))
                                    (let ((_e236759236792_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl236751236781_))))
                                      (let ((_tl236757236797_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e236759236792_)))
                                            (_hd236758236795_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e236759236792_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl236757236797_))
                                            (___kont251059251060_
                                             _hd236758236795_
                                             _hd236755236787_)
                                            (___kont251061251062_))))
                                    (___kont251061251062_))
                                (___kont251061251062_))))
                        (___kont251061251062_))))
                (___kont251061251062_))))))))
