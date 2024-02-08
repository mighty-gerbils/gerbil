(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1707416392)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl226865_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp233152 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl226865_ __tmp233152))
           (let ()
             (declare (not safe))
             (table-set! _tbl226865_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226865_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226865_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226865_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl226865_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx226848_ . _args226850_)
        (let ((__tmp233154
               (lambda ()
                 (declare (not safe))
                 (if (null? _args226850_)
                     (gxc#compile-e__0 _stx226848_)
                     (let ((_arg1226855_ (car _args226850_))
                           (_rest226857_ (cdr _args226850_)))
                       (if (null? _rest226857_)
                           (gxc#compile-e__1 _stx226848_ _arg1226855_)
                           (let ((_arg2226860_ (car _rest226857_))
                                 (_rest226862_ (cdr _rest226857_)))
                             (if (null? _rest226862_)
                                 (gxc#compile-e__2
                                  _stx226848_
                                  _arg1226855_
                                  _arg2226860_)
                                 (apply gxc#compile-e
                                        _stx226848_
                                        _arg1226855_
                                        _arg2226860_
                                        _rest226862_))))))))
              (__tmp233153 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp233154
           gxc#current-compile-methods
           __tmp233153))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl226845_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp233155 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl226845_ __tmp233155))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226845_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226845_ '%#call gxc#basic-expression-type-call%))
           _tbl226845_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx226828_ . _args226830_)
        (let ((__tmp233157
               (lambda ()
                 (declare (not safe))
                 (if (null? _args226830_)
                     (gxc#compile-e__0 _stx226828_)
                     (let ((_arg1226835_ (car _args226830_))
                           (_rest226837_ (cdr _args226830_)))
                       (if (null? _rest226837_)
                           (gxc#compile-e__1 _stx226828_ _arg1226835_)
                           (let ((_arg2226840_ (car _rest226837_))
                                 (_rest226842_ (cdr _rest226837_)))
                             (if (null? _rest226842_)
                                 (gxc#compile-e__2
                                  _stx226828_
                                  _arg1226835_
                                  _arg2226840_)
                                 (apply gxc#compile-e
                                        _stx226828_
                                        _arg1226835_
                                        _arg2226840_
                                        _rest226842_))))))))
              (__tmp233156 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp233157
           gxc#current-compile-methods
           __tmp233156))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl226825_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp233158 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl226825_ __tmp233158))
           (let ()
             (declare (not safe))
             (table-set! _tbl226825_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226825_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226825_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226825_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226825_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226825_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226825_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226825_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226825_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226825_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226825_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226825_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl226825_ '%#set! gxc#collect-body-setq%))
           _tbl226825_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx226808_ . _args226810_)
        (let ((__tmp233160
               (lambda ()
                 (declare (not safe))
                 (if (null? _args226810_)
                     (gxc#compile-e__0 _stx226808_)
                     (let ((_arg1226815_ (car _args226810_))
                           (_rest226817_ (cdr _args226810_)))
                       (if (null? _rest226817_)
                           (gxc#compile-e__1 _stx226808_ _arg1226815_)
                           (let ((_arg2226820_ (car _rest226817_))
                                 (_rest226822_ (cdr _rest226817_)))
                             (if (null? _rest226822_)
                                 (gxc#compile-e__2
                                  _stx226808_
                                  _arg1226815_
                                  _arg2226820_)
                                 (apply gxc#compile-e
                                        _stx226808_
                                        _arg1226815_
                                        _arg2226820_
                                        _rest226822_))))))))
              (__tmp233159 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp233160
           gxc#current-compile-methods
           __tmp233159))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl226805_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp233161 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl226805_ __tmp233161))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226805_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226805_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226805_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226805_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226805_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226805_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226805_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226805_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226805_ '%#ref gxc#basic-expression-type-ref%))
           _tbl226805_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx226788_ . _args226790_)
        (let ((__tmp233163
               (lambda ()
                 (declare (not safe))
                 (if (null? _args226790_)
                     (gxc#compile-e__0 _stx226788_)
                     (let ((_arg1226795_ (car _args226790_))
                           (_rest226797_ (cdr _args226790_)))
                       (if (null? _rest226797_)
                           (gxc#compile-e__1 _stx226788_ _arg1226795_)
                           (let ((_arg2226800_ (car _rest226797_))
                                 (_rest226802_ (cdr _rest226797_)))
                             (if (null? _rest226802_)
                                 (gxc#compile-e__2
                                  _stx226788_
                                  _arg1226795_
                                  _arg2226800_)
                                 (apply gxc#compile-e
                                        _stx226788_
                                        _arg1226795_
                                        _arg2226800_
                                        _rest226802_))))))))
              (__tmp233162 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp233163
           gxc#current-compile-methods
           __tmp233162))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl226785_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp233164 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl226785_ __tmp233164))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226785_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226785_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226785_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226785_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl226785_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx226768_ . _args226770_)
        (let ((__tmp233166
               (lambda ()
                 (declare (not safe))
                 (if (null? _args226770_)
                     (gxc#compile-e__0 _stx226768_)
                     (let ((_arg1226775_ (car _args226770_))
                           (_rest226777_ (cdr _args226770_)))
                       (if (null? _rest226777_)
                           (gxc#compile-e__1 _stx226768_ _arg1226775_)
                           (let ((_arg2226780_ (car _rest226777_))
                                 (_rest226782_ (cdr _rest226777_)))
                             (if (null? _rest226782_)
                                 (gxc#compile-e__2
                                  _stx226768_
                                  _arg1226775_
                                  _arg2226780_)
                                 (apply gxc#compile-e
                                        _stx226768_
                                        _arg1226775_
                                        _arg2226780_
                                        _rest226782_))))))))
              (__tmp233165 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp233166
           gxc#current-compile-methods
           __tmp233165))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx226671_)
        (let* ((___stx231072231073_ _stx226671_)
               (_g226674226694_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231072231073_)))))
          (let ((___kont231074231075_
                 (lambda (_L226738_ _L226739_)
                   (let ((_sym226757_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L226739_))))
                     (if (let ((__tmp233167 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp233167 _sym226757_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym226757_))
                         (let ((_type226758226760_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L226738_))))
                           (if _type226758226760_
                               (let ((_type226763_ _type226758226760_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym226757_
                                  _type226763_))
                               '#f))))))
                (___kont231076231077_ (lambda () '#!void)))
            (let ((___match231105231106_
                   (lambda (_e226680226706_
                            _hd226679226709_
                            _tl226678226711_
                            _e226683226714_
                            _hd226682226717_
                            _tl226681226719_
                            _e226686226722_
                            _hd226685226725_
                            _tl226684226727_
                            _e226689226730_
                            _hd226688226733_
                            _tl226687226735_)
                     (let ((_L226738_ _hd226688226733_)
                           (_L226739_ _hd226685226725_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L226739_))
                           (___kont231074231075_ _L226738_ _L226739_)
                           (___kont231076231077_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx231072231073_))
                  (let ((_e226680226706_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx231072231073_))))
                    (let ((_tl226678226711_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226680226706_)))
                          (_hd226679226709_
                           (let ()
                             (declare (not safe))
                             (##car _e226680226706_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl226678226711_))
                          (let ((_e226683226714_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl226678226711_))))
                            (let ((_tl226681226719_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226683226714_)))
                                  (_hd226682226717_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226683226714_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd226682226717_))
                                  (let ((_e226686226722_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd226682226717_))))
                                    (let ((_tl226684226727_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226686226722_)))
                                          (_hd226685226725_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226686226722_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl226684226727_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl226681226719_))
                                              (let ((_e226689226730_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl226681226719_))))
                                                (let ((_tl226687226735_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e226689226730_)))
                                                      (_hd226688226733_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e226689226730_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl226687226735_))
                                                      (___match231105231106_
                                                       _e226680226706_
                                                       _hd226679226709_
                                                       _tl226678226711_
                                                       _e226683226714_
                                                       _hd226682226717_
                                                       _tl226681226719_
                                                       _e226686226722_
                                                       _hd226685226725_
                                                       _tl226684226727_
                                                       _e226689226730_
                                                       _hd226688226733_
                                                       _tl226687226735_)
                                                      (___kont231076231077_))))
                                              (___kont231076231077_))
                                          (___kont231076231077_))))
                                  (___kont231076231077_))))
                          (___kont231076231077_))))
                  (___kont231076231077_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx226527_)
        (let* ((___stx231108231109_ _stx226527_)
               (_g226530226561_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231108231109_)))))
          (let ((___kont231110231111_
                 (lambda (_L226643_ _L226644_)
                   (let ((_sym226660_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L226644_))))
                     (if (let ((__tmp233168 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp233168 _sym226660_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym226660_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym226660_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym226660_))
                             (let ((_type226661226663_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L226643_))))
                               (if _type226661226663_
                                   (let ((_type226666_ _type226661226663_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym226660_
                                      _type226666_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L226643_)))))
                (___kont231112231113_
                 (lambda (_L226590_ _L226591_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L226590_)))))
            (let ((___match231141231142_
                   (lambda (_e226536226611_
                            _hd226535226614_
                            _tl226534226616_
                            _e226539226619_
                            _hd226538226622_
                            _tl226537226624_
                            _e226542226627_
                            _hd226541226630_
                            _tl226540226632_
                            _e226545226635_
                            _hd226544226638_
                            _tl226543226640_)
                     (let ((_L226643_ _hd226544226638_)
                           (_L226644_ _hd226541226630_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L226644_))
                           (___kont231110231111_ _L226643_ _L226644_)
                           (___kont231112231113_
                            _hd226544226638_
                            _hd226538226622_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx231108231109_))
                  (let ((_e226536226611_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx231108231109_))))
                    (let ((_tl226534226616_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226536226611_)))
                          (_hd226535226614_
                           (let ()
                             (declare (not safe))
                             (##car _e226536226611_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl226534226616_))
                          (let ((_e226539226619_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl226534226616_))))
                            (let ((_tl226537226624_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226539226619_)))
                                  (_hd226538226622_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226539226619_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd226538226622_))
                                  (let ((_e226542226627_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd226538226622_))))
                                    (let ((_tl226540226632_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226542226627_)))
                                          (_hd226541226630_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226542226627_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl226540226632_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl226537226624_))
                                              (let ((_e226545226635_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl226537226624_))))
                                                (let ((_tl226543226640_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e226545226635_)))
                                                      (_hd226544226638_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e226545226635_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl226543226640_))
                                                      (___match231141231142_
                                                       _e226536226611_
                                                       _hd226535226614_
                                                       _tl226534226616_
                                                       _e226539226619_
                                                       _hd226538226622_
                                                       _tl226537226624_
                                                       _e226542226627_
                                                       _hd226541226630_
                                                       _tl226540226632_
                                                       _e226545226635_
                                                       _hd226544226638_
                                                       _tl226543226640_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g226530226561_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g226530226561_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl226537226624_))
                                              (let ((_e226556226582_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl226537226624_))))
                                                (let ((_tl226554226587_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e226556226582_)))
                                                      (_hd226555226585_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e226556226582_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl226554226587_))
                                                      (___kont231112231113_
                                                       _hd226555226585_
                                                       _hd226538226622_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g226530226561_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g226530226561_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl226537226624_))
                                      (let ((_e226556226582_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl226537226624_))))
                                        (let ((_tl226554226587_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226556226582_)))
                                              (_hd226555226585_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226556226582_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl226554226587_))
                                              (___kont231112231113_
                                               _hd226555226585_
                                               _hd226538226622_)
                                              (let ()
                                                (declare (not safe))
                                                (_g226530226561_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g226530226561_))))))
                          (let () (declare (not safe)) (_g226530226561_)))))
                  (let () (declare (not safe)) (_g226530226561_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx226312_)
        (letrec ((_collect-e226314_
                  (lambda (_hd226471_ _expr226472_)
                    (let* ((___stx231164231165_ _hd226471_)
                           (_g226475226485_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx231164231165_)))))
                      (let ((___kont231166231167_
                             (lambda (_L226505_)
                               (let ((_sym226516_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L226505_))))
                                 (if (let ((__tmp233169
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp233169 _sym226516_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym226516_))
                                     (let ((_type226517226519_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr226472_))))
                                       (if _type226517226519_
                                           (let ((_type226522_
                                                  _type226517226519_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym226516_
                                              _type226522_
                                              '#t))
                                           '#f))))))
                            (___kont231168231169_ (lambda () '#!void)))
                        (let ((___match231177231178_
                               (lambda (_e226480226497_
                                        _hd226479226500_
                                        _tl226478226502_)
                                 (let ((_L226505_ _hd226479226500_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L226505_))
                                       (___kont231166231167_ _L226505_)
                                       (___kont231168231169_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx231164231165_))
                              (let ((_e226480226497_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx231164231165_))))
                                (let ((_tl226478226502_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226480226497_)))
                                      (_hd226479226500_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226480226497_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226478226502_))
                                      (___match231177231178_
                                       _e226480226497_
                                       _hd226479226500_
                                       _tl226478226502_)
                                      (___kont231168231169_))))
                              (___kont231168231169_))))))))
          (let* ((_g226316226351_
                  (lambda (_g226317226348_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g226317226348_))))
                 (_g226315226468_
                  (lambda (_g226317226354_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g226317226354_))
                        (let ((_e226323226356_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g226317226354_))))
                          (let ((_hd226322226359_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e226323226356_)))
                                (_tl226321226361_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e226323226356_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl226321226361_))
                                (let ((_e226326226364_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl226321226361_))))
                                  (let ((_hd226325226367_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e226326226364_)))
                                        (_tl226324226369_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e226326226364_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd226325226367_))
                                        (let ((_g233170_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd226325226367_
                                                  '0))))
                                          (begin
                                            (let ((_g233171_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g233170_)
                                                         (##vector-length
                                                          _g233170_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g233171_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g233171_)))
                                            (let ((_target226327226372_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g233170_
                                                      0)))
                                                  (_tl226329226374_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g233170_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl226329226374_))
                                                  (letrec ((_loop226330226377_
                                                            (lambda (_hd226328226380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr226334226382_
                             _hd226335226384_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd226328226380_))
                          (let ((_e226331226387_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd226328226380_))))
                            (let ((_lp-hd226332226390_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226331226387_)))
                                  (_lp-tl226333226392_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226331226387_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd226332226390_))
                                  (let ((_e226340226395_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd226332226390_))))
                                    (let ((_hd226339226398_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226340226395_)))
                                          (_tl226338226400_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226340226395_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl226338226400_))
                                          (let ((_e226343226403_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl226338226400_))))
                                            (let ((_hd226342226406_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e226343226403_)))
                                                  (_tl226341226408_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e226343226403_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl226341226408_))
                                                  (let ((__tmp233176
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd226342226406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr226334226382_)))
                (__tmp233175
                 (let ()
                   (declare (not safe))
                   (cons _hd226339226398_ _hd226335226384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop226330226377_
                                                     _lp-tl226333226392_
                                                     __tmp233176
                                                     __tmp233175))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226316226351_
                                                     _g226317226354_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g226316226351_
                                             _g226317226354_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226316226351_ _g226317226354_)))))
                          (let ((_expr226336226411_
                                 (reverse _expr226334226382_))
                                (_hd226337226413_ (reverse _hd226335226384_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl226324226369_))
                                (let ((_e226346226416_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl226324226369_))))
                                  (let ((_hd226345226419_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e226346226416_)))
                                        (_tl226344226421_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e226346226416_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl226344226421_))
                                        ((lambda (_L226424_
                                                  _L226425_
                                                  _L226426_)
                                           (for-each
                                            _collect-e226314_
                                            (let ((__tmp233172
                                                   (lambda (_g226446226449_
                                                            _g226447226451_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g226446226449_
                                                             _g226447226451_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp233172
                                                      '()
                                                      _L226426_))
                                            (let ((__tmp233173
                                                   (lambda (_g226453226456_
                                                            _g226454226458_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g226453226456_
                                                             _g226454226458_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp233173
                                                      '()
                                                      _L226425_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp233174
                                                   (lambda (_g226460226463_
                                                            _g226461226465_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g226460226463_
                                                             _g226461226465_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp233174
                                                      '()
                                                      _L226425_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L226424_)))
                                         _hd226345226419_
                                         _expr226336226411_
                                         _hd226337226413_)
                                        (let ()
                                          (declare (not safe))
                                          (_g226316226351_ _g226317226354_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g226316226351_ _g226317226354_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop226330226377_
                                                       _target226327226372_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226316226351_
                                                     _g226317226354_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g226316226351_ _g226317226354_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g226316226351_ _g226317226354_)))))
                        (let ()
                          (declare (not safe))
                          (_g226316226351_ _g226317226354_))))))
            (declare (not safe))
            (_g226315226468_ _stx226312_)))))
    (define gxc#collect-type-call%
      (lambda (_stx225804_)
        (let* ((___stx231180231181_ _stx225804_)
               (_g225808225923_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231180231181_)))))
          (let ((___kont231182231183_
                 (lambda (_L226262_ _L226263_ _L226264_ _L226265_ _L226266_)
                   (let ((__tmp233180
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L226265_)))
                         (__tmp233179
                          (let () (declare (not safe)) (gx#stx-e _L226264_)))
                         (__tmp233178
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L226263_)))
                         (__tmp233177
                          (let () (declare (not safe)) (gx#stx-e _L226262_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp233180
                      __tmp233179
                      __tmp233178
                      __tmp233177))))
                (___kont231184231185_
                 (lambda (_L226090_ _L226091_ _L226092_ _L226093_)
                   (let ((__tmp233183
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L226092_)))
                         (__tmp233182
                          (let () (declare (not safe)) (gx#stx-e _L226091_)))
                         (__tmp233181
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L226090_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp233183
                      __tmp233182
                      __tmp233181
                      '#f))))
                (___kont231186231187_
                 (lambda (_L225960_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp233184
                           (lambda (_g225973225976_ _g225974225978_)
                             (let ()
                               (declare (not safe))
                               (cons _g225973225976_ _g225974225978_)))))
                      (declare (not safe))
                      (foldr1 __tmp233184 '() _L225960_))))))
            (let* ((___match231437231438_
                    (lambda (_e225909225928_
                             _hd225908225931_
                             _tl225907225933_
                             ___splice231188231189_
                             _target225910225936_
                             _tl225912225938_)
                      (letrec ((_loop225913225941_
                                (lambda (_hd225911225944_ _expr225917225946_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd225911225944_))
                                      (let ((_e225914225949_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd225911225944_))))
                                        (let ((_lp-tl225916225954_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e225914225949_)))
                                              (_lp-hd225915225952_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e225914225949_))))
                                          (let ((__tmp233185
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd225915225952_
                                                         _expr225917225946_))))
                                            (declare (not safe))
                                            (_loop225913225941_
                                             _lp-tl225916225954_
                                             __tmp233185))))
                                      (let ((_expr225918225957_
                                             (reverse _expr225917225946_)))
                                        (___kont231186231187_
                                         _expr225918225957_))))))
                        (let ()
                          (declare (not safe))
                          (_loop225913225941_ _target225910225936_ '())))))
                   (___match231317231318_
                    (lambda (_e225817226134_
                             _hd225816226137_
                             _tl225815226139_
                             _e225820226142_
                             _hd225819226145_
                             _tl225818226147_
                             _e225823226150_
                             _hd225822226153_
                             _tl225821226155_
                             _e225826226158_
                             _hd225825226161_
                             _tl225824226163_
                             _e225829226166_
                             _hd225828226169_
                             _tl225827226171_
                             _e225832226174_
                             _hd225831226177_
                             _tl225830226179_
                             _e225835226182_
                             _hd225834226185_
                             _tl225833226187_
                             _e225838226190_
                             _hd225837226193_
                             _tl225836226195_
                             _e225841226198_
                             _hd225840226201_
                             _tl225839226203_
                             _e225844226206_
                             _hd225843226209_
                             _tl225842226211_
                             _e225847226214_
                             _hd225846226217_
                             _tl225845226219_
                             _e225850226222_
                             _hd225849226225_
                             _tl225848226227_
                             _e225853226230_
                             _hd225852226233_
                             _tl225851226235_
                             _e225856226238_
                             _hd225855226241_
                             _tl225854226243_
                             _e225859226246_
                             _hd225858226249_
                             _tl225857226251_
                             _e225862226254_
                             _hd225861226257_
                             _tl225860226259_)
                      (let ((_L226262_ _hd225861226257_)
                            (_L226263_ _hd225852226233_)
                            (_L226264_ _hd225843226209_)
                            (_L226265_ _hd225834226185_)
                            (_L226266_ _hd225825226161_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L226266_
                               'bind-method!))
                            (___kont231182231183_
                             _L226262_
                             _L226263_
                             _L226264_
                             _L226265_
                             _L226266_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl225815226139_))
                                (let ((___splice231188231189_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl225815226139_
                                          '0))))
                                  (let ((_tl225912225938_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice231188231189_
                                            '1)))
                                        (_target225910225936_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice231188231189_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl225912225938_))
                                        (___match231437231438_
                                         _e225817226134_
                                         _hd225816226137_
                                         _tl225815226139_
                                         ___splice231188231189_
                                         _target225910225936_
                                         _tl225912225938_)
                                        (let ()
                                          (declare (not safe))
                                          (_g225808225923_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g225808225923_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx231180231181_))
                  (let ((_e225817226134_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx231180231181_))))
                    (let ((_tl225815226139_
                           (let ()
                             (declare (not safe))
                             (##cdr _e225817226134_)))
                          (_hd225816226137_
                           (let ()
                             (declare (not safe))
                             (##car _e225817226134_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl225815226139_))
                          (let ((_e225820226142_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl225815226139_))))
                            (let ((_tl225818226147_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e225820226142_)))
                                  (_hd225819226145_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e225820226142_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd225819226145_))
                                  (let ((_e225823226150_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd225819226145_))))
                                    (let ((_tl225821226155_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e225823226150_)))
                                          (_hd225822226153_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e225823226150_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd225822226153_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd225822226153_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl225821226155_))
                                                  (let ((_e225826226158_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl225821226155_))))
                                                    (let ((_tl225824226163_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e225826226158_)))
                                                          (_hd225825226161_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e225826226158_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl225824226163_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl225818226147_))
                      (let ((_e225829226166_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl225818226147_))))
                        (let ((_tl225827226171_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225829226166_)))
                              (_hd225828226169_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225829226166_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd225828226169_))
                              (let ((_e225832226174_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd225828226169_))))
                                (let ((_tl225830226179_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225832226174_)))
                                      (_hd225831226177_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225832226174_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd225831226177_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd225831226177_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl225830226179_))
                                              (let ((_e225835226182_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl225830226179_))))
                                                (let ((_tl225833226187_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e225835226182_)))
                                                      (_hd225834226185_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e225835226182_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225833226187_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl225827226171_))
                                                          (let ((_e225838226190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl225827226171_))))
                    (let ((_tl225836226195_
                           (let ()
                             (declare (not safe))
                             (##cdr _e225838226190_)))
                          (_hd225837226193_
                           (let ()
                             (declare (not safe))
                             (##car _e225838226190_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd225837226193_))
                          (let ((_e225841226198_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd225837226193_))))
                            (let ((_tl225839226203_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e225841226198_)))
                                  (_hd225840226201_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e225841226198_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd225840226201_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd225840226201_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl225839226203_))
                                          (let ((_e225844226206_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl225839226203_))))
                                            (let ((_tl225842226211_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e225844226206_)))
                                                  (_hd225843226209_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e225844226206_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl225842226211_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl225836226195_))
                                                      (let ((_e225847226214_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl225836226195_))))
                (let ((_tl225845226219_
                       (let () (declare (not safe)) (##cdr _e225847226214_)))
                      (_hd225846226217_
                       (let () (declare (not safe)) (##car _e225847226214_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd225846226217_))
                      (let ((_e225850226222_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd225846226217_))))
                        (let ((_tl225848226227_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225850226222_)))
                              (_hd225849226225_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225850226222_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd225849226225_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd225849226225_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl225848226227_))
                                      (let ((_e225853226230_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl225848226227_))))
                                        (let ((_tl225851226235_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e225853226230_)))
                                              (_hd225852226233_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e225853226230_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl225851226235_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl225845226219_))
                                                  (let ((_e225856226238_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl225845226219_))))
                                                    (let ((_tl225854226243_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e225856226238_)))
                                                          (_hd225855226241_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e225856226238_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd225855226241_))
                                                          (let ((_e225859226246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd225855226241_))))
                    (let ((_tl225857226251_
                           (let ()
                             (declare (not safe))
                             (##cdr _e225859226246_)))
                          (_hd225858226249_
                           (let ()
                             (declare (not safe))
                             (##car _e225859226246_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd225858226249_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd225858226249_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl225857226251_))
                                  (let ((_e225862226254_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl225857226251_))))
                                    (let ((_tl225860226259_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e225862226254_)))
                                          (_hd225861226257_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e225862226254_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl225860226259_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl225854226243_))
                                              (___match231317231318_
                                               _e225817226134_
                                               _hd225816226137_
                                               _tl225815226139_
                                               _e225820226142_
                                               _hd225819226145_
                                               _tl225818226147_
                                               _e225823226150_
                                               _hd225822226153_
                                               _tl225821226155_
                                               _e225826226158_
                                               _hd225825226161_
                                               _tl225824226163_
                                               _e225829226166_
                                               _hd225828226169_
                                               _tl225827226171_
                                               _e225832226174_
                                               _hd225831226177_
                                               _tl225830226179_
                                               _e225835226182_
                                               _hd225834226185_
                                               _tl225833226187_
                                               _e225838226190_
                                               _hd225837226193_
                                               _tl225836226195_
                                               _e225841226198_
                                               _hd225840226201_
                                               _tl225839226203_
                                               _e225844226206_
                                               _hd225843226209_
                                               _tl225842226211_
                                               _e225847226214_
                                               _hd225846226217_
                                               _tl225845226219_
                                               _e225850226222_
                                               _hd225849226225_
                                               _tl225848226227_
                                               _e225853226230_
                                               _hd225852226233_
                                               _tl225851226235_
                                               _e225856226238_
                                               _hd225855226241_
                                               _tl225854226243_
                                               _e225859226246_
                                               _hd225858226249_
                                               _tl225857226251_
                                               _e225862226254_
                                               _hd225861226257_
                                               _tl225860226259_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl225815226139_))
                                                  (let ((___splice231188231189_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl225815226139_
                                                            '0))))
                                                    (let ((_tl225912225938_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231188231189_
                                                              '1)))
                                                          (_target225910225936_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231188231189_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl225912225938_))
                                                          (___match231437231438_
                                                           _e225817226134_
                                                           _hd225816226137_
                                                           _tl225815226139_
                                                           ___splice231188231189_
                                                           _target225910225936_
                                                           _tl225912225938_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g225808225923_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g225808225923_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl225815226139_))
                                              (let ((___splice231188231189_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl225815226139_
                                                        '0))))
                                                (let ((_tl225912225938_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231188231189_
                                                          '1)))
                                                      (_target225910225936_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231188231189_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225912225938_))
                                                      (___match231437231438_
                                                       _e225817226134_
                                                       _hd225816226137_
                                                       _tl225815226139_
                                                       ___splice231188231189_
                                                       _target225910225936_
                                                       _tl225912225938_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g225808225923_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g225808225923_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl225815226139_))
                                      (let ((___splice231188231189_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl225815226139_
                                                '0))))
                                        (let ((_tl225912225938_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231188231189_
                                                  '1)))
                                              (_target225910225936_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231188231189_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl225912225938_))
                                              (___match231437231438_
                                               _e225817226134_
                                               _hd225816226137_
                                               _tl225815226139_
                                               ___splice231188231189_
                                               _target225910225936_
                                               _tl225912225938_)
                                              (let ()
                                                (declare (not safe))
                                                (_g225808225923_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225808225923_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl225815226139_))
                                  (let ((___splice231188231189_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl225815226139_
                                            '0))))
                                    (let ((_tl225912225938_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice231188231189_
                                              '1)))
                                          (_target225910225936_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice231188231189_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl225912225938_))
                                          (___match231437231438_
                                           _e225817226134_
                                           _hd225816226137_
                                           _tl225815226139_
                                           ___splice231188231189_
                                           _target225910225936_
                                           _tl225912225938_)
                                          (let ()
                                            (declare (not safe))
                                            (_g225808225923_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g225808225923_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl225815226139_))
                              (let ((___splice231188231189_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl225815226139_
                                        '0))))
                                (let ((_tl225912225938_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice231188231189_
                                          '1)))
                                      (_target225910225936_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice231188231189_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225912225938_))
                                      (___match231437231438_
                                       _e225817226134_
                                       _hd225816226137_
                                       _tl225815226139_
                                       ___splice231188231189_
                                       _target225910225936_
                                       _tl225912225938_)
                                      (let ()
                                        (declare (not safe))
                                        (_g225808225923_)))))
                              (let ()
                                (declare (not safe))
                                (_g225808225923_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl225815226139_))
                      (let ((___splice231188231189_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl225815226139_ '0))))
                        (let ((_tl225912225938_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231188231189_ '1)))
                              (_target225910225936_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231188231189_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl225912225938_))
                              (___match231437231438_
                               _e225817226134_
                               _hd225816226137_
                               _tl225815226139_
                               ___splice231188231189_
                               _target225910225936_
                               _tl225912225938_)
                              (let ()
                                (declare (not safe))
                                (_g225808225923_)))))
                      (let () (declare (not safe)) (_g225808225923_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225845226219_))
                                                      (if (let ((__tmp233186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp233186 'bind-method!))
                  (let ((_L226090_ _hd225852226233_)
                        (_L226091_ _hd225843226209_)
                        (_L226092_ _hd225834226185_)
                        (_L226093_ _hd225825226161_))
                    (___kont231184231185_
                     _L226090_
                     _L226091_
                     _L226092_
                     _L226093_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl225815226139_))
                      (let ((___splice231188231189_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl225815226139_ '0))))
                        (let ((_tl225912225938_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231188231189_ '1)))
                              (_target225910225936_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231188231189_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl225912225938_))
                              (___match231437231438_
                               _e225817226134_
                               _hd225816226137_
                               _tl225815226139_
                               ___splice231188231189_
                               _target225910225936_
                               _tl225912225938_)
                              (let ()
                                (declare (not safe))
                                (_g225808225923_)))))
                      (let () (declare (not safe)) (_g225808225923_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl225815226139_))
                  (let ((___splice231188231189_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl225815226139_ '0))))
                    (let ((_tl225912225938_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice231188231189_ '1)))
                          (_target225910225936_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice231188231189_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl225912225938_))
                          (___match231437231438_
                           _e225817226134_
                           _hd225816226137_
                           _tl225815226139_
                           ___splice231188231189_
                           _target225910225936_
                           _tl225912225938_)
                          (let () (declare (not safe)) (_g225808225923_)))))
                  (let () (declare (not safe)) (_g225808225923_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl225815226139_))
                                                  (let ((___splice231188231189_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl225815226139_
                                                            '0))))
                                                    (let ((_tl225912225938_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231188231189_
                                                              '1)))
                                                          (_target225910225936_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231188231189_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl225912225938_))
                                                          (___match231437231438_
                                                           _e225817226134_
                                                           _hd225816226137_
                                                           _tl225815226139_
                                                           ___splice231188231189_
                                                           _target225910225936_
                                                           _tl225912225938_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g225808225923_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g225808225923_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl225815226139_))
                                          (let ((___splice231188231189_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl225815226139_
                                                    '0))))
                                            (let ((_tl225912225938_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice231188231189_
                                                      '1)))
                                                  (_target225910225936_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice231188231189_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl225912225938_))
                                                  (___match231437231438_
                                                   _e225817226134_
                                                   _hd225816226137_
                                                   _tl225815226139_
                                                   ___splice231188231189_
                                                   _target225910225936_
                                                   _tl225912225938_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g225808225923_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g225808225923_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl225815226139_))
                                      (let ((___splice231188231189_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl225815226139_
                                                '0))))
                                        (let ((_tl225912225938_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231188231189_
                                                  '1)))
                                              (_target225910225936_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231188231189_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl225912225938_))
                                              (___match231437231438_
                                               _e225817226134_
                                               _hd225816226137_
                                               _tl225815226139_
                                               ___splice231188231189_
                                               _target225910225936_
                                               _tl225912225938_)
                                              (let ()
                                                (declare (not safe))
                                                (_g225808225923_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225808225923_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl225815226139_))
                                  (let ((___splice231188231189_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl225815226139_
                                            '0))))
                                    (let ((_tl225912225938_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice231188231189_
                                              '1)))
                                          (_target225910225936_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice231188231189_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl225912225938_))
                                          (___match231437231438_
                                           _e225817226134_
                                           _hd225816226137_
                                           _tl225815226139_
                                           ___splice231188231189_
                                           _target225910225936_
                                           _tl225912225938_)
                                          (let ()
                                            (declare (not safe))
                                            (_g225808225923_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g225808225923_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl225815226139_))
                          (let ((___splice231188231189_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl225815226139_
                                    '0))))
                            (let ((_tl225912225938_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice231188231189_ '1)))
                                  (_target225910225936_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice231188231189_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl225912225938_))
                                  (___match231437231438_
                                   _e225817226134_
                                   _hd225816226137_
                                   _tl225815226139_
                                   ___splice231188231189_
                                   _target225910225936_
                                   _tl225912225938_)
                                  (let ()
                                    (declare (not safe))
                                    (_g225808225923_)))))
                          (let () (declare (not safe)) (_g225808225923_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl225815226139_))
                  (let ((___splice231188231189_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl225815226139_ '0))))
                    (let ((_tl225912225938_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice231188231189_ '1)))
                          (_target225910225936_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice231188231189_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl225912225938_))
                          (___match231437231438_
                           _e225817226134_
                           _hd225816226137_
                           _tl225815226139_
                           ___splice231188231189_
                           _target225910225936_
                           _tl225912225938_)
                          (let () (declare (not safe)) (_g225808225923_)))))
                  (let () (declare (not safe)) (_g225808225923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl225815226139_))
                                                      (let ((___splice231188231189_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl225815226139_ '0))))
                (let ((_tl225912225938_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice231188231189_ '1)))
                      (_target225910225936_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice231188231189_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl225912225938_))
                      (___match231437231438_
                       _e225817226134_
                       _hd225816226137_
                       _tl225815226139_
                       ___splice231188231189_
                       _target225910225936_
                       _tl225912225938_)
                      (let () (declare (not safe)) (_g225808225923_)))))
              (let () (declare (not safe)) (_g225808225923_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl225815226139_))
                                              (let ((___splice231188231189_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl225815226139_
                                                        '0))))
                                                (let ((_tl225912225938_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231188231189_
                                                          '1)))
                                                      (_target225910225936_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231188231189_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225912225938_))
                                                      (___match231437231438_
                                                       _e225817226134_
                                                       _hd225816226137_
                                                       _tl225815226139_
                                                       ___splice231188231189_
                                                       _target225910225936_
                                                       _tl225912225938_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g225808225923_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g225808225923_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl225815226139_))
                                          (let ((___splice231188231189_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl225815226139_
                                                    '0))))
                                            (let ((_tl225912225938_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice231188231189_
                                                      '1)))
                                                  (_target225910225936_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice231188231189_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl225912225938_))
                                                  (___match231437231438_
                                                   _e225817226134_
                                                   _hd225816226137_
                                                   _tl225815226139_
                                                   ___splice231188231189_
                                                   _target225910225936_
                                                   _tl225912225938_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g225808225923_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g225808225923_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl225815226139_))
                                      (let ((___splice231188231189_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl225815226139_
                                                '0))))
                                        (let ((_tl225912225938_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231188231189_
                                                  '1)))
                                              (_target225910225936_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231188231189_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl225912225938_))
                                              (___match231437231438_
                                               _e225817226134_
                                               _hd225816226137_
                                               _tl225815226139_
                                               ___splice231188231189_
                                               _target225910225936_
                                               _tl225912225938_)
                                              (let ()
                                                (declare (not safe))
                                                (_g225808225923_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225808225923_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl225815226139_))
                              (let ((___splice231188231189_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl225815226139_
                                        '0))))
                                (let ((_tl225912225938_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice231188231189_
                                          '1)))
                                      (_target225910225936_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice231188231189_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225912225938_))
                                      (___match231437231438_
                                       _e225817226134_
                                       _hd225816226137_
                                       _tl225815226139_
                                       ___splice231188231189_
                                       _target225910225936_
                                       _tl225912225938_)
                                      (let ()
                                        (declare (not safe))
                                        (_g225808225923_)))))
                              (let ()
                                (declare (not safe))
                                (_g225808225923_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl225815226139_))
                      (let ((___splice231188231189_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl225815226139_ '0))))
                        (let ((_tl225912225938_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231188231189_ '1)))
                              (_target225910225936_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231188231189_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl225912225938_))
                              (___match231437231438_
                               _e225817226134_
                               _hd225816226137_
                               _tl225815226139_
                               ___splice231188231189_
                               _target225910225936_
                               _tl225912225938_)
                              (let ()
                                (declare (not safe))
                                (_g225808225923_)))))
                      (let () (declare (not safe)) (_g225808225923_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl225815226139_))
                  (let ((___splice231188231189_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl225815226139_ '0))))
                    (let ((_tl225912225938_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice231188231189_ '1)))
                          (_target225910225936_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice231188231189_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl225912225938_))
                          (___match231437231438_
                           _e225817226134_
                           _hd225816226137_
                           _tl225815226139_
                           ___splice231188231189_
                           _target225910225936_
                           _tl225912225938_)
                          (let () (declare (not safe)) (_g225808225923_)))))
                  (let () (declare (not safe)) (_g225808225923_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl225815226139_))
                                                  (let ((___splice231188231189_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl225815226139_
                                                            '0))))
                                                    (let ((_tl225912225938_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231188231189_
                                                              '1)))
                                                          (_target225910225936_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231188231189_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl225912225938_))
                                                          (___match231437231438_
                                                           _e225817226134_
                                                           _hd225816226137_
                                                           _tl225815226139_
                                                           ___splice231188231189_
                                                           _target225910225936_
                                                           _tl225912225938_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g225808225923_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g225808225923_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl225815226139_))
                                              (let ((___splice231188231189_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl225815226139_
                                                        '0))))
                                                (let ((_tl225912225938_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231188231189_
                                                          '1)))
                                                      (_target225910225936_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231188231189_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225912225938_))
                                                      (___match231437231438_
                                                       _e225817226134_
                                                       _hd225816226137_
                                                       _tl225815226139_
                                                       ___splice231188231189_
                                                       _target225910225936_
                                                       _tl225912225938_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g225808225923_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g225808225923_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl225815226139_))
                                          (let ((___splice231188231189_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl225815226139_
                                                    '0))))
                                            (let ((_tl225912225938_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice231188231189_
                                                      '1)))
                                                  (_target225910225936_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice231188231189_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl225912225938_))
                                                  (___match231437231438_
                                                   _e225817226134_
                                                   _hd225816226137_
                                                   _tl225815226139_
                                                   ___splice231188231189_
                                                   _target225910225936_
                                                   _tl225912225938_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g225808225923_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g225808225923_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl225815226139_))
                                  (let ((___splice231188231189_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl225815226139_
                                            '0))))
                                    (let ((_tl225912225938_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice231188231189_
                                              '1)))
                                          (_target225910225936_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice231188231189_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl225912225938_))
                                          (___match231437231438_
                                           _e225817226134_
                                           _hd225816226137_
                                           _tl225815226139_
                                           ___splice231188231189_
                                           _target225910225936_
                                           _tl225912225938_)
                                          (let ()
                                            (declare (not safe))
                                            (_g225808225923_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g225808225923_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl225815226139_))
                          (let ((___splice231188231189_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl225815226139_
                                    '0))))
                            (let ((_tl225912225938_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice231188231189_ '1)))
                                  (_target225910225936_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice231188231189_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl225912225938_))
                                  (___match231437231438_
                                   _e225817226134_
                                   _hd225816226137_
                                   _tl225815226139_
                                   ___splice231188231189_
                                   _target225910225936_
                                   _tl225912225938_)
                                  (let ()
                                    (declare (not safe))
                                    (_g225808225923_)))))
                          (let () (declare (not safe)) (_g225808225923_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl225815226139_))
                      (let ((___splice231188231189_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl225815226139_ '0))))
                        (let ((_tl225912225938_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231188231189_ '1)))
                              (_target225910225936_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231188231189_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl225912225938_))
                              (___match231437231438_
                               _e225817226134_
                               _hd225816226137_
                               _tl225815226139_
                               ___splice231188231189_
                               _target225910225936_
                               _tl225912225938_)
                              (let ()
                                (declare (not safe))
                                (_g225808225923_)))))
                      (let () (declare (not safe)) (_g225808225923_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl225815226139_))
                                                      (let ((___splice231188231189_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl225815226139_ '0))))
                (let ((_tl225912225938_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice231188231189_ '1)))
                      (_target225910225936_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice231188231189_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl225912225938_))
                      (___match231437231438_
                       _e225817226134_
                       _hd225816226137_
                       _tl225815226139_
                       ___splice231188231189_
                       _target225910225936_
                       _tl225912225938_)
                      (let () (declare (not safe)) (_g225808225923_)))))
              (let () (declare (not safe)) (_g225808225923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl225815226139_))
                                                  (let ((___splice231188231189_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl225815226139_
                                                            '0))))
                                                    (let ((_tl225912225938_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231188231189_
                                                              '1)))
                                                          (_target225910225936_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231188231189_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl225912225938_))
                                                          (___match231437231438_
                                                           _e225817226134_
                                                           _hd225816226137_
                                                           _tl225815226139_
                                                           ___splice231188231189_
                                                           _target225910225936_
                                                           _tl225912225938_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g225808225923_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g225808225923_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl225815226139_))
                                              (let ((___splice231188231189_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl225815226139_
                                                        '0))))
                                                (let ((_tl225912225938_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231188231189_
                                                          '1)))
                                                      (_target225910225936_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231188231189_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225912225938_))
                                                      (___match231437231438_
                                                       _e225817226134_
                                                       _hd225816226137_
                                                       _tl225815226139_
                                                       ___splice231188231189_
                                                       _target225910225936_
                                                       _tl225912225938_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g225808225923_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g225808225923_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl225815226139_))
                                      (let ((___splice231188231189_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl225815226139_
                                                '0))))
                                        (let ((_tl225912225938_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231188231189_
                                                  '1)))
                                              (_target225910225936_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231188231189_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl225912225938_))
                                              (___match231437231438_
                                               _e225817226134_
                                               _hd225816226137_
                                               _tl225815226139_
                                               ___splice231188231189_
                                               _target225910225936_
                                               _tl225912225938_)
                                              (let ()
                                                (declare (not safe))
                                                (_g225808225923_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225808225923_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl225815226139_))
                              (let ((___splice231188231189_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl225815226139_
                                        '0))))
                                (let ((_tl225912225938_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice231188231189_
                                          '1)))
                                      (_target225910225936_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice231188231189_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225912225938_))
                                      (___match231437231438_
                                       _e225817226134_
                                       _hd225816226137_
                                       _tl225815226139_
                                       ___splice231188231189_
                                       _target225910225936_
                                       _tl225912225938_)
                                      (let ()
                                        (declare (not safe))
                                        (_g225808225923_)))))
                              (let ()
                                (declare (not safe))
                                (_g225808225923_))))))
                  (let () (declare (not safe)) (_g225808225923_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx225744_)
        (let* ((___stx231440231441_ _stx225744_)
               (_g225747225760_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231440231441_)))))
          (let ((___kont231442231443_
                 (lambda (_L225788_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L225788_))))
                (___kont231444231445_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx231440231441_))
                (let ((_e225752225772_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx231440231441_))))
                  (let ((_tl225750225777_
                         (let () (declare (not safe)) (##cdr _e225752225772_)))
                        (_hd225751225775_
                         (let ()
                           (declare (not safe))
                           (##car _e225752225772_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl225750225777_))
                        (let ((_e225755225780_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl225750225777_))))
                          (let ((_tl225753225785_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e225755225780_)))
                                (_hd225754225783_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e225755225780_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl225753225785_))
                                (___kont231442231443_ _hd225754225783_)
                                (___kont231444231445_))))
                        (___kont231444231445_))))
                (___kont231444231445_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx225624_)
        (let* ((_g225626225643_
                (lambda (_g225627225640_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g225627225640_))))
               (_g225625225741_
                (lambda (_g225627225646_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g225627225646_))
                      (let ((_e225632225648_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g225627225646_))))
                        (let ((_hd225631225651_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225632225648_)))
                              (_tl225630225653_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225632225648_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225630225653_))
                              (let ((_e225635225656_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl225630225653_))))
                                (let ((_hd225634225659_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225635225656_)))
                                      (_tl225633225661_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225635225656_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl225633225661_))
                                      (let ((_e225638225664_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl225633225661_))))
                                        (let ((_hd225637225667_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e225638225664_)))
                                              (_tl225636225669_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e225638225664_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl225636225669_))
                                              ((lambda (_L225672_ _L225673_)
                                                 (let* ((___stx231462231463_
                                                         _L225673_)
                                                        (_g225689225700_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx231462231463_)))))
                                                   (let ((___kont231464231465_
                                                          (lambda (_L225720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L225721_)
                    (let ((_$e225733_
                           (let ((__tmp233187
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L225721_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp233187
                              '#f))))
                      (if _$e225733_
                          ((lambda (_type-e225736_)
                             (_type-e225736_ _stx225624_ _L225673_))
                           _$e225733_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L225672_))))))
                 (___kont231466231467_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L225672_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match231473231474_
                                                            (lambda (_e225695225712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd225694225715_
                             _tl225693225717_)
                      (let ((_L225720_ _tl225693225717_)
                            (_L225721_ _hd225694225715_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L225721_))
                            (___kont231464231465_ _L225720_ _L225721_)
                            (___kont231466231467_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx231462231463_))
                   (let ((_e225695225712_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx231462231463_))))
                     (let ((_tl225693225717_
                            (let ()
                              (declare (not safe))
                              (##cdr _e225695225712_)))
                           (_hd225694225715_
                            (let ()
                              (declare (not safe))
                              (##car _e225695225712_))))
                       (___match231473231474_
                        _e225695225712_
                        _hd225694225715_
                        _tl225693225717_)))
                   (___kont231466231467_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd225637225667_
                                               _hd225634225659_)
                                              (let ()
                                                (declare (not safe))
                                                (_g225626225643_
                                                 _g225627225646_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225626225643_ _g225627225646_)))))
                              (let ()
                                (declare (not safe))
                                (_g225626225643_ _g225627225646_)))))
                      (let ()
                        (declare (not safe))
                        (_g225626225643_ _g225627225646_))))))
          (declare (not safe))
          (_g225625225741_ _stx225624_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx225485_ _ann225486_)
        (let* ((_g225488225521_
                (lambda (_g225489225518_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g225489225518_))))
               (_g225487225621_
                (lambda (_g225489225524_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g225489225524_))
                      (let ((_e225498225526_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g225489225524_))))
                        (let ((_hd225497225529_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225498225526_)))
                              (_tl225496225531_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225498225526_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225496225531_))
                              (let ((_e225501225534_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl225496225531_))))
                                (let ((_hd225500225537_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225501225534_)))
                                      (_tl225499225539_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225501225534_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl225499225539_))
                                      (let ((_e225504225542_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl225499225539_))))
                                        (let ((_hd225503225545_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e225504225542_)))
                                              (_tl225502225547_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e225504225542_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl225502225547_))
                                              (let ((_e225507225550_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl225502225547_))))
                                                (let ((_hd225506225553_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e225507225550_)))
                                                      (_tl225505225555_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e225507225550_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl225505225555_))
                                                      (let ((_e225510225558_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl225505225555_))))
                (let ((_hd225509225561_
                       (let () (declare (not safe)) (##car _e225510225558_)))
                      (_tl225508225563_
                       (let () (declare (not safe)) (##cdr _e225510225558_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl225508225563_))
                      (let ((_e225513225566_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl225508225563_))))
                        (let ((_hd225512225569_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225513225566_)))
                              (_tl225511225571_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225513225566_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225511225571_))
                              (let ((_e225516225574_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl225511225571_))))
                                (let ((_hd225515225577_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225516225574_)))
                                      (_tl225514225579_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225516225574_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225514225579_))
                                      ((lambda (_L225582_
                                                _L225583_
                                                _L225584_
                                                _L225585_
                                                _L225586_
                                                _L225587_)
                                         (let ((_type-id225614_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L225587_)))
                                               (_super225615_
                                                (map gxc#identifier-symbol
                                                     _L225586_))
                                               (_slots225616_
                                                (map gx#stx-e _L225585_))
                                               (_ctor-method225617_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L225584_)))
                                               (_struct?225618_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L225583_)))
                                               (_final?225619_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L225582_))))
                                           (let ((__obj233145
                                                  (make-object*
                                                   gxc#!class::t
                                                   '10)))
                                             (gxc#!class:::init!
                                              __obj233145
                                              _type-id225614_
                                              _super225615_
                                              _slots225616_
                                              _ctor-method225617_
                                              _struct?225618_
                                              _final?225619_)
                                             __obj233145)))
                                       _hd225515225577_
                                       _hd225512225569_
                                       _hd225509225561_
                                       _hd225506225553_
                                       _hd225503225545_
                                       _hd225500225537_)
                                      (let ()
                                        (declare (not safe))
                                        (_g225488225521_ _g225489225524_)))))
                              (let ()
                                (declare (not safe))
                                (_g225488225521_ _g225489225524_)))))
                      (let ()
                        (declare (not safe))
                        (_g225488225521_ _g225489225524_)))))
              (let ()
                (declare (not safe))
                (_g225488225521_ _g225489225524_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g225488225521_
                                                 _g225489225524_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225488225521_ _g225489225524_)))))
                              (let ()
                                (declare (not safe))
                                (_g225488225521_ _g225489225524_)))))
                      (let ()
                        (declare (not safe))
                        (_g225488225521_ _g225489225524_))))))
          (declare (not safe))
          (_g225487225621_ _ann225486_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx225433_ _ann225434_)
        (let* ((_g225436225449_
                (lambda (_g225437225446_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g225437225446_))))
               (_g225435225482_
                (lambda (_g225437225452_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g225437225452_))
                      (let ((_e225441225454_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g225437225452_))))
                        (let ((_hd225440225457_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225441225454_)))
                              (_tl225439225459_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225441225454_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225439225459_))
                              (let ((_e225444225462_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl225439225459_))))
                                (let ((_hd225443225465_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225444225462_)))
                                      (_tl225442225467_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225444225462_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225442225467_))
                                      ((lambda (_L225470_)
                                         (let ((__tmp233188
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L225470_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp233188)))
                                       _hd225443225465_)
                                      (let ()
                                        (declare (not safe))
                                        (_g225436225449_ _g225437225452_)))))
                              (let ()
                                (declare (not safe))
                                (_g225436225449_ _g225437225452_)))))
                      (let ()
                        (declare (not safe))
                        (_g225436225449_ _g225437225452_))))))
          (declare (not safe))
          (_g225435225482_ _ann225434_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx225381_ _ann225382_)
        (let* ((_g225384225397_
                (lambda (_g225385225394_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g225385225394_))))
               (_g225383225430_
                (lambda (_g225385225400_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g225385225400_))
                      (let ((_e225389225402_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g225385225400_))))
                        (let ((_hd225388225405_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225389225402_)))
                              (_tl225387225407_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225389225402_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225387225407_))
                              (let ((_e225392225410_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl225387225407_))))
                                (let ((_hd225391225413_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225392225410_)))
                                      (_tl225390225415_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225392225410_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225390225415_))
                                      ((lambda (_L225418_)
                                         (let ((__tmp233189
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L225418_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp233189)))
                                       _hd225391225413_)
                                      (let ()
                                        (declare (not safe))
                                        (_g225384225397_ _g225385225400_)))))
                              (let ()
                                (declare (not safe))
                                (_g225384225397_ _g225385225400_)))))
                      (let ()
                        (declare (not safe))
                        (_g225384225397_ _g225385225400_))))))
          (declare (not safe))
          (_g225383225430_ _ann225382_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx225297_ _ann225298_)
        (let* ((_g225300225321_
                (lambda (_g225301225318_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g225301225318_))))
               (_g225299225378_
                (lambda (_g225301225324_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g225301225324_))
                      (let ((_e225307225326_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g225301225324_))))
                        (let ((_hd225306225329_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225307225326_)))
                              (_tl225305225331_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225307225326_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225305225331_))
                              (let ((_e225310225334_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl225305225331_))))
                                (let ((_hd225309225337_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225310225334_)))
                                      (_tl225308225339_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225310225334_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl225308225339_))
                                      (let ((_e225313225342_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl225308225339_))))
                                        (let ((_hd225312225345_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e225313225342_)))
                                              (_tl225311225347_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e225313225342_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl225311225347_))
                                              (let ((_e225316225350_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl225311225347_))))
                                                (let ((_hd225315225353_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e225316225350_)))
                                                      (_tl225314225355_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e225316225350_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225314225355_))
                                                      ((lambda (_L225358_
                                                                _L225359_
                                                                _L225360_)
                                                         (let ((__tmp233192
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L225360_)))
                       (__tmp233191
                        (let () (declare (not safe)) (gx#stx-e _L225359_)))
                       (__tmp233190
                        (let () (declare (not safe)) (gx#stx-e _L225358_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp233192
                    __tmp233191
                    __tmp233190)))
               _hd225315225353_
               _hd225312225345_
               _hd225309225337_)
              (let ()
                (declare (not safe))
                (_g225300225321_ _g225301225324_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g225300225321_
                                                 _g225301225324_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225300225321_ _g225301225324_)))))
                              (let ()
                                (declare (not safe))
                                (_g225300225321_ _g225301225324_)))))
                      (let ()
                        (declare (not safe))
                        (_g225300225321_ _g225301225324_))))))
          (declare (not safe))
          (_g225299225378_ _ann225298_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx225213_ _ann225214_)
        (let* ((_g225216225237_
                (lambda (_g225217225234_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g225217225234_))))
               (_g225215225294_
                (lambda (_g225217225240_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g225217225240_))
                      (let ((_e225223225242_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g225217225240_))))
                        (let ((_hd225222225245_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225223225242_)))
                              (_tl225221225247_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225223225242_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225221225247_))
                              (let ((_e225226225250_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl225221225247_))))
                                (let ((_hd225225225253_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225226225250_)))
                                      (_tl225224225255_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225226225250_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl225224225255_))
                                      (let ((_e225229225258_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl225224225255_))))
                                        (let ((_hd225228225261_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e225229225258_)))
                                              (_tl225227225263_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e225229225258_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl225227225263_))
                                              (let ((_e225232225266_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl225227225263_))))
                                                (let ((_hd225231225269_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e225232225266_)))
                                                      (_tl225230225271_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e225232225266_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225230225271_))
                                                      ((lambda (_L225274_
                                                                _L225275_
                                                                _L225276_)
                                                         (let ((__tmp233195
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L225276_)))
                       (__tmp233194
                        (let () (declare (not safe)) (gx#stx-e _L225275_)))
                       (__tmp233193
                        (let () (declare (not safe)) (gx#stx-e _L225274_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp233195
                    __tmp233194
                    __tmp233193)))
               _hd225231225269_
               _hd225228225261_
               _hd225225225253_)
              (let ()
                (declare (not safe))
                (_g225216225237_ _g225217225240_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g225216225237_
                                                 _g225217225240_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225216225237_ _g225217225240_)))))
                              (let ()
                                (declare (not safe))
                                (_g225216225237_ _g225217225240_)))))
                      (let ()
                        (declare (not safe))
                        (_g225216225237_ _g225217225240_))))))
          (declare (not safe))
          (_g225215225294_ _ann225214_))))
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
      (lambda (_stx224333_)
        (let* ((___stx231476231477_ _stx224333_)
               (_g224339224535_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231476231477_)))))
          (let ((___kont231478231479_
                 (lambda (_L225201_)
                   (let ((__obj233146 (make-object* gxc#!lambda::t '6)))
                     (gxc#!lambda:::init!
                      __obj233146
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L225201_))
                      '#f)
                     __obj233146)))
                (___kont231480231481_
                 (lambda (_L225128_
                          _L225129_
                          _L225130_
                          _L225131_
                          _L225132_
                          _L225133_)
                   (let* ((_tab225183_
                           (let () (declare (not safe)) (gx#stx-e _L225130_)))
                          (_keys225185_
                           (if _tab225183_
                               (let ((__tmp233196 (vector->list _tab225183_)))
                                 (declare (not safe))
                                 (filter values __tmp233196))
                               '#f)))
                     (let ((__tmp233197
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L225129_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys225185_
                        __tmp233197)))))
                (___kont231482231483_
                 (lambda (_L224861_
                          _L224862_
                          _L224863_
                          _L224864_
                          _L224865_
                          _L224866_
                          _L224867_
                          _L224868_
                          _L224869_
                          _L224870_)
                   (let ((__tmp233199
                          (map gx#stx-e
                               (let ((__tmp233200
                                      (lambda (_g224963224966_ _g224964224968_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g224963224966_
                                                _g224964224968_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp233200 '() _L224863_))))
                         (__tmp233198
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L224867_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp233199
                      __tmp233198))))
                (___kont231486231487_
                 (lambda (_L224571_)
                   (let ((__obj233147 (make-object* gxc#!lambda::t '6)))
                     (gxc#!lambda:::init!
                      __obj233147
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L224571_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L224571_)))
                     __obj233147)))
                (___kont231488231489_
                 (lambda (_L224548_)
                   (let ((__obj233148 (make-object* gxc#!lambda::t '6)))
                     (gxc#!lambda:::init!
                      __obj233148
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L224548_))
                      '#f)
                     __obj233148))))
            (let* ((___match231795231796_
                    (lambda (_e224526224563_ _hd224525224566_ _tl224524224568_)
                      (let ((_L224571_ _tl224524224568_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L224571_))
                            (___kont231486231487_ _L224571_)
                            (___kont231488231489_ _tl224524224568_)))))
                   (___match231789231790_
                    (lambda (_e224420224585_
                             _hd224419224588_
                             _tl224418224590_
                             _e224423224593_
                             _hd224422224596_
                             _tl224421224598_
                             _e224426224601_
                             _hd224425224604_
                             _tl224424224606_
                             _e224429224609_
                             _hd224428224612_
                             _tl224427224614_
                             _e224432224617_
                             _hd224431224620_
                             _tl224430224622_
                             _e224435224625_
                             _hd224434224628_
                             _tl224433224630_
                             _e224438224633_
                             _hd224437224636_
                             _tl224436224638_
                             _e224441224641_
                             _hd224440224644_
                             _tl224439224646_
                             _e224444224649_
                             _hd224443224652_
                             _tl224442224654_
                             _e224447224657_
                             _hd224446224660_
                             _tl224445224662_
                             _e224450224665_
                             _hd224449224668_
                             _tl224448224670_
                             _e224453224673_
                             _hd224452224676_
                             _tl224451224678_
                             _e224456224681_
                             _hd224455224684_
                             _tl224454224686_
                             _e224459224689_
                             _hd224458224692_
                             _tl224457224694_
                             ___splice231484231485_
                             _target224460224697_
                             _tl224462224699_
                             _e224477224702_
                             _hd224476224705_
                             _tl224475224707_
                             _e224480224710_
                             _hd224479224713_
                             _tl224478224715_
                             _e224483224718_
                             _hd224482224721_
                             _tl224481224723_)
                      (letrec ((_loop224463224726_
                                (lambda (_hd224461224729_
                                         _-absent-value224467224731_
                                         _key224468224733_
                                         _-xkwvar224469224735_
                                         _-hash-ref224470224737_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd224461224729_))
                                      (let ((_e224464224740_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd224461224729_))))
                                        (let ((_lp-tl224466224745_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224464224740_)))
                                              (_lp-hd224465224743_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224464224740_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd224465224743_))
                                              (let ((_e224486224748_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd224465224743_))))
                                                (let ((_tl224484224753_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e224486224748_)))
                                                      (_hd224485224751_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e224486224748_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd224485224751_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd224485224751_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl224484224753_))
                      (let ((_e224489224756_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl224484224753_))))
                        (let ((_tl224487224761_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224489224756_)))
                              (_hd224488224759_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224489224756_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd224488224759_))
                              (let ((_e224492224764_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd224488224759_))))
                                (let ((_tl224490224769_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224492224764_)))
                                      (_hd224491224767_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224492224764_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd224491224767_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd224491224767_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl224490224769_))
                                              (let ((_e224495224772_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl224490224769_))))
                                                (let ((_tl224493224777_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e224495224772_)))
                                                      (_hd224494224775_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e224495224772_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl224493224777_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl224487224761_))
                                                          (let ((_e224498224780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl224487224761_))))
                    (let ((_tl224496224785_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224498224780_)))
                          (_hd224497224783_
                           (let ()
                             (declare (not safe))
                             (##car _e224498224780_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd224497224783_))
                          (let ((_e224501224788_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd224497224783_))))
                            (let ((_tl224499224793_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224501224788_)))
                                  (_hd224500224791_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224501224788_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd224500224791_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd224500224791_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl224499224793_))
                                          (let ((_e224504224796_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl224499224793_))))
                                            (let ((_tl224502224801_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224504224796_)))
                                                  (_hd224503224799_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224504224796_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl224502224801_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl224496224785_))
                                                      (let ((_e224507224804_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl224496224785_))))
                (let ((_tl224505224809_
                       (let () (declare (not safe)) (##cdr _e224507224804_)))
                      (_hd224506224807_
                       (let () (declare (not safe)) (##car _e224507224804_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd224506224807_))
                      (let ((_e224510224812_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd224506224807_))))
                        (let ((_tl224508224817_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224510224812_)))
                              (_hd224509224815_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224510224812_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd224509224815_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd224509224815_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224508224817_))
                                      (let ((_e224513224820_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224508224817_))))
                                        (let ((_tl224511224825_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224513224820_)))
                                              (_hd224512224823_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224513224820_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224511224825_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl224505224809_))
                                                  (let ((_e224516224828_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl224505224809_))))
                                                    (let ((_tl224514224833_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e224516224828_)))
                                                          (_hd224515224831_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e224516224828_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd224515224831_))
                                                          (let ((_e224519224836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd224515224831_))))
                    (let ((_tl224517224841_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224519224836_)))
                          (_hd224518224839_
                           (let ()
                             (declare (not safe))
                             (##car _e224519224836_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd224518224839_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd224518224839_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl224517224841_))
                                  (let ((_e224522224844_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl224517224841_))))
                                    (let ((_tl224520224849_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224522224844_)))
                                          (_hd224521224847_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224522224844_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl224520224849_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224514224833_))
                                              (let ((__tmp233215
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd224521224847_
                                                             _-absent-value224467224731_)))
                                                    (__tmp233214
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd224512224823_
                                                             _key224468224733_)))
                                                    (__tmp233213
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd224503224799_
                                                             _-xkwvar224469224735_)))
                                                    (__tmp233212
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd224494224775_
                                                             _-hash-ref224470224737_))))
                                                (declare (not safe))
                                                (_loop224463224726_
                                                 _lp-tl224466224745_
                                                 __tmp233215
                                                 __tmp233214
                                                 __tmp233213
                                                 __tmp233212))
                                              (___match231795231796_
                                               _e224420224585_
                                               _hd224419224588_
                                               _tl224418224590_))
                                          (___match231795231796_
                                           _e224420224585_
                                           _hd224419224588_
                                           _tl224418224590_))))
                                  (___match231795231796_
                                   _e224420224585_
                                   _hd224419224588_
                                   _tl224418224590_))
                              (___match231795231796_
                               _e224420224585_
                               _hd224419224588_
                               _tl224418224590_))
                          (___match231795231796_
                           _e224420224585_
                           _hd224419224588_
                           _tl224418224590_))))
                  (___match231795231796_
                   _e224420224585_
                   _hd224419224588_
                   _tl224418224590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231795231796_
                                                   _e224420224585_
                                                   _hd224419224588_
                                                   _tl224418224590_))
                                              (___match231795231796_
                                               _e224420224585_
                                               _hd224419224588_
                                               _tl224418224590_))))
                                      (___match231795231796_
                                       _e224420224585_
                                       _hd224419224588_
                                       _tl224418224590_))
                                  (___match231795231796_
                                   _e224420224585_
                                   _hd224419224588_
                                   _tl224418224590_))
                              (___match231795231796_
                               _e224420224585_
                               _hd224419224588_
                               _tl224418224590_))))
                      (___match231795231796_
                       _e224420224585_
                       _hd224419224588_
                       _tl224418224590_))))
              (___match231795231796_
               _e224420224585_
               _hd224419224588_
               _tl224418224590_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231795231796_
                                                   _e224420224585_
                                                   _hd224419224588_
                                                   _tl224418224590_))))
                                          (___match231795231796_
                                           _e224420224585_
                                           _hd224419224588_
                                           _tl224418224590_))
                                      (___match231795231796_
                                       _e224420224585_
                                       _hd224419224588_
                                       _tl224418224590_))
                                  (___match231795231796_
                                   _e224420224585_
                                   _hd224419224588_
                                   _tl224418224590_))))
                          (___match231795231796_
                           _e224420224585_
                           _hd224419224588_
                           _tl224418224590_))))
                  (___match231795231796_
                   _e224420224585_
                   _hd224419224588_
                   _tl224418224590_))
              (___match231795231796_
               _e224420224585_
               _hd224419224588_
               _tl224418224590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match231795231796_
                                               _e224420224585_
                                               _hd224419224588_
                                               _tl224418224590_))
                                          (___match231795231796_
                                           _e224420224585_
                                           _hd224419224588_
                                           _tl224418224590_))
                                      (___match231795231796_
                                       _e224420224585_
                                       _hd224419224588_
                                       _tl224418224590_))))
                              (___match231795231796_
                               _e224420224585_
                               _hd224419224588_
                               _tl224418224590_))))
                      (___match231795231796_
                       _e224420224585_
                       _hd224419224588_
                       _tl224418224590_))
                  (___match231795231796_
                   _e224420224585_
                   _hd224419224588_
                   _tl224418224590_))
              (___match231795231796_
               _e224420224585_
               _hd224419224588_
               _tl224418224590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match231795231796_
                                               _e224420224585_
                                               _hd224419224588_
                                               _tl224418224590_))))
                                      (let ((_-hash-ref224474224858_
                                             (reverse _-hash-ref224470224737_))
                                            (_-xkwvar224473224856_
                                             (reverse _-xkwvar224469224735_))
                                            (_key224472224854_
                                             (reverse _key224468224733_))
                                            (_-absent-value224471224852_
                                             (reverse _-absent-value224467224731_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl224427224614_))
                                            (let ((_L224861_ _hd224482224721_)
                                                  (_L224862_
                                                   _-absent-value224471224852_)
                                                  (_L224863_ _key224472224854_)
                                                  (_L224864_
                                                   _-xkwvar224473224856_)
                                                  (_L224865_
                                                   _-hash-ref224474224858_)
                                                  (_L224866_ _hd224458224692_)
                                                  (_L224867_ _hd224449224668_)
                                                  (_L224868_ _hd224440224644_)
                                                  (_L224869_ _tl224424224606_)
                                                  (_L224870_ _hd224425224604_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L224870_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L224869_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L224868_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L224870_
                                                          _L224866_))
                                                       (let ((__tmp233210
                                                              (let ((__tmp233211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g224923224926_ _g224924224928_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g224923224926_ _g224924224928_)))))
                        (declare (not safe))
                        (foldr1 __tmp233211 '() _L224863_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp233210))
               (let ((__tmp233209
                      (lambda (_g224930224932_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g224930224932_
                           'hash-ref))))
                     (__tmp233207
                      (let ((__tmp233208
                             (lambda (_g224934224937_ _g224935224939_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g224934224937_ _g224935224939_)))))
                        (declare (not safe))
                        (foldr1 __tmp233208 '() _L224865_))))
                 (declare (not safe))
                 (andmap1 __tmp233209 __tmp233207))
               (let ((__tmp233206
                      (lambda (_g224941224943_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g224941224943_
                           'absent-value))))
                     (__tmp233204
                      (let ((__tmp233205
                             (lambda (_g224945224948_ _g224946224950_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g224945224948_ _g224946224950_)))))
                        (declare (not safe))
                        (foldr1 __tmp233205 '() _L224862_))))
                 (declare (not safe))
                 (andmap1 __tmp233206 __tmp233204))
               (let ((__tmp233203
                      (lambda (_g224952224954_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g224952224954_ _L224870_))))
                     (__tmp233201
                      (let ((__tmp233202
                             (lambda (_g224956224959_ _g224957224961_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g224956224959_ _g224957224961_)))))
                        (declare (not safe))
                        (foldr1 __tmp233202 '() _L224864_))))
                 (declare (not safe))
                 (andmap1 __tmp233203 __tmp233201)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont231482231483_
                                                   _L224861_
                                                   _L224862_
                                                   _L224863_
                                                   _L224864_
                                                   _L224865_
                                                   _L224866_
                                                   _L224867_
                                                   _L224868_
                                                   _L224869_
                                                   _L224870_)
                                                  (___match231795231796_
                                                   _e224420224585_
                                                   _hd224419224588_
                                                   _tl224418224590_)))
                                            (___match231795231796_
                                             _e224420224585_
                                             _hd224419224588_
                                             _tl224418224590_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop224463224726_
                           _target224460224697_
                           '()
                           '()
                           '()
                           '())))))
                   (___match231661231662_
                    (lambda (_e224420224585_
                             _hd224419224588_
                             _tl224418224590_
                             _e224423224593_
                             _hd224422224596_
                             _tl224421224598_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd224422224596_))
                          (let ((_e224426224601_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd224422224596_))))
                            (let ((_tl224424224606_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224426224601_)))
                                  (_hd224425224604_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224426224601_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl224421224598_))
                                  (let ((_e224429224609_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl224421224598_))))
                                    (let ((_tl224427224614_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224429224609_)))
                                          (_hd224428224612_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224429224609_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd224428224612_))
                                          (let ((_e224432224617_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd224428224612_))))
                                            (let ((_tl224430224622_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224432224617_)))
                                                  (_hd224431224620_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224432224617_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd224431224620_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd224431224620_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl224430224622_))
                                                          (let ((_e224435224625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl224430224622_))))
                    (let ((_tl224433224630_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224435224625_)))
                          (_hd224434224628_
                           (let ()
                             (declare (not safe))
                             (##car _e224435224625_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd224434224628_))
                          (let ((_e224438224633_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd224434224628_))))
                            (let ((_tl224436224638_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224438224633_)))
                                  (_hd224437224636_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224438224633_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd224437224636_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd224437224636_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl224436224638_))
                                          (let ((_e224441224641_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl224436224638_))))
                                            (let ((_tl224439224646_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224441224641_)))
                                                  (_hd224440224644_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224441224641_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl224439224646_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl224433224630_))
                                                      (let ((_e224444224649_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl224433224630_))))
                (let ((_tl224442224654_
                       (let () (declare (not safe)) (##cdr _e224444224649_)))
                      (_hd224443224652_
                       (let () (declare (not safe)) (##car _e224444224649_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd224443224652_))
                      (let ((_e224447224657_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd224443224652_))))
                        (let ((_tl224445224662_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224447224657_)))
                              (_hd224446224660_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224447224657_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd224446224660_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd224446224660_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224445224662_))
                                      (let ((_e224450224665_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224445224662_))))
                                        (let ((_tl224448224670_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224450224665_)))
                                              (_hd224449224668_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224450224665_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224448224670_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl224442224654_))
                                                  (let ((_e224453224673_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl224442224654_))))
                                                    (let ((_tl224451224678_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e224453224673_)))
                                                          (_hd224452224676_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e224453224673_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd224452224676_))
                                                          (let ((_e224456224681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd224452224676_))))
                    (let ((_tl224454224686_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224456224681_)))
                          (_hd224455224684_
                           (let ()
                             (declare (not safe))
                             (##car _e224456224681_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd224455224684_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd224455224684_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl224454224686_))
                                  (let ((_e224459224689_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl224454224686_))))
                                    (let ((_tl224457224694_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224459224689_)))
                                          (_hd224458224692_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224459224689_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl224457224694_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl224451224678_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl224451224678_))
                                                        '1)
                                                  (let ((___splice231484231485_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl224451224678_
                                                            '1))))
                                                    (let ((_tl224462224699_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231484231485_
                                                              '1)))
                                                          (_target224460224697_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231484231485_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl224462224699_))
                                                          (let ((_e224477224702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl224462224699_))))
                    (let ((_tl224475224707_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224477224702_)))
                          (_hd224476224705_
                           (let ()
                             (declare (not safe))
                             (##car _e224477224702_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd224476224705_))
                          (let ((_e224480224710_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd224476224705_))))
                            (let ((_tl224478224715_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224480224710_)))
                                  (_hd224479224713_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224480224710_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd224479224713_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd224479224713_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl224478224715_))
                                          (let ((_e224483224718_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl224478224715_))))
                                            (let ((_tl224481224723_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224483224718_)))
                                                  (_hd224482224721_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224483224718_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl224481224723_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl224475224707_))
                                                      (___match231789231790_
                                                       _e224420224585_
                                                       _hd224419224588_
                                                       _tl224418224590_
                                                       _e224423224593_
                                                       _hd224422224596_
                                                       _tl224421224598_
                                                       _e224426224601_
                                                       _hd224425224604_
                                                       _tl224424224606_
                                                       _e224429224609_
                                                       _hd224428224612_
                                                       _tl224427224614_
                                                       _e224432224617_
                                                       _hd224431224620_
                                                       _tl224430224622_
                                                       _e224435224625_
                                                       _hd224434224628_
                                                       _tl224433224630_
                                                       _e224438224633_
                                                       _hd224437224636_
                                                       _tl224436224638_
                                                       _e224441224641_
                                                       _hd224440224644_
                                                       _tl224439224646_
                                                       _e224444224649_
                                                       _hd224443224652_
                                                       _tl224442224654_
                                                       _e224447224657_
                                                       _hd224446224660_
                                                       _tl224445224662_
                                                       _e224450224665_
                                                       _hd224449224668_
                                                       _tl224448224670_
                                                       _e224453224673_
                                                       _hd224452224676_
                                                       _tl224451224678_
                                                       _e224456224681_
                                                       _hd224455224684_
                                                       _tl224454224686_
                                                       _e224459224689_
                                                       _hd224458224692_
                                                       _tl224457224694_
                                                       ___splice231484231485_
                                                       _target224460224697_
                                                       _tl224462224699_
                                                       _e224477224702_
                                                       _hd224476224705_
                                                       _tl224475224707_
                                                       _e224480224710_
                                                       _hd224479224713_
                                                       _tl224478224715_
                                                       _e224483224718_
                                                       _hd224482224721_
                                                       _tl224481224723_)
                                                      (___match231795231796_
                                                       _e224420224585_
                                                       _hd224419224588_
                                                       _tl224418224590_))
                                                  (___match231795231796_
                                                   _e224420224585_
                                                   _hd224419224588_
                                                   _tl224418224590_))))
                                          (___match231795231796_
                                           _e224420224585_
                                           _hd224419224588_
                                           _tl224418224590_))
                                      (___match231795231796_
                                       _e224420224585_
                                       _hd224419224588_
                                       _tl224418224590_))
                                  (___match231795231796_
                                   _e224420224585_
                                   _hd224419224588_
                                   _tl224418224590_))))
                          (___match231795231796_
                           _e224420224585_
                           _hd224419224588_
                           _tl224418224590_))))
                  (___match231795231796_
                   _e224420224585_
                   _hd224419224588_
                   _tl224418224590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231795231796_
                                                   _e224420224585_
                                                   _hd224419224588_
                                                   _tl224418224590_))
                                              (___match231795231796_
                                               _e224420224585_
                                               _hd224419224588_
                                               _tl224418224590_))
                                          (___match231795231796_
                                           _e224420224585_
                                           _hd224419224588_
                                           _tl224418224590_))))
                                  (___match231795231796_
                                   _e224420224585_
                                   _hd224419224588_
                                   _tl224418224590_))
                              (___match231795231796_
                               _e224420224585_
                               _hd224419224588_
                               _tl224418224590_))
                          (___match231795231796_
                           _e224420224585_
                           _hd224419224588_
                           _tl224418224590_))))
                  (___match231795231796_
                   _e224420224585_
                   _hd224419224588_
                   _tl224418224590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231795231796_
                                                   _e224420224585_
                                                   _hd224419224588_
                                                   _tl224418224590_))
                                              (___match231795231796_
                                               _e224420224585_
                                               _hd224419224588_
                                               _tl224418224590_))))
                                      (___match231795231796_
                                       _e224420224585_
                                       _hd224419224588_
                                       _tl224418224590_))
                                  (___match231795231796_
                                   _e224420224585_
                                   _hd224419224588_
                                   _tl224418224590_))
                              (___match231795231796_
                               _e224420224585_
                               _hd224419224588_
                               _tl224418224590_))))
                      (___match231795231796_
                       _e224420224585_
                       _hd224419224588_
                       _tl224418224590_))))
              (___match231795231796_
               _e224420224585_
               _hd224419224588_
               _tl224418224590_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231795231796_
                                                   _e224420224585_
                                                   _hd224419224588_
                                                   _tl224418224590_))))
                                          (___match231795231796_
                                           _e224420224585_
                                           _hd224419224588_
                                           _tl224418224590_))
                                      (___match231795231796_
                                       _e224420224585_
                                       _hd224419224588_
                                       _tl224418224590_))
                                  (___match231795231796_
                                   _e224420224585_
                                   _hd224419224588_
                                   _tl224418224590_))))
                          (___match231795231796_
                           _e224420224585_
                           _hd224419224588_
                           _tl224418224590_))))
                  (___match231795231796_
                   _e224420224585_
                   _hd224419224588_
                   _tl224418224590_))
              (___match231795231796_
               _e224420224585_
               _hd224419224588_
               _tl224418224590_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231795231796_
                                                   _e224420224585_
                                                   _hd224419224588_
                                                   _tl224418224590_))))
                                          (___match231795231796_
                                           _e224420224585_
                                           _hd224419224588_
                                           _tl224418224590_))))
                                  (___match231795231796_
                                   _e224420224585_
                                   _hd224419224588_
                                   _tl224418224590_))))
                          (___match231795231796_
                           _e224420224585_
                           _hd224419224588_
                           _tl224418224590_))))
                   (___match231649231650_
                    (lambda (_e224353224976_
                             _hd224352224979_
                             _tl224351224981_
                             _e224356224984_
                             _hd224355224987_
                             _tl224354224989_
                             _e224359224992_
                             _hd224358224995_
                             _tl224357224997_
                             _e224362225000_
                             _hd224361225003_
                             _tl224360225005_
                             _e224365225008_
                             _hd224364225011_
                             _tl224363225013_
                             _e224368225016_
                             _hd224367225019_
                             _tl224366225021_
                             _e224371225024_
                             _hd224370225027_
                             _tl224369225029_
                             _e224374225032_
                             _hd224373225035_
                             _tl224372225037_
                             _e224377225040_
                             _hd224376225043_
                             _tl224375225045_
                             _e224380225048_
                             _hd224379225051_
                             _tl224378225053_
                             _e224383225056_
                             _hd224382225059_
                             _tl224381225061_
                             _e224386225064_
                             _hd224385225067_
                             _tl224384225069_
                             _e224389225072_
                             _hd224388225075_
                             _tl224387225077_
                             _e224392225080_
                             _hd224391225083_
                             _tl224390225085_
                             _e224395225088_
                             _hd224394225091_
                             _tl224393225093_
                             _e224398225096_
                             _hd224397225099_
                             _tl224396225101_
                             _e224401225104_
                             _hd224400225107_
                             _tl224399225109_
                             _e224404225112_
                             _hd224403225115_
                             _tl224402225117_
                             _e224407225120_
                             _hd224406225123_
                             _tl224405225125_)
                      (let ((_L225128_ _hd224406225123_)
                            (_L225129_ _hd224397225099_)
                            (_L225130_ _hd224388225075_)
                            (_L225131_ _hd224379225051_)
                            (_L225132_ _hd224370225027_)
                            (_L225133_ _hd224355224987_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L225133_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L225132_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L225131_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L225133_ _L225128_)))
                            (___kont231480231481_
                             _L225128_
                             _L225129_
                             _L225130_
                             _L225131_
                             _L225132_
                             _L225133_)
                            (___match231661231662_
                             _e224353224976_
                             _hd224352224979_
                             _tl224351224981_
                             _e224356224984_
                             _hd224355224987_
                             _tl224354224989_)))))
                   (___match231503231504_
                    (lambda (_e224353224976_ _hd224352224979_ _tl224351224981_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl224351224981_))
                          (let ((_e224356224984_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl224351224981_))))
                            (let ((_tl224354224989_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224356224984_)))
                                  (_hd224355224987_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224356224984_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl224354224989_))
                                  (let ((_e224359224992_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl224354224989_))))
                                    (let ((_tl224357224997_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224359224992_)))
                                          (_hd224358224995_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224359224992_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd224358224995_))
                                          (let ((_e224362225000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd224358224995_))))
                                            (let ((_tl224360225005_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224362225000_)))
                                                  (_hd224361225003_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224362225000_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd224361225003_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd224361225003_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl224360225005_))
                                                          (let ((_e224365225008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl224360225005_))))
                    (let ((_tl224363225013_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224365225008_)))
                          (_hd224364225011_
                           (let ()
                             (declare (not safe))
                             (##car _e224365225008_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd224364225011_))
                          (let ((_e224368225016_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd224364225011_))))
                            (let ((_tl224366225021_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224368225016_)))
                                  (_hd224367225019_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224368225016_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd224367225019_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd224367225019_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl224366225021_))
                                          (let ((_e224371225024_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl224366225021_))))
                                            (let ((_tl224369225029_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224371225024_)))
                                                  (_hd224370225027_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224371225024_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl224369225029_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl224363225013_))
                                                      (let ((_e224374225032_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl224363225013_))))
                (let ((_tl224372225037_
                       (let () (declare (not safe)) (##cdr _e224374225032_)))
                      (_hd224373225035_
                       (let () (declare (not safe)) (##car _e224374225032_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd224373225035_))
                      (let ((_e224377225040_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd224373225035_))))
                        (let ((_tl224375225045_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224377225040_)))
                              (_hd224376225043_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224377225040_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd224376225043_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd224376225043_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224375225045_))
                                      (let ((_e224380225048_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224375225045_))))
                                        (let ((_tl224378225053_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224380225048_)))
                                              (_hd224379225051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224380225048_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224378225053_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl224372225037_))
                                                  (let ((_e224383225056_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl224372225037_))))
                                                    (let ((_tl224381225061_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e224383225056_)))
                                                          (_hd224382225059_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e224383225056_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd224382225059_))
                                                          (let ((_e224386225064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd224382225059_))))
                    (let ((_tl224384225069_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224386225064_)))
                          (_hd224385225067_
                           (let ()
                             (declare (not safe))
                             (##car _e224386225064_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd224385225067_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd224385225067_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl224384225069_))
                                  (let ((_e224389225072_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl224384225069_))))
                                    (let ((_tl224387225077_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224389225072_)))
                                          (_hd224388225075_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224389225072_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl224387225077_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl224381225061_))
                                              (let ((_e224392225080_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl224381225061_))))
                                                (let ((_tl224390225085_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e224392225080_)))
                                                      (_hd224391225083_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e224392225080_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd224391225083_))
                                                      (let ((_e224395225088_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd224391225083_))))
                (let ((_tl224393225093_
                       (let () (declare (not safe)) (##cdr _e224395225088_)))
                      (_hd224394225091_
                       (let () (declare (not safe)) (##car _e224395225088_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd224394225091_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd224394225091_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224393225093_))
                              (let ((_e224398225096_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224393225093_))))
                                (let ((_tl224396225101_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224398225096_)))
                                      (_hd224397225099_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224398225096_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl224396225101_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl224390225085_))
                                          (let ((_e224401225104_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl224390225085_))))
                                            (let ((_tl224399225109_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224401225104_)))
                                                  (_hd224400225107_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224401225104_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd224400225107_))
                                                  (let ((_e224404225112_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd224400225107_))))
                                                    (let ((_tl224402225117_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e224404225112_)))
                                                          (_hd224403225115_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e224404225112_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd224403225115_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd224403225115_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl224402225117_))
                          (let ((_e224407225120_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl224402225117_))))
                            (let ((_tl224405225125_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224407225120_)))
                                  (_hd224406225123_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224407225120_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl224405225125_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl224399225109_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl224357224997_))
                                          (___match231649231650_
                                           _e224353224976_
                                           _hd224352224979_
                                           _tl224351224981_
                                           _e224356224984_
                                           _hd224355224987_
                                           _tl224354224989_
                                           _e224359224992_
                                           _hd224358224995_
                                           _tl224357224997_
                                           _e224362225000_
                                           _hd224361225003_
                                           _tl224360225005_
                                           _e224365225008_
                                           _hd224364225011_
                                           _tl224363225013_
                                           _e224368225016_
                                           _hd224367225019_
                                           _tl224366225021_
                                           _e224371225024_
                                           _hd224370225027_
                                           _tl224369225029_
                                           _e224374225032_
                                           _hd224373225035_
                                           _tl224372225037_
                                           _e224377225040_
                                           _hd224376225043_
                                           _tl224375225045_
                                           _e224380225048_
                                           _hd224379225051_
                                           _tl224378225053_
                                           _e224383225056_
                                           _hd224382225059_
                                           _tl224381225061_
                                           _e224386225064_
                                           _hd224385225067_
                                           _tl224384225069_
                                           _e224389225072_
                                           _hd224388225075_
                                           _tl224387225077_
                                           _e224392225080_
                                           _hd224391225083_
                                           _tl224390225085_
                                           _e224395225088_
                                           _hd224394225091_
                                           _tl224393225093_
                                           _e224398225096_
                                           _hd224397225099_
                                           _tl224396225101_
                                           _e224401225104_
                                           _hd224400225107_
                                           _tl224399225109_
                                           _e224404225112_
                                           _hd224403225115_
                                           _tl224402225117_
                                           _e224407225120_
                                           _hd224406225123_
                                           _tl224405225125_)
                                          (___match231661231662_
                                           _e224353224976_
                                           _hd224352224979_
                                           _tl224351224981_
                                           _e224356224984_
                                           _hd224355224987_
                                           _tl224354224989_))
                                      (___match231661231662_
                                       _e224353224976_
                                       _hd224352224979_
                                       _tl224351224981_
                                       _e224356224984_
                                       _hd224355224987_
                                       _tl224354224989_))
                                  (___match231661231662_
                                   _e224353224976_
                                   _hd224352224979_
                                   _tl224351224981_
                                   _e224356224984_
                                   _hd224355224987_
                                   _tl224354224989_))))
                          (___match231661231662_
                           _e224353224976_
                           _hd224352224979_
                           _tl224351224981_
                           _e224356224984_
                           _hd224355224987_
                           _tl224354224989_))
                      (___match231661231662_
                       _e224353224976_
                       _hd224352224979_
                       _tl224351224981_
                       _e224356224984_
                       _hd224355224987_
                       _tl224354224989_))
                  (___match231661231662_
                   _e224353224976_
                   _hd224352224979_
                   _tl224351224981_
                   _e224356224984_
                   _hd224355224987_
                   _tl224354224989_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231661231662_
                                                   _e224353224976_
                                                   _hd224352224979_
                                                   _tl224351224981_
                                                   _e224356224984_
                                                   _hd224355224987_
                                                   _tl224354224989_))))
                                          (___match231661231662_
                                           _e224353224976_
                                           _hd224352224979_
                                           _tl224351224981_
                                           _e224356224984_
                                           _hd224355224987_
                                           _tl224354224989_))
                                      (___match231661231662_
                                       _e224353224976_
                                       _hd224352224979_
                                       _tl224351224981_
                                       _e224356224984_
                                       _hd224355224987_
                                       _tl224354224989_))))
                              (___match231661231662_
                               _e224353224976_
                               _hd224352224979_
                               _tl224351224981_
                               _e224356224984_
                               _hd224355224987_
                               _tl224354224989_))
                          (___match231661231662_
                           _e224353224976_
                           _hd224352224979_
                           _tl224351224981_
                           _e224356224984_
                           _hd224355224987_
                           _tl224354224989_))
                      (___match231661231662_
                       _e224353224976_
                       _hd224352224979_
                       _tl224351224981_
                       _e224356224984_
                       _hd224355224987_
                       _tl224354224989_))))
              (___match231661231662_
               _e224353224976_
               _hd224352224979_
               _tl224351224981_
               _e224356224984_
               _hd224355224987_
               _tl224354224989_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match231661231662_
                                               _e224353224976_
                                               _hd224352224979_
                                               _tl224351224981_
                                               _e224356224984_
                                               _hd224355224987_
                                               _tl224354224989_))
                                          (___match231661231662_
                                           _e224353224976_
                                           _hd224352224979_
                                           _tl224351224981_
                                           _e224356224984_
                                           _hd224355224987_
                                           _tl224354224989_))))
                                  (___match231661231662_
                                   _e224353224976_
                                   _hd224352224979_
                                   _tl224351224981_
                                   _e224356224984_
                                   _hd224355224987_
                                   _tl224354224989_))
                              (___match231661231662_
                               _e224353224976_
                               _hd224352224979_
                               _tl224351224981_
                               _e224356224984_
                               _hd224355224987_
                               _tl224354224989_))
                          (___match231661231662_
                           _e224353224976_
                           _hd224352224979_
                           _tl224351224981_
                           _e224356224984_
                           _hd224355224987_
                           _tl224354224989_))))
                  (___match231661231662_
                   _e224353224976_
                   _hd224352224979_
                   _tl224351224981_
                   _e224356224984_
                   _hd224355224987_
                   _tl224354224989_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231661231662_
                                                   _e224353224976_
                                                   _hd224352224979_
                                                   _tl224351224981_
                                                   _e224356224984_
                                                   _hd224355224987_
                                                   _tl224354224989_))
                                              (___match231661231662_
                                               _e224353224976_
                                               _hd224352224979_
                                               _tl224351224981_
                                               _e224356224984_
                                               _hd224355224987_
                                               _tl224354224989_))))
                                      (___match231661231662_
                                       _e224353224976_
                                       _hd224352224979_
                                       _tl224351224981_
                                       _e224356224984_
                                       _hd224355224987_
                                       _tl224354224989_))
                                  (___match231661231662_
                                   _e224353224976_
                                   _hd224352224979_
                                   _tl224351224981_
                                   _e224356224984_
                                   _hd224355224987_
                                   _tl224354224989_))
                              (___match231661231662_
                               _e224353224976_
                               _hd224352224979_
                               _tl224351224981_
                               _e224356224984_
                               _hd224355224987_
                               _tl224354224989_))))
                      (___match231661231662_
                       _e224353224976_
                       _hd224352224979_
                       _tl224351224981_
                       _e224356224984_
                       _hd224355224987_
                       _tl224354224989_))))
              (___match231661231662_
               _e224353224976_
               _hd224352224979_
               _tl224351224981_
               _e224356224984_
               _hd224355224987_
               _tl224354224989_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231661231662_
                                                   _e224353224976_
                                                   _hd224352224979_
                                                   _tl224351224981_
                                                   _e224356224984_
                                                   _hd224355224987_
                                                   _tl224354224989_))))
                                          (___match231661231662_
                                           _e224353224976_
                                           _hd224352224979_
                                           _tl224351224981_
                                           _e224356224984_
                                           _hd224355224987_
                                           _tl224354224989_))
                                      (___match231661231662_
                                       _e224353224976_
                                       _hd224352224979_
                                       _tl224351224981_
                                       _e224356224984_
                                       _hd224355224987_
                                       _tl224354224989_))
                                  (___match231661231662_
                                   _e224353224976_
                                   _hd224352224979_
                                   _tl224351224981_
                                   _e224356224984_
                                   _hd224355224987_
                                   _tl224354224989_))))
                          (___match231661231662_
                           _e224353224976_
                           _hd224352224979_
                           _tl224351224981_
                           _e224356224984_
                           _hd224355224987_
                           _tl224354224989_))))
                  (___match231661231662_
                   _e224353224976_
                   _hd224352224979_
                   _tl224351224981_
                   _e224356224984_
                   _hd224355224987_
                   _tl224354224989_))
              (___match231661231662_
               _e224353224976_
               _hd224352224979_
               _tl224351224981_
               _e224356224984_
               _hd224355224987_
               _tl224354224989_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231661231662_
                                                   _e224353224976_
                                                   _hd224352224979_
                                                   _tl224351224981_
                                                   _e224356224984_
                                                   _hd224355224987_
                                                   _tl224354224989_))))
                                          (___match231661231662_
                                           _e224353224976_
                                           _hd224352224979_
                                           _tl224351224981_
                                           _e224356224984_
                                           _hd224355224987_
                                           _tl224354224989_))))
                                  (___match231661231662_
                                   _e224353224976_
                                   _hd224352224979_
                                   _tl224351224981_
                                   _e224356224984_
                                   _hd224355224987_
                                   _tl224354224989_))))
                          (___match231795231796_
                           _e224353224976_
                           _hd224352224979_
                           _tl224351224981_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx231476231477_))
                  (let ((_e224344225193_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx231476231477_))))
                    (let ((_tl224342225198_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224344225193_)))
                          (_hd224343225196_
                           (let ()
                             (declare (not safe))
                             (##car _e224344225193_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L225201_ _tl224342225198_))
                            (___kont231478231479_ _L225201_))
                          (___match231503231504_
                           _e224344225193_
                           _hd224343225196_
                           _tl224342225198_))))
                  (let () (declare (not safe)) (_g224339224535_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx224288_)
        (letrec ((_clause-e224290_
                  (lambda (_form224331_)
                    (let ((__obj233149 (make-object* gxc#!lambda::t '6)))
                      (gxc#!lambda:::init!
                       __obj233149
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form224331_))
                       (if (let ((__tmp233216
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp233216))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form224331_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form224331_))
                               '#f)
                           '#f))
                      __obj233149))))
          (let* ((_g224292224302_
                  (lambda (_g224293224299_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g224293224299_))))
                 (_g224291224328_
                  (lambda (_g224293224305_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g224293224305_))
                        (let ((_e224297224307_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g224293224305_))))
                          (let ((_hd224296224310_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e224297224307_)))
                                (_tl224295224312_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e224297224307_))))
                            ((lambda (_L224315_)
                               (let ((_clauses224326_
                                      (map _clause-e224290_ _L224315_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses224326_)))
                             _tl224295224312_)))
                        (let ()
                          (declare (not safe))
                          (_g224292224302_ _g224293224305_))))))
            (declare (not safe))
            (_g224291224328_ _stx224288_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx224220_)
        (let* ((_g224222224239_
                (lambda (_g224223224236_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224223224236_))))
               (_g224221224285_
                (lambda (_g224223224242_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224223224242_))
                      (let ((_e224228224244_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224223224242_))))
                        (let ((_hd224227224247_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224228224244_)))
                              (_tl224226224249_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224228224244_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224226224249_))
                              (let ((_e224231224252_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224226224249_))))
                                (let ((_hd224230224255_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224231224252_)))
                                      (_tl224229224257_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224231224252_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224229224257_))
                                      (let ((_e224234224260_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224229224257_))))
                                        (let ((_hd224233224263_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224234224260_)))
                                              (_tl224232224265_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224234224260_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224232224265_))
                                              ((lambda (_L224268_ _L224269_)
                                                 (let ((__tmp233217
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L224268_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp233217
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd224233224263_
                                               _hd224230224255_)
                                              (let ()
                                                (declare (not safe))
                                                (_g224222224239_
                                                 _g224223224242_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224222224239_ _g224223224242_)))))
                              (let ()
                                (declare (not safe))
                                (_g224222224239_ _g224223224242_)))))
                      (let ()
                        (declare (not safe))
                        (_g224222224239_ _g224223224242_))))))
          (declare (not safe))
          (_g224221224285_ _stx224220_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx224125_)
        (let* ((___stx231804231805_ _stx224125_)
               (_g224128224148_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231804231805_)))))
          (let ((___kont231806231807_
                 (lambda (_L224192_ _L224193_)
                   (let ((_type-e224210224212_
                          (let ((__tmp233218
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L224193_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp233218
                             '#f))))
                     (if _type-e224210224212_
                         (let ((_type-e224215_ _type-e224210224212_))
                           (_type-e224215_ _stx224125_ _L224192_))
                         '#f))))
                (___kont231808231809_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx231804231805_))
                (let ((_e224134224160_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx231804231805_))))
                  (let ((_tl224132224165_
                         (let () (declare (not safe)) (##cdr _e224134224160_)))
                        (_hd224133224163_
                         (let ()
                           (declare (not safe))
                           (##car _e224134224160_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl224132224165_))
                        (let ((_e224137224168_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl224132224165_))))
                          (let ((_tl224135224173_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e224137224168_)))
                                (_hd224136224171_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e224137224168_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd224136224171_))
                                (let ((_e224140224176_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd224136224171_))))
                                  (let ((_tl224138224181_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e224140224176_)))
                                        (_hd224139224179_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e224140224176_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd224139224179_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd224139224179_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl224138224181_))
                                                (let ((_e224143224184_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl224138224181_))))
                                                  (let ((_tl224141224189_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e224143224184_)))
                                                        (_hd224142224187_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e224143224184_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl224141224189_))
                                                        (___kont231806231807_
                                                         _tl224135224173_
                                                         _hd224142224187_)
                                                        (___kont231808231809_))))
                                                (___kont231808231809_))
                                            (___kont231808231809_))
                                        (___kont231808231809_))))
                                (___kont231808231809_))))
                        (___kont231808231809_))))
                (___kont231808231809_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx224074_)
        (let* ((_g224076224089_
                (lambda (_g224077224086_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224077224086_))))
               (_g224075224122_
                (lambda (_g224077224092_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224077224092_))
                      (let ((_e224081224094_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224077224092_))))
                        (let ((_hd224080224097_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224081224094_)))
                              (_tl224079224099_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224081224094_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224079224099_))
                              (let ((_e224084224102_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224079224099_))))
                                (let ((_hd224083224105_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224084224102_)))
                                      (_tl224082224107_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224084224102_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl224082224107_))
                                      ((lambda (_L224110_)
                                         (let ((__tmp233219
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L224110_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp233219)))
                                       _hd224083224105_)
                                      (let ()
                                        (declare (not safe))
                                        (_g224076224089_ _g224077224092_)))))
                              (let ()
                                (declare (not safe))
                                (_g224076224089_ _g224077224092_)))))
                      (let ()
                        (declare (not safe))
                        (_g224076224089_ _g224077224092_))))))
          (declare (not safe))
          (_g224075224122_ _stx224074_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form223308_)
        (let* ((___stx231842231843_ _form223308_)
               (_g223313223470_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231842231843_)))))
          (let ((___kont231844231845_
                 (lambda (_L223994_ _L223995_ _L223996_) '#t))
                (___kont231850231851_
                 (lambda (_L223782_
                          _L223783_
                          _L223784_
                          _L223785_
                          _L223786_
                          _L223787_)
                   '#t))
                (___kont231856231857_
                 (lambda (_L223578_ _L223579_ _L223580_ _L223581_) '#t))
                (___kont231858231859_ (lambda () '#f)))
            (let* ((___match231983231984_
                    (lambda (_e223432223482_
                             _hd223431223485_
                             _tl223430223487_
                             _e223435223490_
                             _hd223434223493_
                             _tl223433223495_
                             _e223438223498_
                             _hd223437223501_
                             _tl223436223503_
                             _e223441223506_
                             _hd223440223509_
                             _tl223439223511_
                             _e223444223514_
                             _hd223443223517_
                             _tl223442223519_
                             _e223447223522_
                             _hd223446223525_
                             _tl223445223527_
                             _e223450223530_
                             _hd223449223533_
                             _tl223448223535_
                             _e223453223538_
                             _hd223452223541_
                             _tl223451223543_
                             _e223456223546_
                             _hd223455223549_
                             _tl223454223551_
                             _e223459223554_
                             _hd223458223557_
                             _tl223457223559_
                             _e223462223562_
                             _hd223461223565_
                             _tl223460223567_
                             _e223465223570_
                             _hd223464223573_
                             _tl223463223575_)
                      (let ((_L223578_ _hd223464223573_)
                            (_L223579_ _hd223455223549_)
                            (_L223580_ _hd223446223525_)
                            (_L223581_ _hd223431223485_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L223581_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L223580_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L223581_ _L223578_))
                                 (let ((__tmp233220
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L223579_
                                           _L223581_))))
                                   (declare (not safe))
                                   (not __tmp233220)))
                            (___kont231856231857_
                             _L223578_
                             _L223579_
                             _L223580_
                             _L223581_)
                            (___kont231858231859_)))))
                   (___match231955231956_
                    (lambda (_e223432223482_
                             _hd223431223485_
                             _tl223430223487_
                             _e223435223490_
                             _hd223434223493_
                             _tl223433223495_
                             _e223438223498_
                             _hd223437223501_
                             _tl223436223503_
                             _e223441223506_
                             _hd223440223509_
                             _tl223439223511_
                             _e223444223514_
                             _hd223443223517_
                             _tl223442223519_
                             _e223447223522_
                             _hd223446223525_
                             _tl223445223527_
                             _e223450223530_
                             _hd223449223533_
                             _tl223448223535_
                             _e223453223538_
                             _hd223452223541_
                             _tl223451223543_
                             _e223456223546_
                             _hd223455223549_
                             _tl223454223551_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl223448223535_))
                          (let ((_e223459223554_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl223448223535_))))
                            (let ((_tl223457223559_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e223459223554_)))
                                  (_hd223458223557_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e223459223554_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd223458223557_))
                                  (let ((_e223462223562_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd223458223557_))))
                                    (let ((_tl223460223567_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223462223562_)))
                                          (_hd223461223565_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223462223562_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd223461223565_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd223461223565_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl223460223567_))
                                                  (let ((_e223465223570_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl223460223567_))))
                                                    (let ((_tl223463223575_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223465223570_)))
                                                          (_hd223464223573_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223465223570_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl223463223575_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl223457223559_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl223433223495_))
                          (___match231983231984_
                           _e223432223482_
                           _hd223431223485_
                           _tl223430223487_
                           _e223435223490_
                           _hd223434223493_
                           _tl223433223495_
                           _e223438223498_
                           _hd223437223501_
                           _tl223436223503_
                           _e223441223506_
                           _hd223440223509_
                           _tl223439223511_
                           _e223444223514_
                           _hd223443223517_
                           _tl223442223519_
                           _e223447223522_
                           _hd223446223525_
                           _tl223445223527_
                           _e223450223530_
                           _hd223449223533_
                           _tl223448223535_
                           _e223453223538_
                           _hd223452223541_
                           _tl223451223543_
                           _e223456223546_
                           _hd223455223549_
                           _tl223454223551_
                           _e223459223554_
                           _hd223458223557_
                           _tl223457223559_
                           _e223462223562_
                           _hd223461223565_
                           _tl223460223567_
                           _e223465223570_
                           _hd223464223573_
                           _tl223463223575_)
                          (___kont231858231859_))
                      (___kont231858231859_))
                  (___kont231858231859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont231858231859_))
                                              (___kont231858231859_))
                                          (___kont231858231859_))))
                                  (___kont231858231859_))))
                          (___kont231858231859_))))
                   (___match231885231886_
                    (lambda (_e223368223622_
                             _hd223367223625_
                             _tl223366223627_
                             ___splice231852231853_
                             _target223369223630_
                             _tl223371223632_)
                      (letrec ((_loop223372223635_
                                (lambda (_hd223370223638_ _arg223376223640_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd223370223638_))
                                      (let ((_e223373223643_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd223370223638_))))
                                        (let ((_lp-tl223375223648_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223373223643_)))
                                              (_lp-hd223374223646_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223373223643_))))
                                          (let ((__tmp233235
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd223374223646_
                                                         _arg223376223640_))))
                                            (declare (not safe))
                                            (_loop223372223635_
                                             _lp-tl223375223648_
                                             __tmp233235))))
                                      (let ((_arg223377223651_
                                             (reverse _arg223376223640_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl223366223627_))
                                            (let ((_e223380223654_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl223366223627_))))
                                              (let ((_tl223378223659_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e223380223654_)))
                                                    (_hd223379223657_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e223380223654_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd223379223657_))
                                                    (let ((_e223383223662_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd223379223657_))))
                                                      (let ((_tl223381223667_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e223383223662_)))
                    (_hd223382223665_
                     (let () (declare (not safe)) (##car _e223383223662_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd223382223665_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd223382223665_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl223381223667_))
                            (let ((_e223386223670_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl223381223667_))))
                              (let ((_tl223384223675_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e223386223670_)))
                                    (_hd223385223673_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e223386223670_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd223385223673_))
                                    (let ((_e223389223678_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd223385223673_))))
                                      (let ((_tl223387223683_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e223389223678_)))
                                            (_hd223388223681_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e223389223678_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd223388223681_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd223388223681_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl223387223683_))
                                                    (let ((_e223392223686_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl223387223683_))))
                                                      (let ((_tl223390223691_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e223392223686_)))
                    (_hd223391223689_
                     (let () (declare (not safe)) (##car _e223392223686_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl223390223691_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl223384223675_))
                        (let ((_e223395223694_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl223384223675_))))
                          (let ((_tl223393223699_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e223395223694_)))
                                (_hd223394223697_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e223395223694_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd223394223697_))
                                (let ((_e223398223702_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd223394223697_))))
                                  (let ((_tl223396223707_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e223398223702_)))
                                        (_hd223397223705_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e223398223702_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd223397223705_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd223397223705_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl223396223707_))
                                                (let ((_e223401223710_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl223396223707_))))
                                                  (let ((_tl223399223715_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e223401223710_)))
                                                        (_hd223400223713_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e223401223710_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl223399223715_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl223393223699_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl223393223699_))
                              '1)
                        (let ((___splice231854231855_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl223393223699_
                                  '1))))
                          (let ((_tl223404223720_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice231854231855_ '1)))
                                (_target223402223718_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice231854231855_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl223404223720_))
                                (let ((_e223413223723_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl223404223720_))))
                                  (let ((_tl223411223728_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e223413223723_)))
                                        (_hd223412223726_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e223413223723_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd223412223726_))
                                        (let ((_e223416223731_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd223412223726_))))
                                          (let ((_tl223414223736_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e223416223731_)))
                                                (_hd223415223734_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e223416223731_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd223415223734_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd223415223734_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl223414223736_))
                                                        (let ((_e223419223739_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl223414223736_))))
                  (let ((_tl223417223744_
                         (let () (declare (not safe)) (##cdr _e223419223739_)))
                        (_hd223418223742_
                         (let ()
                           (declare (not safe))
                           (##car _e223419223739_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl223417223744_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl223411223728_))
                            (letrec ((_loop223405223747_
                                      (lambda (_hd223403223750_
                                               _xarg223409223752_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd223403223750_))
                                            (let ((_e223406223755_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd223403223750_))))
                                              (let ((_lp-tl223408223760_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e223406223755_)))
                                                    (_lp-hd223407223758_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e223406223755_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd223407223758_))
                                                    (let ((_e223422223763_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd223407223758_))))
                                                      (let ((_tl223420223768_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e223422223763_)))
                    (_hd223421223766_
                     (let () (declare (not safe)) (##car _e223422223763_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd223421223766_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd223421223766_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl223420223768_))
                            (let ((_e223425223771_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl223420223768_))))
                              (let ((_tl223423223776_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e223425223771_)))
                                    (_hd223424223774_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e223425223771_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl223423223776_))
                                    (let ((__tmp233234
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd223424223774_
                                                   _xarg223409223752_))))
                                      (declare (not safe))
                                      (_loop223405223747_
                                       _lp-tl223408223760_
                                       __tmp233234))
                                    (___match231955231956_
                                     _e223368223622_
                                     _hd223367223625_
                                     _tl223366223627_
                                     _e223380223654_
                                     _hd223379223657_
                                     _tl223378223659_
                                     _e223383223662_
                                     _hd223382223665_
                                     _tl223381223667_
                                     _e223386223670_
                                     _hd223385223673_
                                     _tl223384223675_
                                     _e223389223678_
                                     _hd223388223681_
                                     _tl223387223683_
                                     _e223392223686_
                                     _hd223391223689_
                                     _tl223390223691_
                                     _e223395223694_
                                     _hd223394223697_
                                     _tl223393223699_
                                     _e223398223702_
                                     _hd223397223705_
                                     _tl223396223707_
                                     _e223401223710_
                                     _hd223400223713_
                                     _tl223399223715_))))
                            (___match231955231956_
                             _e223368223622_
                             _hd223367223625_
                             _tl223366223627_
                             _e223380223654_
                             _hd223379223657_
                             _tl223378223659_
                             _e223383223662_
                             _hd223382223665_
                             _tl223381223667_
                             _e223386223670_
                             _hd223385223673_
                             _tl223384223675_
                             _e223389223678_
                             _hd223388223681_
                             _tl223387223683_
                             _e223392223686_
                             _hd223391223689_
                             _tl223390223691_
                             _e223395223694_
                             _hd223394223697_
                             _tl223393223699_
                             _e223398223702_
                             _hd223397223705_
                             _tl223396223707_
                             _e223401223710_
                             _hd223400223713_
                             _tl223399223715_))
                        (___match231955231956_
                         _e223368223622_
                         _hd223367223625_
                         _tl223366223627_
                         _e223380223654_
                         _hd223379223657_
                         _tl223378223659_
                         _e223383223662_
                         _hd223382223665_
                         _tl223381223667_
                         _e223386223670_
                         _hd223385223673_
                         _tl223384223675_
                         _e223389223678_
                         _hd223388223681_
                         _tl223387223683_
                         _e223392223686_
                         _hd223391223689_
                         _tl223390223691_
                         _e223395223694_
                         _hd223394223697_
                         _tl223393223699_
                         _e223398223702_
                         _hd223397223705_
                         _tl223396223707_
                         _e223401223710_
                         _hd223400223713_
                         _tl223399223715_))
                    (___match231955231956_
                     _e223368223622_
                     _hd223367223625_
                     _tl223366223627_
                     _e223380223654_
                     _hd223379223657_
                     _tl223378223659_
                     _e223383223662_
                     _hd223382223665_
                     _tl223381223667_
                     _e223386223670_
                     _hd223385223673_
                     _tl223384223675_
                     _e223389223678_
                     _hd223388223681_
                     _tl223387223683_
                     _e223392223686_
                     _hd223391223689_
                     _tl223390223691_
                     _e223395223694_
                     _hd223394223697_
                     _tl223393223699_
                     _e223398223702_
                     _hd223397223705_
                     _tl223396223707_
                     _e223401223710_
                     _hd223400223713_
                     _tl223399223715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match231955231956_
                                                     _e223368223622_
                                                     _hd223367223625_
                                                     _tl223366223627_
                                                     _e223380223654_
                                                     _hd223379223657_
                                                     _tl223378223659_
                                                     _e223383223662_
                                                     _hd223382223665_
                                                     _tl223381223667_
                                                     _e223386223670_
                                                     _hd223385223673_
                                                     _tl223384223675_
                                                     _e223389223678_
                                                     _hd223388223681_
                                                     _tl223387223683_
                                                     _e223392223686_
                                                     _hd223391223689_
                                                     _tl223390223691_
                                                     _e223395223694_
                                                     _hd223394223697_
                                                     _tl223393223699_
                                                     _e223398223702_
                                                     _hd223397223705_
                                                     _tl223396223707_
                                                     _e223401223710_
                                                     _hd223400223713_
                                                     _tl223399223715_))))
                                            (let ((_xarg223410223779_
                                                   (reverse _xarg223409223752_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl223378223659_))
                                                  (let ((_L223782_
                                                         _hd223418223742_)
                                                        (_L223783_
                                                         _xarg223410223779_)
                                                        (_L223784_
                                                         _hd223400223713_)
                                                        (_L223785_
                                                         _hd223391223689_)
                                                        (_L223786_
                                                         _tl223371223632_)
                                                        (_L223787_
                                                         _arg223377223651_))
                                                    (if (and (let ((__tmp233232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp233233
                                   (lambda (_g223830223833_ _g223831223835_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g223830223833_
                                             _g223831223835_)))))
                              (declare (not safe))
                              (foldr1 __tmp233233 '() _L223787_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp233232))
                     (let () (declare (not safe)) (gx#identifier? _L223786_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L223785_ 'apply))
                     (fx= (length (let ((__tmp233230
                                         (lambda (_g223837223840_
                                                  _g223838223842_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g223837223840_
                                                   _g223838223842_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp233230 '() _L223787_)))
                          (length (let ((__tmp233231
                                         (lambda (_g223844223847_
                                                  _g223845223849_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g223844223847_
                                                   _g223845223849_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp233231 '() _L223783_))))
                     (let ((__tmp233228
                            (let ((__tmp233229
                                   (lambda (_g223851223854_ _g223852223856_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g223851223854_
                                             _g223852223856_)))))
                              (declare (not safe))
                              (foldr1 __tmp233229 '() _L223787_)))
                           (__tmp233226
                            (let ((__tmp233227
                                   (lambda (_g223858223861_ _g223859223863_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g223858223861_
                                             _g223859223863_)))))
                              (declare (not safe))
                              (foldr1 __tmp233227 '() _L223783_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp233228 __tmp233226))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L223786_ _L223782_))
                     (let ((__tmp233221
                            (let ((__tmp233225
                                   (lambda (_g223865223867_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g223865223867_
                                        _L223784_))))
                                  (__tmp233222
                                   (let ((__tmp233224
                                          (lambda (_g223869223872_
                                                   _g223870223874_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g223869223872_
                                                    _g223870223874_))))
                                         (__tmp233223
                                          (let ()
                                            (declare (not safe))
                                            (cons _L223786_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp233224
                                             __tmp233223
                                             _L223787_))))
                              (declare (not safe))
                              (find __tmp233225 __tmp233222))))
                       (declare (not safe))
                       (not __tmp233221)))
                (___kont231850231851_
                 _L223782_
                 _L223783_
                 _L223784_
                 _L223785_
                 _L223786_
                 _L223787_)
                (___match231955231956_
                 _e223368223622_
                 _hd223367223625_
                 _tl223366223627_
                 _e223380223654_
                 _hd223379223657_
                 _tl223378223659_
                 _e223383223662_
                 _hd223382223665_
                 _tl223381223667_
                 _e223386223670_
                 _hd223385223673_
                 _tl223384223675_
                 _e223389223678_
                 _hd223388223681_
                 _tl223387223683_
                 _e223392223686_
                 _hd223391223689_
                 _tl223390223691_
                 _e223395223694_
                 _hd223394223697_
                 _tl223393223699_
                 _e223398223702_
                 _hd223397223705_
                 _tl223396223707_
                 _e223401223710_
                 _hd223400223713_
                 _tl223399223715_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231955231956_
                                                   _e223368223622_
                                                   _hd223367223625_
                                                   _tl223366223627_
                                                   _e223380223654_
                                                   _hd223379223657_
                                                   _tl223378223659_
                                                   _e223383223662_
                                                   _hd223382223665_
                                                   _tl223381223667_
                                                   _e223386223670_
                                                   _hd223385223673_
                                                   _tl223384223675_
                                                   _e223389223678_
                                                   _hd223388223681_
                                                   _tl223387223683_
                                                   _e223392223686_
                                                   _hd223391223689_
                                                   _tl223390223691_
                                                   _e223395223694_
                                                   _hd223394223697_
                                                   _tl223393223699_
                                                   _e223398223702_
                                                   _hd223397223705_
                                                   _tl223396223707_
                                                   _e223401223710_
                                                   _hd223400223713_
                                                   _tl223399223715_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop223405223747_ _target223402223718_ '())))
                            (___match231955231956_
                             _e223368223622_
                             _hd223367223625_
                             _tl223366223627_
                             _e223380223654_
                             _hd223379223657_
                             _tl223378223659_
                             _e223383223662_
                             _hd223382223665_
                             _tl223381223667_
                             _e223386223670_
                             _hd223385223673_
                             _tl223384223675_
                             _e223389223678_
                             _hd223388223681_
                             _tl223387223683_
                             _e223392223686_
                             _hd223391223689_
                             _tl223390223691_
                             _e223395223694_
                             _hd223394223697_
                             _tl223393223699_
                             _e223398223702_
                             _hd223397223705_
                             _tl223396223707_
                             _e223401223710_
                             _hd223400223713_
                             _tl223399223715_))
                        (___match231955231956_
                         _e223368223622_
                         _hd223367223625_
                         _tl223366223627_
                         _e223380223654_
                         _hd223379223657_
                         _tl223378223659_
                         _e223383223662_
                         _hd223382223665_
                         _tl223381223667_
                         _e223386223670_
                         _hd223385223673_
                         _tl223384223675_
                         _e223389223678_
                         _hd223388223681_
                         _tl223387223683_
                         _e223392223686_
                         _hd223391223689_
                         _tl223390223691_
                         _e223395223694_
                         _hd223394223697_
                         _tl223393223699_
                         _e223398223702_
                         _hd223397223705_
                         _tl223396223707_
                         _e223401223710_
                         _hd223400223713_
                         _tl223399223715_))))
                (___match231955231956_
                 _e223368223622_
                 _hd223367223625_
                 _tl223366223627_
                 _e223380223654_
                 _hd223379223657_
                 _tl223378223659_
                 _e223383223662_
                 _hd223382223665_
                 _tl223381223667_
                 _e223386223670_
                 _hd223385223673_
                 _tl223384223675_
                 _e223389223678_
                 _hd223388223681_
                 _tl223387223683_
                 _e223392223686_
                 _hd223391223689_
                 _tl223390223691_
                 _e223395223694_
                 _hd223394223697_
                 _tl223393223699_
                 _e223398223702_
                 _hd223397223705_
                 _tl223396223707_
                 _e223401223710_
                 _hd223400223713_
                 _tl223399223715_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match231955231956_
                                                     _e223368223622_
                                                     _hd223367223625_
                                                     _tl223366223627_
                                                     _e223380223654_
                                                     _hd223379223657_
                                                     _tl223378223659_
                                                     _e223383223662_
                                                     _hd223382223665_
                                                     _tl223381223667_
                                                     _e223386223670_
                                                     _hd223385223673_
                                                     _tl223384223675_
                                                     _e223389223678_
                                                     _hd223388223681_
                                                     _tl223387223683_
                                                     _e223392223686_
                                                     _hd223391223689_
                                                     _tl223390223691_
                                                     _e223395223694_
                                                     _hd223394223697_
                                                     _tl223393223699_
                                                     _e223398223702_
                                                     _hd223397223705_
                                                     _tl223396223707_
                                                     _e223401223710_
                                                     _hd223400223713_
                                                     _tl223399223715_))
                                                (___match231955231956_
                                                 _e223368223622_
                                                 _hd223367223625_
                                                 _tl223366223627_
                                                 _e223380223654_
                                                 _hd223379223657_
                                                 _tl223378223659_
                                                 _e223383223662_
                                                 _hd223382223665_
                                                 _tl223381223667_
                                                 _e223386223670_
                                                 _hd223385223673_
                                                 _tl223384223675_
                                                 _e223389223678_
                                                 _hd223388223681_
                                                 _tl223387223683_
                                                 _e223392223686_
                                                 _hd223391223689_
                                                 _tl223390223691_
                                                 _e223395223694_
                                                 _hd223394223697_
                                                 _tl223393223699_
                                                 _e223398223702_
                                                 _hd223397223705_
                                                 _tl223396223707_
                                                 _e223401223710_
                                                 _hd223400223713_
                                                 _tl223399223715_))))
                                        (___match231955231956_
                                         _e223368223622_
                                         _hd223367223625_
                                         _tl223366223627_
                                         _e223380223654_
                                         _hd223379223657_
                                         _tl223378223659_
                                         _e223383223662_
                                         _hd223382223665_
                                         _tl223381223667_
                                         _e223386223670_
                                         _hd223385223673_
                                         _tl223384223675_
                                         _e223389223678_
                                         _hd223388223681_
                                         _tl223387223683_
                                         _e223392223686_
                                         _hd223391223689_
                                         _tl223390223691_
                                         _e223395223694_
                                         _hd223394223697_
                                         _tl223393223699_
                                         _e223398223702_
                                         _hd223397223705_
                                         _tl223396223707_
                                         _e223401223710_
                                         _hd223400223713_
                                         _tl223399223715_))))
                                (___match231955231956_
                                 _e223368223622_
                                 _hd223367223625_
                                 _tl223366223627_
                                 _e223380223654_
                                 _hd223379223657_
                                 _tl223378223659_
                                 _e223383223662_
                                 _hd223382223665_
                                 _tl223381223667_
                                 _e223386223670_
                                 _hd223385223673_
                                 _tl223384223675_
                                 _e223389223678_
                                 _hd223388223681_
                                 _tl223387223683_
                                 _e223392223686_
                                 _hd223391223689_
                                 _tl223390223691_
                                 _e223395223694_
                                 _hd223394223697_
                                 _tl223393223699_
                                 _e223398223702_
                                 _hd223397223705_
                                 _tl223396223707_
                                 _e223401223710_
                                 _hd223400223713_
                                 _tl223399223715_))))
                        (___match231955231956_
                         _e223368223622_
                         _hd223367223625_
                         _tl223366223627_
                         _e223380223654_
                         _hd223379223657_
                         _tl223378223659_
                         _e223383223662_
                         _hd223382223665_
                         _tl223381223667_
                         _e223386223670_
                         _hd223385223673_
                         _tl223384223675_
                         _e223389223678_
                         _hd223388223681_
                         _tl223387223683_
                         _e223392223686_
                         _hd223391223689_
                         _tl223390223691_
                         _e223395223694_
                         _hd223394223697_
                         _tl223393223699_
                         _e223398223702_
                         _hd223397223705_
                         _tl223396223707_
                         _e223401223710_
                         _hd223400223713_
                         _tl223399223715_))
                    (___match231955231956_
                     _e223368223622_
                     _hd223367223625_
                     _tl223366223627_
                     _e223380223654_
                     _hd223379223657_
                     _tl223378223659_
                     _e223383223662_
                     _hd223382223665_
                     _tl223381223667_
                     _e223386223670_
                     _hd223385223673_
                     _tl223384223675_
                     _e223389223678_
                     _hd223388223681_
                     _tl223387223683_
                     _e223392223686_
                     _hd223391223689_
                     _tl223390223691_
                     _e223395223694_
                     _hd223394223697_
                     _tl223393223699_
                     _e223398223702_
                     _hd223397223705_
                     _tl223396223707_
                     _e223401223710_
                     _hd223400223713_
                     _tl223399223715_))
                (___kont231858231859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont231858231859_))
                                            (___kont231858231859_))
                                        (___kont231858231859_))))
                                (___kont231858231859_))))
                        (___kont231858231859_))
                    (___kont231858231859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont231858231859_))
                                                (___kont231858231859_))
                                            (___kont231858231859_))))
                                    (___kont231858231859_))))
                            (___kont231858231859_))
                        (___kont231858231859_))
                    (___kont231858231859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont231858231859_))))
                                            (___kont231858231859_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop223372223635_ _target223369223630_ '())))))
                   (___match231873231874_
                    (lambda (_e223320223882_
                             _hd223319223885_
                             _tl223318223887_
                             ___splice231846231847_
                             _target223321223890_
                             _tl223323223892_)
                      (letrec ((_loop223324223895_
                                (lambda (_hd223322223898_ _arg223328223900_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd223322223898_))
                                      (let ((_e223325223903_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd223322223898_))))
                                        (let ((_lp-tl223327223908_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223325223903_)))
                                              (_lp-hd223326223906_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223325223903_))))
                                          (let ((__tmp233249
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd223326223906_
                                                         _arg223328223900_))))
                                            (declare (not safe))
                                            (_loop223324223895_
                                             _lp-tl223327223908_
                                             __tmp233249))))
                                      (let ((_arg223329223911_
                                             (reverse _arg223328223900_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl223318223887_))
                                            (let ((_e223332223914_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl223318223887_))))
                                              (let ((_tl223330223919_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e223332223914_)))
                                                    (_hd223331223917_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e223332223914_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd223331223917_))
                                                    (let ((_e223335223922_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd223331223917_))))
                                                      (let ((_tl223333223927_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e223335223922_)))
                    (_hd223334223925_
                     (let () (declare (not safe)) (##car _e223335223922_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd223334223925_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd223334223925_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl223333223927_))
                            (let ((_e223338223930_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl223333223927_))))
                              (let ((_tl223336223935_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e223338223930_)))
                                    (_hd223337223933_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e223338223930_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd223337223933_))
                                    (let ((_e223341223938_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd223337223933_))))
                                      (let ((_tl223339223943_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e223341223938_)))
                                            (_hd223340223941_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e223341223938_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd223340223941_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd223340223941_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl223339223943_))
                                                    (let ((_e223344223946_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl223339223943_))))
                                                      (let ((_tl223342223951_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e223344223946_)))
                    (_hd223343223949_
                     (let () (declare (not safe)) (##car _e223344223946_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl223342223951_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl223336223935_))
                        (let ((___splice231848231849_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl223336223935_
                                  '0))))
                          (let ((_tl223347223956_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice231848231849_ '1)))
                                (_target223345223954_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice231848231849_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl223347223956_))
                                (letrec ((_loop223348223959_
                                          (lambda (_hd223346223962_
                                                   _xarg223352223964_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd223346223962_))
                                                (let ((_e223349223967_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd223346223962_))))
                                                  (let ((_lp-tl223351223972_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e223349223967_)))
                                                        (_lp-hd223350223970_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e223349223967_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd223350223970_))
                                                        (let ((_e223356223975_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd223350223970_))))
                  (let ((_tl223354223980_
                         (let () (declare (not safe)) (##cdr _e223356223975_)))
                        (_hd223355223978_
                         (let ()
                           (declare (not safe))
                           (##car _e223356223975_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd223355223978_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd223355223978_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl223354223980_))
                                (let ((_e223359223983_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl223354223980_))))
                                  (let ((_tl223357223988_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e223359223983_)))
                                        (_hd223358223986_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e223359223983_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl223357223988_))
                                        (let ((__tmp233248
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd223358223986_
                                                       _xarg223352223964_))))
                                          (declare (not safe))
                                          (_loop223348223959_
                                           _lp-tl223351223972_
                                           __tmp233248))
                                        (___match231885231886_
                                         _e223320223882_
                                         _hd223319223885_
                                         _tl223318223887_
                                         ___splice231846231847_
                                         _target223321223890_
                                         _tl223323223892_))))
                                (___match231885231886_
                                 _e223320223882_
                                 _hd223319223885_
                                 _tl223318223887_
                                 ___splice231846231847_
                                 _target223321223890_
                                 _tl223323223892_))
                            (___match231885231886_
                             _e223320223882_
                             _hd223319223885_
                             _tl223318223887_
                             ___splice231846231847_
                             _target223321223890_
                             _tl223323223892_))
                        (___match231885231886_
                         _e223320223882_
                         _hd223319223885_
                         _tl223318223887_
                         ___splice231846231847_
                         _target223321223890_
                         _tl223323223892_))))
                (___match231885231886_
                 _e223320223882_
                 _hd223319223885_
                 _tl223318223887_
                 ___splice231846231847_
                 _target223321223890_
                 _tl223323223892_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg223353223991_
                                                       (reverse _xarg223352223964_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl223330223919_))
                                                      (let ((_L223994_
                                                             _xarg223353223991_)
                                                            (_L223995_
                                                             _hd223343223949_)
                                                            (_L223996_
                                                             _arg223329223911_))
                                                        (if (and (let ((__tmp233246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp233247
                                       (lambda (_g224024224027_
                                                _g224025224029_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g224024224027_
                                                 _g224025224029_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp233247 '() _L223996_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp233246))
                         (fx= (length (let ((__tmp233244
                                             (lambda (_g224031224034_
                                                      _g224032224036_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g224031224034_
                                                       _g224032224036_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp233244 '() _L223996_)))
                              (length (let ((__tmp233245
                                             (lambda (_g224038224041_
                                                      _g224039224043_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g224038224041_
                                                       _g224039224043_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp233245 '() _L223994_))))
                         (let ((__tmp233242
                                (let ((__tmp233243
                                       (lambda (_g224045224048_
                                                _g224046224050_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g224045224048_
                                                 _g224046224050_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp233243 '() _L223996_)))
                               (__tmp233240
                                (let ((__tmp233241
                                       (lambda (_g224052224055_
                                                _g224053224057_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g224052224055_
                                                 _g224053224057_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp233241 '() _L223994_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp233242
                                    __tmp233240))
                         (let ((__tmp233236
                                (let ((__tmp233239
                                       (lambda (_g224059224061_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g224059224061_
                                            _L223995_))))
                                      (__tmp233237
                                       (let ((__tmp233238
                                              (lambda (_g224063224066_
                                                       _g224064224068_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g224063224066_
                                                        _g224064224068_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp233238 '() _L223996_))))
                                  (declare (not safe))
                                  (find __tmp233239 __tmp233237))))
                           (declare (not safe))
                           (not __tmp233236)))
                    (___kont231844231845_ _L223994_ _L223995_ _L223996_)
                    (___match231885231886_
                     _e223320223882_
                     _hd223319223885_
                     _tl223318223887_
                     ___splice231846231847_
                     _target223321223890_
                     _tl223323223892_)))
              (___match231885231886_
               _e223320223882_
               _hd223319223885_
               _tl223318223887_
               ___splice231846231847_
               _target223321223890_
               _tl223323223892_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop223348223959_
                                     _target223345223954_
                                     '())))
                                (___match231885231886_
                                 _e223320223882_
                                 _hd223319223885_
                                 _tl223318223887_
                                 ___splice231846231847_
                                 _target223321223890_
                                 _tl223323223892_))))
                        (___match231885231886_
                         _e223320223882_
                         _hd223319223885_
                         _tl223318223887_
                         ___splice231846231847_
                         _target223321223890_
                         _tl223323223892_))
                    (___match231885231886_
                     _e223320223882_
                     _hd223319223885_
                     _tl223318223887_
                     ___splice231846231847_
                     _target223321223890_
                     _tl223323223892_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match231885231886_
                                                     _e223320223882_
                                                     _hd223319223885_
                                                     _tl223318223887_
                                                     ___splice231846231847_
                                                     _target223321223890_
                                                     _tl223323223892_))
                                                (___match231885231886_
                                                 _e223320223882_
                                                 _hd223319223885_
                                                 _tl223318223887_
                                                 ___splice231846231847_
                                                 _target223321223890_
                                                 _tl223323223892_))
                                            (___match231885231886_
                                             _e223320223882_
                                             _hd223319223885_
                                             _tl223318223887_
                                             ___splice231846231847_
                                             _target223321223890_
                                             _tl223323223892_))))
                                    (___match231885231886_
                                     _e223320223882_
                                     _hd223319223885_
                                     _tl223318223887_
                                     ___splice231846231847_
                                     _target223321223890_
                                     _tl223323223892_))))
                            (___match231885231886_
                             _e223320223882_
                             _hd223319223885_
                             _tl223318223887_
                             ___splice231846231847_
                             _target223321223890_
                             _tl223323223892_))
                        (___match231885231886_
                         _e223320223882_
                         _hd223319223885_
                         _tl223318223887_
                         ___splice231846231847_
                         _target223321223890_
                         _tl223323223892_))
                    (___match231885231886_
                     _e223320223882_
                     _hd223319223885_
                     _tl223318223887_
                     ___splice231846231847_
                     _target223321223890_
                     _tl223323223892_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match231885231886_
                                                     _e223320223882_
                                                     _hd223319223885_
                                                     _tl223318223887_
                                                     ___splice231846231847_
                                                     _target223321223890_
                                                     _tl223323223892_))))
                                            (___match231885231886_
                                             _e223320223882_
                                             _hd223319223885_
                                             _tl223318223887_
                                             ___splice231846231847_
                                             _target223321223890_
                                             _tl223323223892_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop223324223895_ _target223321223890_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx231842231843_))
                  (let ((_e223320223882_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx231842231843_))))
                    (let ((_tl223318223887_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223320223882_)))
                          (_hd223319223885_
                           (let ()
                             (declare (not safe))
                             (##car _e223320223882_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd223319223885_))
                          (let ((___splice231846231847_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd223319223885_
                                    '0))))
                            (let ((_tl223323223892_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice231846231847_ '1)))
                                  (_target223321223890_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice231846231847_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl223323223892_))
                                  (___match231873231874_
                                   _e223320223882_
                                   _hd223319223885_
                                   _tl223318223887_
                                   ___splice231846231847_
                                   _target223321223890_
                                   _tl223323223892_)
                                  (___match231885231886_
                                   _e223320223882_
                                   _hd223319223885_
                                   _tl223318223887_
                                   ___splice231846231847_
                                   _target223321223890_
                                   _tl223323223892_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223318223887_))
                              (let ((_e223435223490_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223318223887_))))
                                (let ((_tl223433223495_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223435223490_)))
                                      (_hd223434223493_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223435223490_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd223434223493_))
                                      (let ((_e223438223498_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd223434223493_))))
                                        (let ((_tl223436223503_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223438223498_)))
                                              (_hd223437223501_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223438223498_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd223437223501_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd223437223501_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl223436223503_))
                                                      (let ((_e223441223506_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl223436223503_))))
                (let ((_tl223439223511_
                       (let () (declare (not safe)) (##cdr _e223441223506_)))
                      (_hd223440223509_
                       (let () (declare (not safe)) (##car _e223441223506_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd223440223509_))
                      (let ((_e223444223514_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd223440223509_))))
                        (let ((_tl223442223519_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223444223514_)))
                              (_hd223443223517_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223444223514_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd223443223517_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd223443223517_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223442223519_))
                                      (let ((_e223447223522_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223442223519_))))
                                        (let ((_tl223445223527_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223447223522_)))
                                              (_hd223446223525_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223447223522_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223445223527_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl223439223511_))
                                                  (let ((_e223450223530_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl223439223511_))))
                                                    (let ((_tl223448223535_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223450223530_)))
                                                          (_hd223449223533_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223450223530_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd223449223533_))
                                                          (let ((_e223453223538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd223449223533_))))
                    (let ((_tl223451223543_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223453223538_)))
                          (_hd223452223541_
                           (let ()
                             (declare (not safe))
                             (##car _e223453223538_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd223452223541_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd223452223541_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl223451223543_))
                                  (let ((_e223456223546_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl223451223543_))))
                                    (let ((_tl223454223551_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223456223546_)))
                                          (_hd223455223549_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223456223546_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl223454223551_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl223448223535_))
                                              (let ((_e223459223554_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl223448223535_))))
                                                (let ((_tl223457223559_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e223459223554_)))
                                                      (_hd223458223557_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e223459223554_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd223458223557_))
                                                      (let ((_e223462223562_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd223458223557_))))
                (let ((_tl223460223567_
                       (let () (declare (not safe)) (##cdr _e223462223562_)))
                      (_hd223461223565_
                       (let () (declare (not safe)) (##car _e223462223562_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd223461223565_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd223461223565_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223460223567_))
                              (let ((_e223465223570_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223460223567_))))
                                (let ((_tl223463223575_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223465223570_)))
                                      (_hd223464223573_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223465223570_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl223463223575_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl223457223559_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223433223495_))
                                              (___match231983231984_
                                               _e223320223882_
                                               _hd223319223885_
                                               _tl223318223887_
                                               _e223435223490_
                                               _hd223434223493_
                                               _tl223433223495_
                                               _e223438223498_
                                               _hd223437223501_
                                               _tl223436223503_
                                               _e223441223506_
                                               _hd223440223509_
                                               _tl223439223511_
                                               _e223444223514_
                                               _hd223443223517_
                                               _tl223442223519_
                                               _e223447223522_
                                               _hd223446223525_
                                               _tl223445223527_
                                               _e223450223530_
                                               _hd223449223533_
                                               _tl223448223535_
                                               _e223453223538_
                                               _hd223452223541_
                                               _tl223451223543_
                                               _e223456223546_
                                               _hd223455223549_
                                               _tl223454223551_
                                               _e223459223554_
                                               _hd223458223557_
                                               _tl223457223559_
                                               _e223462223562_
                                               _hd223461223565_
                                               _tl223460223567_
                                               _e223465223570_
                                               _hd223464223573_
                                               _tl223463223575_)
                                              (___kont231858231859_))
                                          (___kont231858231859_))
                                      (___kont231858231859_))))
                              (___kont231858231859_))
                          (___kont231858231859_))
                      (___kont231858231859_))))
              (___kont231858231859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont231858231859_))
                                          (___kont231858231859_))))
                                  (___kont231858231859_))
                              (___kont231858231859_))
                          (___kont231858231859_))))
                  (___kont231858231859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont231858231859_))
                                              (___kont231858231859_))))
                                      (___kont231858231859_))
                                  (___kont231858231859_))
                              (___kont231858231859_))))
                      (___kont231858231859_))))
              (___kont231858231859_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont231858231859_))
                                              (___kont231858231859_))))
                                      (___kont231858231859_))))
                              (___kont231858231859_)))))
                  (___kont231858231859_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form222776_)
        (let* ((___stx231986231987_ _form222776_)
               (_g222780222904_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231986231987_)))))
          (let ((___kont231988231989_
                 (lambda (_L223274_ _L223275_ _L223276_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L223275_))))
                (___kont231994231995_
                 (lambda (_L223122_ _L223123_ _L223124_ _L223125_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L223122_))))
                (___kont231998231999_
                 (lambda (_L222989_ _L222990_ _L222991_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L222989_)))))
            (let* ((___match232095232096_
                    (lambda (_e222872222909_
                             _hd222871222912_
                             _tl222870222914_
                             _e222875222917_
                             _hd222874222920_
                             _tl222873222922_
                             _e222878222925_
                             _hd222877222928_
                             _tl222876222930_
                             _e222881222933_
                             _hd222880222936_
                             _tl222879222938_
                             _e222884222941_
                             _hd222883222944_
                             _tl222882222946_
                             _e222887222949_
                             _hd222886222952_
                             _tl222885222954_
                             _e222890222957_
                             _hd222889222960_
                             _tl222888222962_
                             _e222893222965_
                             _hd222892222968_
                             _tl222891222970_
                             _e222896222973_
                             _hd222895222976_
                             _tl222894222978_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl222888222962_))
                          (let ((_e222899222981_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl222888222962_))))
                            (let ((_tl222897222986_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e222899222981_)))
                                  (_hd222898222984_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e222899222981_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl222897222986_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222873222922_))
                                      (___kont231998231999_
                                       _hd222895222976_
                                       _hd222886222952_
                                       _hd222871222912_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222780222904_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g222780222904_)))))
                          (let () (declare (not safe)) (_g222780222904_)))))
                   (___match232025232026_
                    (lambda (_e222833223026_
                             _hd222832223029_
                             _tl222831223031_
                             ___splice231996231997_
                             _target222834223034_
                             _tl222836223036_)
                      (letrec ((_loop222837223039_
                                (lambda (_hd222835223042_ _arg222841223044_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd222835223042_))
                                      (let ((_e222838223047_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd222835223042_))))
                                        (let ((_lp-tl222840223052_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222838223047_)))
                                              (_lp-hd222839223050_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222838223047_))))
                                          (let ((__tmp233250
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd222839223050_
                                                         _arg222841223044_))))
                                            (declare (not safe))
                                            (_loop222837223039_
                                             _lp-tl222840223052_
                                             __tmp233250))))
                                      (let ((_arg222842223055_
                                             (reverse _arg222841223044_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl222831223031_))
                                            (let ((_e222845223058_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl222831223031_))))
                                              (let ((_tl222843223063_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e222845223058_)))
                                                    (_hd222844223061_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e222845223058_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd222844223061_))
                                                    (let ((_e222848223066_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd222844223061_))))
                                                      (let ((_tl222846223071_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e222848223066_)))
                    (_hd222847223069_
                     (let () (declare (not safe)) (##car _e222848223066_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd222847223069_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd222847223069_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl222846223071_))
                            (let ((_e222851223074_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl222846223071_))))
                              (let ((_tl222849223079_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e222851223074_)))
                                    (_hd222850223077_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e222851223074_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd222850223077_))
                                    (let ((_e222854223082_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd222850223077_))))
                                      (let ((_tl222852223087_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e222854223082_)))
                                            (_hd222853223085_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e222854223082_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd222853223085_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd222853223085_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl222852223087_))
                                                    (let ((_e222857223090_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl222852223087_))))
                                                      (let ((_tl222855223095_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e222857223090_)))
                    (_hd222856223093_
                     (let () (declare (not safe)) (##car _e222857223090_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl222855223095_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl222849223079_))
                        (let ((_e222860223098_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl222849223079_))))
                          (let ((_tl222858223103_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222860223098_)))
                                (_hd222859223101_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222860223098_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd222859223101_))
                                (let ((_e222863223106_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd222859223101_))))
                                  (let ((_tl222861223111_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222863223106_)))
                                        (_hd222862223109_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222863223106_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd222862223109_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd222862223109_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl222861223111_))
                                                (let ((_e222866223114_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl222861223111_))))
                                                  (let ((_tl222864223119_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e222866223114_)))
                                                        (_hd222865223117_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e222866223114_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl222864223119_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl222843223063_))
                                                            (___kont231994231995_
                                                             _hd222865223117_
                                                             _hd222856223093_
                                                             _tl222836223036_
                                                             _arg222842223055_)
                                                            (___match232095232096_
                                                             _e222833223026_
                                                             _hd222832223029_
                                                             _tl222831223031_
                                                             _e222845223058_
                                                             _hd222844223061_
                                                             _tl222843223063_
                                                             _e222848223066_
                                                             _hd222847223069_
                                                             _tl222846223071_
                                                             _e222851223074_
                                                             _hd222850223077_
                                                             _tl222849223079_
                                                             _e222854223082_
                                                             _hd222853223085_
                                                             _tl222852223087_
                                                             _e222857223090_
                                                             _hd222856223093_
                                                             _tl222855223095_
                                                             _e222860223098_
                                                             _hd222859223101_
                                                             _tl222858223103_
                                                             _e222863223106_
                                                             _hd222862223109_
                                                             _tl222861223111_
                                                             _e222866223114_
                                                             _hd222865223117_
                                                             _tl222864223119_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g222780222904_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222780222904_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g222780222904_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g222780222904_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g222780222904_)))))
                        (let () (declare (not safe)) (_g222780222904_)))
                    (let () (declare (not safe)) (_g222780222904_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g222780222904_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222780222904_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g222780222904_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g222780222904_)))))
                            (let () (declare (not safe)) (_g222780222904_)))
                        (let () (declare (not safe)) (_g222780222904_)))
                    (let () (declare (not safe)) (_g222780222904_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g222780222904_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g222780222904_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop222837223039_ _target222834223034_ '())))))
                   (___match232013232014_
                    (lambda (_e222787223162_
                             _hd222786223165_
                             _tl222785223167_
                             ___splice231990231991_
                             _target222788223170_
                             _tl222790223172_)
                      (letrec ((_loop222791223175_
                                (lambda (_hd222789223178_ _arg222795223180_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd222789223178_))
                                      (let ((_e222792223183_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd222789223178_))))
                                        (let ((_lp-tl222794223188_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222792223183_)))
                                              (_lp-hd222793223186_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222792223183_))))
                                          (let ((__tmp233252
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd222793223186_
                                                         _arg222795223180_))))
                                            (declare (not safe))
                                            (_loop222791223175_
                                             _lp-tl222794223188_
                                             __tmp233252))))
                                      (let ((_arg222796223191_
                                             (reverse _arg222795223180_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl222785223167_))
                                            (let ((_e222799223194_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl222785223167_))))
                                              (let ((_tl222797223199_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e222799223194_)))
                                                    (_hd222798223197_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e222799223194_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd222798223197_))
                                                    (let ((_e222802223202_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd222798223197_))))
                                                      (let ((_tl222800223207_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e222802223202_)))
                    (_hd222801223205_
                     (let () (declare (not safe)) (##car _e222802223202_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd222801223205_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd222801223205_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl222800223207_))
                            (let ((_e222805223210_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl222800223207_))))
                              (let ((_tl222803223215_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e222805223210_)))
                                    (_hd222804223213_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e222805223210_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd222804223213_))
                                    (let ((_e222808223218_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd222804223213_))))
                                      (let ((_tl222806223223_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e222808223218_)))
                                            (_hd222807223221_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e222808223218_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd222807223221_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd222807223221_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl222806223223_))
                                                    (let ((_e222811223226_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl222806223223_))))
                                                      (let ((_tl222809223231_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e222811223226_)))
                    (_hd222810223229_
                     (let () (declare (not safe)) (##car _e222811223226_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl222809223231_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl222803223215_))
                        (let ((___splice231992231993_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl222803223215_
                                  '0))))
                          (let ((_tl222814223236_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice231992231993_ '1)))
                                (_target222812223234_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice231992231993_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl222814223236_))
                                (letrec ((_loop222815223239_
                                          (lambda (_hd222813223242_
                                                   _xarg222819223244_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd222813223242_))
                                                (let ((_e222816223247_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd222813223242_))))
                                                  (let ((_lp-tl222818223252_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e222816223247_)))
                                                        (_lp-hd222817223250_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e222816223247_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd222817223250_))
                                                        (let ((_e222823223255_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd222817223250_))))
                  (let ((_tl222821223260_
                         (let () (declare (not safe)) (##cdr _e222823223255_)))
                        (_hd222822223258_
                         (let ()
                           (declare (not safe))
                           (##car _e222823223255_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd222822223258_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd222822223258_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl222821223260_))
                                (let ((_e222826223263_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl222821223260_))))
                                  (let ((_tl222824223268_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222826223263_)))
                                        (_hd222825223266_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222826223263_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl222824223268_))
                                        (let ((__tmp233251
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd222825223266_
                                                       _xarg222819223244_))))
                                          (declare (not safe))
                                          (_loop222815223239_
                                           _lp-tl222818223252_
                                           __tmp233251))
                                        (___match232025232026_
                                         _e222787223162_
                                         _hd222786223165_
                                         _tl222785223167_
                                         ___splice231990231991_
                                         _target222788223170_
                                         _tl222790223172_))))
                                (___match232025232026_
                                 _e222787223162_
                                 _hd222786223165_
                                 _tl222785223167_
                                 ___splice231990231991_
                                 _target222788223170_
                                 _tl222790223172_))
                            (___match232025232026_
                             _e222787223162_
                             _hd222786223165_
                             _tl222785223167_
                             ___splice231990231991_
                             _target222788223170_
                             _tl222790223172_))
                        (___match232025232026_
                         _e222787223162_
                         _hd222786223165_
                         _tl222785223167_
                         ___splice231990231991_
                         _target222788223170_
                         _tl222790223172_))))
                (___match232025232026_
                 _e222787223162_
                 _hd222786223165_
                 _tl222785223167_
                 ___splice231990231991_
                 _target222788223170_
                 _tl222790223172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg222820223271_
                                                       (reverse _xarg222819223244_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl222797223199_))
                                                      (___kont231988231989_
                                                       _xarg222820223271_
                                                       _hd222810223229_
                                                       _arg222796223191_)
                                                      (___match232025232026_
                                                       _e222787223162_
                                                       _hd222786223165_
                                                       _tl222785223167_
                                                       ___splice231990231991_
                                                       _target222788223170_
                                                       _tl222790223172_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop222815223239_
                                     _target222812223234_
                                     '())))
                                (___match232025232026_
                                 _e222787223162_
                                 _hd222786223165_
                                 _tl222785223167_
                                 ___splice231990231991_
                                 _target222788223170_
                                 _tl222790223172_))))
                        (___match232025232026_
                         _e222787223162_
                         _hd222786223165_
                         _tl222785223167_
                         ___splice231990231991_
                         _target222788223170_
                         _tl222790223172_))
                    (___match232025232026_
                     _e222787223162_
                     _hd222786223165_
                     _tl222785223167_
                     ___splice231990231991_
                     _target222788223170_
                     _tl222790223172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match232025232026_
                                                     _e222787223162_
                                                     _hd222786223165_
                                                     _tl222785223167_
                                                     ___splice231990231991_
                                                     _target222788223170_
                                                     _tl222790223172_))
                                                (___match232025232026_
                                                 _e222787223162_
                                                 _hd222786223165_
                                                 _tl222785223167_
                                                 ___splice231990231991_
                                                 _target222788223170_
                                                 _tl222790223172_))
                                            (___match232025232026_
                                             _e222787223162_
                                             _hd222786223165_
                                             _tl222785223167_
                                             ___splice231990231991_
                                             _target222788223170_
                                             _tl222790223172_))))
                                    (___match232025232026_
                                     _e222787223162_
                                     _hd222786223165_
                                     _tl222785223167_
                                     ___splice231990231991_
                                     _target222788223170_
                                     _tl222790223172_))))
                            (___match232025232026_
                             _e222787223162_
                             _hd222786223165_
                             _tl222785223167_
                             ___splice231990231991_
                             _target222788223170_
                             _tl222790223172_))
                        (___match232025232026_
                         _e222787223162_
                         _hd222786223165_
                         _tl222785223167_
                         ___splice231990231991_
                         _target222788223170_
                         _tl222790223172_))
                    (___match232025232026_
                     _e222787223162_
                     _hd222786223165_
                     _tl222785223167_
                     ___splice231990231991_
                     _target222788223170_
                     _tl222790223172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match232025232026_
                                                     _e222787223162_
                                                     _hd222786223165_
                                                     _tl222785223167_
                                                     ___splice231990231991_
                                                     _target222788223170_
                                                     _tl222790223172_))))
                                            (___match232025232026_
                                             _e222787223162_
                                             _hd222786223165_
                                             _tl222785223167_
                                             ___splice231990231991_
                                             _target222788223170_
                                             _tl222790223172_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop222791223175_ _target222788223170_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx231986231987_))
                  (let ((_e222787223162_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx231986231987_))))
                    (let ((_tl222785223167_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222787223162_)))
                          (_hd222786223165_
                           (let ()
                             (declare (not safe))
                             (##car _e222787223162_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd222786223165_))
                          (let ((___splice231990231991_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd222786223165_
                                    '0))))
                            (let ((_tl222790223172_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice231990231991_ '1)))
                                  (_target222788223170_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice231990231991_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl222790223172_))
                                  (___match232013232014_
                                   _e222787223162_
                                   _hd222786223165_
                                   _tl222785223167_
                                   ___splice231990231991_
                                   _target222788223170_
                                   _tl222790223172_)
                                  (___match232025232026_
                                   _e222787223162_
                                   _hd222786223165_
                                   _tl222785223167_
                                   ___splice231990231991_
                                   _target222788223170_
                                   _tl222790223172_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222785223167_))
                              (let ((_e222875222917_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222785223167_))))
                                (let ((_tl222873222922_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222875222917_)))
                                      (_hd222874222920_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222875222917_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd222874222920_))
                                      (let ((_e222878222925_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd222874222920_))))
                                        (let ((_tl222876222930_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222878222925_)))
                                              (_hd222877222928_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222878222925_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd222877222928_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd222877222928_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl222876222930_))
                                                      (let ((_e222881222933_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl222876222930_))))
                (let ((_tl222879222938_
                       (let () (declare (not safe)) (##cdr _e222881222933_)))
                      (_hd222880222936_
                       (let () (declare (not safe)) (##car _e222881222933_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd222880222936_))
                      (let ((_e222884222941_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd222880222936_))))
                        (let ((_tl222882222946_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222884222941_)))
                              (_hd222883222944_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222884222941_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd222883222944_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd222883222944_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222882222946_))
                                      (let ((_e222887222949_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222882222946_))))
                                        (let ((_tl222885222954_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222887222949_)))
                                              (_hd222886222952_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222887222949_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222885222954_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl222879222938_))
                                                  (let ((_e222890222957_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl222879222938_))))
                                                    (let ((_tl222888222962_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222890222957_)))
                                                          (_hd222889222960_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222890222957_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd222889222960_))
                                                          (let ((_e222893222965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd222889222960_))))
                    (let ((_tl222891222970_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222893222965_)))
                          (_hd222892222968_
                           (let ()
                             (declare (not safe))
                             (##car _e222893222965_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd222892222968_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd222892222968_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl222891222970_))
                                  (let ((_e222896222973_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl222891222970_))))
                                    (let ((_tl222894222978_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222896222973_)))
                                          (_hd222895222976_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222896222973_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl222894222978_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl222888222962_))
                                              (let ((_e222899222981_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl222888222962_))))
                                                (let ((_tl222897222986_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e222899222981_)))
                                                      (_hd222898222984_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e222899222981_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl222897222986_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl222873222922_))
                                                          (___kont231998231999_
                                                           _hd222895222976_
                                                           _hd222886222952_
                                                           _hd222786223165_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g222780222904_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g222780222904_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g222780222904_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g222780222904_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g222780222904_)))
                              (let () (declare (not safe)) (_g222780222904_)))
                          (let () (declare (not safe)) (_g222780222904_)))))
                  (let () (declare (not safe)) (_g222780222904_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g222780222904_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g222780222904_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222780222904_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g222780222904_)))
                              (let ()
                                (declare (not safe))
                                (_g222780222904_)))))
                      (let () (declare (not safe)) (_g222780222904_)))))
              (let () (declare (not safe)) (_g222780222904_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g222780222904_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g222780222904_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222780222904_)))))
                              (let ()
                                (declare (not safe))
                                (_g222780222904_))))))
                  (let () (declare (not safe)) (_g222780222904_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form222580_)
        (let* ((_g222582222596_
                (lambda (_g222583222593_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222583222593_))))
               (_g222581222773_
                (lambda (_g222583222599_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222583222599_))
                      (let ((_e222588222601_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222583222599_))))
                        (let ((_hd222587222604_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222588222601_)))
                              (_tl222586222606_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222588222601_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222586222606_))
                              (let ((_e222591222609_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222586222606_))))
                                (let ((_hd222590222612_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222591222609_)))
                                      (_tl222589222614_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222591222609_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222589222614_))
                                      ((lambda (_L222617_ _L222618_)
                                         (let* ((___stx232108232109_ _L222618_)
                                                (_g222633222661_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx232108232109_)))))
                                           (let ((___kont232110232111_
                                                  (lambda (_L222752_)
                                                    (length (let ((__tmp233253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g222762222765_ _g222763222767_)
                             (let ()
                               (declare (not safe))
                               (cons _g222762222765_ _g222763222767_)))))
                      (declare (not safe))
                      (foldr1 __tmp233253 '() _L222752_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont232114232115_
                                                  (lambda (_L222703_ _L222704_)
                                                    (let ((__tmp233254
                                                           (length (let ((__tmp233255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g222715222718_ _g222716222720_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g222715222718_
                                            _g222716222720_)))))
                             (declare (not safe))
                             (foldr1 __tmp233255 '() _L222704_)))))
              (declare (not safe))
              (cons __tmp233254 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont232118232119_
                                                  (lambda (_L222666_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match232133232134_
                                                     (lambda (___splice232116232117_
                                                              _target222647222679_
                                                              _tl222649222681_)
                                                       (letrec ((_loop222650222684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd222648222687_ _arg222654222689_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd222648222687_))
                               (let ((_e222651222692_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd222648222687_))))
                                 (let ((_lp-tl222653222697_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e222651222692_)))
                                       (_lp-hd222652222695_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e222651222692_))))
                                   (let ((__tmp233256
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd222652222695_
                                                  _arg222654222689_))))
                                     (declare (not safe))
                                     (_loop222650222684_
                                      _lp-tl222653222697_
                                      __tmp233256))))
                               (let ((_arg222655222700_
                                      (reverse _arg222654222689_)))
                                 (___kont232114232115_
                                  _tl222649222681_
                                  _arg222655222700_))))))
                 (let ()
                   (declare (not safe))
                   (_loop222650222684_ _target222647222679_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match232127232128_
                                                     (lambda (___splice232112232113_
                                                              _target222636222728_
                                                              _tl222638222730_)
                                                       (letrec ((_loop222639222733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd222637222736_ _arg222643222738_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd222637222736_))
                               (let ((_e222640222741_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd222637222736_))))
                                 (let ((_lp-tl222642222746_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e222640222741_)))
                                       (_lp-hd222641222744_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e222640222741_))))
                                   (let ((__tmp233257
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd222641222744_
                                                  _arg222643222738_))))
                                     (declare (not safe))
                                     (_loop222639222733_
                                      _lp-tl222642222746_
                                      __tmp233257))))
                               (let ((_arg222644222749_
                                      (reverse _arg222643222738_)))
                                 (___kont232110232111_ _arg222644222749_))))))
                 (let ()
                   (declare (not safe))
                   (_loop222639222733_ _target222636222728_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx232108232109_))
                                                   (let ((___splice232112232113_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx232108232109_
                                                             '0))))
                                                     (let ((_tl222638222730_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice232112232113_
                                                               '1)))
                                                           (_target222636222728_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice232112232113_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl222638222730_))
                                                           (___match232127232128_
                                                            ___splice232112232113_
                                                            _target222636222728_
                                                            _tl222638222730_)
                                                           (___match232133232134_
                                                            ___splice232112232113_
                                                            _target222636222728_
                                                            _tl222638222730_))))
                                                   (___kont232118232119_
                                                    ___stx232108232109_))))))
                                       _hd222590222612_
                                       _hd222587222604_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222582222596_ _g222583222599_)))))
                              (let ()
                                (declare (not safe))
                                (_g222582222596_ _g222583222599_)))))
                      (let ()
                        (declare (not safe))
                        (_g222582222596_ _g222583222599_))))))
          (declare (not safe))
          (_g222581222773_ _form222580_))))
    (define gxc#lambda-expr?
      (lambda (_expr222533_)
        (let* ((___stx232136232137_ _expr222533_)
               (_g222536222546_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx232136232137_)))))
          (let ((___kont232138232139_ (lambda (_L222566_) '#t))
                (___kont232140232141_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx232136232137_))
                (let ((_e222541222558_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx232136232137_))))
                  (let ((_tl222539222563_
                         (let () (declare (not safe)) (##cdr _e222541222558_)))
                        (_hd222540222561_
                         (let ()
                           (declare (not safe))
                           (##car _e222541222558_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd222540222561_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd222540222561_))
                            (___kont232138232139_ _tl222539222563_)
                            (___kont232140232141_))
                        (___kont232140232141_))))
                (___kont232140232141_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr222486_)
        (let* ((___stx232154232155_ _expr222486_)
               (_g222489222499_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx232154232155_)))))
          (let ((___kont232156232157_ (lambda (_L222519_) '#t))
                (___kont232158232159_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx232154232155_))
                (let ((_e222494222511_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx232154232155_))))
                  (let ((_tl222492222516_
                         (let () (declare (not safe)) (##cdr _e222494222511_)))
                        (_hd222493222514_
                         (let ()
                           (declare (not safe))
                           (##car _e222494222511_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd222493222514_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd222493222514_))
                            (___kont232156232157_ _tl222492222516_)
                            (___kont232158232159_))
                        (___kont232158232159_))))
                (___kont232158232159_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr222355_)
        (let* ((___stx232172232173_ _expr222355_)
               (_g222358222388_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx232172232173_)))))
          (let ((___kont232174232175_
                 (lambda (_L222456_ _L222457_ _L222458_)
                   (if (let () (declare (not safe)) (gx#identifier? _L222458_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L222457_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L222456_))
                           '#f)
                       '#f)))
                (___kont232176232177_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx232172232173_))
                (let ((_e222365222400_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx232172232173_))))
                  (let ((_tl222363222405_
                         (let () (declare (not safe)) (##cdr _e222365222400_)))
                        (_hd222364222403_
                         (let ()
                           (declare (not safe))
                           (##car _e222365222400_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd222364222403_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd222364222403_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl222363222405_))
                                (let ((_e222368222408_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl222363222405_))))
                                  (let ((_tl222366222413_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222368222408_)))
                                        (_hd222367222411_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222368222408_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd222367222411_))
                                        (let ((_e222371222416_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd222367222411_))))
                                          (let ((_tl222369222421_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e222371222416_)))
                                                (_hd222370222419_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e222371222416_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd222370222419_))
                                                (let ((_e222374222424_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd222370222419_))))
                                                  (let ((_tl222372222429_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e222374222424_)))
                                                        (_hd222373222427_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e222374222424_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd222373222427_))
                                                        (let ((_e222377222432_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd222373222427_))))
                  (let ((_tl222375222437_
                         (let () (declare (not safe)) (##cdr _e222377222432_)))
                        (_hd222376222435_
                         (let ()
                           (declare (not safe))
                           (##car _e222377222432_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl222375222437_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl222372222429_))
                            (let ((_e222380222440_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl222372222429_))))
                              (let ((_tl222378222445_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e222380222440_)))
                                    (_hd222379222443_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e222380222440_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl222378222445_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl222369222421_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl222366222413_))
                                            (let ((_e222383222448_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl222366222413_))))
                                              (let ((_tl222381222453_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e222383222448_)))
                                                    (_hd222382222451_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e222383222448_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl222381222453_))
                                                    (___kont232174232175_
                                                     _hd222382222451_
                                                     _hd222379222443_
                                                     _hd222376222435_)
                                                    (___kont232176232177_))))
                                            (___kont232176232177_))
                                        (___kont232176232177_))
                                    (___kont232176232177_))))
                            (___kont232176232177_))
                        (___kont232176232177_))))
                (___kont232176232177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont232176232177_))))
                                        (___kont232176232177_))))
                                (___kont232176232177_))
                            (___kont232176232177_))
                        (___kont232176232177_))))
                (___kont232176232177_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr221680_)
        (let* ((___stx232234232235_ _expr221680_)
               (_g221683221841_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx232234232235_)))))
          (let ((___kont232236232237_
                 (lambda (_L222229_
                          _L222230_
                          _L222231_
                          _L222232_
                          _L222233_
                          _L222234_
                          _L222235_
                          _L222236_
                          _L222237_
                          _L222238_
                          _L222239_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L222236_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L222232_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L222231_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L222239_
                                      _L222230_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L222238_
                                          _L222235_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L222233_
                                              _L222229_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L222237_
                                              _L222234_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont232238232239_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx232234232235_))
                (let ((_e221698221853_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx232234232235_))))
                  (let ((_tl221696221858_
                         (let () (declare (not safe)) (##cdr _e221698221853_)))
                        (_hd221697221856_
                         (let ()
                           (declare (not safe))
                           (##car _e221698221853_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd221697221856_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd221697221856_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl221696221858_))
                                (let ((_e221701221861_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl221696221858_))))
                                  (let ((_tl221699221866_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221701221861_)))
                                        (_hd221700221864_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221701221861_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd221700221864_))
                                        (let ((_e221704221869_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd221700221864_))))
                                          (let ((_tl221702221874_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e221704221869_)))
                                                (_hd221703221872_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e221704221869_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd221703221872_))
                                                (let ((_e221707221877_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd221703221872_))))
                                                  (let ((_tl221705221882_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e221707221877_)))
                                                        (_hd221706221880_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e221707221877_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd221706221880_))
                                                        (let ((_e221710221885_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd221706221880_))))
                  (let ((_tl221708221890_
                         (let () (declare (not safe)) (##cdr _e221710221885_)))
                        (_hd221709221888_
                         (let ()
                           (declare (not safe))
                           (##car _e221710221885_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl221708221890_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl221705221882_))
                            (let ((_e221713221893_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl221705221882_))))
                              (let ((_tl221711221898_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e221713221893_)))
                                    (_hd221712221896_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e221713221893_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd221712221896_))
                                    (let ((_e221716221901_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd221712221896_))))
                                      (let ((_tl221714221906_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e221716221901_)))
                                            (_hd221715221904_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e221716221901_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd221715221904_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd221715221904_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl221714221906_))
                                                    (let ((_e221719221909_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl221714221906_))))
                                                      (let ((_tl221717221914_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e221719221909_)))
                    (_hd221718221912_
                     (let () (declare (not safe)) (##car _e221719221909_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd221718221912_))
                    (let ((_e221722221917_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd221718221912_))))
                      (let ((_tl221720221922_
                             (let ()
                               (declare (not safe))
                               (##cdr _e221722221917_)))
                            (_hd221721221920_
                             (let ()
                               (declare (not safe))
                               (##car _e221722221917_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd221721221920_))
                            (let ((_e221725221925_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd221721221920_))))
                              (let ((_tl221723221930_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e221725221925_)))
                                    (_hd221724221928_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e221725221925_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd221724221928_))
                                    (let ((_e221728221933_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd221724221928_))))
                                      (let ((_tl221726221938_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e221728221933_)))
                                            (_hd221727221936_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e221728221933_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl221726221938_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl221723221930_))
                                                (let ((_e221731221941_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl221723221930_))))
                                                  (let ((_tl221729221946_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e221731221941_)))
                                                        (_hd221730221944_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e221731221941_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl221729221946_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl221720221922_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl221717221914_))
                        (let ((_e221734221949_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl221717221914_))))
                          (let ((_tl221732221954_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221734221949_)))
                                (_hd221733221952_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221734221949_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd221733221952_))
                                (let ((_e221737221957_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd221733221952_))))
                                  (let ((_tl221735221962_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221737221957_)))
                                        (_hd221736221960_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221737221957_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd221736221960_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd221736221960_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl221735221962_))
                                                (let ((_e221740221965_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl221735221962_))))
                                                  (let ((_tl221738221970_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e221740221965_)))
                                                        (_hd221739221968_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e221740221965_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd221739221968_))
                                                        (let ((_e221743221973_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd221739221968_))))
                  (let ((_tl221741221978_
                         (let () (declare (not safe)) (##cdr _e221743221973_)))
                        (_hd221742221976_
                         (let ()
                           (declare (not safe))
                           (##car _e221743221973_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl221738221970_))
                        (let ((_e221746221981_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl221738221970_))))
                          (let ((_tl221744221986_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221746221981_)))
                                (_hd221745221984_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221746221981_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd221745221984_))
                                (let ((_e221749221989_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd221745221984_))))
                                  (let ((_tl221747221994_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221749221989_)))
                                        (_hd221748221992_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221749221989_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd221748221992_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd221748221992_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl221747221994_))
                                                (let ((_e221752221997_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl221747221994_))))
                                                  (let ((_tl221750222002_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e221752221997_)))
                                                        (_hd221751222000_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e221752221997_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd221751222000_))
                                                        (let ((_e221755222005_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd221751222000_))))
                  (let ((_tl221753222010_
                         (let () (declare (not safe)) (##cdr _e221755222005_)))
                        (_hd221754222008_
                         (let ()
                           (declare (not safe))
                           (##car _e221755222005_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd221754222008_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd221754222008_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl221753222010_))
                                (let ((_e221758222013_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl221753222010_))))
                                  (let ((_tl221756222018_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221758222013_)))
                                        (_hd221757222016_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221758222013_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221756222018_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl221750222002_))
                                            (let ((_e221761222021_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl221750222002_))))
                                              (let ((_tl221759222026_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e221761222021_)))
                                                    (_hd221760222024_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e221761222021_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd221760222024_))
                                                    (let ((_e221764222029_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd221760222024_))))
                                                      (let ((_tl221762222034_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e221764222029_)))
                    (_hd221763222032_
                     (let () (declare (not safe)) (##car _e221764222029_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd221763222032_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd221763222032_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl221762222034_))
                            (let ((_e221767222037_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl221762222034_))))
                              (let ((_tl221765222042_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e221767222037_)))
                                    (_hd221766222040_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e221767222037_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl221765222042_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl221759222026_))
                                        (let ((_e221770222045_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl221759222026_))))
                                          (let ((_tl221768222050_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e221770222045_)))
                                                (_hd221769222048_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e221770222045_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd221769222048_))
                                                (let ((_e221773222053_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd221769222048_))))
                                                  (let ((_tl221771222058_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e221773222053_)))
                                                        (_hd221772222056_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e221773222053_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd221772222056_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd221772222056_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl221771222058_))
                        (let ((_e221776222061_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl221771222058_))))
                          (let ((_tl221774222066_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221776222061_)))
                                (_hd221775222064_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221776222061_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl221774222066_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl221744221986_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221732221954_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl221711221898_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221702221874_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl221699221866_))
                                                    (let ((_e221779222069_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl221699221866_))))
                                                      (let ((_tl221777222074_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e221779222069_)))
                    (_hd221778222072_
                     (let () (declare (not safe)) (##car _e221779222069_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd221778222072_))
                    (let ((_e221782222077_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd221778222072_))))
                      (let ((_tl221780222082_
                             (let ()
                               (declare (not safe))
                               (##cdr _e221782222077_)))
                            (_hd221781222080_
                             (let ()
                               (declare (not safe))
                               (##car _e221782222077_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd221781222080_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd221781222080_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl221780222082_))
                                    (let ((_e221785222085_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl221780222082_))))
                                      (let ((_tl221783222090_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e221785222085_)))
                                            (_hd221784222088_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e221785222085_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl221783222090_))
                                            (let ((_e221788222093_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl221783222090_))))
                                              (let ((_tl221786222098_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e221788222093_)))
                                                    (_hd221787222096_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e221788222093_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd221787222096_))
                                                    (let ((_e221791222101_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd221787222096_))))
                                                      (let ((_tl221789222106_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e221791222101_)))
                    (_hd221790222104_
                     (let () (declare (not safe)) (##car _e221791222101_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd221790222104_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd221790222104_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl221789222106_))
                            (let ((_e221794222109_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl221789222106_))))
                              (let ((_tl221792222114_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e221794222109_)))
                                    (_hd221793222112_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e221794222109_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd221793222112_))
                                    (let ((_e221797222117_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd221793222112_))))
                                      (let ((_tl221795222122_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e221797222117_)))
                                            (_hd221796222120_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e221797222117_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd221796222120_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd221796222120_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl221795222122_))
                                                    (let ((_e221800222125_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl221795222122_))))
                                                      (let ((_tl221798222130_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e221800222125_)))
                    (_hd221799222128_
                     (let () (declare (not safe)) (##car _e221800222125_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl221798222130_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl221792222114_))
                        (let ((_e221803222133_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl221792222114_))))
                          (let ((_tl221801222138_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221803222133_)))
                                (_hd221802222136_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221803222133_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd221802222136_))
                                (let ((_e221806222141_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd221802222136_))))
                                  (let ((_tl221804222146_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221806222141_)))
                                        (_hd221805222144_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221806222141_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd221805222144_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd221805222144_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl221804222146_))
                                                (let ((_e221809222149_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl221804222146_))))
                                                  (let ((_tl221807222154_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e221809222149_)))
                                                        (_hd221808222152_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e221809222149_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl221807222154_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl221801222138_))
                                                            (let ((_e221812222157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl221801222138_))))
                      (let ((_tl221810222162_
                             (let ()
                               (declare (not safe))
                               (##cdr _e221812222157_)))
                            (_hd221811222160_
                             (let ()
                               (declare (not safe))
                               (##car _e221812222157_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd221811222160_))
                            (let ((_e221815222165_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd221811222160_))))
                              (let ((_tl221813222170_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e221815222165_)))
                                    (_hd221814222168_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e221815222165_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd221814222168_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd221814222168_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl221813222170_))
                                            (let ((_e221818222173_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl221813222170_))))
                                              (let ((_tl221816222178_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e221818222173_)))
                                                    (_hd221817222176_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e221818222173_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl221816222178_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl221810222162_))
                                                        (let ((_e221821222181_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl221810222162_))))
                  (let ((_tl221819222186_
                         (let () (declare (not safe)) (##cdr _e221821222181_)))
                        (_hd221820222184_
                         (let ()
                           (declare (not safe))
                           (##car _e221821222181_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd221820222184_))
                        (let ((_e221824222189_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd221820222184_))))
                          (let ((_tl221822222194_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221824222189_)))
                                (_hd221823222192_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221824222189_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd221823222192_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd221823222192_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl221822222194_))
                                        (let ((_e221827222197_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl221822222194_))))
                                          (let ((_tl221825222202_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e221827222197_)))
                                                (_hd221826222200_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e221827222197_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221825222202_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl221819222186_))
                                                    (let ((_e221830222205_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl221819222186_))))
                                                      (let ((_tl221828222210_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e221830222205_)))
                    (_hd221829222208_
                     (let () (declare (not safe)) (##car _e221830222205_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd221829222208_))
                    (let ((_e221833222213_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd221829222208_))))
                      (let ((_tl221831222218_
                             (let ()
                               (declare (not safe))
                               (##cdr _e221833222213_)))
                            (_hd221832222216_
                             (let ()
                               (declare (not safe))
                               (##car _e221833222213_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd221832222216_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd221832222216_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl221831222218_))
                                    (let ((_e221836222221_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl221831222218_))))
                                      (let ((_tl221834222226_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e221836222221_)))
                                            (_hd221835222224_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e221836222221_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl221834222226_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221828222210_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl221786222098_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl221777222074_))
                                                        (___kont232236232237_
                                                         _hd221835222224_
                                                         _hd221826222200_
                                                         _hd221808222152_
                                                         _hd221799222128_
                                                         _hd221784222088_
                                                         _hd221775222064_
                                                         _hd221766222040_
                                                         _hd221757222016_
                                                         _hd221742221976_
                                                         _hd221727221936_
                                                         _hd221709221888_)
                                                        (___kont232238232239_))
                                                    (___kont232238232239_))
                                                (___kont232238232239_))
                                            (___kont232238232239_))))
                                    (___kont232238232239_))
                                (___kont232238232239_))
                            (___kont232238232239_))))
                    (___kont232238232239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232238232239_))
                                                (___kont232238232239_))))
                                        (___kont232238232239_))
                                    (___kont232238232239_))
                                (___kont232238232239_))))
                        (___kont232238232239_))))
                (___kont232238232239_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232238232239_))))
                                            (___kont232238232239_))
                                        (___kont232238232239_))
                                    (___kont232238232239_))))
                            (___kont232238232239_))))
                    (___kont232238232239_))
                (___kont232238232239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont232238232239_))
                                            (___kont232238232239_))
                                        (___kont232238232239_))))
                                (___kont232238232239_))))
                        (___kont232238232239_))
                    (___kont232238232239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232238232239_))
                                                (___kont232238232239_))
                                            (___kont232238232239_))))
                                    (___kont232238232239_))))
                            (___kont232238232239_))
                        (___kont232238232239_))
                    (___kont232238232239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232238232239_))))
                                            (___kont232238232239_))))
                                    (___kont232238232239_))
                                (___kont232238232239_))
                            (___kont232238232239_))))
                    (___kont232238232239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232238232239_))
                                                (___kont232238232239_))
                                            (___kont232238232239_))
                                        (___kont232238232239_))
                                    (___kont232238232239_))
                                (___kont232238232239_))))
                        (___kont232238232239_))
                    (___kont232238232239_))
                (___kont232238232239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont232238232239_))))
                                        (___kont232238232239_))
                                    (___kont232238232239_))))
                            (___kont232238232239_))
                        (___kont232238232239_))
                    (___kont232238232239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232238232239_))))
                                            (___kont232238232239_))
                                        (___kont232238232239_))))
                                (___kont232238232239_))
                            (___kont232238232239_))
                        (___kont232238232239_))))
                (___kont232238232239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont232238232239_))
                                            (___kont232238232239_))
                                        (___kont232238232239_))))
                                (___kont232238232239_))))
                        (___kont232238232239_))))
                (___kont232238232239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont232238232239_))
                                            (___kont232238232239_))
                                        (___kont232238232239_))))
                                (___kont232238232239_))))
                        (___kont232238232239_))
                    (___kont232238232239_))
                (___kont232238232239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont232238232239_))
                                            (___kont232238232239_))))
                                    (___kont232238232239_))))
                            (___kont232238232239_))))
                    (___kont232238232239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232238232239_))
                                                (___kont232238232239_))
                                            (___kont232238232239_))))
                                    (___kont232238232239_))))
                            (___kont232238232239_))
                        (___kont232238232239_))))
                (___kont232238232239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont232238232239_))))
                                        (___kont232238232239_))))
                                (___kont232238232239_))
                            (___kont232238232239_))
                        (___kont232238232239_))))
                (___kont232238232239_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx221422_ _id221423_ _clauses221424_ _gensym?221425_)
        (let _lp221427_ ((_rest221429_ _clauses221424_)
                         (_ids221430_ '())
                         (_impls221431_ '())
                         (_clauses221432_ '()))
          (let* ((_rest221433221441_ _rest221429_)
                 (_else221435221449_
                  (lambda ()
                    (values (reverse _ids221430_)
                            (reverse _impls221431_)
                            (reverse _clauses221432_))))
                 (_K221437221654_
                  (lambda (_rest221452_ _clause221453_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause221453_))
                        (let ((__tmp233313
                               (let ()
                                 (declare (not safe))
                                 (cons _clause221453_ _clauses221432_))))
                          (declare (not safe))
                          (_lp221427_
                           _rest221452_
                           _ids221430_
                           _impls221431_
                           __tmp233313))
                        (let* ((_g221455221466_
                                (lambda (_g221456221463_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g221456221463_))))
                               (_g221454221651_
                                (lambda (_g221456221469_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g221456221469_))
                                      (let ((_e221461221471_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g221456221469_))))
                                        (let ((_hd221460221474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221461221471_)))
                                              (_tl221459221476_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221461221471_))))
                                          ((lambda (_L221479_ _L221480_)
                                             (let* ((_id221497_
                                                     (let ((__tmp233260
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id221423_)))
                                                           (__tmp233259
                                                            (length _clauses221432_))
                                                           (__tmp233258
                                                            (if _gensym?221425_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp233260
                                                        '"__"
                                                        __tmp233259
                                                        __tmp233258)))
                                                    (_id221499_
                                                     (let ((__tmp233261
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx221422_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id221497_
                                                        __tmp233261)))
                                                    (_impl221501_
                                                     (let ((__tmp233262
                                                            (let ((__tmp233264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp233263
                           (let ()
                             (declare (not safe))
                             (cons _L221480_ _L221479_))))
                      (declare (not safe))
                      (cons __tmp233264 __tmp233263))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp233262 _stx221422_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause221648_
                                                     (let* ((___stx232618232619_
                                                             _L221480_)
                                                            (_g221505221533_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx232618232619_)))))
               (let ((___kont232620232621_
                      (lambda (_L221627_)
                        (let ((__tmp233265
                               (let ((__tmp233266
                                      (let ((__tmp233267
                                             (let ((__tmp233268
                                                    (let ((__tmp233274
                                                           (let ((__tmp233275
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id221499_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp233275)))
                  (__tmp233269
                   (let ((__tmp233270
                          (lambda (_g221637221640_ _g221638221642_)
                            (let ((__tmp233271
                                   (let ((__tmp233273
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp233272
                                          (let ()
                                            (declare (not safe))
                                            (cons _g221637221640_ '()))))
                                     (declare (not safe))
                                     (cons __tmp233273 __tmp233272))))
                              (declare (not safe))
                              (cons __tmp233271 _g221638221642_)))))
                     (declare (not safe))
                     (foldr1 __tmp233270 '() _L221627_))))
              (declare (not safe))
              (cons __tmp233274 __tmp233269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp233268))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp233267
                                         _stx221422_))))
                                 (declare (not safe))
                                 (cons __tmp233266 '()))))
                          (declare (not safe))
                          (cons _L221480_ __tmp233265))))
                     (___kont232624232625_
                      (lambda (_L221578_ _L221579_)
                        (let ((__tmp233276
                               (let ((__tmp233277
                                      (let ((__tmp233278
                                             (let ((__tmp233279
                                                    (let ((__tmp233293
                                                           (let ((__tmp233294
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp233294)))
                  (__tmp233280
                   (let ((__tmp233291
                          (let ((__tmp233292
                                 (let ()
                                   (declare (not safe))
                                   (cons _id221499_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp233292)))
                         (__tmp233281
                          (let ((__tmp233287
                                 (let ((__tmp233288
                                        (let ((__tmp233290
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp233289
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L221578_ '()))))
                                          (declare (not safe))
                                          (cons __tmp233290 __tmp233289))))
                                   (declare (not safe))
                                   (cons __tmp233288 '())))
                                (__tmp233282
                                 (let ((__tmp233283
                                        (lambda (_g221590221593_
                                                 _g221591221595_)
                                          (let ((__tmp233284
                                                 (let ((__tmp233286
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp233285
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g221590221593_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp233286
                                                         __tmp233285))))
                                            (declare (not safe))
                                            (cons __tmp233284
                                                  _g221591221595_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp233283 '() _L221579_))))
                            (declare (not safe))
                            (foldr1 cons __tmp233287 __tmp233282))))
                     (declare (not safe))
                     (cons __tmp233291 __tmp233281))))
              (declare (not safe))
              (cons __tmp233293 __tmp233280))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp233279))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp233278
                                         _stx221422_))))
                                 (declare (not safe))
                                 (cons __tmp233277 '()))))
                          (declare (not safe))
                          (cons _L221480_ __tmp233276))))
                     (___kont232628232629_
                      (lambda (_L221538_)
                        (let ((__tmp233295
                               (let ((__tmp233296
                                      (let ((__tmp233297
                                             (let ((__tmp233298
                                                    (let ((__tmp233306
                                                           (let ((__tmp233307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp233307)))
                  (__tmp233299
                   (let ((__tmp233304
                          (let ((__tmp233305
                                 (let ()
                                   (declare (not safe))
                                   (cons _id221499_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp233305)))
                         (__tmp233300
                          (let ((__tmp233301
                                 (let ((__tmp233303
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp233302
                                        (let ()
                                          (declare (not safe))
                                          (cons _L221538_ '()))))
                                   (declare (not safe))
                                   (cons __tmp233303 __tmp233302))))
                            (declare (not safe))
                            (cons __tmp233301 '()))))
                     (declare (not safe))
                     (cons __tmp233304 __tmp233300))))
              (declare (not safe))
              (cons __tmp233306 __tmp233299))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp233298))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp233297
                                         _stx221422_))))
                                 (declare (not safe))
                                 (cons __tmp233296 '()))))
                          (declare (not safe))
                          (cons _L221480_ __tmp233295)))))
                 (let* ((___match232643232644_
                         (lambda (___splice232626232627_
                                  _target221519221554_
                                  _tl221521221556_)
                           (letrec ((_loop221522221559_
                                     (lambda (_hd221520221562_
                                              _arg221526221564_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd221520221562_))
                                           (let ((_e221523221567_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd221520221562_))))
                                             (let ((_lp-tl221525221572_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e221523221567_)))
                                                   (_lp-hd221524221570_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e221523221567_))))
                                               (let ((__tmp233308
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd221524221570_
                                                              _arg221526221564_))))
                                                 (declare (not safe))
                                                 (_loop221522221559_
                                                  _lp-tl221525221572_
                                                  __tmp233308))))
                                           (let ((_arg221527221575_
                                                  (reverse _arg221526221564_)))
                                             (___kont232624232625_
                                              _tl221521221556_
                                              _arg221527221575_))))))
                             (let ()
                               (declare (not safe))
                               (_loop221522221559_
                                _target221519221554_
                                '())))))
                        (___match232637232638_
                         (lambda (___splice232622232623_
                                  _target221508221603_
                                  _tl221510221605_)
                           (letrec ((_loop221511221608_
                                     (lambda (_hd221509221611_
                                              _arg221515221613_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd221509221611_))
                                           (let ((_e221512221616_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd221509221611_))))
                                             (let ((_lp-tl221514221621_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e221512221616_)))
                                                   (_lp-hd221513221619_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e221512221616_))))
                                               (let ((__tmp233309
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd221513221619_
                                                              _arg221515221613_))))
                                                 (declare (not safe))
                                                 (_loop221511221608_
                                                  _lp-tl221514221621_
                                                  __tmp233309))))
                                           (let ((_arg221516221624_
                                                  (reverse _arg221515221613_)))
                                             (___kont232620232621_
                                              _arg221516221624_))))))
                             (let ()
                               (declare (not safe))
                               (_loop221511221608_
                                _target221508221603_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx232618232619_))
                       (let ((___splice232622232623_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx232618232619_
                                 '0))))
                         (let ((_tl221510221605_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice232622232623_ '1)))
                               (_target221508221603_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice232622232623_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl221510221605_))
                               (___match232637232638_
                                ___splice232622232623_
                                _target221508221603_
                                _tl221510221605_)
                               (___match232643232644_
                                ___splice232622232623_
                                _target221508221603_
                                _tl221510221605_))))
                       (___kont232628232629_ ___stx232618232619_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp233312
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id221499_
                                                              _ids221430_)))
                                                     (__tmp233311
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl221501_
                                                              _impls221431_)))
                                                     (__tmp233310
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause221648_
                                                              _clauses221432_))))
                                                 (declare (not safe))
                                                 (_lp221427_
                                                  _rest221452_
                                                  __tmp233312
                                                  __tmp233311
                                                  __tmp233310))))
                                           _tl221459221476_
                                           _hd221460221474_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g221455221466_ _g221456221469_))))))
                          (declare (not safe))
                          (_g221454221651_ _clause221453_))))))
            (if (let () (declare (not safe)) (##pair? _rest221433221441_))
                (let ((_hd221438221657_
                       (let ()
                         (declare (not safe))
                         (##car _rest221433221441_)))
                      (_tl221439221659_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest221433221441_))))
                  (let* ((_clause221662_ _hd221438221657_)
                         (_rest221664_ _tl221439221659_))
                    (declare (not safe))
                    (_K221437221654_ _rest221664_ _clause221662_)))
                (let () (declare (not safe)) (_else221435221449_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx221669_ _id221670_ _clauses221671_)
        (let ((_gensym?221673_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx221669_
           _id221670_
           _clauses221671_
           _gensym?221673_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g233315_
        (let ((_g233314_ (let () (declare (not safe)) (##length _g233315_))))
          (cond ((let () (declare (not safe)) (##fx= _g233314_ 3))
                 (apply (lambda (_stx221669_ _id221670_ _clauses221671_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx221669_
                             _id221670_
                             _clauses221671_)))
                        _g233315_))
                ((let () (declare (not safe)) (##fx= _g233314_ 4))
                 (apply (lambda (_stx221675_
                                 _id221676_
                                 _clauses221677_
                                 _gensym?221678_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx221675_
                             _id221676_
                             _clauses221677_
                             _gensym?221678_)))
                        _g233315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g233315_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx220699_)
        (letrec ((_case-lambda-clause-def220701_
                  (lambda (_id221418_ _impl221419_)
                    (let ((__tmp233316
                           (let ((__tmp233317
                                  (let ((__tmp233320
                                         (let ()
                                           (declare (not safe))
                                           (cons _id221418_ '())))
                                        (__tmp233318
                                         (let ((__tmp233319
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl221419_))))
                                           (declare (not safe))
                                           (cons __tmp233319 '()))))
                                    (declare (not safe))
                                    (cons __tmp233320 __tmp233318))))
                             (declare (not safe))
                             (cons '%#define-values __tmp233317))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp233316 _stx220699_))))
                 (_opt-lambda-dispatch-name220702_
                  (lambda (_id221414_)
                    (if (uninterned-symbol? _id221414_)
                        (let ((_str221416_ (symbol->string _id221414_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str221416_))
                              '"%"
                              _id221414_))
                        _id221414_)))
                 (_kw-lambda-dispatch-name220703_
                  (lambda (_id221409_ _name221410_)
                    (if (uninterned-symbol? _id221409_)
                        (let ((_str221412_ (symbol->string _id221409_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str221412_))
                              _name221410_
                              _id221409_))
                        _id221409_))))
          (let* ((___stx232666232667_ _stx220699_)
                 (_g220708220767_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx232666232667_)))))
            (let ((___kont232668232669_
                   (lambda (_L221318_ _L221319_)
                     (let* ((___stx232646232647_ _L221318_)
                            (_g221336221350_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx232646232647_)))))
                       (let ((___kont232648232649_
                              (lambda (_L221394_) _stx220699_))
                             (___kont232650232651_
                              (lambda (_L221363_)
                                (let ((_g233321_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx220699_
                                          _L221319_
                                          _L221363_))))
                                  (begin
                                    (let ((_g233322_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g233321_)
                                                 (##vector-length _g233321_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g233322_ 3)))
                                          (error "Context expects 3 values"
                                                 _g233322_)))
                                    (let ((_ids221373_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g233321_ 0)))
                                          (_impls221374_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g233321_ 1)))
                                          (_clauses221375_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g233321_ 2))))
                                      (let* ((_g233323_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids221373_))
                                             (_defs221378_
                                              (map _case-lambda-clause-def220701_
                                                   _ids221373_
                                                   _impls221374_)))
                                        (let ((__tmp233325
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L221319_)))
                                              (__tmp233324
                                               (map gxc#identifier-symbol
                                                    _ids221373_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp233325
                                           '" => "
                                           __tmp233324))
                                        (let ((__tmp233326
                                               (let ((__tmp233327
                                                      (let ((__tmp233328
                                                             (let ((__tmp233329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp233330
                                   (let ((__tmp233331
                                          (let ((__tmp233336
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L221319_ '())))
                                                (__tmp233332
                                                 (let ((__tmp233333
                                                        (let ((__tmp233335
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses221375_)))
                      (__tmp233334
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp233335 __tmp233334))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp233333 '()))))
                                            (declare (not safe))
                                            (cons __tmp233336 __tmp233332))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp233331))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp233330
                               _stx220699_))))
                       (declare (not safe))
                       (cons __tmp233329 '()))))
                (declare (not safe))
                (foldr1 cons __tmp233328 _defs221378_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp233327))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp233326
                                           _stx220699_)))))))))
                         (let ((___match232657232658_
                                (lambda (_e221341221386_
                                         _hd221340221389_
                                         _tl221339221391_)
                                  (let ((_L221394_ _tl221339221391_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L221394_))
                                        (___kont232648232649_ _L221394_)
                                        (___kont232650232651_
                                         _tl221339221391_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx232646232647_))
                               (let ((_e221341221386_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx232646232647_))))
                                 (let ((_tl221339221391_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e221341221386_)))
                                       (_hd221340221389_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e221341221386_))))
                                   (___match232657232658_
                                    _e221341221386_
                                    _hd221340221389_
                                    _tl221339221391_)))
                               (let ()
                                 (declare (not safe))
                                 (_g221336221350_))))))))
                  (___kont232670232671_
                   (lambda (_L221136_ _L221137_)
                     (let* ((_g221153221183_
                             (lambda (_g221154221180_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g221154221180_))))
                            (_g221152221278_
                             (lambda (_g221154221186_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g221154221186_))
                                   (let ((_e221160221188_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g221154221186_))))
                                     (let ((_hd221159221191_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e221160221188_)))
                                           (_tl221158221193_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e221160221188_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl221158221193_))
                                           (let ((_e221163221196_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl221158221193_))))
                                             (let ((_hd221162221199_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e221163221196_)))
                                                   (_tl221161221201_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e221163221196_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd221162221199_))
                                                   (let ((_e221166221204_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd221162221199_))))
                                                     (let ((_hd221165221207_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e221166221204_)))
                                                           (_tl221164221209_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e221166221204_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd221165221207_))
                                                           (let ((_e221169221212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd221165221207_))))
                     (let ((_hd221168221215_
                            (let ()
                              (declare (not safe))
                              (##car _e221169221212_)))
                           (_tl221167221217_
                            (let ()
                              (declare (not safe))
                              (##cdr _e221169221212_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd221168221215_))
                           (let ((_e221172221220_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd221168221215_))))
                             (let ((_hd221171221223_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e221172221220_)))
                                   (_tl221170221225_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e221172221220_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl221170221225_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl221167221217_))
                                       (let ((_e221175221228_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl221167221217_))))
                                         (let ((_hd221174221231_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e221175221228_)))
                                               (_tl221173221233_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e221175221228_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl221173221233_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl221164221209_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl221161221201_))
                                                       (let ((_e221178221236_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl221161221201_))))
                 (let ((_hd221177221239_
                        (let () (declare (not safe)) (##car _e221178221236_)))
                       (_tl221176221241_
                        (let () (declare (not safe)) (##cdr _e221178221236_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl221176221241_))
                       ((lambda (_L221244_ _L221245_ _L221246_)
                          (let* ((_lambda-id221270_
                                  (let ((__tmp233339
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L221137_)))
                                        (__tmp233337
                                         (let ((__tmp233338
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L221246_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name220702_
                                            __tmp233338))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp233339
                                     '"__"
                                     __tmp233337)))
                                 (_lambda-id221272_
                                  (let ((__tmp233340
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx220699_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id221270_
                                     __tmp233340)))
                                 (_g233341_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id221272_)))
                                 (_new-case-lambda-expr221275_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L221244_
                                     _L221246_
                                     _lambda-id221272_))))
                            (let ((__tmp233343
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L221137_)))
                                  (__tmp233342
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id221272_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp233343
                               '" => "
                               __tmp233342))
                            (let ((__tmp233344
                                   (let ((__tmp233345
                                          (let ((__tmp233353
                                                 (let ((__tmp233354
                                                        (let ((__tmp233355
                                                               (let ((__tmp233358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id221272_ '())))
                             (__tmp233356
                              (let ((__tmp233357
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L221245_))))
                                (declare (not safe))
                                (cons __tmp233357 '()))))
                         (declare (not safe))
                         (cons __tmp233358 __tmp233356))))
                  (declare (not safe))
                  (cons '%#define-values __tmp233355))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp233354
                                                    _stx220699_)))
                                                (__tmp233346
                                                 (let ((__tmp233347
                                                        (let ((__tmp233348
                                                               (let ((__tmp233349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp233350
                                     (let ((__tmp233352
                                            (let ()
                                              (declare (not safe))
                                              (cons _L221137_ '())))
                                           (__tmp233351
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr221275_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp233352 __tmp233351))))
                                (declare (not safe))
                                (cons '%#define-values __tmp233350))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp233349 _stx220699_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp233348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp233347 '()))))
                                            (declare (not safe))
                                            (cons __tmp233353 __tmp233346))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp233345))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp233344
                               _stx220699_))))
                        _hd221177221239_
                        _hd221174221231_
                        _hd221171221223_)
                       (let ()
                         (declare (not safe))
                         (_g221153221183_ _g221154221186_)))))
               (let () (declare (not safe)) (_g221153221183_ _g221154221186_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g221153221183_
                                                      _g221154221186_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g221153221183_
                                                  _g221154221186_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g221153221183_ _g221154221186_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g221153221183_ _g221154221186_)))))
                           (let ()
                             (declare (not safe))
                             (_g221153221183_ _g221154221186_)))))
                   (let ()
                     (declare (not safe))
                     (_g221153221183_ _g221154221186_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g221153221183_
                                                      _g221154221186_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g221153221183_
                                              _g221154221186_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g221153221183_ _g221154221186_))))))
                       (declare (not safe))
                       (_g221152221278_ _L221136_))))
                  (___kont232672232673_
                   (lambda (_L220850_ _L220851_)
                     (let* ((_g220867220920_
                             (lambda (_g220868220917_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g220868220917_))))
                            (_g220866221096_
                             (lambda (_g220868220923_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g220868220923_))
                                   (let ((_e220876220925_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g220868220923_))))
                                     (let ((_hd220875220928_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e220876220925_)))
                                           (_tl220874220930_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e220876220925_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl220874220930_))
                                           (let ((_e220879220933_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl220874220930_))))
                                             (let ((_hd220878220936_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e220879220933_)))
                                                   (_tl220877220938_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e220879220933_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd220878220936_))
                                                   (let ((_e220882220941_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd220878220936_))))
                                                     (let ((_hd220881220944_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e220882220941_)))
                                                           (_tl220880220946_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e220882220941_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd220881220944_))
                                                           (let ((_e220885220949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd220881220944_))))
                     (let ((_hd220884220952_
                            (let ()
                              (declare (not safe))
                              (##car _e220885220949_)))
                           (_tl220883220954_
                            (let ()
                              (declare (not safe))
                              (##cdr _e220885220949_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd220884220952_))
                           (let ((_e220888220957_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd220884220952_))))
                             (let ((_hd220887220960_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e220888220957_)))
                                   (_tl220886220962_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e220888220957_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl220886220962_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl220883220954_))
                                       (let ((_e220891220965_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl220883220954_))))
                                         (let ((_hd220890220968_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e220891220965_)))
                                               (_tl220889220970_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e220891220965_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd220890220968_))
                                               (let ((_e220894220973_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd220890220968_))))
                                                 (let ((_hd220893220976_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e220894220973_)))
                                                       (_tl220892220978_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e220894220973_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl220892220978_))
                                                       (let ((_e220897220981_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl220892220978_))))
                 (let ((_hd220896220984_
                        (let () (declare (not safe)) (##car _e220897220981_)))
                       (_tl220895220986_
                        (let () (declare (not safe)) (##cdr _e220897220981_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd220896220984_))
                       (let ((_e220900220989_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd220896220984_))))
                         (let ((_hd220899220992_
                                (let ()
                                  (declare (not safe))
                                  (##car _e220900220989_)))
                               (_tl220898220994_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e220900220989_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd220899220992_))
                               (let ((_e220903220997_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd220899220992_))))
                                 (let ((_hd220902221000_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e220903220997_)))
                                       (_tl220901221002_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e220903220997_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd220902221000_))
                                       (let ((_e220906221005_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd220902221000_))))
                                         (let ((_hd220905221008_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e220906221005_)))
                                               (_tl220904221010_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e220906221005_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl220904221010_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl220901221002_))
                                                   (let ((_e220909221013_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl220901221002_))))
                                                     (let ((_hd220908221016_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e220909221013_)))
                                                           (_tl220907221018_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e220909221013_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl220907221018_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl220898220994_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl220895220986_))
                           (let ((_e220912221021_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl220895220986_))))
                             (let ((_hd220911221024_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e220912221021_)))
                                   (_tl220910221026_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e220912221021_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl220910221026_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl220889220970_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl220880220946_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl220877220938_))
                                               (let ((_e220915221029_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl220877220938_))))
                                                 (let ((_hd220914221032_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e220915221029_)))
                                                       (_tl220913221034_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e220915221029_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl220913221034_))
                                                       ((lambda (_L221037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L221038_
                         _L221039_
                         _L221040_
                         _L221041_)
                  (let* ((_get-kws-id221081_
                          (let ((__tmp233361
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L220851_)))
                                (__tmp233359
                                 (let ((__tmp233360
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L221041_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name220703_
                                    __tmp233360
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp233361 '"__" __tmp233359)))
                         (_get-kws-id221083_
                          (let ((__tmp233362
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx220699_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id221081_
                             __tmp233362)))
                         (_main-id221085_
                          (let ((__tmp233365
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L220851_)))
                                (__tmp233363
                                 (let ((__tmp233364
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L221040_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name220703_
                                    __tmp233364
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp233365 '"__" __tmp233363)))
                         (_main-id221087_
                          (let ((__tmp233366
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx220699_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id221085_
                             __tmp233366)))
                         (_g233367_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id221083_)))
                         (_g233368_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id221087_)))
                         (_new-kw-dispatch221091_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L221037_
                             _L221041_
                             _get-kws-id221083_)))
                         (_new-get-kws221093_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L221038_
                             _L221040_
                             _main-id221087_))))
                    (let ((__tmp233371
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L220851_)))
                          (__tmp233370
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id221083_)))
                          (__tmp233369
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id221087_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp233371
                       '" => "
                       __tmp233370
                       '" => "
                       __tmp233369))
                    (let ((__tmp233372
                           (let ((__tmp233373
                                  (let ((__tmp233386
                                         (let ((__tmp233387
                                                (let ((__tmp233388
                                                       (let ((__tmp233389
                                                              (let ((__tmp233391
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id221087_ '())))
                            (__tmp233390
                             (let ()
                               (declare (not safe))
                               (cons _L221039_ '()))))
                        (declare (not safe))
                        (cons __tmp233391 __tmp233390))))
                 (declare (not safe))
                 (cons '%#define-values __tmp233389))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp233388
                                                   _stx220699_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp233387)))
                                        (__tmp233374
                                         (let ((__tmp233381
                                                (let ((__tmp233382
                                                       (let ((__tmp233383
                                                              (let ((__tmp233385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id221083_ '())))
                            (__tmp233384
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws221093_ '()))))
                        (declare (not safe))
                        (cons __tmp233385 __tmp233384))))
                 (declare (not safe))
                 (cons '%#define-values __tmp233383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp233382
                                                   _stx220699_)))
                                               (__tmp233375
                                                (let ((__tmp233376
                                                       (let ((__tmp233377
                                                              (let ((__tmp233378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp233380
                                    (let ()
                                      (declare (not safe))
                                      (cons _L220851_ '())))
                                   (__tmp233379
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch221091_ '()))))
                               (declare (not safe))
                               (cons __tmp233380 __tmp233379))))
                        (declare (not safe))
                        (cons '%#define-values __tmp233378))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp233377 _stx220699_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp233376 '()))))
                                           (declare (not safe))
                                           (cons __tmp233381 __tmp233375))))
                                    (declare (not safe))
                                    (cons __tmp233386 __tmp233374))))
                             (declare (not safe))
                             (cons '%#begin __tmp233373))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp233372 _stx220699_))))
                _hd220914221032_
                _hd220911221024_
                _hd220908221016_
                _hd220905221008_
                _hd220887220960_)
               (let ()
                 (declare (not safe))
                 (_g220867220920_ _g220868220923_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g220867220920_
                                                  _g220868220923_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g220867220920_
                                              _g220868220923_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g220867220920_ _g220868220923_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g220867220920_ _g220868220923_)))))
                           (let ()
                             (declare (not safe))
                             (_g220867220920_ _g220868220923_)))
                       (let ()
                         (declare (not safe))
                         (_g220867220920_ _g220868220923_)))
                   (let ()
                     (declare (not safe))
                     (_g220867220920_ _g220868220923_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g220867220920_
                                                      _g220868220923_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g220867220920_
                                                  _g220868220923_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g220867220920_ _g220868220923_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g220867220920_ _g220868220923_)))))
                       (let ()
                         (declare (not safe))
                         (_g220867220920_ _g220868220923_)))))
               (let ()
                 (declare (not safe))
                 (_g220867220920_ _g220868220923_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g220867220920_
                                                  _g220868220923_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g220867220920_ _g220868220923_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g220867220920_ _g220868220923_)))))
                           (let ()
                             (declare (not safe))
                             (_g220867220920_ _g220868220923_)))))
                   (let ()
                     (declare (not safe))
                     (_g220867220920_ _g220868220923_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g220867220920_
                                                      _g220868220923_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g220867220920_
                                              _g220868220923_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g220867220920_ _g220868220923_))))))
                       (declare (not safe))
                       (_g220866221096_ _L220850_))))
                  (___kont232674232675_
                   (lambda (_L220796_ _L220797_)
                     (let ((__tmp233392
                            (let ((__tmp233393
                                   (let ((__tmp233394
                                          (let ((__tmp233395
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L220796_))))
                                            (declare (not safe))
                                            (cons __tmp233395 '()))))
                                     (declare (not safe))
                                     (cons _L220797_ __tmp233394))))
                              (declare (not safe))
                              (cons '%#define-values __tmp233393))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp233392 _stx220699_)))))
              (let* ((___match232759232760_
                      (lambda (_e220742220818_
                               _hd220741220821_
                               _tl220740220823_
                               _e220745220826_
                               _hd220744220829_
                               _tl220743220831_
                               _e220748220834_
                               _hd220747220837_
                               _tl220746220839_
                               _e220751220842_
                               _hd220750220845_
                               _tl220749220847_)
                        (let ((_L220850_ _hd220750220845_)
                              (_L220851_ _hd220747220837_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L220851_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L220850_)))
                              (___kont232672232673_ _L220850_ _L220851_)
                              (___kont232674232675_
                               _hd220750220845_
                               _hd220744220829_)))))
                     (___match232731232732_
                      (lambda (_e220728221104_
                               _hd220727221107_
                               _tl220726221109_
                               _e220731221112_
                               _hd220730221115_
                               _tl220729221117_
                               _e220734221120_
                               _hd220733221123_
                               _tl220732221125_
                               _e220737221128_
                               _hd220736221131_
                               _tl220735221133_)
                        (let ((_L221136_ _hd220736221131_)
                              (_L221137_ _hd220733221123_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L221137_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L221136_)))
                              (___kont232670232671_ _L221136_ _L221137_)
                              (___match232759232760_
                               _e220728221104_
                               _hd220727221107_
                               _tl220726221109_
                               _e220731221112_
                               _hd220730221115_
                               _tl220729221117_
                               _e220734221120_
                               _hd220733221123_
                               _tl220732221125_
                               _e220737221128_
                               _hd220736221131_
                               _tl220735221133_)))))
                     (___match232703232704_
                      (lambda (_e220714221286_
                               _hd220713221289_
                               _tl220712221291_
                               _e220717221294_
                               _hd220716221297_
                               _tl220715221299_
                               _e220720221302_
                               _hd220719221305_
                               _tl220718221307_
                               _e220723221310_
                               _hd220722221313_
                               _tl220721221315_)
                        (let ((_L221318_ _hd220722221313_)
                              (_L221319_ _hd220719221305_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L221319_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L221318_)))
                              (___kont232668232669_ _L221318_ _L221319_)
                              (___match232731232732_
                               _e220714221286_
                               _hd220713221289_
                               _tl220712221291_
                               _e220717221294_
                               _hd220716221297_
                               _tl220715221299_
                               _e220720221302_
                               _hd220719221305_
                               _tl220718221307_
                               _e220723221310_
                               _hd220722221313_
                               _tl220721221315_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx232666232667_))
                    (let ((_e220714221286_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx232666232667_))))
                      (let ((_tl220712221291_
                             (let ()
                               (declare (not safe))
                               (##cdr _e220714221286_)))
                            (_hd220713221289_
                             (let ()
                               (declare (not safe))
                               (##car _e220714221286_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl220712221291_))
                            (let ((_e220717221294_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl220712221291_))))
                              (let ((_tl220715221299_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e220717221294_)))
                                    (_hd220716221297_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e220717221294_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd220716221297_))
                                    (let ((_e220720221302_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd220716221297_))))
                                      (let ((_tl220718221307_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e220720221302_)))
                                            (_hd220719221305_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e220720221302_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl220718221307_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl220715221299_))
                                                (let ((_e220723221310_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl220715221299_))))
                                                  (let ((_tl220721221315_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e220723221310_)))
                                                        (_hd220722221313_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e220723221310_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl220721221315_))
                                                        (___match232703232704_
                                                         _e220714221286_
                                                         _hd220713221289_
                                                         _tl220712221291_
                                                         _e220717221294_
                                                         _hd220716221297_
                                                         _tl220715221299_
                                                         _e220720221302_
                                                         _hd220719221305_
                                                         _tl220718221307_
                                                         _e220723221310_
                                                         _hd220722221313_
                                                         _tl220721221315_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g220708220767_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220708220767_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl220715221299_))
                                                (let ((_e220762220788_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl220715221299_))))
                                                  (let ((_tl220760220793_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e220762220788_)))
                                                        (_hd220761220791_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e220762220788_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl220760220793_))
                                                        (___kont232674232675_
                                                         _hd220761220791_
                                                         _hd220716221297_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g220708220767_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220708220767_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl220715221299_))
                                        (let ((_e220762220788_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl220715221299_))))
                                          (let ((_tl220760220793_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e220762220788_)))
                                                (_hd220761220791_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e220762220788_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl220760220793_))
                                                (___kont232674232675_
                                                 _hd220761220791_
                                                 _hd220716221297_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220708220767_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g220708220767_))))))
                            (let () (declare (not safe)) (_g220708220767_)))))
                    (let () (declare (not safe)) (_g220708220767_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx219631_)
        (letrec* ((_bind-e__231062231063_
                   (lambda (_id220683_ _expr220684_ _compile?220685_)
                     (let ((__tmp233398
                            (let ()
                              (declare (not safe))
                              (cons _id220683_ '())))
                           (__tmp233396
                            (let ((__tmp233397
                                   (if _compile?220685_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr220684_))
                                       _expr220684_)))
                              (declare (not safe))
                              (cons __tmp233397 '()))))
                       (declare (not safe))
                       (cons __tmp233398 __tmp233396))))
                  (_bind-e__0__231064231065_
                   (lambda (_id220690_ _expr220691_)
                     (let ((_compile?220693_ '#t))
                       (declare (not safe))
                       (_bind-e__231062231063_
                        _id220690_
                        _expr220691_
                        _compile?220693_))))
                  (_bind-e219633_
                   (lambda _g233400_
                     (let ((_g233399_
                            (let ()
                              (declare (not safe))
                              (##length _g233400_))))
                       (cond ((let () (declare (not safe)) (##fx= _g233399_ 2))
                              (apply (lambda (_id220690_ _expr220691_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__231064231065_
                                          _id220690_
                                          _expr220691_)))
                                     _g233400_))
                             ((let () (declare (not safe)) (##fx= _g233399_ 3))
                              (apply (lambda (_id220695_
                                              _expr220696_
                                              _compile?220697_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__231062231063_
                                          _id220695_
                                          _expr220696_
                                          _compile?220697_)))
                                     _g233400_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g233400_))))))
                  (_compile-bindings219634_
                   (lambda (_bindings220267_)
                     (let _lp220269_ ((_rest220271_ _bindings220267_)
                                      (_lift1220272_ '())
                                      (_lift2220273_ '())
                                      (_bind220274_ '()))
                       (let* ((_rest220275220283_ _rest220271_)
                              (_else220277220291_
                               (lambda ()
                                 (values (reverse _lift1220272_)
                                         (reverse _lift2220273_)
                                         (reverse _bind220274_))))
                              (_K220279220670_
                               (lambda (_rest220294_ _hd220295_)
                                 (let* ((___stx232802232803_ _hd220295_)
                                        (_g220299220335_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx232802232803_)))))
                                   (let ((___kont232804232805_
                                          (lambda (_L220577_ _L220578_)
                                            (let* ((___stx232782232783_
                                                    _L220577_)
                                                   (_g220593220607_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx232782232783_)))))
                                              (let ((___kont232784232785_
                                                     (lambda (_L220655_)
                                                       (let ((__tmp233401
                                                              (let ((__tmp233402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__231062231063_
                                _L220578_
                                _L220577_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp233402 _bind220274_))))
                 (declare (not safe))
                 (_lp220269_
                  _rest220294_
                  _lift1220272_
                  _lift2220273_
                  __tmp233401))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232786232787_
                                                     (lambda (_L220620_)
                                                       (let ((_g233403_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx219631_
                         _L220578_
                         _L220620_
                         '#t))))
                 (begin
                   (let ((_g233404_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g233403_)
                                (##vector-length _g233403_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g233404_ 3)))
                         (error "Context expects 3 values" _g233404_)))
                   (let ((_ids220630_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g233403_ 0)))
                         (_impls220631_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g233403_ 1)))
                         (_clauses220632_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g233403_ 2))))
                     (let* ((_g233405_
                             (for-each gx#core-bind-runtime! _ids220630_))
                            (_xbind220635_
                             (map _bind-e219633_ _ids220630_ _impls220631_))
                            (_expr*220637_
                             (let ((__tmp233407
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses220632_)))
                                   (__tmp233406
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp233407
                                __tmp233406)))
                            (_bind*220639_
                             (let ()
                               (declare (not safe))
                               (_bind-e__231062231063_
                                _L220578_
                                _expr*220637_
                                '#f))))
                       (let ((__tmp233409
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L220578_)))
                             (__tmp233408
                              (map gxc#identifier-symbol _ids220630_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp233409
                          '" => "
                          __tmp233408))
                       (let ((__tmp233411
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2220273_ _xbind220635_)))
                             (__tmp233410
                              (let ()
                                (declare (not safe))
                                (cons _bind*220639_ _bind220274_))))
                         (declare (not safe))
                         (_lp220269_
                          _rest220294_
                          _lift1220272_
                          __tmp233411
                          __tmp233410)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match232793232794_
                                                       (lambda (_e220598220647_
                                                                _hd220597220650_
                                                                _tl220596220652_)
                                                         (let ((_L220655_
                                                                _tl220596220652_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L220655_))
                       (___kont232784232785_ _L220655_)
                       (___kont232786232787_ _tl220596220652_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx232782232783_))
                                                      (let ((_e220598220647_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx232782232783_))))
                (let ((_tl220596220652_
                       (let () (declare (not safe)) (##cdr _e220598220647_)))
                      (_hd220597220650_
                       (let () (declare (not safe)) (##car _e220598220647_))))
                  (___match232793232794_
                   _e220598220647_
                   _hd220597220650_
                   _tl220596220652_)))
              (let () (declare (not safe)) (_g220593220607_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont232806232807_
                                          (lambda (_L220405_ _L220406_)
                                            (let* ((_g220420220450_
                                                    (lambda (_g220421220447_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g220421220447_))))
                                                   (_g220419220545_
                                                    (lambda (_g220421220453_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g220421220453_))
                                                          (let ((_e220427220455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g220421220453_))))
                    (let ((_hd220426220458_
                           (let ()
                             (declare (not safe))
                             (##car _e220427220455_)))
                          (_tl220425220460_
                           (let ()
                             (declare (not safe))
                             (##cdr _e220427220455_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl220425220460_))
                          (let ((_e220430220463_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl220425220460_))))
                            (let ((_hd220429220466_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e220430220463_)))
                                  (_tl220428220468_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e220430220463_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd220429220466_))
                                  (let ((_e220433220471_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd220429220466_))))
                                    (let ((_hd220432220474_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e220433220471_)))
                                          (_tl220431220476_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e220433220471_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd220432220474_))
                                          (let ((_e220436220479_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd220432220474_))))
                                            (let ((_hd220435220482_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e220436220479_)))
                                                  (_tl220434220484_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e220436220479_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd220435220482_))
                                                  (let ((_e220439220487_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd220435220482_))))
                                                    (let ((_hd220438220490_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e220439220487_)))
                                                          (_tl220437220492_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e220439220487_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl220437220492_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl220434220484_))
                      (let ((_e220442220495_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl220434220484_))))
                        (let ((_hd220441220498_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220442220495_)))
                              (_tl220440220500_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220442220495_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl220440220500_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl220431220476_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220428220468_))
                                      (let ((_e220445220503_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220428220468_))))
                                        (let ((_hd220444220506_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220445220503_)))
                                              (_tl220443220508_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220445220503_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220443220508_))
                                              ((lambda (_L220511_
                                                        _L220512_
                                                        _L220513_)
                                                 (let* ((_lambda-id220537_
                                                         (let ((__tmp233413
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L220406_)))
                       (__tmp233412 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp233413 __tmp233412)))
                (_lambda-id220539_
                 (let ((__tmp233414
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx219631_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id220537_ __tmp233414)))
                (_g233415_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id220539_)))
                (_new-case-lambda-expr220542_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L220511_
                    _L220513_
                    _lambda-id220539_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp233417
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L220406_)))
                                                         (__tmp233416
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id220539_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp233417
                                                      '" => "
                                                      __tmp233416))
                                                   (let ((__tmp233420
                                                          (let ((__tmp233421
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__231062231063_
                            _L220406_
                            _new-case-lambda-expr220542_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp233421 _rest220294_)))
                 (__tmp233418
                  (let ((__tmp233419
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__231064231065_
                            _lambda-id220539_
                            _L220512_))))
                    (declare (not safe))
                    (cons __tmp233419 _lift1220272_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp220269_
                                                      __tmp233420
                                                      __tmp233418
                                                      _lift2220273_
                                                      _bind220274_))))
                                               _hd220444220506_
                                               _hd220441220498_
                                               _hd220438220490_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220420220450_
                                                 _g220421220453_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220420220450_ _g220421220453_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g220420220450_ _g220421220453_)))
                              (let ()
                                (declare (not safe))
                                (_g220420220450_ _g220421220453_)))))
                      (let ()
                        (declare (not safe))
                        (_g220420220450_ _g220421220453_)))
                  (let ()
                    (declare (not safe))
                    (_g220420220450_ _g220421220453_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g220420220450_
                                                     _g220421220453_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g220420220450_
                                             _g220421220453_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g220420220450_ _g220421220453_)))))
                          (let ()
                            (declare (not safe))
                            (_g220420220450_ _g220421220453_)))))
                  (let ()
                    (declare (not safe))
                    (_g220420220450_ _g220421220453_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g220419220545_ _L220405_))))
                                         (___kont232808232809_
                                          (lambda (_L220356_ _L220357_)
                                            (let ((__tmp233422
                                                   (let ((__tmp233423
                                                          (let ((__tmp233424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp233425
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L220356_))))
                           (declare (not safe))
                           (cons __tmp233425 '()))))
                    (declare (not safe))
                    (cons _L220357_ __tmp233424))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp233423
                                                           _bind220274_))))
                                              (declare (not safe))
                                              (_lp220269_
                                               _rest220294_
                                               _lift1220272_
                                               _lift2220273_
                                               __tmp233422)))))
                                     (let* ((___match232853232854_
                                             (lambda (_e220316220381_
                                                      _hd220315220384_
                                                      _tl220314220386_
                                                      _e220319220389_
                                                      _hd220318220392_
                                                      _tl220317220394_
                                                      _e220322220397_
                                                      _hd220321220400_
                                                      _tl220320220402_)
                                               (let ((_L220405_
                                                      _hd220321220400_)
                                                     (_L220406_
                                                      _hd220318220392_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L220406_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L220405_)))
                                                     (___kont232806232807_
                                                      _L220405_
                                                      _L220406_)
                                                     (___kont232808232809_
                                                      _hd220321220400_
                                                      _hd220315220384_)))))
                                            (___match232831232832_
                                             (lambda (_e220305220553_
                                                      _hd220304220556_
                                                      _tl220303220558_
                                                      _e220308220561_
                                                      _hd220307220564_
                                                      _tl220306220566_
                                                      _e220311220569_
                                                      _hd220310220572_
                                                      _tl220309220574_)
                                               (let ((_L220577_
                                                      _hd220310220572_)
                                                     (_L220578_
                                                      _hd220307220564_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L220578_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L220577_)))
                                                     (___kont232804232805_
                                                      _L220577_
                                                      _L220578_)
                                                     (___match232853232854_
                                                      _e220305220553_
                                                      _hd220304220556_
                                                      _tl220303220558_
                                                      _e220308220561_
                                                      _hd220307220564_
                                                      _tl220306220566_
                                                      _e220311220569_
                                                      _hd220310220572_
                                                      _tl220309220574_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx232802232803_))
                                           (let ((_e220305220553_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx232802232803_))))
                                             (let ((_tl220303220558_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e220305220553_)))
                                                   (_hd220304220556_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e220305220553_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd220304220556_))
                                                   (let ((_e220308220561_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd220304220556_))))
                                                     (let ((_tl220306220566_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e220308220561_)))
                                                           (_hd220307220564_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e220308220561_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl220306220566_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl220303220558_))
                       (let ((_e220311220569_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl220303220558_))))
                         (let ((_tl220309220574_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e220311220569_)))
                               (_hd220310220572_
                                (let ()
                                  (declare (not safe))
                                  (##car _e220311220569_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl220309220574_))
                               (___match232831232832_
                                _e220305220553_
                                _hd220304220556_
                                _tl220303220558_
                                _e220308220561_
                                _hd220307220564_
                                _tl220306220566_
                                _e220311220569_
                                _hd220310220572_
                                _tl220309220574_)
                               (let ()
                                 (declare (not safe))
                                 (_g220299220335_)))))
                       (let () (declare (not safe)) (_g220299220335_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl220303220558_))
                       (let ((_e220330220348_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl220303220558_))))
                         (let ((_tl220328220353_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e220330220348_)))
                               (_hd220329220351_
                                (let ()
                                  (declare (not safe))
                                  (##car _e220330220348_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl220328220353_))
                               (___kont232808232809_
                                _hd220329220351_
                                _hd220304220556_)
                               (let ()
                                 (declare (not safe))
                                 (_g220299220335_)))))
                       (let () (declare (not safe)) (_g220299220335_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl220303220558_))
                                                       (let ((_e220330220348_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl220303220558_))))
                 (let ((_tl220328220353_
                        (let () (declare (not safe)) (##cdr _e220330220348_)))
                       (_hd220329220351_
                        (let () (declare (not safe)) (##car _e220330220348_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl220328220353_))
                       (___kont232808232809_ _hd220329220351_ _hd220304220556_)
                       (let () (declare (not safe)) (_g220299220335_)))))
               (let () (declare (not safe)) (_g220299220335_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g220299220335_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest220275220283_))
                             (let ((_hd220280220673_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest220275220283_)))
                                   (_tl220281220675_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest220275220283_))))
                               (let* ((_hd220678_ _hd220280220673_)
                                      (_rest220680_ _tl220281220675_))
                                 (declare (not safe))
                                 (_K220279220670_ _rest220680_ _hd220678_)))
                             (let ()
                               (declare (not safe))
                               (_else220277220291_)))))))
                  (_lift-kw-lambda?219635_
                   (lambda (_bind220191_)
                     (let* ((___stx232870232871_ _bind220191_)
                            (_g220194220211_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx232870232871_)))))
                       (let ((___kont232872232873_
                              (lambda (_L220247_ _L220248_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L220248_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L220247_))
                                    '#f)))
                             (___kont232874232875_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx232870232871_))
                             (let ((_e220200220223_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx232870232871_))))
                               (let ((_tl220198220228_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e220200220223_)))
                                     (_hd220199220226_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e220200220223_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd220199220226_))
                                     (let ((_e220203220231_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd220199220226_))))
                                       (let ((_tl220201220236_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e220203220231_)))
                                             (_hd220202220234_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e220203220231_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl220201220236_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl220198220228_))
                                                 (let ((_e220206220239_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl220198220228_))))
                                                   (let ((_tl220204220244_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e220206220239_)))
                                                         (_hd220205220242_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e220206220239_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl220204220244_))
                                                         (___kont232872232873_
                                                          _hd220205220242_
                                                          _hd220202220234_)
                                                         (___kont232874232875_))))
                                                 (___kont232874232875_))
                                             (___kont232874232875_))))
                                     (___kont232874232875_))))
                             (___kont232874232875_))))))
                  (_lift-kw-lambda-bindings219636_
                   (lambda (_bindings219803_)
                     (let _lp219805_ ((_rest219807_ _bindings219803_)
                                      (_lift1219808_ '())
                                      (_lift2219809_ '())
                                      (_bind219810_ '()))
                       (let* ((_rest219811219819_ _rest219807_)
                              (_else219813219827_
                               (lambda ()
                                 (values (reverse _lift1219808_)
                                         (reverse _lift2219809_)
                                         (reverse _bind219810_))))
                              (_K219815220179_
                               (lambda (_rest219830_ _hd219831_)
                                 (let* ((___stx232900232901_ _hd219831_)
                                        (_g219834219859_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx232900232901_)))))
                                   (let ((___kont232902232903_
                                          (lambda (_L219929_ _L219930_)
                                            (let* ((_g219944219997_
                                                    (lambda (_g219945219994_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g219945219994_))))
                                                   (_g219943220173_
                                                    (lambda (_g219945220000_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g219945220000_))
                                                          (let ((_e219953220002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g219945220000_))))
                    (let ((_hd219952220005_
                           (let ()
                             (declare (not safe))
                             (##car _e219953220002_)))
                          (_tl219951220007_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219953220002_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl219951220007_))
                          (let ((_e219956220010_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl219951220007_))))
                            (let ((_hd219955220013_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219956220010_)))
                                  (_tl219954220015_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219956220010_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd219955220013_))
                                  (let ((_e219959220018_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd219955220013_))))
                                    (let ((_hd219958220021_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219959220018_)))
                                          (_tl219957220023_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219959220018_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd219958220021_))
                                          (let ((_e219962220026_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd219958220021_))))
                                            (let ((_hd219961220029_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e219962220026_)))
                                                  (_tl219960220031_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e219962220026_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd219961220029_))
                                                  (let ((_e219965220034_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd219961220029_))))
                                                    (let ((_hd219964220037_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219965220034_)))
                                                          (_tl219963220039_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219965220034_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219963220039_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl219960220031_))
                      (let ((_e219968220042_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl219960220031_))))
                        (let ((_hd219967220045_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219968220042_)))
                              (_tl219966220047_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219968220042_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd219967220045_))
                              (let ((_e219971220050_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd219967220045_))))
                                (let ((_hd219970220053_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219971220050_)))
                                      (_tl219969220055_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219971220050_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219969220055_))
                                      (let ((_e219974220058_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219969220055_))))
                                        (let ((_hd219973220061_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219974220058_)))
                                              (_tl219972220063_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219974220058_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd219973220061_))
                                              (let ((_e219977220066_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd219973220061_))))
                                                (let ((_hd219976220069_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e219977220066_)))
                                                      (_tl219975220071_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e219977220066_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd219976220069_))
                                                      (let ((_e219980220074_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd219976220069_))))
                (let ((_hd219979220077_
                       (let () (declare (not safe)) (##car _e219980220074_)))
                      (_tl219978220079_
                       (let () (declare (not safe)) (##cdr _e219980220074_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd219979220077_))
                      (let ((_e219983220082_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd219979220077_))))
                        (let ((_hd219982220085_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219983220082_)))
                              (_tl219981220087_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219983220082_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl219981220087_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl219978220079_))
                                  (let ((_e219986220090_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl219978220079_))))
                                    (let ((_hd219985220093_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219986220090_)))
                                          (_tl219984220095_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219986220090_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl219984220095_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219975220071_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl219972220063_))
                                                  (let ((_e219989220098_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl219972220063_))))
                                                    (let ((_hd219988220101_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219989220098_)))
                                                          (_tl219987220103_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219989220098_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219987220103_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl219966220047_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl219957220023_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219954220015_))
                              (let ((_e219992220106_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219954220015_))))
                                (let ((_hd219991220109_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219992220106_)))
                                      (_tl219990220111_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219992220106_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219990220111_))
                                      ((lambda (_L220114_
                                                _L220115_
                                                _L220116_
                                                _L220117_
                                                _L220118_)
                                         (let* ((_get-kws-id220158_
                                                 (let ((__tmp233427
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L219930_)))
                                                       (__tmp233426
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp233427
                                                    __tmp233426)))
                                                (_get-kws-id220160_
                                                 (let ((__tmp233428
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx219631_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id220158_
                                                    __tmp233428)))
                                                (_main-id220162_
                                                 (let ((__tmp233430
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L219930_)))
                                                       (__tmp233429
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp233430
                                                    __tmp233429)))
                                                (_main-id220164_
                                                 (let ((__tmp233431
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx219631_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id220162_
                                                    __tmp233431)))
                                                (_g233432_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id220160_)))
                                                (_g233433_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id220164_)))
                                                (_new-kw-dispatch220168_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L220114_
                                                    _L220118_
                                                    _get-kws-id220160_)))
                                                (_new-get-kws220170_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L220115_
                                                    _L220117_
                                                    _main-id220164_))))
                                           (let ((__tmp233436
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L219930_)))
                                                 (__tmp233435
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id220160_)))
                                                 (__tmp233434
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id220164_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp233436
                                              '" => "
                                              __tmp233435
                                              '" => "
                                              __tmp233434))
                                           (let ((__tmp233441
                                                  (let ((__tmp233442
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__231062231063_
                                                            _main-id220164_
                                                            _L220116_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp233442
                                                          _lift1219808_)))
                                                 (__tmp233439
                                                  (let ((__tmp233440
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__231062231063_
                                                            _get-kws-id220160_
                                                            _new-get-kws220170_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp233440
                                                          _lift2219809_)))
                                                 (__tmp233437
                                                  (let ((__tmp233438
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__231062231063_
                                                            _L219930_
                                                            _new-kw-dispatch220168_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp233438
                                                          _bind219810_))))
                                             (declare (not safe))
                                             (_lp219805_
                                              _rest219830_
                                              __tmp233441
                                              __tmp233439
                                              __tmp233437))))
                                       _hd219991220109_
                                       _hd219988220101_
                                       _hd219985220093_
                                       _hd219982220085_
                                       _hd219964220037_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219944219997_ _g219945220000_)))))
                              (let ()
                                (declare (not safe))
                                (_g219944219997_ _g219945220000_)))
                          (let ()
                            (declare (not safe))
                            (_g219944219997_ _g219945220000_)))
                      (let ()
                        (declare (not safe))
                        (_g219944219997_ _g219945220000_)))
                  (let ()
                    (declare (not safe))
                    (_g219944219997_ _g219945220000_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g219944219997_
                                                     _g219945220000_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g219944219997_
                                                 _g219945220000_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g219944219997_
                                             _g219945220000_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g219944219997_ _g219945220000_)))
                              (let ()
                                (declare (not safe))
                                (_g219944219997_ _g219945220000_)))))
                      (let ()
                        (declare (not safe))
                        (_g219944219997_ _g219945220000_)))))
              (let ()
                (declare (not safe))
                (_g219944219997_ _g219945220000_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g219944219997_
                                                 _g219945220000_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219944219997_ _g219945220000_)))))
                              (let ()
                                (declare (not safe))
                                (_g219944219997_ _g219945220000_)))))
                      (let ()
                        (declare (not safe))
                        (_g219944219997_ _g219945220000_)))
                  (let ()
                    (declare (not safe))
                    (_g219944219997_ _g219945220000_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g219944219997_
                                                     _g219945220000_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g219944219997_
                                             _g219945220000_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g219944219997_ _g219945220000_)))))
                          (let ()
                            (declare (not safe))
                            (_g219944219997_ _g219945220000_)))))
                  (let ()
                    (declare (not safe))
                    (_g219944219997_ _g219945220000_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g219943220173_ _L219929_))))
                                         (___kont232904232905_
                                          (lambda (_L219880_ _L219881_)
                                            (let ((__tmp233443
                                                   (let ((__tmp233444
                                                          (let ((__tmp233445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L219880_ '()))))
                    (declare (not safe))
                    (cons _L219881_ __tmp233445))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp233444
                                                           _bind219810_))))
                                              (declare (not safe))
                                              (_lp219805_
                                               _rest219830_
                                               _lift1219808_
                                               _lift2219809_
                                               __tmp233443)))))
                                     (let ((___match232927232928_
                                            (lambda (_e219840219905_
                                                     _hd219839219908_
                                                     _tl219838219910_
                                                     _e219843219913_
                                                     _hd219842219916_
                                                     _tl219841219918_
                                                     _e219846219921_
                                                     _hd219845219924_
                                                     _tl219844219926_)
                                              (let ((_L219929_
                                                     _hd219845219924_)
                                                    (_L219930_
                                                     _hd219842219916_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L219930_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L219929_)))
                                                    (___kont232902232903_
                                                     _L219929_
                                                     _L219930_)
                                                    (___kont232904232905_
                                                     _hd219845219924_
                                                     _hd219839219908_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx232900232901_))
                                           (let ((_e219840219905_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx232900232901_))))
                                             (let ((_tl219838219910_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e219840219905_)))
                                                   (_hd219839219908_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e219840219905_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd219839219908_))
                                                   (let ((_e219843219913_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd219839219908_))))
                                                     (let ((_tl219841219918_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e219843219913_)))
                                                           (_hd219842219916_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e219843219913_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl219841219918_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl219838219910_))
                       (let ((_e219846219921_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl219838219910_))))
                         (let ((_tl219844219926_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e219846219921_)))
                               (_hd219845219924_
                                (let ()
                                  (declare (not safe))
                                  (##car _e219846219921_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl219844219926_))
                               (___match232927232928_
                                _e219840219905_
                                _hd219839219908_
                                _tl219838219910_
                                _e219843219913_
                                _hd219842219916_
                                _tl219841219918_
                                _e219846219921_
                                _hd219845219924_
                                _tl219844219926_)
                               (let ()
                                 (declare (not safe))
                                 (_g219834219859_)))))
                       (let () (declare (not safe)) (_g219834219859_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl219838219910_))
                       (let ((_e219854219872_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl219838219910_))))
                         (let ((_tl219852219877_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e219854219872_)))
                               (_hd219853219875_
                                (let ()
                                  (declare (not safe))
                                  (##car _e219854219872_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl219852219877_))
                               (___kont232904232905_
                                _hd219853219875_
                                _hd219839219908_)
                               (let ()
                                 (declare (not safe))
                                 (_g219834219859_)))))
                       (let () (declare (not safe)) (_g219834219859_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl219838219910_))
                                                       (let ((_e219854219872_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl219838219910_))))
                 (let ((_tl219852219877_
                        (let () (declare (not safe)) (##cdr _e219854219872_)))
                       (_hd219853219875_
                        (let () (declare (not safe)) (##car _e219854219872_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl219852219877_))
                       (___kont232904232905_ _hd219853219875_ _hd219839219908_)
                       (let () (declare (not safe)) (_g219834219859_)))))
               (let () (declare (not safe)) (_g219834219859_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g219834219859_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest219811219819_))
                             (let ((_hd219816220182_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest219811219819_)))
                                   (_tl219817220184_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest219811219819_))))
                               (let* ((_hd220187_ _hd219816220182_)
                                      (_rest220189_ _tl219817220184_))
                                 (declare (not safe))
                                 (_K219815220179_ _rest220189_ _hd220187_)))
                             (let ()
                               (declare (not safe))
                               (_else219813219827_))))))))
          (let* ((___stx232944232945_ _stx219631_)
                 (_g219639219665_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx232944232945_)))))
            (let ((___kont232946232947_
                   (lambda (_L219725_ _L219726_)
                     (let ((__tmp233447
                            (lambda ()
                              (if (let ((__tmp233474
                                         (let ((__tmp233475
                                                (lambda (_g219754219757_
                                                         _g219755219759_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g219754219757_
                                                          _g219755219759_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp233475
                                                   '()
                                                   _L219726_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?219635_
                                            __tmp233474))
                                  (let ((_g233461_
                                         (let ((__tmp233463
                                                (let ((__tmp233464
                                                       (lambda (_g219761219764_
                                                                _g219762219766_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g219761219764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g219762219766_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp233464
                                                          '()
                                                          _L219726_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings219636_
                                            __tmp233463))))
                                    (begin
                                      (let ((_g233462_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g233461_)
                                                   (##vector-length _g233461_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g233462_ 3)))
                                            (error "Context expects 3 values"
                                                   _g233462_)))
                                      (let ((_lift1219769_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g233461_ 0)))
                                            (_lift2219770_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g233461_ 1)))
                                            (_hd219771_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g233461_ 2))))
                                        (let* ((_expr219773_
                                                (let ((__tmp233465
                                                       (let ((__tmp233466
                                                              (let ((__tmp233467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L219725_ '()))))
                        (declare (not safe))
                        (cons _hd219771_ __tmp233467))))
                 (declare (not safe))
                 (cons '%#let-values __tmp233466))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp233465
                                                   _stx219631_)))
                                               (_expr219775_
                                                (let ((__tmp233468
                                                       (let ((__tmp233469
                                                              (let ((__tmp233470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr219773_ '()))))
                        (declare (not safe))
                        (cons _lift2219770_ __tmp233470))))
                 (declare (not safe))
                 (cons '%#let-values __tmp233469))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp233468
                                                   _stx219631_)))
                                               (_expr219777_
                                                (let ((__tmp233471
                                                       (let ((__tmp233472
                                                              (let ((__tmp233473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr219775_ '()))))
                        (declare (not safe))
                        (cons _lift1219769_ __tmp233473))))
                 (declare (not safe))
                 (cons '%#let-values __tmp233472))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp233471
                                                   _stx219631_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr219777_))))))
                                  (let ((_g233448_
                                         (let ((__tmp233450
                                                (let ((__tmp233451
                                                       (lambda (_g219779219782_
                                                                _g219780219784_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g219779219782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g219780219784_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp233451
                                                          '()
                                                          _L219726_))))
                                           (declare (not safe))
                                           (_compile-bindings219634_
                                            __tmp233450))))
                                    (begin
                                      (let ((_g233449_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g233448_)
                                                   (##vector-length _g233448_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g233449_ 3)))
                                            (error "Context expects 3 values"
                                                   _g233449_)))
                                      (let ((_lift1219787_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g233448_ 0)))
                                            (_lift2219788_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g233448_ 1)))
                                            (_hd219789_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g233448_ 2))))
                                        (let* ((_body219791_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L219725_)))
                                               (_expr219793_
                                                (let ((__tmp233452
                                                       (let ((__tmp233453
                                                              (let ((__tmp233454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body219791_ '()))))
                        (declare (not safe))
                        (cons _hd219789_ __tmp233454))))
                 (declare (not safe))
                 (cons '%#let-values __tmp233453))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp233452
                                                   _stx219631_)))
                                               (_expr219795_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2219788_))
                                                    _expr219793_
                                                    (let ((__tmp233455
                                                           (let ((__tmp233456
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp233457
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr219793_ '()))))
                            (declare (not safe))
                            (cons _lift2219788_ __tmp233457))))
                     (declare (not safe))
                     (cons '%#let-values __tmp233456))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp233455 _stx219631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr219797_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1219787_))
                                                    _expr219795_
                                                    (let ((__tmp233458
                                                           (let ((__tmp233459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp233460
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr219795_ '()))))
                            (declare (not safe))
                            (cons _lift1219787_ __tmp233460))))
                     (declare (not safe))
                     (cons '%#let-values __tmp233459))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp233458 _stx219631_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr219797_)))))))
                           (__tmp233446
                            (let ((__obj233150
                                   (make-object* gx#local-context::t '6)))
                              (gx#local-context:::init! __obj233150)
                              __obj233150)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp233447
                        gx#current-expander-context
                        __tmp233446))))
                  (___kont232950232951_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx219631_)))))
              (let ((___match232971232972_
                     (lambda (_e219645219677_
                              _hd219644219680_
                              _tl219643219682_
                              _e219648219685_
                              _hd219647219688_
                              _tl219646219690_
                              ___splice232948232949_
                              _target219649219693_
                              _tl219651219695_)
                       (letrec ((_loop219652219698_
                                 (lambda (_hd219650219701_ _bind219656219703_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd219650219701_))
                                       (let ((_e219653219706_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd219650219701_))))
                                         (let ((_lp-tl219655219711_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e219653219706_)))
                                               (_lp-hd219654219709_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e219653219706_))))
                                           (let ((__tmp233478
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd219654219709_
                                                          _bind219656219703_))))
                                             (declare (not safe))
                                             (_loop219652219698_
                                              _lp-tl219655219711_
                                              __tmp233478))))
                                       (let ((_bind219657219714_
                                              (reverse _bind219656219703_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl219646219690_))
                                             (let ((_e219660219717_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl219646219690_))))
                                               (let ((_tl219658219722_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e219660219717_)))
                                                     (_hd219659219720_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e219660219717_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl219658219722_))
                                                     (let ((_L219725_
                                                            _hd219659219720_)
                                                           (_L219726_
                                                            _bind219657219714_))
                                                       (if (let ((__tmp233476
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp233477
                                 (lambda (_g219746219749_ _g219747219751_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g219746219749_ _g219747219751_)))))
                            (declare (not safe))
                            (foldr1 __tmp233477 '() _L219726_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp233476))
                   (___kont232946232947_ _L219725_ _L219726_)
                   (___kont232950232951_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont232950232951_))))
                                             (___kont232950232951_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop219652219698_ _target219649219693_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx232944232945_))
                    (let ((_e219645219677_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx232944232945_))))
                      (let ((_tl219643219682_
                             (let ()
                               (declare (not safe))
                               (##cdr _e219645219677_)))
                            (_hd219644219680_
                             (let ()
                               (declare (not safe))
                               (##car _e219645219677_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl219643219682_))
                            (let ((_e219648219685_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl219643219682_))))
                              (let ((_tl219646219690_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e219648219685_)))
                                    (_hd219647219688_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e219648219685_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd219647219688_))
                                    (let ((___splice232948232949_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd219647219688_
                                              '0))))
                                      (let ((_tl219651219695_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice232948232949_
                                                '1)))
                                            (_target219649219693_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice232948232949_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl219651219695_))
                                            (___match232971232972_
                                             _e219645219677_
                                             _hd219644219680_
                                             _tl219643219682_
                                             _e219648219685_
                                             _hd219647219688_
                                             _tl219646219690_
                                             ___splice232948232949_
                                             _target219649219693_
                                             _tl219651219695_)
                                            (___kont232950232951_))))
                                    (___kont232950232951_))))
                            (___kont232950232951_))))
                    (___kont232950232951_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx218775_)
        (letrec* ((_bind-e__231067231068_
                   (lambda (_id219615_ _expr219616_ _compile?219617_)
                     (let ((__tmp233481
                            (let ()
                              (declare (not safe))
                              (cons _id219615_ '())))
                           (__tmp233479
                            (let ((__tmp233480
                                   (if _compile?219617_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr219616_))
                                       _expr219616_)))
                              (declare (not safe))
                              (cons __tmp233480 '()))))
                       (declare (not safe))
                       (cons __tmp233481 __tmp233479))))
                  (_bind-e__0__231069231070_
                   (lambda (_id219622_ _expr219623_)
                     (let ((_compile?219625_ '#t))
                       (declare (not safe))
                       (_bind-e__231067231068_
                        _id219622_
                        _expr219623_
                        _compile?219625_))))
                  (_bind-e218777_
                   (lambda _g233483_
                     (let ((_g233482_
                            (let ()
                              (declare (not safe))
                              (##length _g233483_))))
                       (cond ((let () (declare (not safe)) (##fx= _g233482_ 2))
                              (apply (lambda (_id219622_ _expr219623_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__231069231070_
                                          _id219622_
                                          _expr219623_)))
                                     _g233483_))
                             ((let () (declare (not safe)) (##fx= _g233482_ 3))
                              (apply (lambda (_id219627_
                                              _expr219628_
                                              _compile?219629_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__231067231068_
                                          _id219627_
                                          _expr219628_
                                          _compile?219629_)))
                                     _g233483_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g233483_))))))
                  (_compile-bindings218778_
                   (lambda (_rest218913_)
                     (let _lp218915_ ((_rest218917_ _rest218913_)
                                      (_bind218918_ '()))
                       (let* ((_rest218919218927_ _rest218917_)
                              (_else218921218935_
                               (lambda () (reverse _bind218918_)))
                              (_K218923219602_
                               (lambda (_rest218938_ _hd218939_)
                                 (let* ((___stx232994232995_ _hd218939_)
                                        (_g218944218991_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx232994232995_)))))
                                   (let ((___kont232996232997_
                                          (lambda (_L219509_ _L219510_)
                                            (let* ((___stx232974232975_
                                                    _L219509_)
                                                   (_g219525219539_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx232974232975_)))))
                                              (let ((___kont232976232977_
                                                     (lambda (_L219587_)
                                                       (let ((__tmp233484
                                                              (let ((__tmp233485
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__231067231068_
                                _L219510_
                                _L219509_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp233485 _bind218918_))))
                 (declare (not safe))
                 (_lp218915_ _rest218938_ __tmp233484))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232978232979_
                                                     (lambda (_L219552_)
                                                       (let ((_g233486_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx218775_
                         _L219510_
                         _L219552_
                         '#t))))
                 (begin
                   (let ((_g233487_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g233486_)
                                (##vector-length _g233486_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g233487_ 3)))
                         (error "Context expects 3 values" _g233487_)))
                   (let ((_ids219562_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g233486_ 0)))
                         (_impls219563_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g233486_ 1)))
                         (_clauses219564_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g233486_ 2))))
                     (let* ((_g233488_
                             (for-each gx#core-bind-runtime! _ids219562_))
                            (_xbind219567_
                             (map _bind-e218777_ _ids219562_ _impls219563_))
                            (_expr*219569_
                             (let ((__tmp233490
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses219564_)))
                                   (__tmp233489
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp233490
                                __tmp233489)))
                            (_bind*219571_
                             (let ()
                               (declare (not safe))
                               (_bind-e__231067231068_
                                _L219510_
                                _expr*219569_
                                '#f))))
                       (let ((__tmp233492
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L219510_)))
                             (__tmp233491
                              (map gxc#identifier-symbol _ids219562_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp233492
                          '" => "
                          __tmp233491))
                       (let ((__tmp233493
                              (let ((__tmp233494
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind218918_
                                               _xbind219567_))))
                                (declare (not safe))
                                (cons _bind*219571_ __tmp233494))))
                         (declare (not safe))
                         (_lp218915_ _rest218938_ __tmp233493)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match232985232986_
                                                       (lambda (_e219530219579_
                                                                _hd219529219582_
                                                                _tl219528219584_)
                                                         (let ((_L219587_
                                                                _tl219528219584_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L219587_))
                       (___kont232976232977_ _L219587_)
                       (___kont232978232979_ _tl219528219584_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx232974232975_))
                                                      (let ((_e219530219579_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx232974232975_))))
                (let ((_tl219528219584_
                       (let () (declare (not safe)) (##cdr _e219530219579_)))
                      (_hd219529219582_
                       (let () (declare (not safe)) (##car _e219530219579_))))
                  (___match232985232986_
                   _e219530219579_
                   _hd219529219582_
                   _tl219528219584_)))
              (let () (declare (not safe)) (_g219525219539_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont232998232999_
                                          (lambda (_L219337_ _L219338_)
                                            (let* ((_g219352219382_
                                                    (lambda (_g219353219379_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g219353219379_))))
                                                   (_g219351219477_
                                                    (lambda (_g219353219385_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g219353219385_))
                                                          (let ((_e219359219387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g219353219385_))))
                    (let ((_hd219358219390_
                           (let ()
                             (declare (not safe))
                             (##car _e219359219387_)))
                          (_tl219357219392_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219359219387_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl219357219392_))
                          (let ((_e219362219395_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl219357219392_))))
                            (let ((_hd219361219398_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219362219395_)))
                                  (_tl219360219400_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219362219395_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd219361219398_))
                                  (let ((_e219365219403_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd219361219398_))))
                                    (let ((_hd219364219406_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219365219403_)))
                                          (_tl219363219408_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219365219403_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd219364219406_))
                                          (let ((_e219368219411_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd219364219406_))))
                                            (let ((_hd219367219414_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e219368219411_)))
                                                  (_tl219366219416_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e219368219411_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd219367219414_))
                                                  (let ((_e219371219419_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd219367219414_))))
                                                    (let ((_hd219370219422_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219371219419_)))
                                                          (_tl219369219424_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219371219419_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219369219424_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl219366219416_))
                      (let ((_e219374219427_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl219366219416_))))
                        (let ((_hd219373219430_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219374219427_)))
                              (_tl219372219432_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219374219427_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl219372219432_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl219363219408_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219360219400_))
                                      (let ((_e219377219435_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219360219400_))))
                                        (let ((_hd219376219438_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219377219435_)))
                                              (_tl219375219440_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219377219435_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219375219440_))
                                              ((lambda (_L219443_
                                                        _L219444_
                                                        _L219445_)
                                                 (let* ((_lambda-id219469_
                                                         (let ((__tmp233496
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L219338_)))
                       (__tmp233495 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp233496 __tmp233495)))
                (_lambda-id219471_
                 (let ((__tmp233497
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx218775_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id219469_ __tmp233497)))
                (_g233498_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id219471_)))
                (_new-case-lambda-expr219474_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L219443_
                    _L219445_
                    _lambda-id219471_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp233500
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L219338_)))
                                                         (__tmp233499
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id219471_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp233500
                                                      '" => "
                                                      __tmp233499))
                                                   (let ((__tmp233503
                                                          (let ((__tmp233504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__231067231068_
                            _L219338_
                            _new-case-lambda-expr219474_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp233504 _rest218938_)))
                 (__tmp233501
                  (let ((__tmp233502
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__231069231070_
                            _lambda-id219471_
                            _L219444_))))
                    (declare (not safe))
                    (cons __tmp233502 _bind218918_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp218915_
                                                      __tmp233503
                                                      __tmp233501))))
                                               _hd219376219438_
                                               _hd219373219430_
                                               _hd219370219422_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219352219382_
                                                 _g219353219385_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219352219382_ _g219353219385_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g219352219382_ _g219353219385_)))
                              (let ()
                                (declare (not safe))
                                (_g219352219382_ _g219353219385_)))))
                      (let ()
                        (declare (not safe))
                        (_g219352219382_ _g219353219385_)))
                  (let ()
                    (declare (not safe))
                    (_g219352219382_ _g219353219385_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g219352219382_
                                                     _g219353219385_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g219352219382_
                                             _g219353219385_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g219352219382_ _g219353219385_)))))
                          (let ()
                            (declare (not safe))
                            (_g219352219382_ _g219353219385_)))))
                  (let ()
                    (declare (not safe))
                    (_g219352219382_ _g219353219385_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g219351219477_ _L219337_))))
                                         (___kont233000233001_
                                          (lambda (_L219061_ _L219062_)
                                            (let* ((_g219076219129_
                                                    (lambda (_g219077219126_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g219077219126_))))
                                                   (_g219075219305_
                                                    (lambda (_g219077219132_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g219077219132_))
                                                          (let ((_e219085219134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g219077219132_))))
                    (let ((_hd219084219137_
                           (let ()
                             (declare (not safe))
                             (##car _e219085219134_)))
                          (_tl219083219139_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219085219134_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl219083219139_))
                          (let ((_e219088219142_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl219083219139_))))
                            (let ((_hd219087219145_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219088219142_)))
                                  (_tl219086219147_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219088219142_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd219087219145_))
                                  (let ((_e219091219150_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd219087219145_))))
                                    (let ((_hd219090219153_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219091219150_)))
                                          (_tl219089219155_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219091219150_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd219090219153_))
                                          (let ((_e219094219158_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd219090219153_))))
                                            (let ((_hd219093219161_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e219094219158_)))
                                                  (_tl219092219163_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e219094219158_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd219093219161_))
                                                  (let ((_e219097219166_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd219093219161_))))
                                                    (let ((_hd219096219169_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219097219166_)))
                                                          (_tl219095219171_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219097219166_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219095219171_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl219092219163_))
                      (let ((_e219100219174_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl219092219163_))))
                        (let ((_hd219099219177_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219100219174_)))
                              (_tl219098219179_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219100219174_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd219099219177_))
                              (let ((_e219103219182_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd219099219177_))))
                                (let ((_hd219102219185_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219103219182_)))
                                      (_tl219101219187_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219103219182_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219101219187_))
                                      (let ((_e219106219190_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219101219187_))))
                                        (let ((_hd219105219193_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219106219190_)))
                                              (_tl219104219195_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219106219190_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd219105219193_))
                                              (let ((_e219109219198_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd219105219193_))))
                                                (let ((_hd219108219201_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e219109219198_)))
                                                      (_tl219107219203_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e219109219198_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd219108219201_))
                                                      (let ((_e219112219206_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd219108219201_))))
                (let ((_hd219111219209_
                       (let () (declare (not safe)) (##car _e219112219206_)))
                      (_tl219110219211_
                       (let () (declare (not safe)) (##cdr _e219112219206_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd219111219209_))
                      (let ((_e219115219214_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd219111219209_))))
                        (let ((_hd219114219217_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219115219214_)))
                              (_tl219113219219_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219115219214_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl219113219219_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl219110219211_))
                                  (let ((_e219118219222_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl219110219211_))))
                                    (let ((_hd219117219225_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219118219222_)))
                                          (_tl219116219227_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219118219222_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl219116219227_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219107219203_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl219104219195_))
                                                  (let ((_e219121219230_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl219104219195_))))
                                                    (let ((_hd219120219233_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219121219230_)))
                                                          (_tl219119219235_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219121219230_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219119219235_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl219098219179_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl219089219155_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219086219147_))
                              (let ((_e219124219238_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219086219147_))))
                                (let ((_hd219123219241_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219124219238_)))
                                      (_tl219122219243_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219124219238_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219122219243_))
                                      ((lambda (_L219246_
                                                _L219247_
                                                _L219248_
                                                _L219249_
                                                _L219250_)
                                         (let* ((_get-kws-id219290_
                                                 (let ((__tmp233506
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L219062_)))
                                                       (__tmp233505
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp233506
                                                    __tmp233505)))
                                                (_get-kws-id219292_
                                                 (let ((__tmp233507
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx218775_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id219290_
                                                    __tmp233507)))
                                                (_main-id219294_
                                                 (let ((__tmp233509
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L219062_)))
                                                       (__tmp233508
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp233509
                                                    __tmp233508)))
                                                (_main-id219296_
                                                 (let ((__tmp233510
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx218775_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id219294_
                                                    __tmp233510)))
                                                (_g233511_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id219292_)))
                                                (_g233512_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id219296_)))
                                                (_new-kw-dispatch219300_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L219246_
                                                    _L219250_
                                                    _get-kws-id219292_)))
                                                (_new-get-kws219302_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L219247_
                                                    _L219249_
                                                    _main-id219296_))))
                                           (let ((__tmp233515
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L219062_)))
                                                 (__tmp233514
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id219292_)))
                                                 (__tmp233513
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id219296_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp233515
                                              '" => "
                                              __tmp233514
                                              '" => "
                                              __tmp233513))
                                           (let ((__tmp233516
                                                  (let ((__tmp233521
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__231067231068_
                                                            _main-id219296_
                                                            _L219248_
                                                            '#f)))
                                                        (__tmp233517
                                                         (let ((__tmp233520
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__231067231068_
                           _get-kws-id219292_
                           _new-get-kws219302_
                           '#f)))
                       (__tmp233518
                        (let ((__tmp233519
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__231067231068_
                                  _L219062_
                                  _new-kw-dispatch219300_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp233519 _rest218938_))))
                   (declare (not safe))
                   (cons __tmp233520 __tmp233518))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp233521
                                                          __tmp233517))))
                                             (declare (not safe))
                                             (_lp218915_
                                              __tmp233516
                                              _bind218918_))))
                                       _hd219123219241_
                                       _hd219120219233_
                                       _hd219117219225_
                                       _hd219114219217_
                                       _hd219096219169_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219076219129_ _g219077219132_)))))
                              (let ()
                                (declare (not safe))
                                (_g219076219129_ _g219077219132_)))
                          (let ()
                            (declare (not safe))
                            (_g219076219129_ _g219077219132_)))
                      (let ()
                        (declare (not safe))
                        (_g219076219129_ _g219077219132_)))
                  (let ()
                    (declare (not safe))
                    (_g219076219129_ _g219077219132_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g219076219129_
                                                     _g219077219132_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g219076219129_
                                                 _g219077219132_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g219076219129_
                                             _g219077219132_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g219076219129_ _g219077219132_)))
                              (let ()
                                (declare (not safe))
                                (_g219076219129_ _g219077219132_)))))
                      (let ()
                        (declare (not safe))
                        (_g219076219129_ _g219077219132_)))))
              (let ()
                (declare (not safe))
                (_g219076219129_ _g219077219132_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g219076219129_
                                                 _g219077219132_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219076219129_ _g219077219132_)))))
                              (let ()
                                (declare (not safe))
                                (_g219076219129_ _g219077219132_)))))
                      (let ()
                        (declare (not safe))
                        (_g219076219129_ _g219077219132_)))
                  (let ()
                    (declare (not safe))
                    (_g219076219129_ _g219077219132_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g219076219129_
                                                     _g219077219132_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g219076219129_
                                             _g219077219132_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g219076219129_ _g219077219132_)))))
                          (let ()
                            (declare (not safe))
                            (_g219076219129_ _g219077219132_)))))
                  (let ()
                    (declare (not safe))
                    (_g219076219129_ _g219077219132_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g219075219305_ _L219061_))))
                                         (___kont233002233003_
                                          (lambda (_L219012_ _L219013_)
                                            (let ((__tmp233522
                                                   (let ((__tmp233523
                                                          (let ((__tmp233524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp233525
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L219012_))))
                           (declare (not safe))
                           (cons __tmp233525 '()))))
                    (declare (not safe))
                    (cons _L219013_ __tmp233524))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp233523
                                                           _bind218918_))))
                                              (declare (not safe))
                                              (_lp218915_
                                               _rest218938_
                                               __tmp233522)))))
                                     (let* ((___match233069233070_
                                             (lambda (_e218972219037_
                                                      _hd218971219040_
                                                      _tl218970219042_
                                                      _e218975219045_
                                                      _hd218974219048_
                                                      _tl218973219050_
                                                      _e218978219053_
                                                      _hd218977219056_
                                                      _tl218976219058_)
                                               (let ((_L219061_
                                                      _hd218977219056_)
                                                     (_L219062_
                                                      _hd218974219048_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L219062_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L219061_)))
                                                     (___kont233000233001_
                                                      _L219061_
                                                      _L219062_)
                                                     (___kont233002233003_
                                                      _hd218977219056_
                                                      _hd218971219040_)))))
                                            (___match233047233048_
                                             (lambda (_e218961219313_
                                                      _hd218960219316_
                                                      _tl218959219318_
                                                      _e218964219321_
                                                      _hd218963219324_
                                                      _tl218962219326_
                                                      _e218967219329_
                                                      _hd218966219332_
                                                      _tl218965219334_)
                                               (let ((_L219337_
                                                      _hd218966219332_)
                                                     (_L219338_
                                                      _hd218963219324_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L219338_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L219337_)))
                                                     (___kont232998232999_
                                                      _L219337_
                                                      _L219338_)
                                                     (___match233069233070_
                                                      _e218961219313_
                                                      _hd218960219316_
                                                      _tl218959219318_
                                                      _e218964219321_
                                                      _hd218963219324_
                                                      _tl218962219326_
                                                      _e218967219329_
                                                      _hd218966219332_
                                                      _tl218965219334_)))))
                                            (___match233025233026_
                                             (lambda (_e218950219485_
                                                      _hd218949219488_
                                                      _tl218948219490_
                                                      _e218953219493_
                                                      _hd218952219496_
                                                      _tl218951219498_
                                                      _e218956219501_
                                                      _hd218955219504_
                                                      _tl218954219506_)
                                               (let ((_L219509_
                                                      _hd218955219504_)
                                                     (_L219510_
                                                      _hd218952219496_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L219510_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L219509_)))
                                                     (___kont232996232997_
                                                      _L219509_
                                                      _L219510_)
                                                     (___match233047233048_
                                                      _e218950219485_
                                                      _hd218949219488_
                                                      _tl218948219490_
                                                      _e218953219493_
                                                      _hd218952219496_
                                                      _tl218951219498_
                                                      _e218956219501_
                                                      _hd218955219504_
                                                      _tl218954219506_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx232994232995_))
                                           (let ((_e218950219485_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx232994232995_))))
                                             (let ((_tl218948219490_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e218950219485_)))
                                                   (_hd218949219488_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e218950219485_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd218949219488_))
                                                   (let ((_e218953219493_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd218949219488_))))
                                                     (let ((_tl218951219498_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e218953219493_)))
                                                           (_hd218952219496_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e218953219493_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl218951219498_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl218948219490_))
                       (let ((_e218956219501_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl218948219490_))))
                         (let ((_tl218954219506_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e218956219501_)))
                               (_hd218955219504_
                                (let ()
                                  (declare (not safe))
                                  (##car _e218956219501_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl218954219506_))
                               (___match233025233026_
                                _e218950219485_
                                _hd218949219488_
                                _tl218948219490_
                                _e218953219493_
                                _hd218952219496_
                                _tl218951219498_
                                _e218956219501_
                                _hd218955219504_
                                _tl218954219506_)
                               (let ()
                                 (declare (not safe))
                                 (_g218944218991_)))))
                       (let () (declare (not safe)) (_g218944218991_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl218948219490_))
                       (let ((_e218986219004_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl218948219490_))))
                         (let ((_tl218984219009_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e218986219004_)))
                               (_hd218985219007_
                                (let ()
                                  (declare (not safe))
                                  (##car _e218986219004_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl218984219009_))
                               (___kont233002233003_
                                _hd218985219007_
                                _hd218949219488_)
                               (let ()
                                 (declare (not safe))
                                 (_g218944218991_)))))
                       (let () (declare (not safe)) (_g218944218991_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl218948219490_))
                                                       (let ((_e218986219004_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl218948219490_))))
                 (let ((_tl218984219009_
                        (let () (declare (not safe)) (##cdr _e218986219004_)))
                       (_hd218985219007_
                        (let () (declare (not safe)) (##car _e218986219004_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl218984219009_))
                       (___kont233002233003_ _hd218985219007_ _hd218949219488_)
                       (let () (declare (not safe)) (_g218944218991_)))))
               (let () (declare (not safe)) (_g218944218991_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g218944218991_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest218919218927_))
                             (let ((_hd218924219605_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest218919218927_)))
                                   (_tl218925219607_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest218919218927_))))
                               (let* ((_hd219610_ _hd218924219605_)
                                      (_rest219612_ _tl218925219607_))
                                 (declare (not safe))
                                 (_K218923219602_ _rest219612_ _hd219610_)))
                             (let ()
                               (declare (not safe))
                               (_else218921218935_))))))))
          (let* ((___stx233086233087_ _stx218775_)
                 (_g218781218808_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx233086233087_)))))
            (let ((___kont233088233089_
                   (lambda (_L218868_ _L218869_ _L218870_)
                     (let ((__tmp233527
                            (lambda ()
                              (let ((_hd218907_
                                     (let ((__tmp233528
                                            (let ((__tmp233529
                                                   (lambda (_g218899218902_
                                                            _g218900218904_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g218899218902_
                                                             _g218900218904_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp233529
                                                      '()
                                                      _L218869_))))
                                       (declare (not safe))
                                       (_compile-bindings218778_ __tmp233528)))
                                    (_body218908_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L218868_))))
                                (let ((__tmp233530
                                       (let ((__tmp233531
                                              (let ((__tmp233532
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body218908_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd218907_
                                                      __tmp233532))))
                                         (declare (not safe))
                                         (cons _L218870_ __tmp233531))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp233530
                                   _stx218775_)))))
                           (__tmp233526
                            (let ((__obj233151
                                   (make-object* gx#local-context::t '6)))
                              (gx#local-context:::init! __obj233151)
                              __obj233151)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp233527
                        gx#current-expander-context
                        __tmp233526))))
                  (___kont233092233093_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx218775_)))))
              (let ((___match233113233114_
                     (lambda (_e218788218820_
                              _hd218787218823_
                              _tl218786218825_
                              _e218791218828_
                              _hd218790218831_
                              _tl218789218833_
                              ___splice233090233091_
                              _target218792218836_
                              _tl218794218838_)
                       (letrec ((_loop218795218841_
                                 (lambda (_hd218793218844_ _bind218799218846_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd218793218844_))
                                       (let ((_e218796218849_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd218793218844_))))
                                         (let ((_lp-tl218798218854_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e218796218849_)))
                                               (_lp-hd218797218852_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e218796218849_))))
                                           (let ((__tmp233535
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd218797218852_
                                                          _bind218799218846_))))
                                             (declare (not safe))
                                             (_loop218795218841_
                                              _lp-tl218798218854_
                                              __tmp233535))))
                                       (let ((_bind218800218857_
                                              (reverse _bind218799218846_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl218789218833_))
                                             (let ((_e218803218860_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl218789218833_))))
                                               (let ((_tl218801218865_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e218803218860_)))
                                                     (_hd218802218863_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e218803218860_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl218801218865_))
                                                     (let ((_L218868_
                                                            _hd218802218863_)
                                                           (_L218869_
                                                            _bind218800218857_)
                                                           (_L218870_
                                                            _hd218787218823_))
                                                       (if (let ((__tmp233533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp233534
                                 (lambda (_g218891218894_ _g218892218896_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g218891218894_ _g218892218896_)))))
                            (declare (not safe))
                            (foldr1 __tmp233534 '() _L218869_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp233533))
                   (___kont233088233089_ _L218868_ _L218869_ _L218870_)
                   (___kont233092233093_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont233092233093_))))
                                             (___kont233092233093_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop218795218841_ _target218792218836_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx233086233087_))
                    (let ((_e218788218820_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx233086233087_))))
                      (let ((_tl218786218825_
                             (let ()
                               (declare (not safe))
                               (##cdr _e218788218820_)))
                            (_hd218787218823_
                             (let ()
                               (declare (not safe))
                               (##car _e218788218820_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl218786218825_))
                            (let ((_e218791218828_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl218786218825_))))
                              (let ((_tl218789218833_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e218791218828_)))
                                    (_hd218790218831_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e218791218828_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd218790218831_))
                                    (let ((___splice233090233091_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd218790218831_
                                              '0))))
                                      (let ((_tl218794218838_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice233090233091_
                                                '1)))
                                            (_target218792218836_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice233090233091_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl218794218838_))
                                            (___match233113233114_
                                             _e218788218820_
                                             _hd218787218823_
                                             _tl218786218825_
                                             _e218791218828_
                                             _hd218790218831_
                                             _tl218789218833_
                                             ___splice233090233091_
                                             _target218792218836_
                                             _tl218794218838_)
                                            (___kont233092233093_))))
                                    (___kont233092233093_))))
                            (___kont233092233093_))))
                    (___kont233092233093_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind218693_)
        (let* ((___stx233116233117_ _bind218693_)
               (_g218696218713_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx233116233117_)))))
          (let ((___kont233118233119_
                 (lambda (_L218749_ _L218750_)
                   (if (let () (declare (not safe)) (gx#identifier? _L218750_))
                       (let ((_$e218766_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L218749_))))
                         (if _$e218766_
                             _$e218766_
                             (let ((_$e218769_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L218749_))))
                               (if _$e218769_
                                   _$e218769_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L218749_))))))
                       '#f)))
                (___kont233120233121_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx233116233117_))
                (let ((_e218702218725_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx233116233117_))))
                  (let ((_tl218700218730_
                         (let () (declare (not safe)) (##cdr _e218702218725_)))
                        (_hd218701218728_
                         (let ()
                           (declare (not safe))
                           (##car _e218702218725_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd218701218728_))
                        (let ((_e218705218733_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd218701218728_))))
                          (let ((_tl218703218738_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e218705218733_)))
                                (_hd218704218736_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e218705218733_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl218703218738_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl218700218730_))
                                    (let ((_e218708218741_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl218700218730_))))
                                      (let ((_tl218706218746_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e218708218741_)))
                                            (_hd218707218744_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e218708218741_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl218706218746_))
                                            (___kont233118233119_
                                             _hd218707218744_
                                             _hd218704218736_)
                                            (___kont233120233121_))))
                                    (___kont233120233121_))
                                (___kont233120233121_))))
                        (___kont233120233121_))))
                (___kont233120233121_))))))))
