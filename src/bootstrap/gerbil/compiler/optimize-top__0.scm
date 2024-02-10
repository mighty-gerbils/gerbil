(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1707555985)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl226795_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp233082 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl226795_ __tmp233082))
           (let ()
             (declare (not safe))
             (table-set! _tbl226795_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226795_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226795_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226795_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl226795_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx226778_ . _args226780_)
        (let ((__tmp233084
               (lambda ()
                 (declare (not safe))
                 (if (null? _args226780_)
                     (gxc#compile-e__0 _stx226778_)
                     (let ((_arg1226785_ (car _args226780_))
                           (_rest226787_ (cdr _args226780_)))
                       (if (null? _rest226787_)
                           (gxc#compile-e__1 _stx226778_ _arg1226785_)
                           (let ((_arg2226790_ (car _rest226787_))
                                 (_rest226792_ (cdr _rest226787_)))
                             (if (null? _rest226792_)
                                 (gxc#compile-e__2
                                  _stx226778_
                                  _arg1226785_
                                  _arg2226790_)
                                 (apply gxc#compile-e
                                        _stx226778_
                                        _arg1226785_
                                        _arg2226790_
                                        _rest226792_))))))))
              (__tmp233083 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp233084
           gxc#current-compile-methods
           __tmp233083))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl226775_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp233085 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl226775_ __tmp233085))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226775_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226775_ '%#call gxc#basic-expression-type-call%))
           _tbl226775_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx226758_ . _args226760_)
        (let ((__tmp233087
               (lambda ()
                 (declare (not safe))
                 (if (null? _args226760_)
                     (gxc#compile-e__0 _stx226758_)
                     (let ((_arg1226765_ (car _args226760_))
                           (_rest226767_ (cdr _args226760_)))
                       (if (null? _rest226767_)
                           (gxc#compile-e__1 _stx226758_ _arg1226765_)
                           (let ((_arg2226770_ (car _rest226767_))
                                 (_rest226772_ (cdr _rest226767_)))
                             (if (null? _rest226772_)
                                 (gxc#compile-e__2
                                  _stx226758_
                                  _arg1226765_
                                  _arg2226770_)
                                 (apply gxc#compile-e
                                        _stx226758_
                                        _arg1226765_
                                        _arg2226770_
                                        _rest226772_))))))))
              (__tmp233086 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp233087
           gxc#current-compile-methods
           __tmp233086))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl226755_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp233088 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl226755_ __tmp233088))
           (let ()
             (declare (not safe))
             (table-set! _tbl226755_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226755_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226755_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226755_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226755_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226755_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226755_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226755_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226755_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226755_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226755_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226755_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl226755_ '%#set! gxc#collect-body-setq%))
           _tbl226755_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx226738_ . _args226740_)
        (let ((__tmp233090
               (lambda ()
                 (declare (not safe))
                 (if (null? _args226740_)
                     (gxc#compile-e__0 _stx226738_)
                     (let ((_arg1226745_ (car _args226740_))
                           (_rest226747_ (cdr _args226740_)))
                       (if (null? _rest226747_)
                           (gxc#compile-e__1 _stx226738_ _arg1226745_)
                           (let ((_arg2226750_ (car _rest226747_))
                                 (_rest226752_ (cdr _rest226747_)))
                             (if (null? _rest226752_)
                                 (gxc#compile-e__2
                                  _stx226738_
                                  _arg1226745_
                                  _arg2226750_)
                                 (apply gxc#compile-e
                                        _stx226738_
                                        _arg1226745_
                                        _arg2226750_
                                        _rest226752_))))))))
              (__tmp233089 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp233090
           gxc#current-compile-methods
           __tmp233089))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl226735_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp233091 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl226735_ __tmp233091))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226735_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226735_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226735_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226735_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226735_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226735_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226735_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226735_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226735_ '%#ref gxc#basic-expression-type-ref%))
           _tbl226735_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx226718_ . _args226720_)
        (let ((__tmp233093
               (lambda ()
                 (declare (not safe))
                 (if (null? _args226720_)
                     (gxc#compile-e__0 _stx226718_)
                     (let ((_arg1226725_ (car _args226720_))
                           (_rest226727_ (cdr _args226720_)))
                       (if (null? _rest226727_)
                           (gxc#compile-e__1 _stx226718_ _arg1226725_)
                           (let ((_arg2226730_ (car _rest226727_))
                                 (_rest226732_ (cdr _rest226727_)))
                             (if (null? _rest226732_)
                                 (gxc#compile-e__2
                                  _stx226718_
                                  _arg1226725_
                                  _arg2226730_)
                                 (apply gxc#compile-e
                                        _stx226718_
                                        _arg1226725_
                                        _arg2226730_
                                        _rest226732_))))))))
              (__tmp233092 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp233093
           gxc#current-compile-methods
           __tmp233092))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl226715_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp233094 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl226715_ __tmp233094))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226715_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226715_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226715_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226715_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl226715_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx226698_ . _args226700_)
        (let ((__tmp233096
               (lambda ()
                 (declare (not safe))
                 (if (null? _args226700_)
                     (gxc#compile-e__0 _stx226698_)
                     (let ((_arg1226705_ (car _args226700_))
                           (_rest226707_ (cdr _args226700_)))
                       (if (null? _rest226707_)
                           (gxc#compile-e__1 _stx226698_ _arg1226705_)
                           (let ((_arg2226710_ (car _rest226707_))
                                 (_rest226712_ (cdr _rest226707_)))
                             (if (null? _rest226712_)
                                 (gxc#compile-e__2
                                  _stx226698_
                                  _arg1226705_
                                  _arg2226710_)
                                 (apply gxc#compile-e
                                        _stx226698_
                                        _arg1226705_
                                        _arg2226710_
                                        _rest226712_))))))))
              (__tmp233095 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp233096
           gxc#current-compile-methods
           __tmp233095))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx226601_)
        (let* ((___stx231002231003_ _stx226601_)
               (_g226604226624_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231002231003_)))))
          (let ((___kont231004231005_
                 (lambda (_L226668_ _L226669_)
                   (let ((_sym226687_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L226669_))))
                     (if (let ((__tmp233097 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp233097 _sym226687_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym226687_))
                         (let ((_type226688226690_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L226668_))))
                           (if _type226688226690_
                               (let ((_type226693_ _type226688226690_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym226687_
                                  _type226693_))
                               '#f))))))
                (___kont231006231007_ (lambda () '#!void)))
            (let ((___match231035231036_
                   (lambda (_e226610226636_
                            _hd226609226639_
                            _tl226608226641_
                            _e226613226644_
                            _hd226612226647_
                            _tl226611226649_
                            _e226616226652_
                            _hd226615226655_
                            _tl226614226657_
                            _e226619226660_
                            _hd226618226663_
                            _tl226617226665_)
                     (let ((_L226668_ _hd226618226663_)
                           (_L226669_ _hd226615226655_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L226669_))
                           (___kont231004231005_ _L226668_ _L226669_)
                           (___kont231006231007_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx231002231003_))
                  (let ((_e226610226636_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx231002231003_))))
                    (let ((_tl226608226641_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226610226636_)))
                          (_hd226609226639_
                           (let ()
                             (declare (not safe))
                             (##car _e226610226636_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl226608226641_))
                          (let ((_e226613226644_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl226608226641_))))
                            (let ((_tl226611226649_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226613226644_)))
                                  (_hd226612226647_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226613226644_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd226612226647_))
                                  (let ((_e226616226652_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd226612226647_))))
                                    (let ((_tl226614226657_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226616226652_)))
                                          (_hd226615226655_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226616226652_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl226614226657_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl226611226649_))
                                              (let ((_e226619226660_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl226611226649_))))
                                                (let ((_tl226617226665_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e226619226660_)))
                                                      (_hd226618226663_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e226619226660_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl226617226665_))
                                                      (___match231035231036_
                                                       _e226610226636_
                                                       _hd226609226639_
                                                       _tl226608226641_
                                                       _e226613226644_
                                                       _hd226612226647_
                                                       _tl226611226649_
                                                       _e226616226652_
                                                       _hd226615226655_
                                                       _tl226614226657_
                                                       _e226619226660_
                                                       _hd226618226663_
                                                       _tl226617226665_)
                                                      (___kont231006231007_))))
                                              (___kont231006231007_))
                                          (___kont231006231007_))))
                                  (___kont231006231007_))))
                          (___kont231006231007_))))
                  (___kont231006231007_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx226457_)
        (let* ((___stx231038231039_ _stx226457_)
               (_g226460226491_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231038231039_)))))
          (let ((___kont231040231041_
                 (lambda (_L226573_ _L226574_)
                   (let ((_sym226590_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L226574_))))
                     (if (let ((__tmp233098 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp233098 _sym226590_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym226590_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym226590_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym226590_))
                             (let ((_type226591226593_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L226573_))))
                               (if _type226591226593_
                                   (let ((_type226596_ _type226591226593_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym226590_
                                      _type226596_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L226573_)))))
                (___kont231042231043_
                 (lambda (_L226520_ _L226521_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L226520_)))))
            (let ((___match231071231072_
                   (lambda (_e226466226541_
                            _hd226465226544_
                            _tl226464226546_
                            _e226469226549_
                            _hd226468226552_
                            _tl226467226554_
                            _e226472226557_
                            _hd226471226560_
                            _tl226470226562_
                            _e226475226565_
                            _hd226474226568_
                            _tl226473226570_)
                     (let ((_L226573_ _hd226474226568_)
                           (_L226574_ _hd226471226560_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L226574_))
                           (___kont231040231041_ _L226573_ _L226574_)
                           (___kont231042231043_
                            _hd226474226568_
                            _hd226468226552_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx231038231039_))
                  (let ((_e226466226541_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx231038231039_))))
                    (let ((_tl226464226546_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226466226541_)))
                          (_hd226465226544_
                           (let ()
                             (declare (not safe))
                             (##car _e226466226541_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl226464226546_))
                          (let ((_e226469226549_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl226464226546_))))
                            (let ((_tl226467226554_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226469226549_)))
                                  (_hd226468226552_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226469226549_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd226468226552_))
                                  (let ((_e226472226557_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd226468226552_))))
                                    (let ((_tl226470226562_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226472226557_)))
                                          (_hd226471226560_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226472226557_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl226470226562_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl226467226554_))
                                              (let ((_e226475226565_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl226467226554_))))
                                                (let ((_tl226473226570_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e226475226565_)))
                                                      (_hd226474226568_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e226475226565_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl226473226570_))
                                                      (___match231071231072_
                                                       _e226466226541_
                                                       _hd226465226544_
                                                       _tl226464226546_
                                                       _e226469226549_
                                                       _hd226468226552_
                                                       _tl226467226554_
                                                       _e226472226557_
                                                       _hd226471226560_
                                                       _tl226470226562_
                                                       _e226475226565_
                                                       _hd226474226568_
                                                       _tl226473226570_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g226460226491_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g226460226491_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl226467226554_))
                                              (let ((_e226486226512_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl226467226554_))))
                                                (let ((_tl226484226517_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e226486226512_)))
                                                      (_hd226485226515_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e226486226512_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl226484226517_))
                                                      (___kont231042231043_
                                                       _hd226485226515_
                                                       _hd226468226552_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g226460226491_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g226460226491_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl226467226554_))
                                      (let ((_e226486226512_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl226467226554_))))
                                        (let ((_tl226484226517_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226486226512_)))
                                              (_hd226485226515_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226486226512_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl226484226517_))
                                              (___kont231042231043_
                                               _hd226485226515_
                                               _hd226468226552_)
                                              (let ()
                                                (declare (not safe))
                                                (_g226460226491_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g226460226491_))))))
                          (let () (declare (not safe)) (_g226460226491_)))))
                  (let () (declare (not safe)) (_g226460226491_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx226242_)
        (letrec ((_collect-e226244_
                  (lambda (_hd226401_ _expr226402_)
                    (let* ((___stx231094231095_ _hd226401_)
                           (_g226405226415_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx231094231095_)))))
                      (let ((___kont231096231097_
                             (lambda (_L226435_)
                               (let ((_sym226446_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L226435_))))
                                 (if (let ((__tmp233099
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp233099 _sym226446_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym226446_))
                                     (let ((_type226447226449_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr226402_))))
                                       (if _type226447226449_
                                           (let ((_type226452_
                                                  _type226447226449_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym226446_
                                              _type226452_
                                              '#t))
                                           '#f))))))
                            (___kont231098231099_ (lambda () '#!void)))
                        (let ((___match231107231108_
                               (lambda (_e226410226427_
                                        _hd226409226430_
                                        _tl226408226432_)
                                 (let ((_L226435_ _hd226409226430_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L226435_))
                                       (___kont231096231097_ _L226435_)
                                       (___kont231098231099_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx231094231095_))
                              (let ((_e226410226427_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx231094231095_))))
                                (let ((_tl226408226432_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226410226427_)))
                                      (_hd226409226430_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226410226427_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226408226432_))
                                      (___match231107231108_
                                       _e226410226427_
                                       _hd226409226430_
                                       _tl226408226432_)
                                      (___kont231098231099_))))
                              (___kont231098231099_))))))))
          (let* ((_g226246226281_
                  (lambda (_g226247226278_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g226247226278_))))
                 (_g226245226398_
                  (lambda (_g226247226284_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g226247226284_))
                        (let ((_e226253226286_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g226247226284_))))
                          (let ((_hd226252226289_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e226253226286_)))
                                (_tl226251226291_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e226253226286_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl226251226291_))
                                (let ((_e226256226294_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl226251226291_))))
                                  (let ((_hd226255226297_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e226256226294_)))
                                        (_tl226254226299_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e226256226294_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd226255226297_))
                                        (let ((_g233100_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd226255226297_
                                                  '0))))
                                          (begin
                                            (let ((_g233101_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g233100_)
                                                         (##vector-length
                                                          _g233100_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g233101_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g233101_)))
                                            (let ((_target226257226302_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g233100_
                                                      0)))
                                                  (_tl226259226304_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g233100_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl226259226304_))
                                                  (letrec ((_loop226260226307_
                                                            (lambda (_hd226258226310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr226264226312_
                             _hd226265226314_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd226258226310_))
                          (let ((_e226261226317_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd226258226310_))))
                            (let ((_lp-hd226262226320_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226261226317_)))
                                  (_lp-tl226263226322_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226261226317_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd226262226320_))
                                  (let ((_e226270226325_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd226262226320_))))
                                    (let ((_hd226269226328_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226270226325_)))
                                          (_tl226268226330_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226270226325_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl226268226330_))
                                          (let ((_e226273226333_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl226268226330_))))
                                            (let ((_hd226272226336_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e226273226333_)))
                                                  (_tl226271226338_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e226273226333_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl226271226338_))
                                                  (let ((__tmp233106
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd226272226336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr226264226312_)))
                (__tmp233105
                 (let ()
                   (declare (not safe))
                   (cons _hd226269226328_ _hd226265226314_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop226260226307_
                                                     _lp-tl226263226322_
                                                     __tmp233106
                                                     __tmp233105))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226246226281_
                                                     _g226247226284_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g226246226281_
                                             _g226247226284_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226246226281_ _g226247226284_)))))
                          (let ((_expr226266226341_
                                 (reverse _expr226264226312_))
                                (_hd226267226343_ (reverse _hd226265226314_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl226254226299_))
                                (let ((_e226276226346_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl226254226299_))))
                                  (let ((_hd226275226349_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e226276226346_)))
                                        (_tl226274226351_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e226276226346_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl226274226351_))
                                        ((lambda (_L226354_
                                                  _L226355_
                                                  _L226356_)
                                           (for-each
                                            _collect-e226244_
                                            (let ((__tmp233102
                                                   (lambda (_g226376226379_
                                                            _g226377226381_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g226376226379_
                                                             _g226377226381_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp233102
                                                      '()
                                                      _L226356_))
                                            (let ((__tmp233103
                                                   (lambda (_g226383226386_
                                                            _g226384226388_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g226383226386_
                                                             _g226384226388_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp233103
                                                      '()
                                                      _L226355_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp233104
                                                   (lambda (_g226390226393_
                                                            _g226391226395_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g226390226393_
                                                             _g226391226395_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp233104
                                                      '()
                                                      _L226355_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L226354_)))
                                         _hd226275226349_
                                         _expr226266226341_
                                         _hd226267226343_)
                                        (let ()
                                          (declare (not safe))
                                          (_g226246226281_ _g226247226284_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g226246226281_ _g226247226284_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop226260226307_
                                                       _target226257226302_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226246226281_
                                                     _g226247226284_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g226246226281_ _g226247226284_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g226246226281_ _g226247226284_)))))
                        (let ()
                          (declare (not safe))
                          (_g226246226281_ _g226247226284_))))))
            (declare (not safe))
            (_g226245226398_ _stx226242_)))))
    (define gxc#collect-type-call%
      (lambda (_stx225734_)
        (let* ((___stx231110231111_ _stx225734_)
               (_g225738225853_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231110231111_)))))
          (let ((___kont231112231113_
                 (lambda (_L226192_ _L226193_ _L226194_ _L226195_ _L226196_)
                   (let ((__tmp233110
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L226195_)))
                         (__tmp233109
                          (let () (declare (not safe)) (gx#stx-e _L226194_)))
                         (__tmp233108
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L226193_)))
                         (__tmp233107
                          (let () (declare (not safe)) (gx#stx-e _L226192_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp233110
                      __tmp233109
                      __tmp233108
                      __tmp233107))))
                (___kont231114231115_
                 (lambda (_L226020_ _L226021_ _L226022_ _L226023_)
                   (let ((__tmp233113
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L226022_)))
                         (__tmp233112
                          (let () (declare (not safe)) (gx#stx-e _L226021_)))
                         (__tmp233111
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L226020_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp233113
                      __tmp233112
                      __tmp233111
                      '#f))))
                (___kont231116231117_
                 (lambda (_L225890_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp233114
                           (lambda (_g225903225906_ _g225904225908_)
                             (let ()
                               (declare (not safe))
                               (cons _g225903225906_ _g225904225908_)))))
                      (declare (not safe))
                      (foldr1 __tmp233114 '() _L225890_))))))
            (let* ((___match231367231368_
                    (lambda (_e225839225858_
                             _hd225838225861_
                             _tl225837225863_
                             ___splice231118231119_
                             _target225840225866_
                             _tl225842225868_)
                      (letrec ((_loop225843225871_
                                (lambda (_hd225841225874_ _expr225847225876_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd225841225874_))
                                      (let ((_e225844225879_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd225841225874_))))
                                        (let ((_lp-tl225846225884_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e225844225879_)))
                                              (_lp-hd225845225882_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e225844225879_))))
                                          (let ((__tmp233115
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd225845225882_
                                                         _expr225847225876_))))
                                            (declare (not safe))
                                            (_loop225843225871_
                                             _lp-tl225846225884_
                                             __tmp233115))))
                                      (let ((_expr225848225887_
                                             (reverse _expr225847225876_)))
                                        (___kont231116231117_
                                         _expr225848225887_))))))
                        (let ()
                          (declare (not safe))
                          (_loop225843225871_ _target225840225866_ '())))))
                   (___match231247231248_
                    (lambda (_e225747226064_
                             _hd225746226067_
                             _tl225745226069_
                             _e225750226072_
                             _hd225749226075_
                             _tl225748226077_
                             _e225753226080_
                             _hd225752226083_
                             _tl225751226085_
                             _e225756226088_
                             _hd225755226091_
                             _tl225754226093_
                             _e225759226096_
                             _hd225758226099_
                             _tl225757226101_
                             _e225762226104_
                             _hd225761226107_
                             _tl225760226109_
                             _e225765226112_
                             _hd225764226115_
                             _tl225763226117_
                             _e225768226120_
                             _hd225767226123_
                             _tl225766226125_
                             _e225771226128_
                             _hd225770226131_
                             _tl225769226133_
                             _e225774226136_
                             _hd225773226139_
                             _tl225772226141_
                             _e225777226144_
                             _hd225776226147_
                             _tl225775226149_
                             _e225780226152_
                             _hd225779226155_
                             _tl225778226157_
                             _e225783226160_
                             _hd225782226163_
                             _tl225781226165_
                             _e225786226168_
                             _hd225785226171_
                             _tl225784226173_
                             _e225789226176_
                             _hd225788226179_
                             _tl225787226181_
                             _e225792226184_
                             _hd225791226187_
                             _tl225790226189_)
                      (let ((_L226192_ _hd225791226187_)
                            (_L226193_ _hd225782226163_)
                            (_L226194_ _hd225773226139_)
                            (_L226195_ _hd225764226115_)
                            (_L226196_ _hd225755226091_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L226196_
                               'bind-method!))
                            (___kont231112231113_
                             _L226192_
                             _L226193_
                             _L226194_
                             _L226195_
                             _L226196_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl225745226069_))
                                (let ((___splice231118231119_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl225745226069_
                                          '0))))
                                  (let ((_tl225842225868_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice231118231119_
                                            '1)))
                                        (_target225840225866_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice231118231119_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl225842225868_))
                                        (___match231367231368_
                                         _e225747226064_
                                         _hd225746226067_
                                         _tl225745226069_
                                         ___splice231118231119_
                                         _target225840225866_
                                         _tl225842225868_)
                                        (let ()
                                          (declare (not safe))
                                          (_g225738225853_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g225738225853_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx231110231111_))
                  (let ((_e225747226064_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx231110231111_))))
                    (let ((_tl225745226069_
                           (let ()
                             (declare (not safe))
                             (##cdr _e225747226064_)))
                          (_hd225746226067_
                           (let ()
                             (declare (not safe))
                             (##car _e225747226064_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl225745226069_))
                          (let ((_e225750226072_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl225745226069_))))
                            (let ((_tl225748226077_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e225750226072_)))
                                  (_hd225749226075_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e225750226072_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd225749226075_))
                                  (let ((_e225753226080_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd225749226075_))))
                                    (let ((_tl225751226085_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e225753226080_)))
                                          (_hd225752226083_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e225753226080_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd225752226083_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd225752226083_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl225751226085_))
                                                  (let ((_e225756226088_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl225751226085_))))
                                                    (let ((_tl225754226093_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e225756226088_)))
                                                          (_hd225755226091_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e225756226088_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl225754226093_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl225748226077_))
                      (let ((_e225759226096_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl225748226077_))))
                        (let ((_tl225757226101_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225759226096_)))
                              (_hd225758226099_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225759226096_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd225758226099_))
                              (let ((_e225762226104_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd225758226099_))))
                                (let ((_tl225760226109_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225762226104_)))
                                      (_hd225761226107_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225762226104_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd225761226107_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd225761226107_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl225760226109_))
                                              (let ((_e225765226112_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl225760226109_))))
                                                (let ((_tl225763226117_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e225765226112_)))
                                                      (_hd225764226115_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e225765226112_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225763226117_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl225757226101_))
                                                          (let ((_e225768226120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl225757226101_))))
                    (let ((_tl225766226125_
                           (let ()
                             (declare (not safe))
                             (##cdr _e225768226120_)))
                          (_hd225767226123_
                           (let ()
                             (declare (not safe))
                             (##car _e225768226120_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd225767226123_))
                          (let ((_e225771226128_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd225767226123_))))
                            (let ((_tl225769226133_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e225771226128_)))
                                  (_hd225770226131_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e225771226128_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd225770226131_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd225770226131_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl225769226133_))
                                          (let ((_e225774226136_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl225769226133_))))
                                            (let ((_tl225772226141_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e225774226136_)))
                                                  (_hd225773226139_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e225774226136_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl225772226141_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl225766226125_))
                                                      (let ((_e225777226144_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl225766226125_))))
                (let ((_tl225775226149_
                       (let () (declare (not safe)) (##cdr _e225777226144_)))
                      (_hd225776226147_
                       (let () (declare (not safe)) (##car _e225777226144_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd225776226147_))
                      (let ((_e225780226152_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd225776226147_))))
                        (let ((_tl225778226157_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225780226152_)))
                              (_hd225779226155_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225780226152_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd225779226155_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd225779226155_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl225778226157_))
                                      (let ((_e225783226160_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl225778226157_))))
                                        (let ((_tl225781226165_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e225783226160_)))
                                              (_hd225782226163_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e225783226160_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl225781226165_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl225775226149_))
                                                  (let ((_e225786226168_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl225775226149_))))
                                                    (let ((_tl225784226173_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e225786226168_)))
                                                          (_hd225785226171_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e225786226168_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd225785226171_))
                                                          (let ((_e225789226176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd225785226171_))))
                    (let ((_tl225787226181_
                           (let ()
                             (declare (not safe))
                             (##cdr _e225789226176_)))
                          (_hd225788226179_
                           (let ()
                             (declare (not safe))
                             (##car _e225789226176_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd225788226179_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd225788226179_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl225787226181_))
                                  (let ((_e225792226184_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl225787226181_))))
                                    (let ((_tl225790226189_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e225792226184_)))
                                          (_hd225791226187_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e225792226184_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl225790226189_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl225784226173_))
                                              (___match231247231248_
                                               _e225747226064_
                                               _hd225746226067_
                                               _tl225745226069_
                                               _e225750226072_
                                               _hd225749226075_
                                               _tl225748226077_
                                               _e225753226080_
                                               _hd225752226083_
                                               _tl225751226085_
                                               _e225756226088_
                                               _hd225755226091_
                                               _tl225754226093_
                                               _e225759226096_
                                               _hd225758226099_
                                               _tl225757226101_
                                               _e225762226104_
                                               _hd225761226107_
                                               _tl225760226109_
                                               _e225765226112_
                                               _hd225764226115_
                                               _tl225763226117_
                                               _e225768226120_
                                               _hd225767226123_
                                               _tl225766226125_
                                               _e225771226128_
                                               _hd225770226131_
                                               _tl225769226133_
                                               _e225774226136_
                                               _hd225773226139_
                                               _tl225772226141_
                                               _e225777226144_
                                               _hd225776226147_
                                               _tl225775226149_
                                               _e225780226152_
                                               _hd225779226155_
                                               _tl225778226157_
                                               _e225783226160_
                                               _hd225782226163_
                                               _tl225781226165_
                                               _e225786226168_
                                               _hd225785226171_
                                               _tl225784226173_
                                               _e225789226176_
                                               _hd225788226179_
                                               _tl225787226181_
                                               _e225792226184_
                                               _hd225791226187_
                                               _tl225790226189_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl225745226069_))
                                                  (let ((___splice231118231119_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl225745226069_
                                                            '0))))
                                                    (let ((_tl225842225868_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231118231119_
                                                              '1)))
                                                          (_target225840225866_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231118231119_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl225842225868_))
                                                          (___match231367231368_
                                                           _e225747226064_
                                                           _hd225746226067_
                                                           _tl225745226069_
                                                           ___splice231118231119_
                                                           _target225840225866_
                                                           _tl225842225868_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g225738225853_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g225738225853_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl225745226069_))
                                              (let ((___splice231118231119_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl225745226069_
                                                        '0))))
                                                (let ((_tl225842225868_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231118231119_
                                                          '1)))
                                                      (_target225840225866_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231118231119_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225842225868_))
                                                      (___match231367231368_
                                                       _e225747226064_
                                                       _hd225746226067_
                                                       _tl225745226069_
                                                       ___splice231118231119_
                                                       _target225840225866_
                                                       _tl225842225868_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g225738225853_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g225738225853_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl225745226069_))
                                      (let ((___splice231118231119_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl225745226069_
                                                '0))))
                                        (let ((_tl225842225868_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231118231119_
                                                  '1)))
                                              (_target225840225866_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231118231119_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl225842225868_))
                                              (___match231367231368_
                                               _e225747226064_
                                               _hd225746226067_
                                               _tl225745226069_
                                               ___splice231118231119_
                                               _target225840225866_
                                               _tl225842225868_)
                                              (let ()
                                                (declare (not safe))
                                                (_g225738225853_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225738225853_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl225745226069_))
                                  (let ((___splice231118231119_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl225745226069_
                                            '0))))
                                    (let ((_tl225842225868_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice231118231119_
                                              '1)))
                                          (_target225840225866_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice231118231119_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl225842225868_))
                                          (___match231367231368_
                                           _e225747226064_
                                           _hd225746226067_
                                           _tl225745226069_
                                           ___splice231118231119_
                                           _target225840225866_
                                           _tl225842225868_)
                                          (let ()
                                            (declare (not safe))
                                            (_g225738225853_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g225738225853_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl225745226069_))
                              (let ((___splice231118231119_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl225745226069_
                                        '0))))
                                (let ((_tl225842225868_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice231118231119_
                                          '1)))
                                      (_target225840225866_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice231118231119_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225842225868_))
                                      (___match231367231368_
                                       _e225747226064_
                                       _hd225746226067_
                                       _tl225745226069_
                                       ___splice231118231119_
                                       _target225840225866_
                                       _tl225842225868_)
                                      (let ()
                                        (declare (not safe))
                                        (_g225738225853_)))))
                              (let ()
                                (declare (not safe))
                                (_g225738225853_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl225745226069_))
                      (let ((___splice231118231119_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl225745226069_ '0))))
                        (let ((_tl225842225868_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231118231119_ '1)))
                              (_target225840225866_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231118231119_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl225842225868_))
                              (___match231367231368_
                               _e225747226064_
                               _hd225746226067_
                               _tl225745226069_
                               ___splice231118231119_
                               _target225840225866_
                               _tl225842225868_)
                              (let ()
                                (declare (not safe))
                                (_g225738225853_)))))
                      (let () (declare (not safe)) (_g225738225853_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225775226149_))
                                                      (if (let ((__tmp233116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp233116 'bind-method!))
                  (let ((_L226020_ _hd225782226163_)
                        (_L226021_ _hd225773226139_)
                        (_L226022_ _hd225764226115_)
                        (_L226023_ _hd225755226091_))
                    (___kont231114231115_
                     _L226020_
                     _L226021_
                     _L226022_
                     _L226023_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl225745226069_))
                      (let ((___splice231118231119_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl225745226069_ '0))))
                        (let ((_tl225842225868_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231118231119_ '1)))
                              (_target225840225866_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231118231119_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl225842225868_))
                              (___match231367231368_
                               _e225747226064_
                               _hd225746226067_
                               _tl225745226069_
                               ___splice231118231119_
                               _target225840225866_
                               _tl225842225868_)
                              (let ()
                                (declare (not safe))
                                (_g225738225853_)))))
                      (let () (declare (not safe)) (_g225738225853_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl225745226069_))
                  (let ((___splice231118231119_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl225745226069_ '0))))
                    (let ((_tl225842225868_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice231118231119_ '1)))
                          (_target225840225866_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice231118231119_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl225842225868_))
                          (___match231367231368_
                           _e225747226064_
                           _hd225746226067_
                           _tl225745226069_
                           ___splice231118231119_
                           _target225840225866_
                           _tl225842225868_)
                          (let () (declare (not safe)) (_g225738225853_)))))
                  (let () (declare (not safe)) (_g225738225853_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl225745226069_))
                                                  (let ((___splice231118231119_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl225745226069_
                                                            '0))))
                                                    (let ((_tl225842225868_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231118231119_
                                                              '1)))
                                                          (_target225840225866_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231118231119_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl225842225868_))
                                                          (___match231367231368_
                                                           _e225747226064_
                                                           _hd225746226067_
                                                           _tl225745226069_
                                                           ___splice231118231119_
                                                           _target225840225866_
                                                           _tl225842225868_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g225738225853_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g225738225853_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl225745226069_))
                                          (let ((___splice231118231119_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl225745226069_
                                                    '0))))
                                            (let ((_tl225842225868_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice231118231119_
                                                      '1)))
                                                  (_target225840225866_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice231118231119_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl225842225868_))
                                                  (___match231367231368_
                                                   _e225747226064_
                                                   _hd225746226067_
                                                   _tl225745226069_
                                                   ___splice231118231119_
                                                   _target225840225866_
                                                   _tl225842225868_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g225738225853_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g225738225853_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl225745226069_))
                                      (let ((___splice231118231119_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl225745226069_
                                                '0))))
                                        (let ((_tl225842225868_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231118231119_
                                                  '1)))
                                              (_target225840225866_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231118231119_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl225842225868_))
                                              (___match231367231368_
                                               _e225747226064_
                                               _hd225746226067_
                                               _tl225745226069_
                                               ___splice231118231119_
                                               _target225840225866_
                                               _tl225842225868_)
                                              (let ()
                                                (declare (not safe))
                                                (_g225738225853_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225738225853_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl225745226069_))
                                  (let ((___splice231118231119_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl225745226069_
                                            '0))))
                                    (let ((_tl225842225868_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice231118231119_
                                              '1)))
                                          (_target225840225866_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice231118231119_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl225842225868_))
                                          (___match231367231368_
                                           _e225747226064_
                                           _hd225746226067_
                                           _tl225745226069_
                                           ___splice231118231119_
                                           _target225840225866_
                                           _tl225842225868_)
                                          (let ()
                                            (declare (not safe))
                                            (_g225738225853_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g225738225853_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl225745226069_))
                          (let ((___splice231118231119_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl225745226069_
                                    '0))))
                            (let ((_tl225842225868_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice231118231119_ '1)))
                                  (_target225840225866_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice231118231119_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl225842225868_))
                                  (___match231367231368_
                                   _e225747226064_
                                   _hd225746226067_
                                   _tl225745226069_
                                   ___splice231118231119_
                                   _target225840225866_
                                   _tl225842225868_)
                                  (let ()
                                    (declare (not safe))
                                    (_g225738225853_)))))
                          (let () (declare (not safe)) (_g225738225853_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl225745226069_))
                  (let ((___splice231118231119_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl225745226069_ '0))))
                    (let ((_tl225842225868_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice231118231119_ '1)))
                          (_target225840225866_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice231118231119_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl225842225868_))
                          (___match231367231368_
                           _e225747226064_
                           _hd225746226067_
                           _tl225745226069_
                           ___splice231118231119_
                           _target225840225866_
                           _tl225842225868_)
                          (let () (declare (not safe)) (_g225738225853_)))))
                  (let () (declare (not safe)) (_g225738225853_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl225745226069_))
                                                      (let ((___splice231118231119_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl225745226069_ '0))))
                (let ((_tl225842225868_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice231118231119_ '1)))
                      (_target225840225866_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice231118231119_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl225842225868_))
                      (___match231367231368_
                       _e225747226064_
                       _hd225746226067_
                       _tl225745226069_
                       ___splice231118231119_
                       _target225840225866_
                       _tl225842225868_)
                      (let () (declare (not safe)) (_g225738225853_)))))
              (let () (declare (not safe)) (_g225738225853_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl225745226069_))
                                              (let ((___splice231118231119_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl225745226069_
                                                        '0))))
                                                (let ((_tl225842225868_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231118231119_
                                                          '1)))
                                                      (_target225840225866_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231118231119_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225842225868_))
                                                      (___match231367231368_
                                                       _e225747226064_
                                                       _hd225746226067_
                                                       _tl225745226069_
                                                       ___splice231118231119_
                                                       _target225840225866_
                                                       _tl225842225868_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g225738225853_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g225738225853_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl225745226069_))
                                          (let ((___splice231118231119_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl225745226069_
                                                    '0))))
                                            (let ((_tl225842225868_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice231118231119_
                                                      '1)))
                                                  (_target225840225866_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice231118231119_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl225842225868_))
                                                  (___match231367231368_
                                                   _e225747226064_
                                                   _hd225746226067_
                                                   _tl225745226069_
                                                   ___splice231118231119_
                                                   _target225840225866_
                                                   _tl225842225868_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g225738225853_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g225738225853_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl225745226069_))
                                      (let ((___splice231118231119_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl225745226069_
                                                '0))))
                                        (let ((_tl225842225868_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231118231119_
                                                  '1)))
                                              (_target225840225866_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231118231119_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl225842225868_))
                                              (___match231367231368_
                                               _e225747226064_
                                               _hd225746226067_
                                               _tl225745226069_
                                               ___splice231118231119_
                                               _target225840225866_
                                               _tl225842225868_)
                                              (let ()
                                                (declare (not safe))
                                                (_g225738225853_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225738225853_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl225745226069_))
                              (let ((___splice231118231119_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl225745226069_
                                        '0))))
                                (let ((_tl225842225868_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice231118231119_
                                          '1)))
                                      (_target225840225866_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice231118231119_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225842225868_))
                                      (___match231367231368_
                                       _e225747226064_
                                       _hd225746226067_
                                       _tl225745226069_
                                       ___splice231118231119_
                                       _target225840225866_
                                       _tl225842225868_)
                                      (let ()
                                        (declare (not safe))
                                        (_g225738225853_)))))
                              (let ()
                                (declare (not safe))
                                (_g225738225853_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl225745226069_))
                      (let ((___splice231118231119_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl225745226069_ '0))))
                        (let ((_tl225842225868_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231118231119_ '1)))
                              (_target225840225866_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231118231119_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl225842225868_))
                              (___match231367231368_
                               _e225747226064_
                               _hd225746226067_
                               _tl225745226069_
                               ___splice231118231119_
                               _target225840225866_
                               _tl225842225868_)
                              (let ()
                                (declare (not safe))
                                (_g225738225853_)))))
                      (let () (declare (not safe)) (_g225738225853_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl225745226069_))
                  (let ((___splice231118231119_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl225745226069_ '0))))
                    (let ((_tl225842225868_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice231118231119_ '1)))
                          (_target225840225866_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice231118231119_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl225842225868_))
                          (___match231367231368_
                           _e225747226064_
                           _hd225746226067_
                           _tl225745226069_
                           ___splice231118231119_
                           _target225840225866_
                           _tl225842225868_)
                          (let () (declare (not safe)) (_g225738225853_)))))
                  (let () (declare (not safe)) (_g225738225853_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl225745226069_))
                                                  (let ((___splice231118231119_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl225745226069_
                                                            '0))))
                                                    (let ((_tl225842225868_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231118231119_
                                                              '1)))
                                                          (_target225840225866_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231118231119_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl225842225868_))
                                                          (___match231367231368_
                                                           _e225747226064_
                                                           _hd225746226067_
                                                           _tl225745226069_
                                                           ___splice231118231119_
                                                           _target225840225866_
                                                           _tl225842225868_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g225738225853_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g225738225853_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl225745226069_))
                                              (let ((___splice231118231119_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl225745226069_
                                                        '0))))
                                                (let ((_tl225842225868_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231118231119_
                                                          '1)))
                                                      (_target225840225866_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231118231119_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225842225868_))
                                                      (___match231367231368_
                                                       _e225747226064_
                                                       _hd225746226067_
                                                       _tl225745226069_
                                                       ___splice231118231119_
                                                       _target225840225866_
                                                       _tl225842225868_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g225738225853_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g225738225853_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl225745226069_))
                                          (let ((___splice231118231119_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl225745226069_
                                                    '0))))
                                            (let ((_tl225842225868_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice231118231119_
                                                      '1)))
                                                  (_target225840225866_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice231118231119_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl225842225868_))
                                                  (___match231367231368_
                                                   _e225747226064_
                                                   _hd225746226067_
                                                   _tl225745226069_
                                                   ___splice231118231119_
                                                   _target225840225866_
                                                   _tl225842225868_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g225738225853_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g225738225853_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl225745226069_))
                                  (let ((___splice231118231119_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl225745226069_
                                            '0))))
                                    (let ((_tl225842225868_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice231118231119_
                                              '1)))
                                          (_target225840225866_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice231118231119_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl225842225868_))
                                          (___match231367231368_
                                           _e225747226064_
                                           _hd225746226067_
                                           _tl225745226069_
                                           ___splice231118231119_
                                           _target225840225866_
                                           _tl225842225868_)
                                          (let ()
                                            (declare (not safe))
                                            (_g225738225853_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g225738225853_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl225745226069_))
                          (let ((___splice231118231119_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl225745226069_
                                    '0))))
                            (let ((_tl225842225868_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice231118231119_ '1)))
                                  (_target225840225866_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice231118231119_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl225842225868_))
                                  (___match231367231368_
                                   _e225747226064_
                                   _hd225746226067_
                                   _tl225745226069_
                                   ___splice231118231119_
                                   _target225840225866_
                                   _tl225842225868_)
                                  (let ()
                                    (declare (not safe))
                                    (_g225738225853_)))))
                          (let () (declare (not safe)) (_g225738225853_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl225745226069_))
                      (let ((___splice231118231119_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl225745226069_ '0))))
                        (let ((_tl225842225868_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231118231119_ '1)))
                              (_target225840225866_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231118231119_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl225842225868_))
                              (___match231367231368_
                               _e225747226064_
                               _hd225746226067_
                               _tl225745226069_
                               ___splice231118231119_
                               _target225840225866_
                               _tl225842225868_)
                              (let ()
                                (declare (not safe))
                                (_g225738225853_)))))
                      (let () (declare (not safe)) (_g225738225853_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl225745226069_))
                                                      (let ((___splice231118231119_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl225745226069_ '0))))
                (let ((_tl225842225868_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice231118231119_ '1)))
                      (_target225840225866_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice231118231119_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl225842225868_))
                      (___match231367231368_
                       _e225747226064_
                       _hd225746226067_
                       _tl225745226069_
                       ___splice231118231119_
                       _target225840225866_
                       _tl225842225868_)
                      (let () (declare (not safe)) (_g225738225853_)))))
              (let () (declare (not safe)) (_g225738225853_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl225745226069_))
                                                  (let ((___splice231118231119_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl225745226069_
                                                            '0))))
                                                    (let ((_tl225842225868_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231118231119_
                                                              '1)))
                                                          (_target225840225866_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231118231119_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl225842225868_))
                                                          (___match231367231368_
                                                           _e225747226064_
                                                           _hd225746226067_
                                                           _tl225745226069_
                                                           ___splice231118231119_
                                                           _target225840225866_
                                                           _tl225842225868_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g225738225853_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g225738225853_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl225745226069_))
                                              (let ((___splice231118231119_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl225745226069_
                                                        '0))))
                                                (let ((_tl225842225868_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231118231119_
                                                          '1)))
                                                      (_target225840225866_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231118231119_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225842225868_))
                                                      (___match231367231368_
                                                       _e225747226064_
                                                       _hd225746226067_
                                                       _tl225745226069_
                                                       ___splice231118231119_
                                                       _target225840225866_
                                                       _tl225842225868_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g225738225853_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g225738225853_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl225745226069_))
                                      (let ((___splice231118231119_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl225745226069_
                                                '0))))
                                        (let ((_tl225842225868_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231118231119_
                                                  '1)))
                                              (_target225840225866_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231118231119_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl225842225868_))
                                              (___match231367231368_
                                               _e225747226064_
                                               _hd225746226067_
                                               _tl225745226069_
                                               ___splice231118231119_
                                               _target225840225866_
                                               _tl225842225868_)
                                              (let ()
                                                (declare (not safe))
                                                (_g225738225853_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225738225853_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl225745226069_))
                              (let ((___splice231118231119_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl225745226069_
                                        '0))))
                                (let ((_tl225842225868_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice231118231119_
                                          '1)))
                                      (_target225840225866_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice231118231119_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225842225868_))
                                      (___match231367231368_
                                       _e225747226064_
                                       _hd225746226067_
                                       _tl225745226069_
                                       ___splice231118231119_
                                       _target225840225866_
                                       _tl225842225868_)
                                      (let ()
                                        (declare (not safe))
                                        (_g225738225853_)))))
                              (let ()
                                (declare (not safe))
                                (_g225738225853_))))))
                  (let () (declare (not safe)) (_g225738225853_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx225674_)
        (let* ((___stx231370231371_ _stx225674_)
               (_g225677225690_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231370231371_)))))
          (let ((___kont231372231373_
                 (lambda (_L225718_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L225718_))))
                (___kont231374231375_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx231370231371_))
                (let ((_e225682225702_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx231370231371_))))
                  (let ((_tl225680225707_
                         (let () (declare (not safe)) (##cdr _e225682225702_)))
                        (_hd225681225705_
                         (let ()
                           (declare (not safe))
                           (##car _e225682225702_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl225680225707_))
                        (let ((_e225685225710_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl225680225707_))))
                          (let ((_tl225683225715_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e225685225710_)))
                                (_hd225684225713_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e225685225710_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl225683225715_))
                                (___kont231372231373_ _hd225684225713_)
                                (___kont231374231375_))))
                        (___kont231374231375_))))
                (___kont231374231375_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx225554_)
        (let* ((_g225556225573_
                (lambda (_g225557225570_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g225557225570_))))
               (_g225555225671_
                (lambda (_g225557225576_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g225557225576_))
                      (let ((_e225562225578_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g225557225576_))))
                        (let ((_hd225561225581_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225562225578_)))
                              (_tl225560225583_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225562225578_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225560225583_))
                              (let ((_e225565225586_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl225560225583_))))
                                (let ((_hd225564225589_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225565225586_)))
                                      (_tl225563225591_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225565225586_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl225563225591_))
                                      (let ((_e225568225594_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl225563225591_))))
                                        (let ((_hd225567225597_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e225568225594_)))
                                              (_tl225566225599_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e225568225594_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl225566225599_))
                                              ((lambda (_L225602_ _L225603_)
                                                 (let* ((___stx231392231393_
                                                         _L225603_)
                                                        (_g225619225630_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx231392231393_)))))
                                                   (let ((___kont231394231395_
                                                          (lambda (_L225650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L225651_)
                    (let ((_$e225663_
                           (let ((__tmp233117
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L225651_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp233117
                              '#f))))
                      (if _$e225663_
                          ((lambda (_type-e225666_)
                             (_type-e225666_ _stx225554_ _L225603_))
                           _$e225663_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L225602_))))))
                 (___kont231396231397_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L225602_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match231403231404_
                                                            (lambda (_e225625225642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd225624225645_
                             _tl225623225647_)
                      (let ((_L225650_ _tl225623225647_)
                            (_L225651_ _hd225624225645_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L225651_))
                            (___kont231394231395_ _L225650_ _L225651_)
                            (___kont231396231397_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx231392231393_))
                   (let ((_e225625225642_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx231392231393_))))
                     (let ((_tl225623225647_
                            (let ()
                              (declare (not safe))
                              (##cdr _e225625225642_)))
                           (_hd225624225645_
                            (let ()
                              (declare (not safe))
                              (##car _e225625225642_))))
                       (___match231403231404_
                        _e225625225642_
                        _hd225624225645_
                        _tl225623225647_)))
                   (___kont231396231397_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd225567225597_
                                               _hd225564225589_)
                                              (let ()
                                                (declare (not safe))
                                                (_g225556225573_
                                                 _g225557225576_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225556225573_ _g225557225576_)))))
                              (let ()
                                (declare (not safe))
                                (_g225556225573_ _g225557225576_)))))
                      (let ()
                        (declare (not safe))
                        (_g225556225573_ _g225557225576_))))))
          (declare (not safe))
          (_g225555225671_ _stx225554_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx225415_ _ann225416_)
        (let* ((_g225418225451_
                (lambda (_g225419225448_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g225419225448_))))
               (_g225417225551_
                (lambda (_g225419225454_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g225419225454_))
                      (let ((_e225428225456_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g225419225454_))))
                        (let ((_hd225427225459_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225428225456_)))
                              (_tl225426225461_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225428225456_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225426225461_))
                              (let ((_e225431225464_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl225426225461_))))
                                (let ((_hd225430225467_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225431225464_)))
                                      (_tl225429225469_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225431225464_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl225429225469_))
                                      (let ((_e225434225472_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl225429225469_))))
                                        (let ((_hd225433225475_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e225434225472_)))
                                              (_tl225432225477_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e225434225472_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl225432225477_))
                                              (let ((_e225437225480_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl225432225477_))))
                                                (let ((_hd225436225483_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e225437225480_)))
                                                      (_tl225435225485_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e225437225480_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl225435225485_))
                                                      (let ((_e225440225488_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl225435225485_))))
                (let ((_hd225439225491_
                       (let () (declare (not safe)) (##car _e225440225488_)))
                      (_tl225438225493_
                       (let () (declare (not safe)) (##cdr _e225440225488_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl225438225493_))
                      (let ((_e225443225496_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl225438225493_))))
                        (let ((_hd225442225499_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225443225496_)))
                              (_tl225441225501_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225443225496_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225441225501_))
                              (let ((_e225446225504_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl225441225501_))))
                                (let ((_hd225445225507_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225446225504_)))
                                      (_tl225444225509_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225446225504_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225444225509_))
                                      ((lambda (_L225512_
                                                _L225513_
                                                _L225514_
                                                _L225515_
                                                _L225516_
                                                _L225517_)
                                         (let ((_type-id225544_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L225517_)))
                                               (_super225545_
                                                (map gxc#identifier-symbol
                                                     _L225516_))
                                               (_slots225546_
                                                (map gx#stx-e _L225515_))
                                               (_ctor-method225547_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L225514_)))
                                               (_struct?225548_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L225513_)))
                                               (_final?225549_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L225512_))))
                                           (let ((__obj233075
                                                  (make-object
                                                   gxc#!class::t
                                                   '10)))
                                             (gxc#!class:::init!
                                              __obj233075
                                              _type-id225544_
                                              _super225545_
                                              _slots225546_
                                              _ctor-method225547_
                                              _struct?225548_
                                              _final?225549_)
                                             __obj233075)))
                                       _hd225445225507_
                                       _hd225442225499_
                                       _hd225439225491_
                                       _hd225436225483_
                                       _hd225433225475_
                                       _hd225430225467_)
                                      (let ()
                                        (declare (not safe))
                                        (_g225418225451_ _g225419225454_)))))
                              (let ()
                                (declare (not safe))
                                (_g225418225451_ _g225419225454_)))))
                      (let ()
                        (declare (not safe))
                        (_g225418225451_ _g225419225454_)))))
              (let ()
                (declare (not safe))
                (_g225418225451_ _g225419225454_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g225418225451_
                                                 _g225419225454_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225418225451_ _g225419225454_)))))
                              (let ()
                                (declare (not safe))
                                (_g225418225451_ _g225419225454_)))))
                      (let ()
                        (declare (not safe))
                        (_g225418225451_ _g225419225454_))))))
          (declare (not safe))
          (_g225417225551_ _ann225416_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx225363_ _ann225364_)
        (let* ((_g225366225379_
                (lambda (_g225367225376_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g225367225376_))))
               (_g225365225412_
                (lambda (_g225367225382_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g225367225382_))
                      (let ((_e225371225384_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g225367225382_))))
                        (let ((_hd225370225387_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225371225384_)))
                              (_tl225369225389_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225371225384_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225369225389_))
                              (let ((_e225374225392_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl225369225389_))))
                                (let ((_hd225373225395_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225374225392_)))
                                      (_tl225372225397_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225374225392_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225372225397_))
                                      ((lambda (_L225400_)
                                         (let ((__tmp233118
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L225400_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp233118)))
                                       _hd225373225395_)
                                      (let ()
                                        (declare (not safe))
                                        (_g225366225379_ _g225367225382_)))))
                              (let ()
                                (declare (not safe))
                                (_g225366225379_ _g225367225382_)))))
                      (let ()
                        (declare (not safe))
                        (_g225366225379_ _g225367225382_))))))
          (declare (not safe))
          (_g225365225412_ _ann225364_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx225311_ _ann225312_)
        (let* ((_g225314225327_
                (lambda (_g225315225324_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g225315225324_))))
               (_g225313225360_
                (lambda (_g225315225330_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g225315225330_))
                      (let ((_e225319225332_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g225315225330_))))
                        (let ((_hd225318225335_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225319225332_)))
                              (_tl225317225337_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225319225332_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225317225337_))
                              (let ((_e225322225340_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl225317225337_))))
                                (let ((_hd225321225343_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225322225340_)))
                                      (_tl225320225345_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225322225340_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225320225345_))
                                      ((lambda (_L225348_)
                                         (let ((__tmp233119
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L225348_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp233119)))
                                       _hd225321225343_)
                                      (let ()
                                        (declare (not safe))
                                        (_g225314225327_ _g225315225330_)))))
                              (let ()
                                (declare (not safe))
                                (_g225314225327_ _g225315225330_)))))
                      (let ()
                        (declare (not safe))
                        (_g225314225327_ _g225315225330_))))))
          (declare (not safe))
          (_g225313225360_ _ann225312_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx225227_ _ann225228_)
        (let* ((_g225230225251_
                (lambda (_g225231225248_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g225231225248_))))
               (_g225229225308_
                (lambda (_g225231225254_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g225231225254_))
                      (let ((_e225237225256_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g225231225254_))))
                        (let ((_hd225236225259_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225237225256_)))
                              (_tl225235225261_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225237225256_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225235225261_))
                              (let ((_e225240225264_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl225235225261_))))
                                (let ((_hd225239225267_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225240225264_)))
                                      (_tl225238225269_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225240225264_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl225238225269_))
                                      (let ((_e225243225272_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl225238225269_))))
                                        (let ((_hd225242225275_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e225243225272_)))
                                              (_tl225241225277_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e225243225272_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl225241225277_))
                                              (let ((_e225246225280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl225241225277_))))
                                                (let ((_hd225245225283_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e225246225280_)))
                                                      (_tl225244225285_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e225246225280_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225244225285_))
                                                      ((lambda (_L225288_
                                                                _L225289_
                                                                _L225290_)
                                                         (let ((__tmp233122
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L225290_)))
                       (__tmp233121
                        (let () (declare (not safe)) (gx#stx-e _L225289_)))
                       (__tmp233120
                        (let () (declare (not safe)) (gx#stx-e _L225288_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp233122
                    __tmp233121
                    __tmp233120)))
               _hd225245225283_
               _hd225242225275_
               _hd225239225267_)
              (let ()
                (declare (not safe))
                (_g225230225251_ _g225231225254_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g225230225251_
                                                 _g225231225254_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225230225251_ _g225231225254_)))))
                              (let ()
                                (declare (not safe))
                                (_g225230225251_ _g225231225254_)))))
                      (let ()
                        (declare (not safe))
                        (_g225230225251_ _g225231225254_))))))
          (declare (not safe))
          (_g225229225308_ _ann225228_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx225143_ _ann225144_)
        (let* ((_g225146225167_
                (lambda (_g225147225164_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g225147225164_))))
               (_g225145225224_
                (lambda (_g225147225170_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g225147225170_))
                      (let ((_e225153225172_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g225147225170_))))
                        (let ((_hd225152225175_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225153225172_)))
                              (_tl225151225177_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225153225172_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225151225177_))
                              (let ((_e225156225180_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl225151225177_))))
                                (let ((_hd225155225183_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225156225180_)))
                                      (_tl225154225185_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225156225180_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl225154225185_))
                                      (let ((_e225159225188_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl225154225185_))))
                                        (let ((_hd225158225191_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e225159225188_)))
                                              (_tl225157225193_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e225159225188_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl225157225193_))
                                              (let ((_e225162225196_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl225157225193_))))
                                                (let ((_hd225161225199_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e225162225196_)))
                                                      (_tl225160225201_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e225162225196_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225160225201_))
                                                      ((lambda (_L225204_
                                                                _L225205_
                                                                _L225206_)
                                                         (let ((__tmp233125
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L225206_)))
                       (__tmp233124
                        (let () (declare (not safe)) (gx#stx-e _L225205_)))
                       (__tmp233123
                        (let () (declare (not safe)) (gx#stx-e _L225204_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp233125
                    __tmp233124
                    __tmp233123)))
               _hd225161225199_
               _hd225158225191_
               _hd225155225183_)
              (let ()
                (declare (not safe))
                (_g225146225167_ _g225147225170_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g225146225167_
                                                 _g225147225170_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225146225167_ _g225147225170_)))))
                              (let ()
                                (declare (not safe))
                                (_g225146225167_ _g225147225170_)))))
                      (let ()
                        (declare (not safe))
                        (_g225146225167_ _g225147225170_))))))
          (declare (not safe))
          (_g225145225224_ _ann225144_))))
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
      (lambda (_stx224263_)
        (let* ((___stx231406231407_ _stx224263_)
               (_g224269224465_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231406231407_)))))
          (let ((___kont231408231409_
                 (lambda (_L225131_)
                   (let ((__obj233076 (make-object gxc#!lambda::t '6)))
                     (gxc#!lambda:::init!
                      __obj233076
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L225131_))
                      '#f)
                     __obj233076)))
                (___kont231410231411_
                 (lambda (_L225058_
                          _L225059_
                          _L225060_
                          _L225061_
                          _L225062_
                          _L225063_)
                   (let* ((_tab225113_
                           (let () (declare (not safe)) (gx#stx-e _L225060_)))
                          (_keys225115_
                           (if _tab225113_
                               (let ((__tmp233126 (vector->list _tab225113_)))
                                 (declare (not safe))
                                 (filter values __tmp233126))
                               '#f)))
                     (let ((__tmp233127
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L225059_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys225115_
                        __tmp233127)))))
                (___kont231412231413_
                 (lambda (_L224791_
                          _L224792_
                          _L224793_
                          _L224794_
                          _L224795_
                          _L224796_
                          _L224797_
                          _L224798_
                          _L224799_
                          _L224800_)
                   (let ((__tmp233129
                          (map gx#stx-e
                               (let ((__tmp233130
                                      (lambda (_g224893224896_ _g224894224898_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g224893224896_
                                                _g224894224898_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp233130 '() _L224793_))))
                         (__tmp233128
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L224797_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp233129
                      __tmp233128))))
                (___kont231416231417_
                 (lambda (_L224501_)
                   (let ((__obj233077 (make-object gxc#!lambda::t '6)))
                     (gxc#!lambda:::init!
                      __obj233077
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L224501_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L224501_)))
                     __obj233077)))
                (___kont231418231419_
                 (lambda (_L224478_)
                   (let ((__obj233078 (make-object gxc#!lambda::t '6)))
                     (gxc#!lambda:::init!
                      __obj233078
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L224478_))
                      '#f)
                     __obj233078))))
            (let* ((___match231725231726_
                    (lambda (_e224456224493_ _hd224455224496_ _tl224454224498_)
                      (let ((_L224501_ _tl224454224498_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L224501_))
                            (___kont231416231417_ _L224501_)
                            (___kont231418231419_ _tl224454224498_)))))
                   (___match231719231720_
                    (lambda (_e224350224515_
                             _hd224349224518_
                             _tl224348224520_
                             _e224353224523_
                             _hd224352224526_
                             _tl224351224528_
                             _e224356224531_
                             _hd224355224534_
                             _tl224354224536_
                             _e224359224539_
                             _hd224358224542_
                             _tl224357224544_
                             _e224362224547_
                             _hd224361224550_
                             _tl224360224552_
                             _e224365224555_
                             _hd224364224558_
                             _tl224363224560_
                             _e224368224563_
                             _hd224367224566_
                             _tl224366224568_
                             _e224371224571_
                             _hd224370224574_
                             _tl224369224576_
                             _e224374224579_
                             _hd224373224582_
                             _tl224372224584_
                             _e224377224587_
                             _hd224376224590_
                             _tl224375224592_
                             _e224380224595_
                             _hd224379224598_
                             _tl224378224600_
                             _e224383224603_
                             _hd224382224606_
                             _tl224381224608_
                             _e224386224611_
                             _hd224385224614_
                             _tl224384224616_
                             _e224389224619_
                             _hd224388224622_
                             _tl224387224624_
                             ___splice231414231415_
                             _target224390224627_
                             _tl224392224629_
                             _e224407224632_
                             _hd224406224635_
                             _tl224405224637_
                             _e224410224640_
                             _hd224409224643_
                             _tl224408224645_
                             _e224413224648_
                             _hd224412224651_
                             _tl224411224653_)
                      (letrec ((_loop224393224656_
                                (lambda (_hd224391224659_
                                         _-absent-value224397224661_
                                         _key224398224663_
                                         _-xkwvar224399224665_
                                         _-hash-ref224400224667_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd224391224659_))
                                      (let ((_e224394224670_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd224391224659_))))
                                        (let ((_lp-tl224396224675_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224394224670_)))
                                              (_lp-hd224395224673_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224394224670_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd224395224673_))
                                              (let ((_e224416224678_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd224395224673_))))
                                                (let ((_tl224414224683_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e224416224678_)))
                                                      (_hd224415224681_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e224416224678_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd224415224681_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd224415224681_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl224414224683_))
                      (let ((_e224419224686_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl224414224683_))))
                        (let ((_tl224417224691_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224419224686_)))
                              (_hd224418224689_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224419224686_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd224418224689_))
                              (let ((_e224422224694_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd224418224689_))))
                                (let ((_tl224420224699_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224422224694_)))
                                      (_hd224421224697_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224422224694_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd224421224697_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd224421224697_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl224420224699_))
                                              (let ((_e224425224702_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl224420224699_))))
                                                (let ((_tl224423224707_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e224425224702_)))
                                                      (_hd224424224705_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e224425224702_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl224423224707_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl224417224691_))
                                                          (let ((_e224428224710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl224417224691_))))
                    (let ((_tl224426224715_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224428224710_)))
                          (_hd224427224713_
                           (let ()
                             (declare (not safe))
                             (##car _e224428224710_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd224427224713_))
                          (let ((_e224431224718_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd224427224713_))))
                            (let ((_tl224429224723_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224431224718_)))
                                  (_hd224430224721_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224431224718_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd224430224721_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd224430224721_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl224429224723_))
                                          (let ((_e224434224726_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl224429224723_))))
                                            (let ((_tl224432224731_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224434224726_)))
                                                  (_hd224433224729_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224434224726_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl224432224731_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl224426224715_))
                                                      (let ((_e224437224734_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl224426224715_))))
                (let ((_tl224435224739_
                       (let () (declare (not safe)) (##cdr _e224437224734_)))
                      (_hd224436224737_
                       (let () (declare (not safe)) (##car _e224437224734_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd224436224737_))
                      (let ((_e224440224742_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd224436224737_))))
                        (let ((_tl224438224747_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224440224742_)))
                              (_hd224439224745_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224440224742_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd224439224745_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd224439224745_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224438224747_))
                                      (let ((_e224443224750_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224438224747_))))
                                        (let ((_tl224441224755_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224443224750_)))
                                              (_hd224442224753_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224443224750_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224441224755_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl224435224739_))
                                                  (let ((_e224446224758_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl224435224739_))))
                                                    (let ((_tl224444224763_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e224446224758_)))
                                                          (_hd224445224761_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e224446224758_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd224445224761_))
                                                          (let ((_e224449224766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd224445224761_))))
                    (let ((_tl224447224771_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224449224766_)))
                          (_hd224448224769_
                           (let ()
                             (declare (not safe))
                             (##car _e224449224766_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd224448224769_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd224448224769_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl224447224771_))
                                  (let ((_e224452224774_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl224447224771_))))
                                    (let ((_tl224450224779_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224452224774_)))
                                          (_hd224451224777_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224452224774_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl224450224779_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224444224763_))
                                              (let ((__tmp233145
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd224451224777_
                                                             _-absent-value224397224661_)))
                                                    (__tmp233144
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd224442224753_
                                                             _key224398224663_)))
                                                    (__tmp233143
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd224433224729_
                                                             _-xkwvar224399224665_)))
                                                    (__tmp233142
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd224424224705_
                                                             _-hash-ref224400224667_))))
                                                (declare (not safe))
                                                (_loop224393224656_
                                                 _lp-tl224396224675_
                                                 __tmp233145
                                                 __tmp233144
                                                 __tmp233143
                                                 __tmp233142))
                                              (___match231725231726_
                                               _e224350224515_
                                               _hd224349224518_
                                               _tl224348224520_))
                                          (___match231725231726_
                                           _e224350224515_
                                           _hd224349224518_
                                           _tl224348224520_))))
                                  (___match231725231726_
                                   _e224350224515_
                                   _hd224349224518_
                                   _tl224348224520_))
                              (___match231725231726_
                               _e224350224515_
                               _hd224349224518_
                               _tl224348224520_))
                          (___match231725231726_
                           _e224350224515_
                           _hd224349224518_
                           _tl224348224520_))))
                  (___match231725231726_
                   _e224350224515_
                   _hd224349224518_
                   _tl224348224520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231725231726_
                                                   _e224350224515_
                                                   _hd224349224518_
                                                   _tl224348224520_))
                                              (___match231725231726_
                                               _e224350224515_
                                               _hd224349224518_
                                               _tl224348224520_))))
                                      (___match231725231726_
                                       _e224350224515_
                                       _hd224349224518_
                                       _tl224348224520_))
                                  (___match231725231726_
                                   _e224350224515_
                                   _hd224349224518_
                                   _tl224348224520_))
                              (___match231725231726_
                               _e224350224515_
                               _hd224349224518_
                               _tl224348224520_))))
                      (___match231725231726_
                       _e224350224515_
                       _hd224349224518_
                       _tl224348224520_))))
              (___match231725231726_
               _e224350224515_
               _hd224349224518_
               _tl224348224520_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231725231726_
                                                   _e224350224515_
                                                   _hd224349224518_
                                                   _tl224348224520_))))
                                          (___match231725231726_
                                           _e224350224515_
                                           _hd224349224518_
                                           _tl224348224520_))
                                      (___match231725231726_
                                       _e224350224515_
                                       _hd224349224518_
                                       _tl224348224520_))
                                  (___match231725231726_
                                   _e224350224515_
                                   _hd224349224518_
                                   _tl224348224520_))))
                          (___match231725231726_
                           _e224350224515_
                           _hd224349224518_
                           _tl224348224520_))))
                  (___match231725231726_
                   _e224350224515_
                   _hd224349224518_
                   _tl224348224520_))
              (___match231725231726_
               _e224350224515_
               _hd224349224518_
               _tl224348224520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match231725231726_
                                               _e224350224515_
                                               _hd224349224518_
                                               _tl224348224520_))
                                          (___match231725231726_
                                           _e224350224515_
                                           _hd224349224518_
                                           _tl224348224520_))
                                      (___match231725231726_
                                       _e224350224515_
                                       _hd224349224518_
                                       _tl224348224520_))))
                              (___match231725231726_
                               _e224350224515_
                               _hd224349224518_
                               _tl224348224520_))))
                      (___match231725231726_
                       _e224350224515_
                       _hd224349224518_
                       _tl224348224520_))
                  (___match231725231726_
                   _e224350224515_
                   _hd224349224518_
                   _tl224348224520_))
              (___match231725231726_
               _e224350224515_
               _hd224349224518_
               _tl224348224520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match231725231726_
                                               _e224350224515_
                                               _hd224349224518_
                                               _tl224348224520_))))
                                      (let ((_-hash-ref224404224788_
                                             (reverse _-hash-ref224400224667_))
                                            (_-xkwvar224403224786_
                                             (reverse _-xkwvar224399224665_))
                                            (_key224402224784_
                                             (reverse _key224398224663_))
                                            (_-absent-value224401224782_
                                             (reverse _-absent-value224397224661_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl224357224544_))
                                            (let ((_L224791_ _hd224412224651_)
                                                  (_L224792_
                                                   _-absent-value224401224782_)
                                                  (_L224793_ _key224402224784_)
                                                  (_L224794_
                                                   _-xkwvar224403224786_)
                                                  (_L224795_
                                                   _-hash-ref224404224788_)
                                                  (_L224796_ _hd224388224622_)
                                                  (_L224797_ _hd224379224598_)
                                                  (_L224798_ _hd224370224574_)
                                                  (_L224799_ _tl224354224536_)
                                                  (_L224800_ _hd224355224534_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L224800_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L224799_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L224798_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L224800_
                                                          _L224796_))
                                                       (let ((__tmp233140
                                                              (let ((__tmp233141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g224853224856_ _g224854224858_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g224853224856_ _g224854224858_)))))
                        (declare (not safe))
                        (foldr1 __tmp233141 '() _L224793_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp233140))
               (let ((__tmp233139
                      (lambda (_g224860224862_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g224860224862_
                           'hash-ref))))
                     (__tmp233137
                      (let ((__tmp233138
                             (lambda (_g224864224867_ _g224865224869_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g224864224867_ _g224865224869_)))))
                        (declare (not safe))
                        (foldr1 __tmp233138 '() _L224795_))))
                 (declare (not safe))
                 (andmap1 __tmp233139 __tmp233137))
               (let ((__tmp233136
                      (lambda (_g224871224873_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g224871224873_
                           'absent-value))))
                     (__tmp233134
                      (let ((__tmp233135
                             (lambda (_g224875224878_ _g224876224880_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g224875224878_ _g224876224880_)))))
                        (declare (not safe))
                        (foldr1 __tmp233135 '() _L224792_))))
                 (declare (not safe))
                 (andmap1 __tmp233136 __tmp233134))
               (let ((__tmp233133
                      (lambda (_g224882224884_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g224882224884_ _L224800_))))
                     (__tmp233131
                      (let ((__tmp233132
                             (lambda (_g224886224889_ _g224887224891_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g224886224889_ _g224887224891_)))))
                        (declare (not safe))
                        (foldr1 __tmp233132 '() _L224794_))))
                 (declare (not safe))
                 (andmap1 __tmp233133 __tmp233131)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont231412231413_
                                                   _L224791_
                                                   _L224792_
                                                   _L224793_
                                                   _L224794_
                                                   _L224795_
                                                   _L224796_
                                                   _L224797_
                                                   _L224798_
                                                   _L224799_
                                                   _L224800_)
                                                  (___match231725231726_
                                                   _e224350224515_
                                                   _hd224349224518_
                                                   _tl224348224520_)))
                                            (___match231725231726_
                                             _e224350224515_
                                             _hd224349224518_
                                             _tl224348224520_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop224393224656_
                           _target224390224627_
                           '()
                           '()
                           '()
                           '())))))
                   (___match231591231592_
                    (lambda (_e224350224515_
                             _hd224349224518_
                             _tl224348224520_
                             _e224353224523_
                             _hd224352224526_
                             _tl224351224528_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd224352224526_))
                          (let ((_e224356224531_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd224352224526_))))
                            (let ((_tl224354224536_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224356224531_)))
                                  (_hd224355224534_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224356224531_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl224351224528_))
                                  (let ((_e224359224539_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl224351224528_))))
                                    (let ((_tl224357224544_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224359224539_)))
                                          (_hd224358224542_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224359224539_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd224358224542_))
                                          (let ((_e224362224547_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd224358224542_))))
                                            (let ((_tl224360224552_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224362224547_)))
                                                  (_hd224361224550_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224362224547_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd224361224550_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd224361224550_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl224360224552_))
                                                          (let ((_e224365224555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl224360224552_))))
                    (let ((_tl224363224560_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224365224555_)))
                          (_hd224364224558_
                           (let ()
                             (declare (not safe))
                             (##car _e224365224555_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd224364224558_))
                          (let ((_e224368224563_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd224364224558_))))
                            (let ((_tl224366224568_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224368224563_)))
                                  (_hd224367224566_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224368224563_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd224367224566_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd224367224566_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl224366224568_))
                                          (let ((_e224371224571_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl224366224568_))))
                                            (let ((_tl224369224576_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224371224571_)))
                                                  (_hd224370224574_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224371224571_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl224369224576_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl224363224560_))
                                                      (let ((_e224374224579_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl224363224560_))))
                (let ((_tl224372224584_
                       (let () (declare (not safe)) (##cdr _e224374224579_)))
                      (_hd224373224582_
                       (let () (declare (not safe)) (##car _e224374224579_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd224373224582_))
                      (let ((_e224377224587_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd224373224582_))))
                        (let ((_tl224375224592_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224377224587_)))
                              (_hd224376224590_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224377224587_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd224376224590_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd224376224590_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224375224592_))
                                      (let ((_e224380224595_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224375224592_))))
                                        (let ((_tl224378224600_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224380224595_)))
                                              (_hd224379224598_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224380224595_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224378224600_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl224372224584_))
                                                  (let ((_e224383224603_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl224372224584_))))
                                                    (let ((_tl224381224608_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e224383224603_)))
                                                          (_hd224382224606_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e224383224603_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd224382224606_))
                                                          (let ((_e224386224611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd224382224606_))))
                    (let ((_tl224384224616_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224386224611_)))
                          (_hd224385224614_
                           (let ()
                             (declare (not safe))
                             (##car _e224386224611_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd224385224614_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd224385224614_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl224384224616_))
                                  (let ((_e224389224619_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl224384224616_))))
                                    (let ((_tl224387224624_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224389224619_)))
                                          (_hd224388224622_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224389224619_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl224387224624_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl224381224608_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl224381224608_))
                                                        '1)
                                                  (let ((___splice231414231415_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl224381224608_
                                                            '1))))
                                                    (let ((_tl224392224629_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231414231415_
                                                              '1)))
                                                          (_target224390224627_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231414231415_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl224392224629_))
                                                          (let ((_e224407224632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl224392224629_))))
                    (let ((_tl224405224637_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224407224632_)))
                          (_hd224406224635_
                           (let ()
                             (declare (not safe))
                             (##car _e224407224632_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd224406224635_))
                          (let ((_e224410224640_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd224406224635_))))
                            (let ((_tl224408224645_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224410224640_)))
                                  (_hd224409224643_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224410224640_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd224409224643_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd224409224643_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl224408224645_))
                                          (let ((_e224413224648_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl224408224645_))))
                                            (let ((_tl224411224653_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224413224648_)))
                                                  (_hd224412224651_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224413224648_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl224411224653_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl224405224637_))
                                                      (___match231719231720_
                                                       _e224350224515_
                                                       _hd224349224518_
                                                       _tl224348224520_
                                                       _e224353224523_
                                                       _hd224352224526_
                                                       _tl224351224528_
                                                       _e224356224531_
                                                       _hd224355224534_
                                                       _tl224354224536_
                                                       _e224359224539_
                                                       _hd224358224542_
                                                       _tl224357224544_
                                                       _e224362224547_
                                                       _hd224361224550_
                                                       _tl224360224552_
                                                       _e224365224555_
                                                       _hd224364224558_
                                                       _tl224363224560_
                                                       _e224368224563_
                                                       _hd224367224566_
                                                       _tl224366224568_
                                                       _e224371224571_
                                                       _hd224370224574_
                                                       _tl224369224576_
                                                       _e224374224579_
                                                       _hd224373224582_
                                                       _tl224372224584_
                                                       _e224377224587_
                                                       _hd224376224590_
                                                       _tl224375224592_
                                                       _e224380224595_
                                                       _hd224379224598_
                                                       _tl224378224600_
                                                       _e224383224603_
                                                       _hd224382224606_
                                                       _tl224381224608_
                                                       _e224386224611_
                                                       _hd224385224614_
                                                       _tl224384224616_
                                                       _e224389224619_
                                                       _hd224388224622_
                                                       _tl224387224624_
                                                       ___splice231414231415_
                                                       _target224390224627_
                                                       _tl224392224629_
                                                       _e224407224632_
                                                       _hd224406224635_
                                                       _tl224405224637_
                                                       _e224410224640_
                                                       _hd224409224643_
                                                       _tl224408224645_
                                                       _e224413224648_
                                                       _hd224412224651_
                                                       _tl224411224653_)
                                                      (___match231725231726_
                                                       _e224350224515_
                                                       _hd224349224518_
                                                       _tl224348224520_))
                                                  (___match231725231726_
                                                   _e224350224515_
                                                   _hd224349224518_
                                                   _tl224348224520_))))
                                          (___match231725231726_
                                           _e224350224515_
                                           _hd224349224518_
                                           _tl224348224520_))
                                      (___match231725231726_
                                       _e224350224515_
                                       _hd224349224518_
                                       _tl224348224520_))
                                  (___match231725231726_
                                   _e224350224515_
                                   _hd224349224518_
                                   _tl224348224520_))))
                          (___match231725231726_
                           _e224350224515_
                           _hd224349224518_
                           _tl224348224520_))))
                  (___match231725231726_
                   _e224350224515_
                   _hd224349224518_
                   _tl224348224520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231725231726_
                                                   _e224350224515_
                                                   _hd224349224518_
                                                   _tl224348224520_))
                                              (___match231725231726_
                                               _e224350224515_
                                               _hd224349224518_
                                               _tl224348224520_))
                                          (___match231725231726_
                                           _e224350224515_
                                           _hd224349224518_
                                           _tl224348224520_))))
                                  (___match231725231726_
                                   _e224350224515_
                                   _hd224349224518_
                                   _tl224348224520_))
                              (___match231725231726_
                               _e224350224515_
                               _hd224349224518_
                               _tl224348224520_))
                          (___match231725231726_
                           _e224350224515_
                           _hd224349224518_
                           _tl224348224520_))))
                  (___match231725231726_
                   _e224350224515_
                   _hd224349224518_
                   _tl224348224520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231725231726_
                                                   _e224350224515_
                                                   _hd224349224518_
                                                   _tl224348224520_))
                                              (___match231725231726_
                                               _e224350224515_
                                               _hd224349224518_
                                               _tl224348224520_))))
                                      (___match231725231726_
                                       _e224350224515_
                                       _hd224349224518_
                                       _tl224348224520_))
                                  (___match231725231726_
                                   _e224350224515_
                                   _hd224349224518_
                                   _tl224348224520_))
                              (___match231725231726_
                               _e224350224515_
                               _hd224349224518_
                               _tl224348224520_))))
                      (___match231725231726_
                       _e224350224515_
                       _hd224349224518_
                       _tl224348224520_))))
              (___match231725231726_
               _e224350224515_
               _hd224349224518_
               _tl224348224520_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231725231726_
                                                   _e224350224515_
                                                   _hd224349224518_
                                                   _tl224348224520_))))
                                          (___match231725231726_
                                           _e224350224515_
                                           _hd224349224518_
                                           _tl224348224520_))
                                      (___match231725231726_
                                       _e224350224515_
                                       _hd224349224518_
                                       _tl224348224520_))
                                  (___match231725231726_
                                   _e224350224515_
                                   _hd224349224518_
                                   _tl224348224520_))))
                          (___match231725231726_
                           _e224350224515_
                           _hd224349224518_
                           _tl224348224520_))))
                  (___match231725231726_
                   _e224350224515_
                   _hd224349224518_
                   _tl224348224520_))
              (___match231725231726_
               _e224350224515_
               _hd224349224518_
               _tl224348224520_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231725231726_
                                                   _e224350224515_
                                                   _hd224349224518_
                                                   _tl224348224520_))))
                                          (___match231725231726_
                                           _e224350224515_
                                           _hd224349224518_
                                           _tl224348224520_))))
                                  (___match231725231726_
                                   _e224350224515_
                                   _hd224349224518_
                                   _tl224348224520_))))
                          (___match231725231726_
                           _e224350224515_
                           _hd224349224518_
                           _tl224348224520_))))
                   (___match231579231580_
                    (lambda (_e224283224906_
                             _hd224282224909_
                             _tl224281224911_
                             _e224286224914_
                             _hd224285224917_
                             _tl224284224919_
                             _e224289224922_
                             _hd224288224925_
                             _tl224287224927_
                             _e224292224930_
                             _hd224291224933_
                             _tl224290224935_
                             _e224295224938_
                             _hd224294224941_
                             _tl224293224943_
                             _e224298224946_
                             _hd224297224949_
                             _tl224296224951_
                             _e224301224954_
                             _hd224300224957_
                             _tl224299224959_
                             _e224304224962_
                             _hd224303224965_
                             _tl224302224967_
                             _e224307224970_
                             _hd224306224973_
                             _tl224305224975_
                             _e224310224978_
                             _hd224309224981_
                             _tl224308224983_
                             _e224313224986_
                             _hd224312224989_
                             _tl224311224991_
                             _e224316224994_
                             _hd224315224997_
                             _tl224314224999_
                             _e224319225002_
                             _hd224318225005_
                             _tl224317225007_
                             _e224322225010_
                             _hd224321225013_
                             _tl224320225015_
                             _e224325225018_
                             _hd224324225021_
                             _tl224323225023_
                             _e224328225026_
                             _hd224327225029_
                             _tl224326225031_
                             _e224331225034_
                             _hd224330225037_
                             _tl224329225039_
                             _e224334225042_
                             _hd224333225045_
                             _tl224332225047_
                             _e224337225050_
                             _hd224336225053_
                             _tl224335225055_)
                      (let ((_L225058_ _hd224336225053_)
                            (_L225059_ _hd224327225029_)
                            (_L225060_ _hd224318225005_)
                            (_L225061_ _hd224309224981_)
                            (_L225062_ _hd224300224957_)
                            (_L225063_ _hd224285224917_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L225063_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L225062_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L225061_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L225063_ _L225058_)))
                            (___kont231410231411_
                             _L225058_
                             _L225059_
                             _L225060_
                             _L225061_
                             _L225062_
                             _L225063_)
                            (___match231591231592_
                             _e224283224906_
                             _hd224282224909_
                             _tl224281224911_
                             _e224286224914_
                             _hd224285224917_
                             _tl224284224919_)))))
                   (___match231433231434_
                    (lambda (_e224283224906_ _hd224282224909_ _tl224281224911_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl224281224911_))
                          (let ((_e224286224914_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl224281224911_))))
                            (let ((_tl224284224919_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224286224914_)))
                                  (_hd224285224917_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224286224914_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl224284224919_))
                                  (let ((_e224289224922_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl224284224919_))))
                                    (let ((_tl224287224927_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224289224922_)))
                                          (_hd224288224925_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224289224922_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd224288224925_))
                                          (let ((_e224292224930_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd224288224925_))))
                                            (let ((_tl224290224935_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224292224930_)))
                                                  (_hd224291224933_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224292224930_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd224291224933_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd224291224933_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl224290224935_))
                                                          (let ((_e224295224938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl224290224935_))))
                    (let ((_tl224293224943_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224295224938_)))
                          (_hd224294224941_
                           (let ()
                             (declare (not safe))
                             (##car _e224295224938_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd224294224941_))
                          (let ((_e224298224946_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd224294224941_))))
                            (let ((_tl224296224951_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224298224946_)))
                                  (_hd224297224949_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224298224946_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd224297224949_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd224297224949_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl224296224951_))
                                          (let ((_e224301224954_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl224296224951_))))
                                            (let ((_tl224299224959_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224301224954_)))
                                                  (_hd224300224957_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224301224954_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl224299224959_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl224293224943_))
                                                      (let ((_e224304224962_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl224293224943_))))
                (let ((_tl224302224967_
                       (let () (declare (not safe)) (##cdr _e224304224962_)))
                      (_hd224303224965_
                       (let () (declare (not safe)) (##car _e224304224962_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd224303224965_))
                      (let ((_e224307224970_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd224303224965_))))
                        (let ((_tl224305224975_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224307224970_)))
                              (_hd224306224973_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224307224970_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd224306224973_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd224306224973_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224305224975_))
                                      (let ((_e224310224978_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224305224975_))))
                                        (let ((_tl224308224983_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224310224978_)))
                                              (_hd224309224981_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224310224978_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224308224983_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl224302224967_))
                                                  (let ((_e224313224986_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl224302224967_))))
                                                    (let ((_tl224311224991_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e224313224986_)))
                                                          (_hd224312224989_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e224313224986_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd224312224989_))
                                                          (let ((_e224316224994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd224312224989_))))
                    (let ((_tl224314224999_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224316224994_)))
                          (_hd224315224997_
                           (let ()
                             (declare (not safe))
                             (##car _e224316224994_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd224315224997_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd224315224997_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl224314224999_))
                                  (let ((_e224319225002_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl224314224999_))))
                                    (let ((_tl224317225007_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224319225002_)))
                                          (_hd224318225005_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224319225002_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl224317225007_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl224311224991_))
                                              (let ((_e224322225010_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl224311224991_))))
                                                (let ((_tl224320225015_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e224322225010_)))
                                                      (_hd224321225013_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e224322225010_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd224321225013_))
                                                      (let ((_e224325225018_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd224321225013_))))
                (let ((_tl224323225023_
                       (let () (declare (not safe)) (##cdr _e224325225018_)))
                      (_hd224324225021_
                       (let () (declare (not safe)) (##car _e224325225018_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd224324225021_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd224324225021_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224323225023_))
                              (let ((_e224328225026_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224323225023_))))
                                (let ((_tl224326225031_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224328225026_)))
                                      (_hd224327225029_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224328225026_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl224326225031_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl224320225015_))
                                          (let ((_e224331225034_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl224320225015_))))
                                            (let ((_tl224329225039_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224331225034_)))
                                                  (_hd224330225037_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224331225034_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd224330225037_))
                                                  (let ((_e224334225042_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd224330225037_))))
                                                    (let ((_tl224332225047_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e224334225042_)))
                                                          (_hd224333225045_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e224334225042_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd224333225045_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd224333225045_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl224332225047_))
                          (let ((_e224337225050_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl224332225047_))))
                            (let ((_tl224335225055_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224337225050_)))
                                  (_hd224336225053_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224337225050_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl224335225055_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl224329225039_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl224287224927_))
                                          (___match231579231580_
                                           _e224283224906_
                                           _hd224282224909_
                                           _tl224281224911_
                                           _e224286224914_
                                           _hd224285224917_
                                           _tl224284224919_
                                           _e224289224922_
                                           _hd224288224925_
                                           _tl224287224927_
                                           _e224292224930_
                                           _hd224291224933_
                                           _tl224290224935_
                                           _e224295224938_
                                           _hd224294224941_
                                           _tl224293224943_
                                           _e224298224946_
                                           _hd224297224949_
                                           _tl224296224951_
                                           _e224301224954_
                                           _hd224300224957_
                                           _tl224299224959_
                                           _e224304224962_
                                           _hd224303224965_
                                           _tl224302224967_
                                           _e224307224970_
                                           _hd224306224973_
                                           _tl224305224975_
                                           _e224310224978_
                                           _hd224309224981_
                                           _tl224308224983_
                                           _e224313224986_
                                           _hd224312224989_
                                           _tl224311224991_
                                           _e224316224994_
                                           _hd224315224997_
                                           _tl224314224999_
                                           _e224319225002_
                                           _hd224318225005_
                                           _tl224317225007_
                                           _e224322225010_
                                           _hd224321225013_
                                           _tl224320225015_
                                           _e224325225018_
                                           _hd224324225021_
                                           _tl224323225023_
                                           _e224328225026_
                                           _hd224327225029_
                                           _tl224326225031_
                                           _e224331225034_
                                           _hd224330225037_
                                           _tl224329225039_
                                           _e224334225042_
                                           _hd224333225045_
                                           _tl224332225047_
                                           _e224337225050_
                                           _hd224336225053_
                                           _tl224335225055_)
                                          (___match231591231592_
                                           _e224283224906_
                                           _hd224282224909_
                                           _tl224281224911_
                                           _e224286224914_
                                           _hd224285224917_
                                           _tl224284224919_))
                                      (___match231591231592_
                                       _e224283224906_
                                       _hd224282224909_
                                       _tl224281224911_
                                       _e224286224914_
                                       _hd224285224917_
                                       _tl224284224919_))
                                  (___match231591231592_
                                   _e224283224906_
                                   _hd224282224909_
                                   _tl224281224911_
                                   _e224286224914_
                                   _hd224285224917_
                                   _tl224284224919_))))
                          (___match231591231592_
                           _e224283224906_
                           _hd224282224909_
                           _tl224281224911_
                           _e224286224914_
                           _hd224285224917_
                           _tl224284224919_))
                      (___match231591231592_
                       _e224283224906_
                       _hd224282224909_
                       _tl224281224911_
                       _e224286224914_
                       _hd224285224917_
                       _tl224284224919_))
                  (___match231591231592_
                   _e224283224906_
                   _hd224282224909_
                   _tl224281224911_
                   _e224286224914_
                   _hd224285224917_
                   _tl224284224919_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231591231592_
                                                   _e224283224906_
                                                   _hd224282224909_
                                                   _tl224281224911_
                                                   _e224286224914_
                                                   _hd224285224917_
                                                   _tl224284224919_))))
                                          (___match231591231592_
                                           _e224283224906_
                                           _hd224282224909_
                                           _tl224281224911_
                                           _e224286224914_
                                           _hd224285224917_
                                           _tl224284224919_))
                                      (___match231591231592_
                                       _e224283224906_
                                       _hd224282224909_
                                       _tl224281224911_
                                       _e224286224914_
                                       _hd224285224917_
                                       _tl224284224919_))))
                              (___match231591231592_
                               _e224283224906_
                               _hd224282224909_
                               _tl224281224911_
                               _e224286224914_
                               _hd224285224917_
                               _tl224284224919_))
                          (___match231591231592_
                           _e224283224906_
                           _hd224282224909_
                           _tl224281224911_
                           _e224286224914_
                           _hd224285224917_
                           _tl224284224919_))
                      (___match231591231592_
                       _e224283224906_
                       _hd224282224909_
                       _tl224281224911_
                       _e224286224914_
                       _hd224285224917_
                       _tl224284224919_))))
              (___match231591231592_
               _e224283224906_
               _hd224282224909_
               _tl224281224911_
               _e224286224914_
               _hd224285224917_
               _tl224284224919_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match231591231592_
                                               _e224283224906_
                                               _hd224282224909_
                                               _tl224281224911_
                                               _e224286224914_
                                               _hd224285224917_
                                               _tl224284224919_))
                                          (___match231591231592_
                                           _e224283224906_
                                           _hd224282224909_
                                           _tl224281224911_
                                           _e224286224914_
                                           _hd224285224917_
                                           _tl224284224919_))))
                                  (___match231591231592_
                                   _e224283224906_
                                   _hd224282224909_
                                   _tl224281224911_
                                   _e224286224914_
                                   _hd224285224917_
                                   _tl224284224919_))
                              (___match231591231592_
                               _e224283224906_
                               _hd224282224909_
                               _tl224281224911_
                               _e224286224914_
                               _hd224285224917_
                               _tl224284224919_))
                          (___match231591231592_
                           _e224283224906_
                           _hd224282224909_
                           _tl224281224911_
                           _e224286224914_
                           _hd224285224917_
                           _tl224284224919_))))
                  (___match231591231592_
                   _e224283224906_
                   _hd224282224909_
                   _tl224281224911_
                   _e224286224914_
                   _hd224285224917_
                   _tl224284224919_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231591231592_
                                                   _e224283224906_
                                                   _hd224282224909_
                                                   _tl224281224911_
                                                   _e224286224914_
                                                   _hd224285224917_
                                                   _tl224284224919_))
                                              (___match231591231592_
                                               _e224283224906_
                                               _hd224282224909_
                                               _tl224281224911_
                                               _e224286224914_
                                               _hd224285224917_
                                               _tl224284224919_))))
                                      (___match231591231592_
                                       _e224283224906_
                                       _hd224282224909_
                                       _tl224281224911_
                                       _e224286224914_
                                       _hd224285224917_
                                       _tl224284224919_))
                                  (___match231591231592_
                                   _e224283224906_
                                   _hd224282224909_
                                   _tl224281224911_
                                   _e224286224914_
                                   _hd224285224917_
                                   _tl224284224919_))
                              (___match231591231592_
                               _e224283224906_
                               _hd224282224909_
                               _tl224281224911_
                               _e224286224914_
                               _hd224285224917_
                               _tl224284224919_))))
                      (___match231591231592_
                       _e224283224906_
                       _hd224282224909_
                       _tl224281224911_
                       _e224286224914_
                       _hd224285224917_
                       _tl224284224919_))))
              (___match231591231592_
               _e224283224906_
               _hd224282224909_
               _tl224281224911_
               _e224286224914_
               _hd224285224917_
               _tl224284224919_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231591231592_
                                                   _e224283224906_
                                                   _hd224282224909_
                                                   _tl224281224911_
                                                   _e224286224914_
                                                   _hd224285224917_
                                                   _tl224284224919_))))
                                          (___match231591231592_
                                           _e224283224906_
                                           _hd224282224909_
                                           _tl224281224911_
                                           _e224286224914_
                                           _hd224285224917_
                                           _tl224284224919_))
                                      (___match231591231592_
                                       _e224283224906_
                                       _hd224282224909_
                                       _tl224281224911_
                                       _e224286224914_
                                       _hd224285224917_
                                       _tl224284224919_))
                                  (___match231591231592_
                                   _e224283224906_
                                   _hd224282224909_
                                   _tl224281224911_
                                   _e224286224914_
                                   _hd224285224917_
                                   _tl224284224919_))))
                          (___match231591231592_
                           _e224283224906_
                           _hd224282224909_
                           _tl224281224911_
                           _e224286224914_
                           _hd224285224917_
                           _tl224284224919_))))
                  (___match231591231592_
                   _e224283224906_
                   _hd224282224909_
                   _tl224281224911_
                   _e224286224914_
                   _hd224285224917_
                   _tl224284224919_))
              (___match231591231592_
               _e224283224906_
               _hd224282224909_
               _tl224281224911_
               _e224286224914_
               _hd224285224917_
               _tl224284224919_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231591231592_
                                                   _e224283224906_
                                                   _hd224282224909_
                                                   _tl224281224911_
                                                   _e224286224914_
                                                   _hd224285224917_
                                                   _tl224284224919_))))
                                          (___match231591231592_
                                           _e224283224906_
                                           _hd224282224909_
                                           _tl224281224911_
                                           _e224286224914_
                                           _hd224285224917_
                                           _tl224284224919_))))
                                  (___match231591231592_
                                   _e224283224906_
                                   _hd224282224909_
                                   _tl224281224911_
                                   _e224286224914_
                                   _hd224285224917_
                                   _tl224284224919_))))
                          (___match231725231726_
                           _e224283224906_
                           _hd224282224909_
                           _tl224281224911_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx231406231407_))
                  (let ((_e224274225123_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx231406231407_))))
                    (let ((_tl224272225128_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224274225123_)))
                          (_hd224273225126_
                           (let ()
                             (declare (not safe))
                             (##car _e224274225123_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L225131_ _tl224272225128_))
                            (___kont231408231409_ _L225131_))
                          (___match231433231434_
                           _e224274225123_
                           _hd224273225126_
                           _tl224272225128_))))
                  (let () (declare (not safe)) (_g224269224465_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx224218_)
        (letrec ((_clause-e224220_
                  (lambda (_form224261_)
                    (let ((__obj233079 (make-object gxc#!lambda::t '6)))
                      (gxc#!lambda:::init!
                       __obj233079
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form224261_))
                       (if (let ((__tmp233146
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp233146))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form224261_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form224261_))
                               '#f)
                           '#f))
                      __obj233079))))
          (let* ((_g224222224232_
                  (lambda (_g224223224229_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g224223224229_))))
                 (_g224221224258_
                  (lambda (_g224223224235_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g224223224235_))
                        (let ((_e224227224237_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g224223224235_))))
                          (let ((_hd224226224240_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e224227224237_)))
                                (_tl224225224242_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e224227224237_))))
                            ((lambda (_L224245_)
                               (let ((_clauses224256_
                                      (map _clause-e224220_ _L224245_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses224256_)))
                             _tl224225224242_)))
                        (let ()
                          (declare (not safe))
                          (_g224222224232_ _g224223224235_))))))
            (declare (not safe))
            (_g224221224258_ _stx224218_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx224150_)
        (let* ((_g224152224169_
                (lambda (_g224153224166_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224153224166_))))
               (_g224151224215_
                (lambda (_g224153224172_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224153224172_))
                      (let ((_e224158224174_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224153224172_))))
                        (let ((_hd224157224177_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224158224174_)))
                              (_tl224156224179_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224158224174_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224156224179_))
                              (let ((_e224161224182_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224156224179_))))
                                (let ((_hd224160224185_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224161224182_)))
                                      (_tl224159224187_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224161224182_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224159224187_))
                                      (let ((_e224164224190_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224159224187_))))
                                        (let ((_hd224163224193_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224164224190_)))
                                              (_tl224162224195_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224164224190_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224162224195_))
                                              ((lambda (_L224198_ _L224199_)
                                                 (let ((__tmp233147
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L224198_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp233147
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd224163224193_
                                               _hd224160224185_)
                                              (let ()
                                                (declare (not safe))
                                                (_g224152224169_
                                                 _g224153224172_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224152224169_ _g224153224172_)))))
                              (let ()
                                (declare (not safe))
                                (_g224152224169_ _g224153224172_)))))
                      (let ()
                        (declare (not safe))
                        (_g224152224169_ _g224153224172_))))))
          (declare (not safe))
          (_g224151224215_ _stx224150_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx224055_)
        (let* ((___stx231734231735_ _stx224055_)
               (_g224058224078_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231734231735_)))))
          (let ((___kont231736231737_
                 (lambda (_L224122_ _L224123_)
                   (let ((_type-e224140224142_
                          (let ((__tmp233148
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L224123_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp233148
                             '#f))))
                     (if _type-e224140224142_
                         (let ((_type-e224145_ _type-e224140224142_))
                           (_type-e224145_ _stx224055_ _L224122_))
                         '#f))))
                (___kont231738231739_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx231734231735_))
                (let ((_e224064224090_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx231734231735_))))
                  (let ((_tl224062224095_
                         (let () (declare (not safe)) (##cdr _e224064224090_)))
                        (_hd224063224093_
                         (let ()
                           (declare (not safe))
                           (##car _e224064224090_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl224062224095_))
                        (let ((_e224067224098_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl224062224095_))))
                          (let ((_tl224065224103_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e224067224098_)))
                                (_hd224066224101_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e224067224098_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd224066224101_))
                                (let ((_e224070224106_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd224066224101_))))
                                  (let ((_tl224068224111_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e224070224106_)))
                                        (_hd224069224109_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e224070224106_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd224069224109_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd224069224109_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl224068224111_))
                                                (let ((_e224073224114_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl224068224111_))))
                                                  (let ((_tl224071224119_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e224073224114_)))
                                                        (_hd224072224117_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e224073224114_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl224071224119_))
                                                        (___kont231736231737_
                                                         _tl224065224103_
                                                         _hd224072224117_)
                                                        (___kont231738231739_))))
                                                (___kont231738231739_))
                                            (___kont231738231739_))
                                        (___kont231738231739_))))
                                (___kont231738231739_))))
                        (___kont231738231739_))))
                (___kont231738231739_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx224004_)
        (let* ((_g224006224019_
                (lambda (_g224007224016_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224007224016_))))
               (_g224005224052_
                (lambda (_g224007224022_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224007224022_))
                      (let ((_e224011224024_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224007224022_))))
                        (let ((_hd224010224027_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224011224024_)))
                              (_tl224009224029_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224011224024_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224009224029_))
                              (let ((_e224014224032_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224009224029_))))
                                (let ((_hd224013224035_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224014224032_)))
                                      (_tl224012224037_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224014224032_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl224012224037_))
                                      ((lambda (_L224040_)
                                         (let ((__tmp233149
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L224040_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp233149)))
                                       _hd224013224035_)
                                      (let ()
                                        (declare (not safe))
                                        (_g224006224019_ _g224007224022_)))))
                              (let ()
                                (declare (not safe))
                                (_g224006224019_ _g224007224022_)))))
                      (let ()
                        (declare (not safe))
                        (_g224006224019_ _g224007224022_))))))
          (declare (not safe))
          (_g224005224052_ _stx224004_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form223238_)
        (let* ((___stx231772231773_ _form223238_)
               (_g223243223400_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231772231773_)))))
          (let ((___kont231774231775_
                 (lambda (_L223924_ _L223925_ _L223926_) '#t))
                (___kont231780231781_
                 (lambda (_L223712_
                          _L223713_
                          _L223714_
                          _L223715_
                          _L223716_
                          _L223717_)
                   '#t))
                (___kont231786231787_
                 (lambda (_L223508_ _L223509_ _L223510_ _L223511_) '#t))
                (___kont231788231789_ (lambda () '#f)))
            (let* ((___match231913231914_
                    (lambda (_e223362223412_
                             _hd223361223415_
                             _tl223360223417_
                             _e223365223420_
                             _hd223364223423_
                             _tl223363223425_
                             _e223368223428_
                             _hd223367223431_
                             _tl223366223433_
                             _e223371223436_
                             _hd223370223439_
                             _tl223369223441_
                             _e223374223444_
                             _hd223373223447_
                             _tl223372223449_
                             _e223377223452_
                             _hd223376223455_
                             _tl223375223457_
                             _e223380223460_
                             _hd223379223463_
                             _tl223378223465_
                             _e223383223468_
                             _hd223382223471_
                             _tl223381223473_
                             _e223386223476_
                             _hd223385223479_
                             _tl223384223481_
                             _e223389223484_
                             _hd223388223487_
                             _tl223387223489_
                             _e223392223492_
                             _hd223391223495_
                             _tl223390223497_
                             _e223395223500_
                             _hd223394223503_
                             _tl223393223505_)
                      (let ((_L223508_ _hd223394223503_)
                            (_L223509_ _hd223385223479_)
                            (_L223510_ _hd223376223455_)
                            (_L223511_ _hd223361223415_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L223511_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L223510_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L223511_ _L223508_))
                                 (let ((__tmp233150
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L223509_
                                           _L223511_))))
                                   (declare (not safe))
                                   (not __tmp233150)))
                            (___kont231786231787_
                             _L223508_
                             _L223509_
                             _L223510_
                             _L223511_)
                            (___kont231788231789_)))))
                   (___match231885231886_
                    (lambda (_e223362223412_
                             _hd223361223415_
                             _tl223360223417_
                             _e223365223420_
                             _hd223364223423_
                             _tl223363223425_
                             _e223368223428_
                             _hd223367223431_
                             _tl223366223433_
                             _e223371223436_
                             _hd223370223439_
                             _tl223369223441_
                             _e223374223444_
                             _hd223373223447_
                             _tl223372223449_
                             _e223377223452_
                             _hd223376223455_
                             _tl223375223457_
                             _e223380223460_
                             _hd223379223463_
                             _tl223378223465_
                             _e223383223468_
                             _hd223382223471_
                             _tl223381223473_
                             _e223386223476_
                             _hd223385223479_
                             _tl223384223481_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl223378223465_))
                          (let ((_e223389223484_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl223378223465_))))
                            (let ((_tl223387223489_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e223389223484_)))
                                  (_hd223388223487_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e223389223484_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd223388223487_))
                                  (let ((_e223392223492_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd223388223487_))))
                                    (let ((_tl223390223497_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223392223492_)))
                                          (_hd223391223495_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223392223492_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd223391223495_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd223391223495_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl223390223497_))
                                                  (let ((_e223395223500_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl223390223497_))))
                                                    (let ((_tl223393223505_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223395223500_)))
                                                          (_hd223394223503_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223395223500_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl223393223505_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl223387223489_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl223363223425_))
                          (___match231913231914_
                           _e223362223412_
                           _hd223361223415_
                           _tl223360223417_
                           _e223365223420_
                           _hd223364223423_
                           _tl223363223425_
                           _e223368223428_
                           _hd223367223431_
                           _tl223366223433_
                           _e223371223436_
                           _hd223370223439_
                           _tl223369223441_
                           _e223374223444_
                           _hd223373223447_
                           _tl223372223449_
                           _e223377223452_
                           _hd223376223455_
                           _tl223375223457_
                           _e223380223460_
                           _hd223379223463_
                           _tl223378223465_
                           _e223383223468_
                           _hd223382223471_
                           _tl223381223473_
                           _e223386223476_
                           _hd223385223479_
                           _tl223384223481_
                           _e223389223484_
                           _hd223388223487_
                           _tl223387223489_
                           _e223392223492_
                           _hd223391223495_
                           _tl223390223497_
                           _e223395223500_
                           _hd223394223503_
                           _tl223393223505_)
                          (___kont231788231789_))
                      (___kont231788231789_))
                  (___kont231788231789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont231788231789_))
                                              (___kont231788231789_))
                                          (___kont231788231789_))))
                                  (___kont231788231789_))))
                          (___kont231788231789_))))
                   (___match231815231816_
                    (lambda (_e223298223552_
                             _hd223297223555_
                             _tl223296223557_
                             ___splice231782231783_
                             _target223299223560_
                             _tl223301223562_)
                      (letrec ((_loop223302223565_
                                (lambda (_hd223300223568_ _arg223306223570_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd223300223568_))
                                      (let ((_e223303223573_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd223300223568_))))
                                        (let ((_lp-tl223305223578_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223303223573_)))
                                              (_lp-hd223304223576_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223303223573_))))
                                          (let ((__tmp233165
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd223304223576_
                                                         _arg223306223570_))))
                                            (declare (not safe))
                                            (_loop223302223565_
                                             _lp-tl223305223578_
                                             __tmp233165))))
                                      (let ((_arg223307223581_
                                             (reverse _arg223306223570_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl223296223557_))
                                            (let ((_e223310223584_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl223296223557_))))
                                              (let ((_tl223308223589_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e223310223584_)))
                                                    (_hd223309223587_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e223310223584_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd223309223587_))
                                                    (let ((_e223313223592_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd223309223587_))))
                                                      (let ((_tl223311223597_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e223313223592_)))
                    (_hd223312223595_
                     (let () (declare (not safe)) (##car _e223313223592_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd223312223595_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd223312223595_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl223311223597_))
                            (let ((_e223316223600_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl223311223597_))))
                              (let ((_tl223314223605_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e223316223600_)))
                                    (_hd223315223603_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e223316223600_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd223315223603_))
                                    (let ((_e223319223608_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd223315223603_))))
                                      (let ((_tl223317223613_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e223319223608_)))
                                            (_hd223318223611_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e223319223608_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd223318223611_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd223318223611_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl223317223613_))
                                                    (let ((_e223322223616_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl223317223613_))))
                                                      (let ((_tl223320223621_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e223322223616_)))
                    (_hd223321223619_
                     (let () (declare (not safe)) (##car _e223322223616_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl223320223621_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl223314223605_))
                        (let ((_e223325223624_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl223314223605_))))
                          (let ((_tl223323223629_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e223325223624_)))
                                (_hd223324223627_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e223325223624_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd223324223627_))
                                (let ((_e223328223632_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd223324223627_))))
                                  (let ((_tl223326223637_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e223328223632_)))
                                        (_hd223327223635_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e223328223632_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd223327223635_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd223327223635_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl223326223637_))
                                                (let ((_e223331223640_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl223326223637_))))
                                                  (let ((_tl223329223645_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e223331223640_)))
                                                        (_hd223330223643_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e223331223640_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl223329223645_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl223323223629_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl223323223629_))
                              '1)
                        (let ((___splice231784231785_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl223323223629_
                                  '1))))
                          (let ((_tl223334223650_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice231784231785_ '1)))
                                (_target223332223648_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice231784231785_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl223334223650_))
                                (let ((_e223343223653_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl223334223650_))))
                                  (let ((_tl223341223658_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e223343223653_)))
                                        (_hd223342223656_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e223343223653_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd223342223656_))
                                        (let ((_e223346223661_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd223342223656_))))
                                          (let ((_tl223344223666_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e223346223661_)))
                                                (_hd223345223664_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e223346223661_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd223345223664_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd223345223664_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl223344223666_))
                                                        (let ((_e223349223669_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl223344223666_))))
                  (let ((_tl223347223674_
                         (let () (declare (not safe)) (##cdr _e223349223669_)))
                        (_hd223348223672_
                         (let ()
                           (declare (not safe))
                           (##car _e223349223669_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl223347223674_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl223341223658_))
                            (letrec ((_loop223335223677_
                                      (lambda (_hd223333223680_
                                               _xarg223339223682_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd223333223680_))
                                            (let ((_e223336223685_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd223333223680_))))
                                              (let ((_lp-tl223338223690_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e223336223685_)))
                                                    (_lp-hd223337223688_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e223336223685_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd223337223688_))
                                                    (let ((_e223352223693_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd223337223688_))))
                                                      (let ((_tl223350223698_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e223352223693_)))
                    (_hd223351223696_
                     (let () (declare (not safe)) (##car _e223352223693_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd223351223696_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd223351223696_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl223350223698_))
                            (let ((_e223355223701_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl223350223698_))))
                              (let ((_tl223353223706_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e223355223701_)))
                                    (_hd223354223704_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e223355223701_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl223353223706_))
                                    (let ((__tmp233164
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd223354223704_
                                                   _xarg223339223682_))))
                                      (declare (not safe))
                                      (_loop223335223677_
                                       _lp-tl223338223690_
                                       __tmp233164))
                                    (___match231885231886_
                                     _e223298223552_
                                     _hd223297223555_
                                     _tl223296223557_
                                     _e223310223584_
                                     _hd223309223587_
                                     _tl223308223589_
                                     _e223313223592_
                                     _hd223312223595_
                                     _tl223311223597_
                                     _e223316223600_
                                     _hd223315223603_
                                     _tl223314223605_
                                     _e223319223608_
                                     _hd223318223611_
                                     _tl223317223613_
                                     _e223322223616_
                                     _hd223321223619_
                                     _tl223320223621_
                                     _e223325223624_
                                     _hd223324223627_
                                     _tl223323223629_
                                     _e223328223632_
                                     _hd223327223635_
                                     _tl223326223637_
                                     _e223331223640_
                                     _hd223330223643_
                                     _tl223329223645_))))
                            (___match231885231886_
                             _e223298223552_
                             _hd223297223555_
                             _tl223296223557_
                             _e223310223584_
                             _hd223309223587_
                             _tl223308223589_
                             _e223313223592_
                             _hd223312223595_
                             _tl223311223597_
                             _e223316223600_
                             _hd223315223603_
                             _tl223314223605_
                             _e223319223608_
                             _hd223318223611_
                             _tl223317223613_
                             _e223322223616_
                             _hd223321223619_
                             _tl223320223621_
                             _e223325223624_
                             _hd223324223627_
                             _tl223323223629_
                             _e223328223632_
                             _hd223327223635_
                             _tl223326223637_
                             _e223331223640_
                             _hd223330223643_
                             _tl223329223645_))
                        (___match231885231886_
                         _e223298223552_
                         _hd223297223555_
                         _tl223296223557_
                         _e223310223584_
                         _hd223309223587_
                         _tl223308223589_
                         _e223313223592_
                         _hd223312223595_
                         _tl223311223597_
                         _e223316223600_
                         _hd223315223603_
                         _tl223314223605_
                         _e223319223608_
                         _hd223318223611_
                         _tl223317223613_
                         _e223322223616_
                         _hd223321223619_
                         _tl223320223621_
                         _e223325223624_
                         _hd223324223627_
                         _tl223323223629_
                         _e223328223632_
                         _hd223327223635_
                         _tl223326223637_
                         _e223331223640_
                         _hd223330223643_
                         _tl223329223645_))
                    (___match231885231886_
                     _e223298223552_
                     _hd223297223555_
                     _tl223296223557_
                     _e223310223584_
                     _hd223309223587_
                     _tl223308223589_
                     _e223313223592_
                     _hd223312223595_
                     _tl223311223597_
                     _e223316223600_
                     _hd223315223603_
                     _tl223314223605_
                     _e223319223608_
                     _hd223318223611_
                     _tl223317223613_
                     _e223322223616_
                     _hd223321223619_
                     _tl223320223621_
                     _e223325223624_
                     _hd223324223627_
                     _tl223323223629_
                     _e223328223632_
                     _hd223327223635_
                     _tl223326223637_
                     _e223331223640_
                     _hd223330223643_
                     _tl223329223645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match231885231886_
                                                     _e223298223552_
                                                     _hd223297223555_
                                                     _tl223296223557_
                                                     _e223310223584_
                                                     _hd223309223587_
                                                     _tl223308223589_
                                                     _e223313223592_
                                                     _hd223312223595_
                                                     _tl223311223597_
                                                     _e223316223600_
                                                     _hd223315223603_
                                                     _tl223314223605_
                                                     _e223319223608_
                                                     _hd223318223611_
                                                     _tl223317223613_
                                                     _e223322223616_
                                                     _hd223321223619_
                                                     _tl223320223621_
                                                     _e223325223624_
                                                     _hd223324223627_
                                                     _tl223323223629_
                                                     _e223328223632_
                                                     _hd223327223635_
                                                     _tl223326223637_
                                                     _e223331223640_
                                                     _hd223330223643_
                                                     _tl223329223645_))))
                                            (let ((_xarg223340223709_
                                                   (reverse _xarg223339223682_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl223308223589_))
                                                  (let ((_L223712_
                                                         _hd223348223672_)
                                                        (_L223713_
                                                         _xarg223340223709_)
                                                        (_L223714_
                                                         _hd223330223643_)
                                                        (_L223715_
                                                         _hd223321223619_)
                                                        (_L223716_
                                                         _tl223301223562_)
                                                        (_L223717_
                                                         _arg223307223581_))
                                                    (if (and (let ((__tmp233162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp233163
                                   (lambda (_g223760223763_ _g223761223765_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g223760223763_
                                             _g223761223765_)))))
                              (declare (not safe))
                              (foldr1 __tmp233163 '() _L223717_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp233162))
                     (let () (declare (not safe)) (gx#identifier? _L223716_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L223715_ 'apply))
                     (fx= (length (let ((__tmp233160
                                         (lambda (_g223767223770_
                                                  _g223768223772_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g223767223770_
                                                   _g223768223772_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp233160 '() _L223717_)))
                          (length (let ((__tmp233161
                                         (lambda (_g223774223777_
                                                  _g223775223779_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g223774223777_
                                                   _g223775223779_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp233161 '() _L223713_))))
                     (let ((__tmp233158
                            (let ((__tmp233159
                                   (lambda (_g223781223784_ _g223782223786_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g223781223784_
                                             _g223782223786_)))))
                              (declare (not safe))
                              (foldr1 __tmp233159 '() _L223717_)))
                           (__tmp233156
                            (let ((__tmp233157
                                   (lambda (_g223788223791_ _g223789223793_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g223788223791_
                                             _g223789223793_)))))
                              (declare (not safe))
                              (foldr1 __tmp233157 '() _L223713_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp233158 __tmp233156))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L223716_ _L223712_))
                     (let ((__tmp233151
                            (let ((__tmp233155
                                   (lambda (_g223795223797_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g223795223797_
                                        _L223714_))))
                                  (__tmp233152
                                   (let ((__tmp233154
                                          (lambda (_g223799223802_
                                                   _g223800223804_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g223799223802_
                                                    _g223800223804_))))
                                         (__tmp233153
                                          (let ()
                                            (declare (not safe))
                                            (cons _L223716_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp233154
                                             __tmp233153
                                             _L223717_))))
                              (declare (not safe))
                              (find __tmp233155 __tmp233152))))
                       (declare (not safe))
                       (not __tmp233151)))
                (___kont231780231781_
                 _L223712_
                 _L223713_
                 _L223714_
                 _L223715_
                 _L223716_
                 _L223717_)
                (___match231885231886_
                 _e223298223552_
                 _hd223297223555_
                 _tl223296223557_
                 _e223310223584_
                 _hd223309223587_
                 _tl223308223589_
                 _e223313223592_
                 _hd223312223595_
                 _tl223311223597_
                 _e223316223600_
                 _hd223315223603_
                 _tl223314223605_
                 _e223319223608_
                 _hd223318223611_
                 _tl223317223613_
                 _e223322223616_
                 _hd223321223619_
                 _tl223320223621_
                 _e223325223624_
                 _hd223324223627_
                 _tl223323223629_
                 _e223328223632_
                 _hd223327223635_
                 _tl223326223637_
                 _e223331223640_
                 _hd223330223643_
                 _tl223329223645_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231885231886_
                                                   _e223298223552_
                                                   _hd223297223555_
                                                   _tl223296223557_
                                                   _e223310223584_
                                                   _hd223309223587_
                                                   _tl223308223589_
                                                   _e223313223592_
                                                   _hd223312223595_
                                                   _tl223311223597_
                                                   _e223316223600_
                                                   _hd223315223603_
                                                   _tl223314223605_
                                                   _e223319223608_
                                                   _hd223318223611_
                                                   _tl223317223613_
                                                   _e223322223616_
                                                   _hd223321223619_
                                                   _tl223320223621_
                                                   _e223325223624_
                                                   _hd223324223627_
                                                   _tl223323223629_
                                                   _e223328223632_
                                                   _hd223327223635_
                                                   _tl223326223637_
                                                   _e223331223640_
                                                   _hd223330223643_
                                                   _tl223329223645_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop223335223677_ _target223332223648_ '())))
                            (___match231885231886_
                             _e223298223552_
                             _hd223297223555_
                             _tl223296223557_
                             _e223310223584_
                             _hd223309223587_
                             _tl223308223589_
                             _e223313223592_
                             _hd223312223595_
                             _tl223311223597_
                             _e223316223600_
                             _hd223315223603_
                             _tl223314223605_
                             _e223319223608_
                             _hd223318223611_
                             _tl223317223613_
                             _e223322223616_
                             _hd223321223619_
                             _tl223320223621_
                             _e223325223624_
                             _hd223324223627_
                             _tl223323223629_
                             _e223328223632_
                             _hd223327223635_
                             _tl223326223637_
                             _e223331223640_
                             _hd223330223643_
                             _tl223329223645_))
                        (___match231885231886_
                         _e223298223552_
                         _hd223297223555_
                         _tl223296223557_
                         _e223310223584_
                         _hd223309223587_
                         _tl223308223589_
                         _e223313223592_
                         _hd223312223595_
                         _tl223311223597_
                         _e223316223600_
                         _hd223315223603_
                         _tl223314223605_
                         _e223319223608_
                         _hd223318223611_
                         _tl223317223613_
                         _e223322223616_
                         _hd223321223619_
                         _tl223320223621_
                         _e223325223624_
                         _hd223324223627_
                         _tl223323223629_
                         _e223328223632_
                         _hd223327223635_
                         _tl223326223637_
                         _e223331223640_
                         _hd223330223643_
                         _tl223329223645_))))
                (___match231885231886_
                 _e223298223552_
                 _hd223297223555_
                 _tl223296223557_
                 _e223310223584_
                 _hd223309223587_
                 _tl223308223589_
                 _e223313223592_
                 _hd223312223595_
                 _tl223311223597_
                 _e223316223600_
                 _hd223315223603_
                 _tl223314223605_
                 _e223319223608_
                 _hd223318223611_
                 _tl223317223613_
                 _e223322223616_
                 _hd223321223619_
                 _tl223320223621_
                 _e223325223624_
                 _hd223324223627_
                 _tl223323223629_
                 _e223328223632_
                 _hd223327223635_
                 _tl223326223637_
                 _e223331223640_
                 _hd223330223643_
                 _tl223329223645_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match231885231886_
                                                     _e223298223552_
                                                     _hd223297223555_
                                                     _tl223296223557_
                                                     _e223310223584_
                                                     _hd223309223587_
                                                     _tl223308223589_
                                                     _e223313223592_
                                                     _hd223312223595_
                                                     _tl223311223597_
                                                     _e223316223600_
                                                     _hd223315223603_
                                                     _tl223314223605_
                                                     _e223319223608_
                                                     _hd223318223611_
                                                     _tl223317223613_
                                                     _e223322223616_
                                                     _hd223321223619_
                                                     _tl223320223621_
                                                     _e223325223624_
                                                     _hd223324223627_
                                                     _tl223323223629_
                                                     _e223328223632_
                                                     _hd223327223635_
                                                     _tl223326223637_
                                                     _e223331223640_
                                                     _hd223330223643_
                                                     _tl223329223645_))
                                                (___match231885231886_
                                                 _e223298223552_
                                                 _hd223297223555_
                                                 _tl223296223557_
                                                 _e223310223584_
                                                 _hd223309223587_
                                                 _tl223308223589_
                                                 _e223313223592_
                                                 _hd223312223595_
                                                 _tl223311223597_
                                                 _e223316223600_
                                                 _hd223315223603_
                                                 _tl223314223605_
                                                 _e223319223608_
                                                 _hd223318223611_
                                                 _tl223317223613_
                                                 _e223322223616_
                                                 _hd223321223619_
                                                 _tl223320223621_
                                                 _e223325223624_
                                                 _hd223324223627_
                                                 _tl223323223629_
                                                 _e223328223632_
                                                 _hd223327223635_
                                                 _tl223326223637_
                                                 _e223331223640_
                                                 _hd223330223643_
                                                 _tl223329223645_))))
                                        (___match231885231886_
                                         _e223298223552_
                                         _hd223297223555_
                                         _tl223296223557_
                                         _e223310223584_
                                         _hd223309223587_
                                         _tl223308223589_
                                         _e223313223592_
                                         _hd223312223595_
                                         _tl223311223597_
                                         _e223316223600_
                                         _hd223315223603_
                                         _tl223314223605_
                                         _e223319223608_
                                         _hd223318223611_
                                         _tl223317223613_
                                         _e223322223616_
                                         _hd223321223619_
                                         _tl223320223621_
                                         _e223325223624_
                                         _hd223324223627_
                                         _tl223323223629_
                                         _e223328223632_
                                         _hd223327223635_
                                         _tl223326223637_
                                         _e223331223640_
                                         _hd223330223643_
                                         _tl223329223645_))))
                                (___match231885231886_
                                 _e223298223552_
                                 _hd223297223555_
                                 _tl223296223557_
                                 _e223310223584_
                                 _hd223309223587_
                                 _tl223308223589_
                                 _e223313223592_
                                 _hd223312223595_
                                 _tl223311223597_
                                 _e223316223600_
                                 _hd223315223603_
                                 _tl223314223605_
                                 _e223319223608_
                                 _hd223318223611_
                                 _tl223317223613_
                                 _e223322223616_
                                 _hd223321223619_
                                 _tl223320223621_
                                 _e223325223624_
                                 _hd223324223627_
                                 _tl223323223629_
                                 _e223328223632_
                                 _hd223327223635_
                                 _tl223326223637_
                                 _e223331223640_
                                 _hd223330223643_
                                 _tl223329223645_))))
                        (___match231885231886_
                         _e223298223552_
                         _hd223297223555_
                         _tl223296223557_
                         _e223310223584_
                         _hd223309223587_
                         _tl223308223589_
                         _e223313223592_
                         _hd223312223595_
                         _tl223311223597_
                         _e223316223600_
                         _hd223315223603_
                         _tl223314223605_
                         _e223319223608_
                         _hd223318223611_
                         _tl223317223613_
                         _e223322223616_
                         _hd223321223619_
                         _tl223320223621_
                         _e223325223624_
                         _hd223324223627_
                         _tl223323223629_
                         _e223328223632_
                         _hd223327223635_
                         _tl223326223637_
                         _e223331223640_
                         _hd223330223643_
                         _tl223329223645_))
                    (___match231885231886_
                     _e223298223552_
                     _hd223297223555_
                     _tl223296223557_
                     _e223310223584_
                     _hd223309223587_
                     _tl223308223589_
                     _e223313223592_
                     _hd223312223595_
                     _tl223311223597_
                     _e223316223600_
                     _hd223315223603_
                     _tl223314223605_
                     _e223319223608_
                     _hd223318223611_
                     _tl223317223613_
                     _e223322223616_
                     _hd223321223619_
                     _tl223320223621_
                     _e223325223624_
                     _hd223324223627_
                     _tl223323223629_
                     _e223328223632_
                     _hd223327223635_
                     _tl223326223637_
                     _e223331223640_
                     _hd223330223643_
                     _tl223329223645_))
                (___kont231788231789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont231788231789_))
                                            (___kont231788231789_))
                                        (___kont231788231789_))))
                                (___kont231788231789_))))
                        (___kont231788231789_))
                    (___kont231788231789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont231788231789_))
                                                (___kont231788231789_))
                                            (___kont231788231789_))))
                                    (___kont231788231789_))))
                            (___kont231788231789_))
                        (___kont231788231789_))
                    (___kont231788231789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont231788231789_))))
                                            (___kont231788231789_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop223302223565_ _target223299223560_ '())))))
                   (___match231803231804_
                    (lambda (_e223250223812_
                             _hd223249223815_
                             _tl223248223817_
                             ___splice231776231777_
                             _target223251223820_
                             _tl223253223822_)
                      (letrec ((_loop223254223825_
                                (lambda (_hd223252223828_ _arg223258223830_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd223252223828_))
                                      (let ((_e223255223833_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd223252223828_))))
                                        (let ((_lp-tl223257223838_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223255223833_)))
                                              (_lp-hd223256223836_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223255223833_))))
                                          (let ((__tmp233179
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd223256223836_
                                                         _arg223258223830_))))
                                            (declare (not safe))
                                            (_loop223254223825_
                                             _lp-tl223257223838_
                                             __tmp233179))))
                                      (let ((_arg223259223841_
                                             (reverse _arg223258223830_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl223248223817_))
                                            (let ((_e223262223844_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl223248223817_))))
                                              (let ((_tl223260223849_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e223262223844_)))
                                                    (_hd223261223847_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e223262223844_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd223261223847_))
                                                    (let ((_e223265223852_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd223261223847_))))
                                                      (let ((_tl223263223857_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e223265223852_)))
                    (_hd223264223855_
                     (let () (declare (not safe)) (##car _e223265223852_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd223264223855_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd223264223855_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl223263223857_))
                            (let ((_e223268223860_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl223263223857_))))
                              (let ((_tl223266223865_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e223268223860_)))
                                    (_hd223267223863_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e223268223860_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd223267223863_))
                                    (let ((_e223271223868_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd223267223863_))))
                                      (let ((_tl223269223873_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e223271223868_)))
                                            (_hd223270223871_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e223271223868_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd223270223871_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd223270223871_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl223269223873_))
                                                    (let ((_e223274223876_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl223269223873_))))
                                                      (let ((_tl223272223881_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e223274223876_)))
                    (_hd223273223879_
                     (let () (declare (not safe)) (##car _e223274223876_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl223272223881_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl223266223865_))
                        (let ((___splice231778231779_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl223266223865_
                                  '0))))
                          (let ((_tl223277223886_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice231778231779_ '1)))
                                (_target223275223884_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice231778231779_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl223277223886_))
                                (letrec ((_loop223278223889_
                                          (lambda (_hd223276223892_
                                                   _xarg223282223894_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd223276223892_))
                                                (let ((_e223279223897_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd223276223892_))))
                                                  (let ((_lp-tl223281223902_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e223279223897_)))
                                                        (_lp-hd223280223900_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e223279223897_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd223280223900_))
                                                        (let ((_e223286223905_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd223280223900_))))
                  (let ((_tl223284223910_
                         (let () (declare (not safe)) (##cdr _e223286223905_)))
                        (_hd223285223908_
                         (let ()
                           (declare (not safe))
                           (##car _e223286223905_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd223285223908_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd223285223908_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl223284223910_))
                                (let ((_e223289223913_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl223284223910_))))
                                  (let ((_tl223287223918_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e223289223913_)))
                                        (_hd223288223916_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e223289223913_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl223287223918_))
                                        (let ((__tmp233178
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd223288223916_
                                                       _xarg223282223894_))))
                                          (declare (not safe))
                                          (_loop223278223889_
                                           _lp-tl223281223902_
                                           __tmp233178))
                                        (___match231815231816_
                                         _e223250223812_
                                         _hd223249223815_
                                         _tl223248223817_
                                         ___splice231776231777_
                                         _target223251223820_
                                         _tl223253223822_))))
                                (___match231815231816_
                                 _e223250223812_
                                 _hd223249223815_
                                 _tl223248223817_
                                 ___splice231776231777_
                                 _target223251223820_
                                 _tl223253223822_))
                            (___match231815231816_
                             _e223250223812_
                             _hd223249223815_
                             _tl223248223817_
                             ___splice231776231777_
                             _target223251223820_
                             _tl223253223822_))
                        (___match231815231816_
                         _e223250223812_
                         _hd223249223815_
                         _tl223248223817_
                         ___splice231776231777_
                         _target223251223820_
                         _tl223253223822_))))
                (___match231815231816_
                 _e223250223812_
                 _hd223249223815_
                 _tl223248223817_
                 ___splice231776231777_
                 _target223251223820_
                 _tl223253223822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg223283223921_
                                                       (reverse _xarg223282223894_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl223260223849_))
                                                      (let ((_L223924_
                                                             _xarg223283223921_)
                                                            (_L223925_
                                                             _hd223273223879_)
                                                            (_L223926_
                                                             _arg223259223841_))
                                                        (if (and (let ((__tmp233176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp233177
                                       (lambda (_g223954223957_
                                                _g223955223959_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g223954223957_
                                                 _g223955223959_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp233177 '() _L223926_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp233176))
                         (fx= (length (let ((__tmp233174
                                             (lambda (_g223961223964_
                                                      _g223962223966_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g223961223964_
                                                       _g223962223966_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp233174 '() _L223926_)))
                              (length (let ((__tmp233175
                                             (lambda (_g223968223971_
                                                      _g223969223973_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g223968223971_
                                                       _g223969223973_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp233175 '() _L223924_))))
                         (let ((__tmp233172
                                (let ((__tmp233173
                                       (lambda (_g223975223978_
                                                _g223976223980_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g223975223978_
                                                 _g223976223980_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp233173 '() _L223926_)))
                               (__tmp233170
                                (let ((__tmp233171
                                       (lambda (_g223982223985_
                                                _g223983223987_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g223982223985_
                                                 _g223983223987_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp233171 '() _L223924_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp233172
                                    __tmp233170))
                         (let ((__tmp233166
                                (let ((__tmp233169
                                       (lambda (_g223989223991_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g223989223991_
                                            _L223925_))))
                                      (__tmp233167
                                       (let ((__tmp233168
                                              (lambda (_g223993223996_
                                                       _g223994223998_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g223993223996_
                                                        _g223994223998_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp233168 '() _L223926_))))
                                  (declare (not safe))
                                  (find __tmp233169 __tmp233167))))
                           (declare (not safe))
                           (not __tmp233166)))
                    (___kont231774231775_ _L223924_ _L223925_ _L223926_)
                    (___match231815231816_
                     _e223250223812_
                     _hd223249223815_
                     _tl223248223817_
                     ___splice231776231777_
                     _target223251223820_
                     _tl223253223822_)))
              (___match231815231816_
               _e223250223812_
               _hd223249223815_
               _tl223248223817_
               ___splice231776231777_
               _target223251223820_
               _tl223253223822_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop223278223889_
                                     _target223275223884_
                                     '())))
                                (___match231815231816_
                                 _e223250223812_
                                 _hd223249223815_
                                 _tl223248223817_
                                 ___splice231776231777_
                                 _target223251223820_
                                 _tl223253223822_))))
                        (___match231815231816_
                         _e223250223812_
                         _hd223249223815_
                         _tl223248223817_
                         ___splice231776231777_
                         _target223251223820_
                         _tl223253223822_))
                    (___match231815231816_
                     _e223250223812_
                     _hd223249223815_
                     _tl223248223817_
                     ___splice231776231777_
                     _target223251223820_
                     _tl223253223822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match231815231816_
                                                     _e223250223812_
                                                     _hd223249223815_
                                                     _tl223248223817_
                                                     ___splice231776231777_
                                                     _target223251223820_
                                                     _tl223253223822_))
                                                (___match231815231816_
                                                 _e223250223812_
                                                 _hd223249223815_
                                                 _tl223248223817_
                                                 ___splice231776231777_
                                                 _target223251223820_
                                                 _tl223253223822_))
                                            (___match231815231816_
                                             _e223250223812_
                                             _hd223249223815_
                                             _tl223248223817_
                                             ___splice231776231777_
                                             _target223251223820_
                                             _tl223253223822_))))
                                    (___match231815231816_
                                     _e223250223812_
                                     _hd223249223815_
                                     _tl223248223817_
                                     ___splice231776231777_
                                     _target223251223820_
                                     _tl223253223822_))))
                            (___match231815231816_
                             _e223250223812_
                             _hd223249223815_
                             _tl223248223817_
                             ___splice231776231777_
                             _target223251223820_
                             _tl223253223822_))
                        (___match231815231816_
                         _e223250223812_
                         _hd223249223815_
                         _tl223248223817_
                         ___splice231776231777_
                         _target223251223820_
                         _tl223253223822_))
                    (___match231815231816_
                     _e223250223812_
                     _hd223249223815_
                     _tl223248223817_
                     ___splice231776231777_
                     _target223251223820_
                     _tl223253223822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match231815231816_
                                                     _e223250223812_
                                                     _hd223249223815_
                                                     _tl223248223817_
                                                     ___splice231776231777_
                                                     _target223251223820_
                                                     _tl223253223822_))))
                                            (___match231815231816_
                                             _e223250223812_
                                             _hd223249223815_
                                             _tl223248223817_
                                             ___splice231776231777_
                                             _target223251223820_
                                             _tl223253223822_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop223254223825_ _target223251223820_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx231772231773_))
                  (let ((_e223250223812_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx231772231773_))))
                    (let ((_tl223248223817_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223250223812_)))
                          (_hd223249223815_
                           (let ()
                             (declare (not safe))
                             (##car _e223250223812_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd223249223815_))
                          (let ((___splice231776231777_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd223249223815_
                                    '0))))
                            (let ((_tl223253223822_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice231776231777_ '1)))
                                  (_target223251223820_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice231776231777_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl223253223822_))
                                  (___match231803231804_
                                   _e223250223812_
                                   _hd223249223815_
                                   _tl223248223817_
                                   ___splice231776231777_
                                   _target223251223820_
                                   _tl223253223822_)
                                  (___match231815231816_
                                   _e223250223812_
                                   _hd223249223815_
                                   _tl223248223817_
                                   ___splice231776231777_
                                   _target223251223820_
                                   _tl223253223822_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223248223817_))
                              (let ((_e223365223420_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223248223817_))))
                                (let ((_tl223363223425_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223365223420_)))
                                      (_hd223364223423_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223365223420_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd223364223423_))
                                      (let ((_e223368223428_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd223364223423_))))
                                        (let ((_tl223366223433_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223368223428_)))
                                              (_hd223367223431_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223368223428_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd223367223431_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd223367223431_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl223366223433_))
                                                      (let ((_e223371223436_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl223366223433_))))
                (let ((_tl223369223441_
                       (let () (declare (not safe)) (##cdr _e223371223436_)))
                      (_hd223370223439_
                       (let () (declare (not safe)) (##car _e223371223436_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd223370223439_))
                      (let ((_e223374223444_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd223370223439_))))
                        (let ((_tl223372223449_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223374223444_)))
                              (_hd223373223447_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223374223444_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd223373223447_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd223373223447_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223372223449_))
                                      (let ((_e223377223452_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223372223449_))))
                                        (let ((_tl223375223457_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223377223452_)))
                                              (_hd223376223455_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223377223452_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223375223457_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl223369223441_))
                                                  (let ((_e223380223460_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl223369223441_))))
                                                    (let ((_tl223378223465_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223380223460_)))
                                                          (_hd223379223463_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223380223460_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd223379223463_))
                                                          (let ((_e223383223468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd223379223463_))))
                    (let ((_tl223381223473_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223383223468_)))
                          (_hd223382223471_
                           (let ()
                             (declare (not safe))
                             (##car _e223383223468_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd223382223471_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd223382223471_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl223381223473_))
                                  (let ((_e223386223476_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl223381223473_))))
                                    (let ((_tl223384223481_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223386223476_)))
                                          (_hd223385223479_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223386223476_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl223384223481_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl223378223465_))
                                              (let ((_e223389223484_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl223378223465_))))
                                                (let ((_tl223387223489_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e223389223484_)))
                                                      (_hd223388223487_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e223389223484_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd223388223487_))
                                                      (let ((_e223392223492_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd223388223487_))))
                (let ((_tl223390223497_
                       (let () (declare (not safe)) (##cdr _e223392223492_)))
                      (_hd223391223495_
                       (let () (declare (not safe)) (##car _e223392223492_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd223391223495_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd223391223495_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223390223497_))
                              (let ((_e223395223500_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223390223497_))))
                                (let ((_tl223393223505_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223395223500_)))
                                      (_hd223394223503_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223395223500_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl223393223505_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl223387223489_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223363223425_))
                                              (___match231913231914_
                                               _e223250223812_
                                               _hd223249223815_
                                               _tl223248223817_
                                               _e223365223420_
                                               _hd223364223423_
                                               _tl223363223425_
                                               _e223368223428_
                                               _hd223367223431_
                                               _tl223366223433_
                                               _e223371223436_
                                               _hd223370223439_
                                               _tl223369223441_
                                               _e223374223444_
                                               _hd223373223447_
                                               _tl223372223449_
                                               _e223377223452_
                                               _hd223376223455_
                                               _tl223375223457_
                                               _e223380223460_
                                               _hd223379223463_
                                               _tl223378223465_
                                               _e223383223468_
                                               _hd223382223471_
                                               _tl223381223473_
                                               _e223386223476_
                                               _hd223385223479_
                                               _tl223384223481_
                                               _e223389223484_
                                               _hd223388223487_
                                               _tl223387223489_
                                               _e223392223492_
                                               _hd223391223495_
                                               _tl223390223497_
                                               _e223395223500_
                                               _hd223394223503_
                                               _tl223393223505_)
                                              (___kont231788231789_))
                                          (___kont231788231789_))
                                      (___kont231788231789_))))
                              (___kont231788231789_))
                          (___kont231788231789_))
                      (___kont231788231789_))))
              (___kont231788231789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont231788231789_))
                                          (___kont231788231789_))))
                                  (___kont231788231789_))
                              (___kont231788231789_))
                          (___kont231788231789_))))
                  (___kont231788231789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont231788231789_))
                                              (___kont231788231789_))))
                                      (___kont231788231789_))
                                  (___kont231788231789_))
                              (___kont231788231789_))))
                      (___kont231788231789_))))
              (___kont231788231789_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont231788231789_))
                                              (___kont231788231789_))))
                                      (___kont231788231789_))))
                              (___kont231788231789_)))))
                  (___kont231788231789_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form222706_)
        (let* ((___stx231916231917_ _form222706_)
               (_g222710222834_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231916231917_)))))
          (let ((___kont231918231919_
                 (lambda (_L223204_ _L223205_ _L223206_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L223205_))))
                (___kont231924231925_
                 (lambda (_L223052_ _L223053_ _L223054_ _L223055_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L223052_))))
                (___kont231928231929_
                 (lambda (_L222919_ _L222920_ _L222921_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L222919_)))))
            (let* ((___match232025232026_
                    (lambda (_e222802222839_
                             _hd222801222842_
                             _tl222800222844_
                             _e222805222847_
                             _hd222804222850_
                             _tl222803222852_
                             _e222808222855_
                             _hd222807222858_
                             _tl222806222860_
                             _e222811222863_
                             _hd222810222866_
                             _tl222809222868_
                             _e222814222871_
                             _hd222813222874_
                             _tl222812222876_
                             _e222817222879_
                             _hd222816222882_
                             _tl222815222884_
                             _e222820222887_
                             _hd222819222890_
                             _tl222818222892_
                             _e222823222895_
                             _hd222822222898_
                             _tl222821222900_
                             _e222826222903_
                             _hd222825222906_
                             _tl222824222908_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl222818222892_))
                          (let ((_e222829222911_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl222818222892_))))
                            (let ((_tl222827222916_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e222829222911_)))
                                  (_hd222828222914_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e222829222911_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl222827222916_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222803222852_))
                                      (___kont231928231929_
                                       _hd222825222906_
                                       _hd222816222882_
                                       _hd222801222842_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222710222834_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g222710222834_)))))
                          (let () (declare (not safe)) (_g222710222834_)))))
                   (___match231955231956_
                    (lambda (_e222763222956_
                             _hd222762222959_
                             _tl222761222961_
                             ___splice231926231927_
                             _target222764222964_
                             _tl222766222966_)
                      (letrec ((_loop222767222969_
                                (lambda (_hd222765222972_ _arg222771222974_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd222765222972_))
                                      (let ((_e222768222977_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd222765222972_))))
                                        (let ((_lp-tl222770222982_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222768222977_)))
                                              (_lp-hd222769222980_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222768222977_))))
                                          (let ((__tmp233180
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd222769222980_
                                                         _arg222771222974_))))
                                            (declare (not safe))
                                            (_loop222767222969_
                                             _lp-tl222770222982_
                                             __tmp233180))))
                                      (let ((_arg222772222985_
                                             (reverse _arg222771222974_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl222761222961_))
                                            (let ((_e222775222988_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl222761222961_))))
                                              (let ((_tl222773222993_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e222775222988_)))
                                                    (_hd222774222991_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e222775222988_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd222774222991_))
                                                    (let ((_e222778222996_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd222774222991_))))
                                                      (let ((_tl222776223001_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e222778222996_)))
                    (_hd222777222999_
                     (let () (declare (not safe)) (##car _e222778222996_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd222777222999_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd222777222999_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl222776223001_))
                            (let ((_e222781223004_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl222776223001_))))
                              (let ((_tl222779223009_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e222781223004_)))
                                    (_hd222780223007_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e222781223004_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd222780223007_))
                                    (let ((_e222784223012_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd222780223007_))))
                                      (let ((_tl222782223017_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e222784223012_)))
                                            (_hd222783223015_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e222784223012_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd222783223015_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd222783223015_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl222782223017_))
                                                    (let ((_e222787223020_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl222782223017_))))
                                                      (let ((_tl222785223025_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e222787223020_)))
                    (_hd222786223023_
                     (let () (declare (not safe)) (##car _e222787223020_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl222785223025_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl222779223009_))
                        (let ((_e222790223028_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl222779223009_))))
                          (let ((_tl222788223033_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222790223028_)))
                                (_hd222789223031_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222790223028_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd222789223031_))
                                (let ((_e222793223036_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd222789223031_))))
                                  (let ((_tl222791223041_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222793223036_)))
                                        (_hd222792223039_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222793223036_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd222792223039_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd222792223039_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl222791223041_))
                                                (let ((_e222796223044_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl222791223041_))))
                                                  (let ((_tl222794223049_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e222796223044_)))
                                                        (_hd222795223047_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e222796223044_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl222794223049_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl222773222993_))
                                                            (___kont231924231925_
                                                             _hd222795223047_
                                                             _hd222786223023_
                                                             _tl222766222966_
                                                             _arg222772222985_)
                                                            (___match232025232026_
                                                             _e222763222956_
                                                             _hd222762222959_
                                                             _tl222761222961_
                                                             _e222775222988_
                                                             _hd222774222991_
                                                             _tl222773222993_
                                                             _e222778222996_
                                                             _hd222777222999_
                                                             _tl222776223001_
                                                             _e222781223004_
                                                             _hd222780223007_
                                                             _tl222779223009_
                                                             _e222784223012_
                                                             _hd222783223015_
                                                             _tl222782223017_
                                                             _e222787223020_
                                                             _hd222786223023_
                                                             _tl222785223025_
                                                             _e222790223028_
                                                             _hd222789223031_
                                                             _tl222788223033_
                                                             _e222793223036_
                                                             _hd222792223039_
                                                             _tl222791223041_
                                                             _e222796223044_
                                                             _hd222795223047_
                                                             _tl222794223049_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g222710222834_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222710222834_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g222710222834_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g222710222834_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g222710222834_)))))
                        (let () (declare (not safe)) (_g222710222834_)))
                    (let () (declare (not safe)) (_g222710222834_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g222710222834_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222710222834_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g222710222834_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g222710222834_)))))
                            (let () (declare (not safe)) (_g222710222834_)))
                        (let () (declare (not safe)) (_g222710222834_)))
                    (let () (declare (not safe)) (_g222710222834_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g222710222834_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g222710222834_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop222767222969_ _target222764222964_ '())))))
                   (___match231943231944_
                    (lambda (_e222717223092_
                             _hd222716223095_
                             _tl222715223097_
                             ___splice231920231921_
                             _target222718223100_
                             _tl222720223102_)
                      (letrec ((_loop222721223105_
                                (lambda (_hd222719223108_ _arg222725223110_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd222719223108_))
                                      (let ((_e222722223113_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd222719223108_))))
                                        (let ((_lp-tl222724223118_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222722223113_)))
                                              (_lp-hd222723223116_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222722223113_))))
                                          (let ((__tmp233182
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd222723223116_
                                                         _arg222725223110_))))
                                            (declare (not safe))
                                            (_loop222721223105_
                                             _lp-tl222724223118_
                                             __tmp233182))))
                                      (let ((_arg222726223121_
                                             (reverse _arg222725223110_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl222715223097_))
                                            (let ((_e222729223124_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl222715223097_))))
                                              (let ((_tl222727223129_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e222729223124_)))
                                                    (_hd222728223127_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e222729223124_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd222728223127_))
                                                    (let ((_e222732223132_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd222728223127_))))
                                                      (let ((_tl222730223137_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e222732223132_)))
                    (_hd222731223135_
                     (let () (declare (not safe)) (##car _e222732223132_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd222731223135_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd222731223135_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl222730223137_))
                            (let ((_e222735223140_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl222730223137_))))
                              (let ((_tl222733223145_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e222735223140_)))
                                    (_hd222734223143_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e222735223140_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd222734223143_))
                                    (let ((_e222738223148_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd222734223143_))))
                                      (let ((_tl222736223153_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e222738223148_)))
                                            (_hd222737223151_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e222738223148_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd222737223151_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd222737223151_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl222736223153_))
                                                    (let ((_e222741223156_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl222736223153_))))
                                                      (let ((_tl222739223161_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e222741223156_)))
                    (_hd222740223159_
                     (let () (declare (not safe)) (##car _e222741223156_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl222739223161_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl222733223145_))
                        (let ((___splice231922231923_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl222733223145_
                                  '0))))
                          (let ((_tl222744223166_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice231922231923_ '1)))
                                (_target222742223164_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice231922231923_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl222744223166_))
                                (letrec ((_loop222745223169_
                                          (lambda (_hd222743223172_
                                                   _xarg222749223174_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd222743223172_))
                                                (let ((_e222746223177_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd222743223172_))))
                                                  (let ((_lp-tl222748223182_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e222746223177_)))
                                                        (_lp-hd222747223180_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e222746223177_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd222747223180_))
                                                        (let ((_e222753223185_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd222747223180_))))
                  (let ((_tl222751223190_
                         (let () (declare (not safe)) (##cdr _e222753223185_)))
                        (_hd222752223188_
                         (let ()
                           (declare (not safe))
                           (##car _e222753223185_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd222752223188_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd222752223188_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl222751223190_))
                                (let ((_e222756223193_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl222751223190_))))
                                  (let ((_tl222754223198_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222756223193_)))
                                        (_hd222755223196_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222756223193_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl222754223198_))
                                        (let ((__tmp233181
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd222755223196_
                                                       _xarg222749223174_))))
                                          (declare (not safe))
                                          (_loop222745223169_
                                           _lp-tl222748223182_
                                           __tmp233181))
                                        (___match231955231956_
                                         _e222717223092_
                                         _hd222716223095_
                                         _tl222715223097_
                                         ___splice231920231921_
                                         _target222718223100_
                                         _tl222720223102_))))
                                (___match231955231956_
                                 _e222717223092_
                                 _hd222716223095_
                                 _tl222715223097_
                                 ___splice231920231921_
                                 _target222718223100_
                                 _tl222720223102_))
                            (___match231955231956_
                             _e222717223092_
                             _hd222716223095_
                             _tl222715223097_
                             ___splice231920231921_
                             _target222718223100_
                             _tl222720223102_))
                        (___match231955231956_
                         _e222717223092_
                         _hd222716223095_
                         _tl222715223097_
                         ___splice231920231921_
                         _target222718223100_
                         _tl222720223102_))))
                (___match231955231956_
                 _e222717223092_
                 _hd222716223095_
                 _tl222715223097_
                 ___splice231920231921_
                 _target222718223100_
                 _tl222720223102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg222750223201_
                                                       (reverse _xarg222749223174_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl222727223129_))
                                                      (___kont231918231919_
                                                       _xarg222750223201_
                                                       _hd222740223159_
                                                       _arg222726223121_)
                                                      (___match231955231956_
                                                       _e222717223092_
                                                       _hd222716223095_
                                                       _tl222715223097_
                                                       ___splice231920231921_
                                                       _target222718223100_
                                                       _tl222720223102_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop222745223169_
                                     _target222742223164_
                                     '())))
                                (___match231955231956_
                                 _e222717223092_
                                 _hd222716223095_
                                 _tl222715223097_
                                 ___splice231920231921_
                                 _target222718223100_
                                 _tl222720223102_))))
                        (___match231955231956_
                         _e222717223092_
                         _hd222716223095_
                         _tl222715223097_
                         ___splice231920231921_
                         _target222718223100_
                         _tl222720223102_))
                    (___match231955231956_
                     _e222717223092_
                     _hd222716223095_
                     _tl222715223097_
                     ___splice231920231921_
                     _target222718223100_
                     _tl222720223102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match231955231956_
                                                     _e222717223092_
                                                     _hd222716223095_
                                                     _tl222715223097_
                                                     ___splice231920231921_
                                                     _target222718223100_
                                                     _tl222720223102_))
                                                (___match231955231956_
                                                 _e222717223092_
                                                 _hd222716223095_
                                                 _tl222715223097_
                                                 ___splice231920231921_
                                                 _target222718223100_
                                                 _tl222720223102_))
                                            (___match231955231956_
                                             _e222717223092_
                                             _hd222716223095_
                                             _tl222715223097_
                                             ___splice231920231921_
                                             _target222718223100_
                                             _tl222720223102_))))
                                    (___match231955231956_
                                     _e222717223092_
                                     _hd222716223095_
                                     _tl222715223097_
                                     ___splice231920231921_
                                     _target222718223100_
                                     _tl222720223102_))))
                            (___match231955231956_
                             _e222717223092_
                             _hd222716223095_
                             _tl222715223097_
                             ___splice231920231921_
                             _target222718223100_
                             _tl222720223102_))
                        (___match231955231956_
                         _e222717223092_
                         _hd222716223095_
                         _tl222715223097_
                         ___splice231920231921_
                         _target222718223100_
                         _tl222720223102_))
                    (___match231955231956_
                     _e222717223092_
                     _hd222716223095_
                     _tl222715223097_
                     ___splice231920231921_
                     _target222718223100_
                     _tl222720223102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match231955231956_
                                                     _e222717223092_
                                                     _hd222716223095_
                                                     _tl222715223097_
                                                     ___splice231920231921_
                                                     _target222718223100_
                                                     _tl222720223102_))))
                                            (___match231955231956_
                                             _e222717223092_
                                             _hd222716223095_
                                             _tl222715223097_
                                             ___splice231920231921_
                                             _target222718223100_
                                             _tl222720223102_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop222721223105_ _target222718223100_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx231916231917_))
                  (let ((_e222717223092_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx231916231917_))))
                    (let ((_tl222715223097_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222717223092_)))
                          (_hd222716223095_
                           (let ()
                             (declare (not safe))
                             (##car _e222717223092_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd222716223095_))
                          (let ((___splice231920231921_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd222716223095_
                                    '0))))
                            (let ((_tl222720223102_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice231920231921_ '1)))
                                  (_target222718223100_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice231920231921_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl222720223102_))
                                  (___match231943231944_
                                   _e222717223092_
                                   _hd222716223095_
                                   _tl222715223097_
                                   ___splice231920231921_
                                   _target222718223100_
                                   _tl222720223102_)
                                  (___match231955231956_
                                   _e222717223092_
                                   _hd222716223095_
                                   _tl222715223097_
                                   ___splice231920231921_
                                   _target222718223100_
                                   _tl222720223102_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222715223097_))
                              (let ((_e222805222847_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222715223097_))))
                                (let ((_tl222803222852_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222805222847_)))
                                      (_hd222804222850_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222805222847_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd222804222850_))
                                      (let ((_e222808222855_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd222804222850_))))
                                        (let ((_tl222806222860_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222808222855_)))
                                              (_hd222807222858_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222808222855_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd222807222858_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd222807222858_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl222806222860_))
                                                      (let ((_e222811222863_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl222806222860_))))
                (let ((_tl222809222868_
                       (let () (declare (not safe)) (##cdr _e222811222863_)))
                      (_hd222810222866_
                       (let () (declare (not safe)) (##car _e222811222863_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd222810222866_))
                      (let ((_e222814222871_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd222810222866_))))
                        (let ((_tl222812222876_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222814222871_)))
                              (_hd222813222874_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222814222871_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd222813222874_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd222813222874_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222812222876_))
                                      (let ((_e222817222879_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222812222876_))))
                                        (let ((_tl222815222884_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222817222879_)))
                                              (_hd222816222882_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222817222879_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222815222884_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl222809222868_))
                                                  (let ((_e222820222887_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl222809222868_))))
                                                    (let ((_tl222818222892_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222820222887_)))
                                                          (_hd222819222890_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222820222887_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd222819222890_))
                                                          (let ((_e222823222895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd222819222890_))))
                    (let ((_tl222821222900_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222823222895_)))
                          (_hd222822222898_
                           (let ()
                             (declare (not safe))
                             (##car _e222823222895_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd222822222898_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd222822222898_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl222821222900_))
                                  (let ((_e222826222903_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl222821222900_))))
                                    (let ((_tl222824222908_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222826222903_)))
                                          (_hd222825222906_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222826222903_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl222824222908_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl222818222892_))
                                              (let ((_e222829222911_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl222818222892_))))
                                                (let ((_tl222827222916_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e222829222911_)))
                                                      (_hd222828222914_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e222829222911_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl222827222916_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl222803222852_))
                                                          (___kont231928231929_
                                                           _hd222825222906_
                                                           _hd222816222882_
                                                           _hd222716223095_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g222710222834_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g222710222834_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g222710222834_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g222710222834_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g222710222834_)))
                              (let () (declare (not safe)) (_g222710222834_)))
                          (let () (declare (not safe)) (_g222710222834_)))))
                  (let () (declare (not safe)) (_g222710222834_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g222710222834_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g222710222834_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222710222834_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g222710222834_)))
                              (let ()
                                (declare (not safe))
                                (_g222710222834_)))))
                      (let () (declare (not safe)) (_g222710222834_)))))
              (let () (declare (not safe)) (_g222710222834_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g222710222834_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g222710222834_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222710222834_)))))
                              (let ()
                                (declare (not safe))
                                (_g222710222834_))))))
                  (let () (declare (not safe)) (_g222710222834_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form222510_)
        (let* ((_g222512222526_
                (lambda (_g222513222523_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222513222523_))))
               (_g222511222703_
                (lambda (_g222513222529_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222513222529_))
                      (let ((_e222518222531_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222513222529_))))
                        (let ((_hd222517222534_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222518222531_)))
                              (_tl222516222536_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222518222531_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222516222536_))
                              (let ((_e222521222539_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222516222536_))))
                                (let ((_hd222520222542_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222521222539_)))
                                      (_tl222519222544_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222521222539_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222519222544_))
                                      ((lambda (_L222547_ _L222548_)
                                         (let* ((___stx232038232039_ _L222548_)
                                                (_g222563222591_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx232038232039_)))))
                                           (let ((___kont232040232041_
                                                  (lambda (_L222682_)
                                                    (length (let ((__tmp233183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g222692222695_ _g222693222697_)
                             (let ()
                               (declare (not safe))
                               (cons _g222692222695_ _g222693222697_)))))
                      (declare (not safe))
                      (foldr1 __tmp233183 '() _L222682_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont232044232045_
                                                  (lambda (_L222633_ _L222634_)
                                                    (let ((__tmp233184
                                                           (length (let ((__tmp233185
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g222645222648_ _g222646222650_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g222645222648_
                                            _g222646222650_)))))
                             (declare (not safe))
                             (foldr1 __tmp233185 '() _L222634_)))))
              (declare (not safe))
              (cons __tmp233184 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont232048232049_
                                                  (lambda (_L222596_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match232063232064_
                                                     (lambda (___splice232046232047_
                                                              _target222577222609_
                                                              _tl222579222611_)
                                                       (letrec ((_loop222580222614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd222578222617_ _arg222584222619_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd222578222617_))
                               (let ((_e222581222622_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd222578222617_))))
                                 (let ((_lp-tl222583222627_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e222581222622_)))
                                       (_lp-hd222582222625_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e222581222622_))))
                                   (let ((__tmp233186
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd222582222625_
                                                  _arg222584222619_))))
                                     (declare (not safe))
                                     (_loop222580222614_
                                      _lp-tl222583222627_
                                      __tmp233186))))
                               (let ((_arg222585222630_
                                      (reverse _arg222584222619_)))
                                 (___kont232044232045_
                                  _tl222579222611_
                                  _arg222585222630_))))))
                 (let ()
                   (declare (not safe))
                   (_loop222580222614_ _target222577222609_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match232057232058_
                                                     (lambda (___splice232042232043_
                                                              _target222566222658_
                                                              _tl222568222660_)
                                                       (letrec ((_loop222569222663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd222567222666_ _arg222573222668_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd222567222666_))
                               (let ((_e222570222671_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd222567222666_))))
                                 (let ((_lp-tl222572222676_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e222570222671_)))
                                       (_lp-hd222571222674_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e222570222671_))))
                                   (let ((__tmp233187
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd222571222674_
                                                  _arg222573222668_))))
                                     (declare (not safe))
                                     (_loop222569222663_
                                      _lp-tl222572222676_
                                      __tmp233187))))
                               (let ((_arg222574222679_
                                      (reverse _arg222573222668_)))
                                 (___kont232040232041_ _arg222574222679_))))))
                 (let ()
                   (declare (not safe))
                   (_loop222569222663_ _target222566222658_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx232038232039_))
                                                   (let ((___splice232042232043_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx232038232039_
                                                             '0))))
                                                     (let ((_tl222568222660_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice232042232043_
                                                               '1)))
                                                           (_target222566222658_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice232042232043_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl222568222660_))
                                                           (___match232057232058_
                                                            ___splice232042232043_
                                                            _target222566222658_
                                                            _tl222568222660_)
                                                           (___match232063232064_
                                                            ___splice232042232043_
                                                            _target222566222658_
                                                            _tl222568222660_))))
                                                   (___kont232048232049_
                                                    ___stx232038232039_))))))
                                       _hd222520222542_
                                       _hd222517222534_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222512222526_ _g222513222529_)))))
                              (let ()
                                (declare (not safe))
                                (_g222512222526_ _g222513222529_)))))
                      (let ()
                        (declare (not safe))
                        (_g222512222526_ _g222513222529_))))))
          (declare (not safe))
          (_g222511222703_ _form222510_))))
    (define gxc#lambda-expr?
      (lambda (_expr222463_)
        (let* ((___stx232066232067_ _expr222463_)
               (_g222466222476_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx232066232067_)))))
          (let ((___kont232068232069_ (lambda (_L222496_) '#t))
                (___kont232070232071_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx232066232067_))
                (let ((_e222471222488_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx232066232067_))))
                  (let ((_tl222469222493_
                         (let () (declare (not safe)) (##cdr _e222471222488_)))
                        (_hd222470222491_
                         (let ()
                           (declare (not safe))
                           (##car _e222471222488_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd222470222491_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd222470222491_))
                            (___kont232068232069_ _tl222469222493_)
                            (___kont232070232071_))
                        (___kont232070232071_))))
                (___kont232070232071_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr222416_)
        (let* ((___stx232084232085_ _expr222416_)
               (_g222419222429_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx232084232085_)))))
          (let ((___kont232086232087_ (lambda (_L222449_) '#t))
                (___kont232088232089_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx232084232085_))
                (let ((_e222424222441_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx232084232085_))))
                  (let ((_tl222422222446_
                         (let () (declare (not safe)) (##cdr _e222424222441_)))
                        (_hd222423222444_
                         (let ()
                           (declare (not safe))
                           (##car _e222424222441_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd222423222444_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd222423222444_))
                            (___kont232086232087_ _tl222422222446_)
                            (___kont232088232089_))
                        (___kont232088232089_))))
                (___kont232088232089_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr222285_)
        (let* ((___stx232102232103_ _expr222285_)
               (_g222288222318_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx232102232103_)))))
          (let ((___kont232104232105_
                 (lambda (_L222386_ _L222387_ _L222388_)
                   (if (let () (declare (not safe)) (gx#identifier? _L222388_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L222387_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L222386_))
                           '#f)
                       '#f)))
                (___kont232106232107_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx232102232103_))
                (let ((_e222295222330_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx232102232103_))))
                  (let ((_tl222293222335_
                         (let () (declare (not safe)) (##cdr _e222295222330_)))
                        (_hd222294222333_
                         (let ()
                           (declare (not safe))
                           (##car _e222295222330_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd222294222333_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd222294222333_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl222293222335_))
                                (let ((_e222298222338_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl222293222335_))))
                                  (let ((_tl222296222343_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222298222338_)))
                                        (_hd222297222341_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222298222338_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd222297222341_))
                                        (let ((_e222301222346_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd222297222341_))))
                                          (let ((_tl222299222351_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e222301222346_)))
                                                (_hd222300222349_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e222301222346_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd222300222349_))
                                                (let ((_e222304222354_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd222300222349_))))
                                                  (let ((_tl222302222359_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e222304222354_)))
                                                        (_hd222303222357_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e222304222354_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd222303222357_))
                                                        (let ((_e222307222362_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd222303222357_))))
                  (let ((_tl222305222367_
                         (let () (declare (not safe)) (##cdr _e222307222362_)))
                        (_hd222306222365_
                         (let ()
                           (declare (not safe))
                           (##car _e222307222362_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl222305222367_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl222302222359_))
                            (let ((_e222310222370_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl222302222359_))))
                              (let ((_tl222308222375_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e222310222370_)))
                                    (_hd222309222373_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e222310222370_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl222308222375_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl222299222351_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl222296222343_))
                                            (let ((_e222313222378_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl222296222343_))))
                                              (let ((_tl222311222383_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e222313222378_)))
                                                    (_hd222312222381_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e222313222378_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl222311222383_))
                                                    (___kont232104232105_
                                                     _hd222312222381_
                                                     _hd222309222373_
                                                     _hd222306222365_)
                                                    (___kont232106232107_))))
                                            (___kont232106232107_))
                                        (___kont232106232107_))
                                    (___kont232106232107_))))
                            (___kont232106232107_))
                        (___kont232106232107_))))
                (___kont232106232107_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont232106232107_))))
                                        (___kont232106232107_))))
                                (___kont232106232107_))
                            (___kont232106232107_))
                        (___kont232106232107_))))
                (___kont232106232107_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr221610_)
        (let* ((___stx232164232165_ _expr221610_)
               (_g221613221771_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx232164232165_)))))
          (let ((___kont232166232167_
                 (lambda (_L222159_
                          _L222160_
                          _L222161_
                          _L222162_
                          _L222163_
                          _L222164_
                          _L222165_
                          _L222166_
                          _L222167_
                          _L222168_
                          _L222169_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L222166_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L222162_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L222161_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L222169_
                                      _L222160_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L222168_
                                          _L222165_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L222163_
                                              _L222159_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L222167_
                                              _L222164_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont232168232169_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx232164232165_))
                (let ((_e221628221783_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx232164232165_))))
                  (let ((_tl221626221788_
                         (let () (declare (not safe)) (##cdr _e221628221783_)))
                        (_hd221627221786_
                         (let ()
                           (declare (not safe))
                           (##car _e221628221783_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd221627221786_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd221627221786_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl221626221788_))
                                (let ((_e221631221791_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl221626221788_))))
                                  (let ((_tl221629221796_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221631221791_)))
                                        (_hd221630221794_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221631221791_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd221630221794_))
                                        (let ((_e221634221799_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd221630221794_))))
                                          (let ((_tl221632221804_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e221634221799_)))
                                                (_hd221633221802_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e221634221799_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd221633221802_))
                                                (let ((_e221637221807_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd221633221802_))))
                                                  (let ((_tl221635221812_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e221637221807_)))
                                                        (_hd221636221810_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e221637221807_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd221636221810_))
                                                        (let ((_e221640221815_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd221636221810_))))
                  (let ((_tl221638221820_
                         (let () (declare (not safe)) (##cdr _e221640221815_)))
                        (_hd221639221818_
                         (let ()
                           (declare (not safe))
                           (##car _e221640221815_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl221638221820_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl221635221812_))
                            (let ((_e221643221823_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl221635221812_))))
                              (let ((_tl221641221828_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e221643221823_)))
                                    (_hd221642221826_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e221643221823_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd221642221826_))
                                    (let ((_e221646221831_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd221642221826_))))
                                      (let ((_tl221644221836_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e221646221831_)))
                                            (_hd221645221834_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e221646221831_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd221645221834_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd221645221834_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl221644221836_))
                                                    (let ((_e221649221839_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl221644221836_))))
                                                      (let ((_tl221647221844_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e221649221839_)))
                    (_hd221648221842_
                     (let () (declare (not safe)) (##car _e221649221839_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd221648221842_))
                    (let ((_e221652221847_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd221648221842_))))
                      (let ((_tl221650221852_
                             (let ()
                               (declare (not safe))
                               (##cdr _e221652221847_)))
                            (_hd221651221850_
                             (let ()
                               (declare (not safe))
                               (##car _e221652221847_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd221651221850_))
                            (let ((_e221655221855_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd221651221850_))))
                              (let ((_tl221653221860_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e221655221855_)))
                                    (_hd221654221858_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e221655221855_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd221654221858_))
                                    (let ((_e221658221863_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd221654221858_))))
                                      (let ((_tl221656221868_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e221658221863_)))
                                            (_hd221657221866_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e221658221863_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl221656221868_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl221653221860_))
                                                (let ((_e221661221871_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl221653221860_))))
                                                  (let ((_tl221659221876_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e221661221871_)))
                                                        (_hd221660221874_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e221661221871_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl221659221876_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl221650221852_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl221647221844_))
                        (let ((_e221664221879_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl221647221844_))))
                          (let ((_tl221662221884_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221664221879_)))
                                (_hd221663221882_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221664221879_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd221663221882_))
                                (let ((_e221667221887_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd221663221882_))))
                                  (let ((_tl221665221892_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221667221887_)))
                                        (_hd221666221890_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221667221887_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd221666221890_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd221666221890_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl221665221892_))
                                                (let ((_e221670221895_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl221665221892_))))
                                                  (let ((_tl221668221900_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e221670221895_)))
                                                        (_hd221669221898_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e221670221895_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd221669221898_))
                                                        (let ((_e221673221903_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd221669221898_))))
                  (let ((_tl221671221908_
                         (let () (declare (not safe)) (##cdr _e221673221903_)))
                        (_hd221672221906_
                         (let ()
                           (declare (not safe))
                           (##car _e221673221903_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl221668221900_))
                        (let ((_e221676221911_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl221668221900_))))
                          (let ((_tl221674221916_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221676221911_)))
                                (_hd221675221914_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221676221911_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd221675221914_))
                                (let ((_e221679221919_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd221675221914_))))
                                  (let ((_tl221677221924_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221679221919_)))
                                        (_hd221678221922_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221679221919_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd221678221922_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd221678221922_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl221677221924_))
                                                (let ((_e221682221927_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl221677221924_))))
                                                  (let ((_tl221680221932_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e221682221927_)))
                                                        (_hd221681221930_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e221682221927_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd221681221930_))
                                                        (let ((_e221685221935_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd221681221930_))))
                  (let ((_tl221683221940_
                         (let () (declare (not safe)) (##cdr _e221685221935_)))
                        (_hd221684221938_
                         (let ()
                           (declare (not safe))
                           (##car _e221685221935_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd221684221938_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd221684221938_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl221683221940_))
                                (let ((_e221688221943_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl221683221940_))))
                                  (let ((_tl221686221948_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221688221943_)))
                                        (_hd221687221946_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221688221943_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221686221948_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl221680221932_))
                                            (let ((_e221691221951_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl221680221932_))))
                                              (let ((_tl221689221956_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e221691221951_)))
                                                    (_hd221690221954_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e221691221951_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd221690221954_))
                                                    (let ((_e221694221959_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd221690221954_))))
                                                      (let ((_tl221692221964_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e221694221959_)))
                    (_hd221693221962_
                     (let () (declare (not safe)) (##car _e221694221959_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd221693221962_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd221693221962_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl221692221964_))
                            (let ((_e221697221967_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl221692221964_))))
                              (let ((_tl221695221972_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e221697221967_)))
                                    (_hd221696221970_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e221697221967_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl221695221972_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl221689221956_))
                                        (let ((_e221700221975_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl221689221956_))))
                                          (let ((_tl221698221980_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e221700221975_)))
                                                (_hd221699221978_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e221700221975_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd221699221978_))
                                                (let ((_e221703221983_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd221699221978_))))
                                                  (let ((_tl221701221988_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e221703221983_)))
                                                        (_hd221702221986_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e221703221983_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd221702221986_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd221702221986_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl221701221988_))
                        (let ((_e221706221991_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl221701221988_))))
                          (let ((_tl221704221996_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221706221991_)))
                                (_hd221705221994_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221706221991_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl221704221996_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl221674221916_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221662221884_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl221641221828_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221632221804_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl221629221796_))
                                                    (let ((_e221709221999_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl221629221796_))))
                                                      (let ((_tl221707222004_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e221709221999_)))
                    (_hd221708222002_
                     (let () (declare (not safe)) (##car _e221709221999_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd221708222002_))
                    (let ((_e221712222007_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd221708222002_))))
                      (let ((_tl221710222012_
                             (let ()
                               (declare (not safe))
                               (##cdr _e221712222007_)))
                            (_hd221711222010_
                             (let ()
                               (declare (not safe))
                               (##car _e221712222007_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd221711222010_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd221711222010_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl221710222012_))
                                    (let ((_e221715222015_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl221710222012_))))
                                      (let ((_tl221713222020_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e221715222015_)))
                                            (_hd221714222018_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e221715222015_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl221713222020_))
                                            (let ((_e221718222023_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl221713222020_))))
                                              (let ((_tl221716222028_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e221718222023_)))
                                                    (_hd221717222026_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e221718222023_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd221717222026_))
                                                    (let ((_e221721222031_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd221717222026_))))
                                                      (let ((_tl221719222036_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e221721222031_)))
                    (_hd221720222034_
                     (let () (declare (not safe)) (##car _e221721222031_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd221720222034_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd221720222034_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl221719222036_))
                            (let ((_e221724222039_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl221719222036_))))
                              (let ((_tl221722222044_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e221724222039_)))
                                    (_hd221723222042_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e221724222039_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd221723222042_))
                                    (let ((_e221727222047_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd221723222042_))))
                                      (let ((_tl221725222052_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e221727222047_)))
                                            (_hd221726222050_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e221727222047_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd221726222050_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd221726222050_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl221725222052_))
                                                    (let ((_e221730222055_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl221725222052_))))
                                                      (let ((_tl221728222060_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e221730222055_)))
                    (_hd221729222058_
                     (let () (declare (not safe)) (##car _e221730222055_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl221728222060_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl221722222044_))
                        (let ((_e221733222063_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl221722222044_))))
                          (let ((_tl221731222068_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221733222063_)))
                                (_hd221732222066_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221733222063_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd221732222066_))
                                (let ((_e221736222071_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd221732222066_))))
                                  (let ((_tl221734222076_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221736222071_)))
                                        (_hd221735222074_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221736222071_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd221735222074_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd221735222074_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl221734222076_))
                                                (let ((_e221739222079_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl221734222076_))))
                                                  (let ((_tl221737222084_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e221739222079_)))
                                                        (_hd221738222082_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e221739222079_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl221737222084_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl221731222068_))
                                                            (let ((_e221742222087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl221731222068_))))
                      (let ((_tl221740222092_
                             (let ()
                               (declare (not safe))
                               (##cdr _e221742222087_)))
                            (_hd221741222090_
                             (let ()
                               (declare (not safe))
                               (##car _e221742222087_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd221741222090_))
                            (let ((_e221745222095_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd221741222090_))))
                              (let ((_tl221743222100_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e221745222095_)))
                                    (_hd221744222098_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e221745222095_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd221744222098_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd221744222098_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl221743222100_))
                                            (let ((_e221748222103_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl221743222100_))))
                                              (let ((_tl221746222108_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e221748222103_)))
                                                    (_hd221747222106_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e221748222103_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl221746222108_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl221740222092_))
                                                        (let ((_e221751222111_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl221740222092_))))
                  (let ((_tl221749222116_
                         (let () (declare (not safe)) (##cdr _e221751222111_)))
                        (_hd221750222114_
                         (let ()
                           (declare (not safe))
                           (##car _e221751222111_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd221750222114_))
                        (let ((_e221754222119_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd221750222114_))))
                          (let ((_tl221752222124_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221754222119_)))
                                (_hd221753222122_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221754222119_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd221753222122_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd221753222122_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl221752222124_))
                                        (let ((_e221757222127_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl221752222124_))))
                                          (let ((_tl221755222132_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e221757222127_)))
                                                (_hd221756222130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e221757222127_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221755222132_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl221749222116_))
                                                    (let ((_e221760222135_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl221749222116_))))
                                                      (let ((_tl221758222140_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e221760222135_)))
                    (_hd221759222138_
                     (let () (declare (not safe)) (##car _e221760222135_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd221759222138_))
                    (let ((_e221763222143_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd221759222138_))))
                      (let ((_tl221761222148_
                             (let ()
                               (declare (not safe))
                               (##cdr _e221763222143_)))
                            (_hd221762222146_
                             (let ()
                               (declare (not safe))
                               (##car _e221763222143_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd221762222146_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd221762222146_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl221761222148_))
                                    (let ((_e221766222151_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl221761222148_))))
                                      (let ((_tl221764222156_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e221766222151_)))
                                            (_hd221765222154_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e221766222151_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl221764222156_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221758222140_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl221716222028_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl221707222004_))
                                                        (___kont232166232167_
                                                         _hd221765222154_
                                                         _hd221756222130_
                                                         _hd221738222082_
                                                         _hd221729222058_
                                                         _hd221714222018_
                                                         _hd221705221994_
                                                         _hd221696221970_
                                                         _hd221687221946_
                                                         _hd221672221906_
                                                         _hd221657221866_
                                                         _hd221639221818_)
                                                        (___kont232168232169_))
                                                    (___kont232168232169_))
                                                (___kont232168232169_))
                                            (___kont232168232169_))))
                                    (___kont232168232169_))
                                (___kont232168232169_))
                            (___kont232168232169_))))
                    (___kont232168232169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232168232169_))
                                                (___kont232168232169_))))
                                        (___kont232168232169_))
                                    (___kont232168232169_))
                                (___kont232168232169_))))
                        (___kont232168232169_))))
                (___kont232168232169_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232168232169_))))
                                            (___kont232168232169_))
                                        (___kont232168232169_))
                                    (___kont232168232169_))))
                            (___kont232168232169_))))
                    (___kont232168232169_))
                (___kont232168232169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont232168232169_))
                                            (___kont232168232169_))
                                        (___kont232168232169_))))
                                (___kont232168232169_))))
                        (___kont232168232169_))
                    (___kont232168232169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232168232169_))
                                                (___kont232168232169_))
                                            (___kont232168232169_))))
                                    (___kont232168232169_))))
                            (___kont232168232169_))
                        (___kont232168232169_))
                    (___kont232168232169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232168232169_))))
                                            (___kont232168232169_))))
                                    (___kont232168232169_))
                                (___kont232168232169_))
                            (___kont232168232169_))))
                    (___kont232168232169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232168232169_))
                                                (___kont232168232169_))
                                            (___kont232168232169_))
                                        (___kont232168232169_))
                                    (___kont232168232169_))
                                (___kont232168232169_))))
                        (___kont232168232169_))
                    (___kont232168232169_))
                (___kont232168232169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont232168232169_))))
                                        (___kont232168232169_))
                                    (___kont232168232169_))))
                            (___kont232168232169_))
                        (___kont232168232169_))
                    (___kont232168232169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232168232169_))))
                                            (___kont232168232169_))
                                        (___kont232168232169_))))
                                (___kont232168232169_))
                            (___kont232168232169_))
                        (___kont232168232169_))))
                (___kont232168232169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont232168232169_))
                                            (___kont232168232169_))
                                        (___kont232168232169_))))
                                (___kont232168232169_))))
                        (___kont232168232169_))))
                (___kont232168232169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont232168232169_))
                                            (___kont232168232169_))
                                        (___kont232168232169_))))
                                (___kont232168232169_))))
                        (___kont232168232169_))
                    (___kont232168232169_))
                (___kont232168232169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont232168232169_))
                                            (___kont232168232169_))))
                                    (___kont232168232169_))))
                            (___kont232168232169_))))
                    (___kont232168232169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232168232169_))
                                                (___kont232168232169_))
                                            (___kont232168232169_))))
                                    (___kont232168232169_))))
                            (___kont232168232169_))
                        (___kont232168232169_))))
                (___kont232168232169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont232168232169_))))
                                        (___kont232168232169_))))
                                (___kont232168232169_))
                            (___kont232168232169_))
                        (___kont232168232169_))))
                (___kont232168232169_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx221352_ _id221353_ _clauses221354_ _gensym?221355_)
        (let _lp221357_ ((_rest221359_ _clauses221354_)
                         (_ids221360_ '())
                         (_impls221361_ '())
                         (_clauses221362_ '()))
          (let* ((_rest221363221371_ _rest221359_)
                 (_else221365221379_
                  (lambda ()
                    (values (reverse _ids221360_)
                            (reverse _impls221361_)
                            (reverse _clauses221362_))))
                 (_K221367221584_
                  (lambda (_rest221382_ _clause221383_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause221383_))
                        (let ((__tmp233243
                               (let ()
                                 (declare (not safe))
                                 (cons _clause221383_ _clauses221362_))))
                          (declare (not safe))
                          (_lp221357_
                           _rest221382_
                           _ids221360_
                           _impls221361_
                           __tmp233243))
                        (let* ((_g221385221396_
                                (lambda (_g221386221393_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g221386221393_))))
                               (_g221384221581_
                                (lambda (_g221386221399_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g221386221399_))
                                      (let ((_e221391221401_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g221386221399_))))
                                        (let ((_hd221390221404_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221391221401_)))
                                              (_tl221389221406_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221391221401_))))
                                          ((lambda (_L221409_ _L221410_)
                                             (let* ((_id221427_
                                                     (let ((__tmp233190
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id221353_)))
                                                           (__tmp233189
                                                            (length _clauses221362_))
                                                           (__tmp233188
                                                            (if _gensym?221355_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp233190
                                                        '"__"
                                                        __tmp233189
                                                        __tmp233188)))
                                                    (_id221429_
                                                     (let ((__tmp233191
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx221352_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id221427_
                                                        __tmp233191)))
                                                    (_impl221431_
                                                     (let ((__tmp233192
                                                            (let ((__tmp233194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp233193
                           (let ()
                             (declare (not safe))
                             (cons _L221410_ _L221409_))))
                      (declare (not safe))
                      (cons __tmp233194 __tmp233193))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp233192 _stx221352_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause221578_
                                                     (let* ((___stx232548232549_
                                                             _L221410_)
                                                            (_g221435221463_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx232548232549_)))))
               (let ((___kont232550232551_
                      (lambda (_L221557_)
                        (let ((__tmp233195
                               (let ((__tmp233196
                                      (let ((__tmp233197
                                             (let ((__tmp233198
                                                    (let ((__tmp233204
                                                           (let ((__tmp233205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id221429_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp233205)))
                  (__tmp233199
                   (let ((__tmp233200
                          (lambda (_g221567221570_ _g221568221572_)
                            (let ((__tmp233201
                                   (let ((__tmp233203
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp233202
                                          (let ()
                                            (declare (not safe))
                                            (cons _g221567221570_ '()))))
                                     (declare (not safe))
                                     (cons __tmp233203 __tmp233202))))
                              (declare (not safe))
                              (cons __tmp233201 _g221568221572_)))))
                     (declare (not safe))
                     (foldr1 __tmp233200 '() _L221557_))))
              (declare (not safe))
              (cons __tmp233204 __tmp233199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp233198))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp233197
                                         _stx221352_))))
                                 (declare (not safe))
                                 (cons __tmp233196 '()))))
                          (declare (not safe))
                          (cons _L221410_ __tmp233195))))
                     (___kont232554232555_
                      (lambda (_L221508_ _L221509_)
                        (let ((__tmp233206
                               (let ((__tmp233207
                                      (let ((__tmp233208
                                             (let ((__tmp233209
                                                    (let ((__tmp233223
                                                           (let ((__tmp233224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp233224)))
                  (__tmp233210
                   (let ((__tmp233221
                          (let ((__tmp233222
                                 (let ()
                                   (declare (not safe))
                                   (cons _id221429_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp233222)))
                         (__tmp233211
                          (let ((__tmp233217
                                 (let ((__tmp233218
                                        (let ((__tmp233220
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp233219
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L221508_ '()))))
                                          (declare (not safe))
                                          (cons __tmp233220 __tmp233219))))
                                   (declare (not safe))
                                   (cons __tmp233218 '())))
                                (__tmp233212
                                 (let ((__tmp233213
                                        (lambda (_g221520221523_
                                                 _g221521221525_)
                                          (let ((__tmp233214
                                                 (let ((__tmp233216
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp233215
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g221520221523_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp233216
                                                         __tmp233215))))
                                            (declare (not safe))
                                            (cons __tmp233214
                                                  _g221521221525_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp233213 '() _L221509_))))
                            (declare (not safe))
                            (foldr1 cons __tmp233217 __tmp233212))))
                     (declare (not safe))
                     (cons __tmp233221 __tmp233211))))
              (declare (not safe))
              (cons __tmp233223 __tmp233210))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp233209))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp233208
                                         _stx221352_))))
                                 (declare (not safe))
                                 (cons __tmp233207 '()))))
                          (declare (not safe))
                          (cons _L221410_ __tmp233206))))
                     (___kont232558232559_
                      (lambda (_L221468_)
                        (let ((__tmp233225
                               (let ((__tmp233226
                                      (let ((__tmp233227
                                             (let ((__tmp233228
                                                    (let ((__tmp233236
                                                           (let ((__tmp233237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp233237)))
                  (__tmp233229
                   (let ((__tmp233234
                          (let ((__tmp233235
                                 (let ()
                                   (declare (not safe))
                                   (cons _id221429_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp233235)))
                         (__tmp233230
                          (let ((__tmp233231
                                 (let ((__tmp233233
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp233232
                                        (let ()
                                          (declare (not safe))
                                          (cons _L221468_ '()))))
                                   (declare (not safe))
                                   (cons __tmp233233 __tmp233232))))
                            (declare (not safe))
                            (cons __tmp233231 '()))))
                     (declare (not safe))
                     (cons __tmp233234 __tmp233230))))
              (declare (not safe))
              (cons __tmp233236 __tmp233229))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp233228))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp233227
                                         _stx221352_))))
                                 (declare (not safe))
                                 (cons __tmp233226 '()))))
                          (declare (not safe))
                          (cons _L221410_ __tmp233225)))))
                 (let* ((___match232573232574_
                         (lambda (___splice232556232557_
                                  _target221449221484_
                                  _tl221451221486_)
                           (letrec ((_loop221452221489_
                                     (lambda (_hd221450221492_
                                              _arg221456221494_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd221450221492_))
                                           (let ((_e221453221497_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd221450221492_))))
                                             (let ((_lp-tl221455221502_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e221453221497_)))
                                                   (_lp-hd221454221500_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e221453221497_))))
                                               (let ((__tmp233238
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd221454221500_
                                                              _arg221456221494_))))
                                                 (declare (not safe))
                                                 (_loop221452221489_
                                                  _lp-tl221455221502_
                                                  __tmp233238))))
                                           (let ((_arg221457221505_
                                                  (reverse _arg221456221494_)))
                                             (___kont232554232555_
                                              _tl221451221486_
                                              _arg221457221505_))))))
                             (let ()
                               (declare (not safe))
                               (_loop221452221489_
                                _target221449221484_
                                '())))))
                        (___match232567232568_
                         (lambda (___splice232552232553_
                                  _target221438221533_
                                  _tl221440221535_)
                           (letrec ((_loop221441221538_
                                     (lambda (_hd221439221541_
                                              _arg221445221543_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd221439221541_))
                                           (let ((_e221442221546_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd221439221541_))))
                                             (let ((_lp-tl221444221551_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e221442221546_)))
                                                   (_lp-hd221443221549_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e221442221546_))))
                                               (let ((__tmp233239
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd221443221549_
                                                              _arg221445221543_))))
                                                 (declare (not safe))
                                                 (_loop221441221538_
                                                  _lp-tl221444221551_
                                                  __tmp233239))))
                                           (let ((_arg221446221554_
                                                  (reverse _arg221445221543_)))
                                             (___kont232550232551_
                                              _arg221446221554_))))))
                             (let ()
                               (declare (not safe))
                               (_loop221441221538_
                                _target221438221533_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx232548232549_))
                       (let ((___splice232552232553_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx232548232549_
                                 '0))))
                         (let ((_tl221440221535_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice232552232553_ '1)))
                               (_target221438221533_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice232552232553_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl221440221535_))
                               (___match232567232568_
                                ___splice232552232553_
                                _target221438221533_
                                _tl221440221535_)
                               (___match232573232574_
                                ___splice232552232553_
                                _target221438221533_
                                _tl221440221535_))))
                       (___kont232558232559_ ___stx232548232549_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp233242
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id221429_
                                                              _ids221360_)))
                                                     (__tmp233241
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl221431_
                                                              _impls221361_)))
                                                     (__tmp233240
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause221578_
                                                              _clauses221362_))))
                                                 (declare (not safe))
                                                 (_lp221357_
                                                  _rest221382_
                                                  __tmp233242
                                                  __tmp233241
                                                  __tmp233240))))
                                           _tl221389221406_
                                           _hd221390221404_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g221385221396_ _g221386221399_))))))
                          (declare (not safe))
                          (_g221384221581_ _clause221383_))))))
            (if (let () (declare (not safe)) (##pair? _rest221363221371_))
                (let ((_hd221368221587_
                       (let ()
                         (declare (not safe))
                         (##car _rest221363221371_)))
                      (_tl221369221589_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest221363221371_))))
                  (let* ((_clause221592_ _hd221368221587_)
                         (_rest221594_ _tl221369221589_))
                    (declare (not safe))
                    (_K221367221584_ _rest221594_ _clause221592_)))
                (let () (declare (not safe)) (_else221365221379_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx221599_ _id221600_ _clauses221601_)
        (let ((_gensym?221603_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx221599_
           _id221600_
           _clauses221601_
           _gensym?221603_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g233245_
        (let ((_g233244_ (let () (declare (not safe)) (##length _g233245_))))
          (cond ((let () (declare (not safe)) (##fx= _g233244_ 3))
                 (apply (lambda (_stx221599_ _id221600_ _clauses221601_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx221599_
                             _id221600_
                             _clauses221601_)))
                        _g233245_))
                ((let () (declare (not safe)) (##fx= _g233244_ 4))
                 (apply (lambda (_stx221605_
                                 _id221606_
                                 _clauses221607_
                                 _gensym?221608_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx221605_
                             _id221606_
                             _clauses221607_
                             _gensym?221608_)))
                        _g233245_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g233245_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx220629_)
        (letrec ((_case-lambda-clause-def220631_
                  (lambda (_id221348_ _impl221349_)
                    (let ((__tmp233246
                           (let ((__tmp233247
                                  (let ((__tmp233250
                                         (let ()
                                           (declare (not safe))
                                           (cons _id221348_ '())))
                                        (__tmp233248
                                         (let ((__tmp233249
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl221349_))))
                                           (declare (not safe))
                                           (cons __tmp233249 '()))))
                                    (declare (not safe))
                                    (cons __tmp233250 __tmp233248))))
                             (declare (not safe))
                             (cons '%#define-values __tmp233247))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp233246 _stx220629_))))
                 (_opt-lambda-dispatch-name220632_
                  (lambda (_id221344_)
                    (if (uninterned-symbol? _id221344_)
                        (let ((_str221346_ (symbol->string _id221344_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str221346_))
                              '"%"
                              _id221344_))
                        _id221344_)))
                 (_kw-lambda-dispatch-name220633_
                  (lambda (_id221339_ _name221340_)
                    (if (uninterned-symbol? _id221339_)
                        (let ((_str221342_ (symbol->string _id221339_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str221342_))
                              _name221340_
                              _id221339_))
                        _id221339_))))
          (let* ((___stx232596232597_ _stx220629_)
                 (_g220638220697_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx232596232597_)))))
            (let ((___kont232598232599_
                   (lambda (_L221248_ _L221249_)
                     (let* ((___stx232576232577_ _L221248_)
                            (_g221266221280_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx232576232577_)))))
                       (let ((___kont232578232579_
                              (lambda (_L221324_) _stx220629_))
                             (___kont232580232581_
                              (lambda (_L221293_)
                                (let ((_g233251_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx220629_
                                          _L221249_
                                          _L221293_))))
                                  (begin
                                    (let ((_g233252_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g233251_)
                                                 (##vector-length _g233251_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g233252_ 3)))
                                          (error "Context expects 3 values"
                                                 _g233252_)))
                                    (let ((_ids221303_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g233251_ 0)))
                                          (_impls221304_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g233251_ 1)))
                                          (_clauses221305_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g233251_ 2))))
                                      (let* ((_g233253_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids221303_))
                                             (_defs221308_
                                              (map _case-lambda-clause-def220631_
                                                   _ids221303_
                                                   _impls221304_)))
                                        (let ((__tmp233255
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L221249_)))
                                              (__tmp233254
                                               (map gxc#identifier-symbol
                                                    _ids221303_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp233255
                                           '" => "
                                           __tmp233254))
                                        (let ((__tmp233256
                                               (let ((__tmp233257
                                                      (let ((__tmp233258
                                                             (let ((__tmp233259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp233260
                                   (let ((__tmp233261
                                          (let ((__tmp233266
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L221249_ '())))
                                                (__tmp233262
                                                 (let ((__tmp233263
                                                        (let ((__tmp233265
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses221305_)))
                      (__tmp233264
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp233265 __tmp233264))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp233263 '()))))
                                            (declare (not safe))
                                            (cons __tmp233266 __tmp233262))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp233261))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp233260
                               _stx220629_))))
                       (declare (not safe))
                       (cons __tmp233259 '()))))
                (declare (not safe))
                (foldr1 cons __tmp233258 _defs221308_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp233257))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp233256
                                           _stx220629_)))))))))
                         (let ((___match232587232588_
                                (lambda (_e221271221316_
                                         _hd221270221319_
                                         _tl221269221321_)
                                  (let ((_L221324_ _tl221269221321_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L221324_))
                                        (___kont232578232579_ _L221324_)
                                        (___kont232580232581_
                                         _tl221269221321_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx232576232577_))
                               (let ((_e221271221316_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx232576232577_))))
                                 (let ((_tl221269221321_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e221271221316_)))
                                       (_hd221270221319_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e221271221316_))))
                                   (___match232587232588_
                                    _e221271221316_
                                    _hd221270221319_
                                    _tl221269221321_)))
                               (let ()
                                 (declare (not safe))
                                 (_g221266221280_))))))))
                  (___kont232600232601_
                   (lambda (_L221066_ _L221067_)
                     (let* ((_g221083221113_
                             (lambda (_g221084221110_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g221084221110_))))
                            (_g221082221208_
                             (lambda (_g221084221116_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g221084221116_))
                                   (let ((_e221090221118_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g221084221116_))))
                                     (let ((_hd221089221121_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e221090221118_)))
                                           (_tl221088221123_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e221090221118_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl221088221123_))
                                           (let ((_e221093221126_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl221088221123_))))
                                             (let ((_hd221092221129_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e221093221126_)))
                                                   (_tl221091221131_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e221093221126_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd221092221129_))
                                                   (let ((_e221096221134_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd221092221129_))))
                                                     (let ((_hd221095221137_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e221096221134_)))
                                                           (_tl221094221139_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e221096221134_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd221095221137_))
                                                           (let ((_e221099221142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd221095221137_))))
                     (let ((_hd221098221145_
                            (let ()
                              (declare (not safe))
                              (##car _e221099221142_)))
                           (_tl221097221147_
                            (let ()
                              (declare (not safe))
                              (##cdr _e221099221142_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd221098221145_))
                           (let ((_e221102221150_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd221098221145_))))
                             (let ((_hd221101221153_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e221102221150_)))
                                   (_tl221100221155_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e221102221150_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl221100221155_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl221097221147_))
                                       (let ((_e221105221158_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl221097221147_))))
                                         (let ((_hd221104221161_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e221105221158_)))
                                               (_tl221103221163_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e221105221158_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl221103221163_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl221094221139_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl221091221131_))
                                                       (let ((_e221108221166_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl221091221131_))))
                 (let ((_hd221107221169_
                        (let () (declare (not safe)) (##car _e221108221166_)))
                       (_tl221106221171_
                        (let () (declare (not safe)) (##cdr _e221108221166_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl221106221171_))
                       ((lambda (_L221174_ _L221175_ _L221176_)
                          (let* ((_lambda-id221200_
                                  (let ((__tmp233269
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L221067_)))
                                        (__tmp233267
                                         (let ((__tmp233268
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L221176_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name220632_
                                            __tmp233268))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp233269
                                     '"__"
                                     __tmp233267)))
                                 (_lambda-id221202_
                                  (let ((__tmp233270
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx220629_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id221200_
                                     __tmp233270)))
                                 (_g233271_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id221202_)))
                                 (_new-case-lambda-expr221205_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L221174_
                                     _L221176_
                                     _lambda-id221202_))))
                            (let ((__tmp233273
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L221067_)))
                                  (__tmp233272
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id221202_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp233273
                               '" => "
                               __tmp233272))
                            (let ((__tmp233274
                                   (let ((__tmp233275
                                          (let ((__tmp233283
                                                 (let ((__tmp233284
                                                        (let ((__tmp233285
                                                               (let ((__tmp233288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id221202_ '())))
                             (__tmp233286
                              (let ((__tmp233287
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L221175_))))
                                (declare (not safe))
                                (cons __tmp233287 '()))))
                         (declare (not safe))
                         (cons __tmp233288 __tmp233286))))
                  (declare (not safe))
                  (cons '%#define-values __tmp233285))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp233284
                                                    _stx220629_)))
                                                (__tmp233276
                                                 (let ((__tmp233277
                                                        (let ((__tmp233278
                                                               (let ((__tmp233279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp233280
                                     (let ((__tmp233282
                                            (let ()
                                              (declare (not safe))
                                              (cons _L221067_ '())))
                                           (__tmp233281
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr221205_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp233282 __tmp233281))))
                                (declare (not safe))
                                (cons '%#define-values __tmp233280))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp233279 _stx220629_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp233278))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp233277 '()))))
                                            (declare (not safe))
                                            (cons __tmp233283 __tmp233276))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp233275))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp233274
                               _stx220629_))))
                        _hd221107221169_
                        _hd221104221161_
                        _hd221101221153_)
                       (let ()
                         (declare (not safe))
                         (_g221083221113_ _g221084221116_)))))
               (let () (declare (not safe)) (_g221083221113_ _g221084221116_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g221083221113_
                                                      _g221084221116_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g221083221113_
                                                  _g221084221116_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g221083221113_ _g221084221116_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g221083221113_ _g221084221116_)))))
                           (let ()
                             (declare (not safe))
                             (_g221083221113_ _g221084221116_)))))
                   (let ()
                     (declare (not safe))
                     (_g221083221113_ _g221084221116_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g221083221113_
                                                      _g221084221116_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g221083221113_
                                              _g221084221116_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g221083221113_ _g221084221116_))))))
                       (declare (not safe))
                       (_g221082221208_ _L221066_))))
                  (___kont232602232603_
                   (lambda (_L220780_ _L220781_)
                     (let* ((_g220797220850_
                             (lambda (_g220798220847_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g220798220847_))))
                            (_g220796221026_
                             (lambda (_g220798220853_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g220798220853_))
                                   (let ((_e220806220855_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g220798220853_))))
                                     (let ((_hd220805220858_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e220806220855_)))
                                           (_tl220804220860_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e220806220855_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl220804220860_))
                                           (let ((_e220809220863_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl220804220860_))))
                                             (let ((_hd220808220866_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e220809220863_)))
                                                   (_tl220807220868_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e220809220863_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd220808220866_))
                                                   (let ((_e220812220871_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd220808220866_))))
                                                     (let ((_hd220811220874_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e220812220871_)))
                                                           (_tl220810220876_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e220812220871_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd220811220874_))
                                                           (let ((_e220815220879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd220811220874_))))
                     (let ((_hd220814220882_
                            (let ()
                              (declare (not safe))
                              (##car _e220815220879_)))
                           (_tl220813220884_
                            (let ()
                              (declare (not safe))
                              (##cdr _e220815220879_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd220814220882_))
                           (let ((_e220818220887_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd220814220882_))))
                             (let ((_hd220817220890_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e220818220887_)))
                                   (_tl220816220892_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e220818220887_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl220816220892_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl220813220884_))
                                       (let ((_e220821220895_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl220813220884_))))
                                         (let ((_hd220820220898_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e220821220895_)))
                                               (_tl220819220900_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e220821220895_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd220820220898_))
                                               (let ((_e220824220903_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd220820220898_))))
                                                 (let ((_hd220823220906_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e220824220903_)))
                                                       (_tl220822220908_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e220824220903_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl220822220908_))
                                                       (let ((_e220827220911_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl220822220908_))))
                 (let ((_hd220826220914_
                        (let () (declare (not safe)) (##car _e220827220911_)))
                       (_tl220825220916_
                        (let () (declare (not safe)) (##cdr _e220827220911_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd220826220914_))
                       (let ((_e220830220919_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd220826220914_))))
                         (let ((_hd220829220922_
                                (let ()
                                  (declare (not safe))
                                  (##car _e220830220919_)))
                               (_tl220828220924_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e220830220919_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd220829220922_))
                               (let ((_e220833220927_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd220829220922_))))
                                 (let ((_hd220832220930_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e220833220927_)))
                                       (_tl220831220932_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e220833220927_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd220832220930_))
                                       (let ((_e220836220935_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd220832220930_))))
                                         (let ((_hd220835220938_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e220836220935_)))
                                               (_tl220834220940_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e220836220935_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl220834220940_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl220831220932_))
                                                   (let ((_e220839220943_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl220831220932_))))
                                                     (let ((_hd220838220946_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e220839220943_)))
                                                           (_tl220837220948_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e220839220943_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl220837220948_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl220828220924_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl220825220916_))
                           (let ((_e220842220951_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl220825220916_))))
                             (let ((_hd220841220954_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e220842220951_)))
                                   (_tl220840220956_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e220842220951_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl220840220956_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl220819220900_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl220810220876_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl220807220868_))
                                               (let ((_e220845220959_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl220807220868_))))
                                                 (let ((_hd220844220962_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e220845220959_)))
                                                       (_tl220843220964_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e220845220959_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl220843220964_))
                                                       ((lambda (_L220967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L220968_
                         _L220969_
                         _L220970_
                         _L220971_)
                  (let* ((_get-kws-id221011_
                          (let ((__tmp233291
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L220781_)))
                                (__tmp233289
                                 (let ((__tmp233290
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L220971_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name220633_
                                    __tmp233290
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp233291 '"__" __tmp233289)))
                         (_get-kws-id221013_
                          (let ((__tmp233292
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx220629_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id221011_
                             __tmp233292)))
                         (_main-id221015_
                          (let ((__tmp233295
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L220781_)))
                                (__tmp233293
                                 (let ((__tmp233294
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L220970_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name220633_
                                    __tmp233294
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp233295 '"__" __tmp233293)))
                         (_main-id221017_
                          (let ((__tmp233296
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx220629_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id221015_
                             __tmp233296)))
                         (_g233297_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id221013_)))
                         (_g233298_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id221017_)))
                         (_new-kw-dispatch221021_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L220967_
                             _L220971_
                             _get-kws-id221013_)))
                         (_new-get-kws221023_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L220968_
                             _L220970_
                             _main-id221017_))))
                    (let ((__tmp233301
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L220781_)))
                          (__tmp233300
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id221013_)))
                          (__tmp233299
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id221017_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp233301
                       '" => "
                       __tmp233300
                       '" => "
                       __tmp233299))
                    (let ((__tmp233302
                           (let ((__tmp233303
                                  (let ((__tmp233316
                                         (let ((__tmp233317
                                                (let ((__tmp233318
                                                       (let ((__tmp233319
                                                              (let ((__tmp233321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id221017_ '())))
                            (__tmp233320
                             (let ()
                               (declare (not safe))
                               (cons _L220969_ '()))))
                        (declare (not safe))
                        (cons __tmp233321 __tmp233320))))
                 (declare (not safe))
                 (cons '%#define-values __tmp233319))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp233318
                                                   _stx220629_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp233317)))
                                        (__tmp233304
                                         (let ((__tmp233311
                                                (let ((__tmp233312
                                                       (let ((__tmp233313
                                                              (let ((__tmp233315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id221013_ '())))
                            (__tmp233314
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws221023_ '()))))
                        (declare (not safe))
                        (cons __tmp233315 __tmp233314))))
                 (declare (not safe))
                 (cons '%#define-values __tmp233313))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp233312
                                                   _stx220629_)))
                                               (__tmp233305
                                                (let ((__tmp233306
                                                       (let ((__tmp233307
                                                              (let ((__tmp233308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp233310
                                    (let ()
                                      (declare (not safe))
                                      (cons _L220781_ '())))
                                   (__tmp233309
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch221021_ '()))))
                               (declare (not safe))
                               (cons __tmp233310 __tmp233309))))
                        (declare (not safe))
                        (cons '%#define-values __tmp233308))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp233307 _stx220629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp233306 '()))))
                                           (declare (not safe))
                                           (cons __tmp233311 __tmp233305))))
                                    (declare (not safe))
                                    (cons __tmp233316 __tmp233304))))
                             (declare (not safe))
                             (cons '%#begin __tmp233303))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp233302 _stx220629_))))
                _hd220844220962_
                _hd220841220954_
                _hd220838220946_
                _hd220835220938_
                _hd220817220890_)
               (let ()
                 (declare (not safe))
                 (_g220797220850_ _g220798220853_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g220797220850_
                                                  _g220798220853_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g220797220850_
                                              _g220798220853_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g220797220850_ _g220798220853_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g220797220850_ _g220798220853_)))))
                           (let ()
                             (declare (not safe))
                             (_g220797220850_ _g220798220853_)))
                       (let ()
                         (declare (not safe))
                         (_g220797220850_ _g220798220853_)))
                   (let ()
                     (declare (not safe))
                     (_g220797220850_ _g220798220853_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g220797220850_
                                                      _g220798220853_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g220797220850_
                                                  _g220798220853_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g220797220850_ _g220798220853_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g220797220850_ _g220798220853_)))))
                       (let ()
                         (declare (not safe))
                         (_g220797220850_ _g220798220853_)))))
               (let ()
                 (declare (not safe))
                 (_g220797220850_ _g220798220853_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g220797220850_
                                                  _g220798220853_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g220797220850_ _g220798220853_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g220797220850_ _g220798220853_)))))
                           (let ()
                             (declare (not safe))
                             (_g220797220850_ _g220798220853_)))))
                   (let ()
                     (declare (not safe))
                     (_g220797220850_ _g220798220853_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g220797220850_
                                                      _g220798220853_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g220797220850_
                                              _g220798220853_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g220797220850_ _g220798220853_))))))
                       (declare (not safe))
                       (_g220796221026_ _L220780_))))
                  (___kont232604232605_
                   (lambda (_L220726_ _L220727_)
                     (let ((__tmp233322
                            (let ((__tmp233323
                                   (let ((__tmp233324
                                          (let ((__tmp233325
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L220726_))))
                                            (declare (not safe))
                                            (cons __tmp233325 '()))))
                                     (declare (not safe))
                                     (cons _L220727_ __tmp233324))))
                              (declare (not safe))
                              (cons '%#define-values __tmp233323))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp233322 _stx220629_)))))
              (let* ((___match232689232690_
                      (lambda (_e220672220748_
                               _hd220671220751_
                               _tl220670220753_
                               _e220675220756_
                               _hd220674220759_
                               _tl220673220761_
                               _e220678220764_
                               _hd220677220767_
                               _tl220676220769_
                               _e220681220772_
                               _hd220680220775_
                               _tl220679220777_)
                        (let ((_L220780_ _hd220680220775_)
                              (_L220781_ _hd220677220767_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L220781_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L220780_)))
                              (___kont232602232603_ _L220780_ _L220781_)
                              (___kont232604232605_
                               _hd220680220775_
                               _hd220674220759_)))))
                     (___match232661232662_
                      (lambda (_e220658221034_
                               _hd220657221037_
                               _tl220656221039_
                               _e220661221042_
                               _hd220660221045_
                               _tl220659221047_
                               _e220664221050_
                               _hd220663221053_
                               _tl220662221055_
                               _e220667221058_
                               _hd220666221061_
                               _tl220665221063_)
                        (let ((_L221066_ _hd220666221061_)
                              (_L221067_ _hd220663221053_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L221067_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L221066_)))
                              (___kont232600232601_ _L221066_ _L221067_)
                              (___match232689232690_
                               _e220658221034_
                               _hd220657221037_
                               _tl220656221039_
                               _e220661221042_
                               _hd220660221045_
                               _tl220659221047_
                               _e220664221050_
                               _hd220663221053_
                               _tl220662221055_
                               _e220667221058_
                               _hd220666221061_
                               _tl220665221063_)))))
                     (___match232633232634_
                      (lambda (_e220644221216_
                               _hd220643221219_
                               _tl220642221221_
                               _e220647221224_
                               _hd220646221227_
                               _tl220645221229_
                               _e220650221232_
                               _hd220649221235_
                               _tl220648221237_
                               _e220653221240_
                               _hd220652221243_
                               _tl220651221245_)
                        (let ((_L221248_ _hd220652221243_)
                              (_L221249_ _hd220649221235_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L221249_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L221248_)))
                              (___kont232598232599_ _L221248_ _L221249_)
                              (___match232661232662_
                               _e220644221216_
                               _hd220643221219_
                               _tl220642221221_
                               _e220647221224_
                               _hd220646221227_
                               _tl220645221229_
                               _e220650221232_
                               _hd220649221235_
                               _tl220648221237_
                               _e220653221240_
                               _hd220652221243_
                               _tl220651221245_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx232596232597_))
                    (let ((_e220644221216_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx232596232597_))))
                      (let ((_tl220642221221_
                             (let ()
                               (declare (not safe))
                               (##cdr _e220644221216_)))
                            (_hd220643221219_
                             (let ()
                               (declare (not safe))
                               (##car _e220644221216_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl220642221221_))
                            (let ((_e220647221224_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl220642221221_))))
                              (let ((_tl220645221229_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e220647221224_)))
                                    (_hd220646221227_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e220647221224_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd220646221227_))
                                    (let ((_e220650221232_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd220646221227_))))
                                      (let ((_tl220648221237_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e220650221232_)))
                                            (_hd220649221235_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e220650221232_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl220648221237_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl220645221229_))
                                                (let ((_e220653221240_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl220645221229_))))
                                                  (let ((_tl220651221245_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e220653221240_)))
                                                        (_hd220652221243_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e220653221240_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl220651221245_))
                                                        (___match232633232634_
                                                         _e220644221216_
                                                         _hd220643221219_
                                                         _tl220642221221_
                                                         _e220647221224_
                                                         _hd220646221227_
                                                         _tl220645221229_
                                                         _e220650221232_
                                                         _hd220649221235_
                                                         _tl220648221237_
                                                         _e220653221240_
                                                         _hd220652221243_
                                                         _tl220651221245_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g220638220697_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220638220697_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl220645221229_))
                                                (let ((_e220692220718_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl220645221229_))))
                                                  (let ((_tl220690220723_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e220692220718_)))
                                                        (_hd220691220721_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e220692220718_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl220690220723_))
                                                        (___kont232604232605_
                                                         _hd220691220721_
                                                         _hd220646221227_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g220638220697_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220638220697_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl220645221229_))
                                        (let ((_e220692220718_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl220645221229_))))
                                          (let ((_tl220690220723_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e220692220718_)))
                                                (_hd220691220721_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e220692220718_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl220690220723_))
                                                (___kont232604232605_
                                                 _hd220691220721_
                                                 _hd220646221227_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220638220697_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g220638220697_))))))
                            (let () (declare (not safe)) (_g220638220697_)))))
                    (let () (declare (not safe)) (_g220638220697_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx219561_)
        (letrec* ((_bind-e__230992230993_
                   (lambda (_id220613_ _expr220614_ _compile?220615_)
                     (let ((__tmp233328
                            (let ()
                              (declare (not safe))
                              (cons _id220613_ '())))
                           (__tmp233326
                            (let ((__tmp233327
                                   (if _compile?220615_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr220614_))
                                       _expr220614_)))
                              (declare (not safe))
                              (cons __tmp233327 '()))))
                       (declare (not safe))
                       (cons __tmp233328 __tmp233326))))
                  (_bind-e__0__230994230995_
                   (lambda (_id220620_ _expr220621_)
                     (let ((_compile?220623_ '#t))
                       (declare (not safe))
                       (_bind-e__230992230993_
                        _id220620_
                        _expr220621_
                        _compile?220623_))))
                  (_bind-e219563_
                   (lambda _g233330_
                     (let ((_g233329_
                            (let ()
                              (declare (not safe))
                              (##length _g233330_))))
                       (cond ((let () (declare (not safe)) (##fx= _g233329_ 2))
                              (apply (lambda (_id220620_ _expr220621_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__230994230995_
                                          _id220620_
                                          _expr220621_)))
                                     _g233330_))
                             ((let () (declare (not safe)) (##fx= _g233329_ 3))
                              (apply (lambda (_id220625_
                                              _expr220626_
                                              _compile?220627_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__230992230993_
                                          _id220625_
                                          _expr220626_
                                          _compile?220627_)))
                                     _g233330_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g233330_))))))
                  (_compile-bindings219564_
                   (lambda (_bindings220197_)
                     (let _lp220199_ ((_rest220201_ _bindings220197_)
                                      (_lift1220202_ '())
                                      (_lift2220203_ '())
                                      (_bind220204_ '()))
                       (let* ((_rest220205220213_ _rest220201_)
                              (_else220207220221_
                               (lambda ()
                                 (values (reverse _lift1220202_)
                                         (reverse _lift2220203_)
                                         (reverse _bind220204_))))
                              (_K220209220600_
                               (lambda (_rest220224_ _hd220225_)
                                 (let* ((___stx232732232733_ _hd220225_)
                                        (_g220229220265_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx232732232733_)))))
                                   (let ((___kont232734232735_
                                          (lambda (_L220507_ _L220508_)
                                            (let* ((___stx232712232713_
                                                    _L220507_)
                                                   (_g220523220537_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx232712232713_)))))
                                              (let ((___kont232714232715_
                                                     (lambda (_L220585_)
                                                       (let ((__tmp233331
                                                              (let ((__tmp233332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__230992230993_
                                _L220508_
                                _L220507_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp233332 _bind220204_))))
                 (declare (not safe))
                 (_lp220199_
                  _rest220224_
                  _lift1220202_
                  _lift2220203_
                  __tmp233331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232716232717_
                                                     (lambda (_L220550_)
                                                       (let ((_g233333_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx219561_
                         _L220508_
                         _L220550_
                         '#t))))
                 (begin
                   (let ((_g233334_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g233333_)
                                (##vector-length _g233333_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g233334_ 3)))
                         (error "Context expects 3 values" _g233334_)))
                   (let ((_ids220560_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g233333_ 0)))
                         (_impls220561_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g233333_ 1)))
                         (_clauses220562_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g233333_ 2))))
                     (let* ((_g233335_
                             (for-each gx#core-bind-runtime! _ids220560_))
                            (_xbind220565_
                             (map _bind-e219563_ _ids220560_ _impls220561_))
                            (_expr*220567_
                             (let ((__tmp233337
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses220562_)))
                                   (__tmp233336
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp233337
                                __tmp233336)))
                            (_bind*220569_
                             (let ()
                               (declare (not safe))
                               (_bind-e__230992230993_
                                _L220508_
                                _expr*220567_
                                '#f))))
                       (let ((__tmp233339
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L220508_)))
                             (__tmp233338
                              (map gxc#identifier-symbol _ids220560_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp233339
                          '" => "
                          __tmp233338))
                       (let ((__tmp233341
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2220203_ _xbind220565_)))
                             (__tmp233340
                              (let ()
                                (declare (not safe))
                                (cons _bind*220569_ _bind220204_))))
                         (declare (not safe))
                         (_lp220199_
                          _rest220224_
                          _lift1220202_
                          __tmp233341
                          __tmp233340)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match232723232724_
                                                       (lambda (_e220528220577_
                                                                _hd220527220580_
                                                                _tl220526220582_)
                                                         (let ((_L220585_
                                                                _tl220526220582_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L220585_))
                       (___kont232714232715_ _L220585_)
                       (___kont232716232717_ _tl220526220582_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx232712232713_))
                                                      (let ((_e220528220577_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx232712232713_))))
                (let ((_tl220526220582_
                       (let () (declare (not safe)) (##cdr _e220528220577_)))
                      (_hd220527220580_
                       (let () (declare (not safe)) (##car _e220528220577_))))
                  (___match232723232724_
                   _e220528220577_
                   _hd220527220580_
                   _tl220526220582_)))
              (let () (declare (not safe)) (_g220523220537_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont232736232737_
                                          (lambda (_L220335_ _L220336_)
                                            (let* ((_g220350220380_
                                                    (lambda (_g220351220377_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g220351220377_))))
                                                   (_g220349220475_
                                                    (lambda (_g220351220383_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g220351220383_))
                                                          (let ((_e220357220385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g220351220383_))))
                    (let ((_hd220356220388_
                           (let ()
                             (declare (not safe))
                             (##car _e220357220385_)))
                          (_tl220355220390_
                           (let ()
                             (declare (not safe))
                             (##cdr _e220357220385_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl220355220390_))
                          (let ((_e220360220393_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl220355220390_))))
                            (let ((_hd220359220396_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e220360220393_)))
                                  (_tl220358220398_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e220360220393_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd220359220396_))
                                  (let ((_e220363220401_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd220359220396_))))
                                    (let ((_hd220362220404_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e220363220401_)))
                                          (_tl220361220406_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e220363220401_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd220362220404_))
                                          (let ((_e220366220409_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd220362220404_))))
                                            (let ((_hd220365220412_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e220366220409_)))
                                                  (_tl220364220414_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e220366220409_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd220365220412_))
                                                  (let ((_e220369220417_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd220365220412_))))
                                                    (let ((_hd220368220420_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e220369220417_)))
                                                          (_tl220367220422_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e220369220417_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl220367220422_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl220364220414_))
                      (let ((_e220372220425_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl220364220414_))))
                        (let ((_hd220371220428_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220372220425_)))
                              (_tl220370220430_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220372220425_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl220370220430_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl220361220406_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220358220398_))
                                      (let ((_e220375220433_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220358220398_))))
                                        (let ((_hd220374220436_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220375220433_)))
                                              (_tl220373220438_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220375220433_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220373220438_))
                                              ((lambda (_L220441_
                                                        _L220442_
                                                        _L220443_)
                                                 (let* ((_lambda-id220467_
                                                         (let ((__tmp233343
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L220336_)))
                       (__tmp233342 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp233343 __tmp233342)))
                (_lambda-id220469_
                 (let ((__tmp233344
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx219561_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id220467_ __tmp233344)))
                (_g233345_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id220469_)))
                (_new-case-lambda-expr220472_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L220441_
                    _L220443_
                    _lambda-id220469_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp233347
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L220336_)))
                                                         (__tmp233346
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id220469_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp233347
                                                      '" => "
                                                      __tmp233346))
                                                   (let ((__tmp233350
                                                          (let ((__tmp233351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__230992230993_
                            _L220336_
                            _new-case-lambda-expr220472_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp233351 _rest220224_)))
                 (__tmp233348
                  (let ((__tmp233349
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__230994230995_
                            _lambda-id220469_
                            _L220442_))))
                    (declare (not safe))
                    (cons __tmp233349 _lift1220202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp220199_
                                                      __tmp233350
                                                      __tmp233348
                                                      _lift2220203_
                                                      _bind220204_))))
                                               _hd220374220436_
                                               _hd220371220428_
                                               _hd220368220420_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220350220380_
                                                 _g220351220383_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220350220380_ _g220351220383_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g220350220380_ _g220351220383_)))
                              (let ()
                                (declare (not safe))
                                (_g220350220380_ _g220351220383_)))))
                      (let ()
                        (declare (not safe))
                        (_g220350220380_ _g220351220383_)))
                  (let ()
                    (declare (not safe))
                    (_g220350220380_ _g220351220383_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g220350220380_
                                                     _g220351220383_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g220350220380_
                                             _g220351220383_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g220350220380_ _g220351220383_)))))
                          (let ()
                            (declare (not safe))
                            (_g220350220380_ _g220351220383_)))))
                  (let ()
                    (declare (not safe))
                    (_g220350220380_ _g220351220383_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g220349220475_ _L220335_))))
                                         (___kont232738232739_
                                          (lambda (_L220286_ _L220287_)
                                            (let ((__tmp233352
                                                   (let ((__tmp233353
                                                          (let ((__tmp233354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp233355
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L220286_))))
                           (declare (not safe))
                           (cons __tmp233355 '()))))
                    (declare (not safe))
                    (cons _L220287_ __tmp233354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp233353
                                                           _bind220204_))))
                                              (declare (not safe))
                                              (_lp220199_
                                               _rest220224_
                                               _lift1220202_
                                               _lift2220203_
                                               __tmp233352)))))
                                     (let* ((___match232783232784_
                                             (lambda (_e220246220311_
                                                      _hd220245220314_
                                                      _tl220244220316_
                                                      _e220249220319_
                                                      _hd220248220322_
                                                      _tl220247220324_
                                                      _e220252220327_
                                                      _hd220251220330_
                                                      _tl220250220332_)
                                               (let ((_L220335_
                                                      _hd220251220330_)
                                                     (_L220336_
                                                      _hd220248220322_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L220336_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L220335_)))
                                                     (___kont232736232737_
                                                      _L220335_
                                                      _L220336_)
                                                     (___kont232738232739_
                                                      _hd220251220330_
                                                      _hd220245220314_)))))
                                            (___match232761232762_
                                             (lambda (_e220235220483_
                                                      _hd220234220486_
                                                      _tl220233220488_
                                                      _e220238220491_
                                                      _hd220237220494_
                                                      _tl220236220496_
                                                      _e220241220499_
                                                      _hd220240220502_
                                                      _tl220239220504_)
                                               (let ((_L220507_
                                                      _hd220240220502_)
                                                     (_L220508_
                                                      _hd220237220494_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L220508_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L220507_)))
                                                     (___kont232734232735_
                                                      _L220507_
                                                      _L220508_)
                                                     (___match232783232784_
                                                      _e220235220483_
                                                      _hd220234220486_
                                                      _tl220233220488_
                                                      _e220238220491_
                                                      _hd220237220494_
                                                      _tl220236220496_
                                                      _e220241220499_
                                                      _hd220240220502_
                                                      _tl220239220504_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx232732232733_))
                                           (let ((_e220235220483_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx232732232733_))))
                                             (let ((_tl220233220488_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e220235220483_)))
                                                   (_hd220234220486_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e220235220483_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd220234220486_))
                                                   (let ((_e220238220491_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd220234220486_))))
                                                     (let ((_tl220236220496_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e220238220491_)))
                                                           (_hd220237220494_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e220238220491_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl220236220496_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl220233220488_))
                       (let ((_e220241220499_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl220233220488_))))
                         (let ((_tl220239220504_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e220241220499_)))
                               (_hd220240220502_
                                (let ()
                                  (declare (not safe))
                                  (##car _e220241220499_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl220239220504_))
                               (___match232761232762_
                                _e220235220483_
                                _hd220234220486_
                                _tl220233220488_
                                _e220238220491_
                                _hd220237220494_
                                _tl220236220496_
                                _e220241220499_
                                _hd220240220502_
                                _tl220239220504_)
                               (let ()
                                 (declare (not safe))
                                 (_g220229220265_)))))
                       (let () (declare (not safe)) (_g220229220265_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl220233220488_))
                       (let ((_e220260220278_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl220233220488_))))
                         (let ((_tl220258220283_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e220260220278_)))
                               (_hd220259220281_
                                (let ()
                                  (declare (not safe))
                                  (##car _e220260220278_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl220258220283_))
                               (___kont232738232739_
                                _hd220259220281_
                                _hd220234220486_)
                               (let ()
                                 (declare (not safe))
                                 (_g220229220265_)))))
                       (let () (declare (not safe)) (_g220229220265_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl220233220488_))
                                                       (let ((_e220260220278_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl220233220488_))))
                 (let ((_tl220258220283_
                        (let () (declare (not safe)) (##cdr _e220260220278_)))
                       (_hd220259220281_
                        (let () (declare (not safe)) (##car _e220260220278_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl220258220283_))
                       (___kont232738232739_ _hd220259220281_ _hd220234220486_)
                       (let () (declare (not safe)) (_g220229220265_)))))
               (let () (declare (not safe)) (_g220229220265_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g220229220265_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest220205220213_))
                             (let ((_hd220210220603_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest220205220213_)))
                                   (_tl220211220605_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest220205220213_))))
                               (let* ((_hd220608_ _hd220210220603_)
                                      (_rest220610_ _tl220211220605_))
                                 (declare (not safe))
                                 (_K220209220600_ _rest220610_ _hd220608_)))
                             (let ()
                               (declare (not safe))
                               (_else220207220221_)))))))
                  (_lift-kw-lambda?219565_
                   (lambda (_bind220121_)
                     (let* ((___stx232800232801_ _bind220121_)
                            (_g220124220141_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx232800232801_)))))
                       (let ((___kont232802232803_
                              (lambda (_L220177_ _L220178_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L220178_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L220177_))
                                    '#f)))
                             (___kont232804232805_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx232800232801_))
                             (let ((_e220130220153_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx232800232801_))))
                               (let ((_tl220128220158_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e220130220153_)))
                                     (_hd220129220156_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e220130220153_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd220129220156_))
                                     (let ((_e220133220161_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd220129220156_))))
                                       (let ((_tl220131220166_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e220133220161_)))
                                             (_hd220132220164_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e220133220161_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl220131220166_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl220128220158_))
                                                 (let ((_e220136220169_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl220128220158_))))
                                                   (let ((_tl220134220174_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e220136220169_)))
                                                         (_hd220135220172_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e220136220169_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl220134220174_))
                                                         (___kont232802232803_
                                                          _hd220135220172_
                                                          _hd220132220164_)
                                                         (___kont232804232805_))))
                                                 (___kont232804232805_))
                                             (___kont232804232805_))))
                                     (___kont232804232805_))))
                             (___kont232804232805_))))))
                  (_lift-kw-lambda-bindings219566_
                   (lambda (_bindings219733_)
                     (let _lp219735_ ((_rest219737_ _bindings219733_)
                                      (_lift1219738_ '())
                                      (_lift2219739_ '())
                                      (_bind219740_ '()))
                       (let* ((_rest219741219749_ _rest219737_)
                              (_else219743219757_
                               (lambda ()
                                 (values (reverse _lift1219738_)
                                         (reverse _lift2219739_)
                                         (reverse _bind219740_))))
                              (_K219745220109_
                               (lambda (_rest219760_ _hd219761_)
                                 (let* ((___stx232830232831_ _hd219761_)
                                        (_g219764219789_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx232830232831_)))))
                                   (let ((___kont232832232833_
                                          (lambda (_L219859_ _L219860_)
                                            (let* ((_g219874219927_
                                                    (lambda (_g219875219924_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g219875219924_))))
                                                   (_g219873220103_
                                                    (lambda (_g219875219930_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g219875219930_))
                                                          (let ((_e219883219932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g219875219930_))))
                    (let ((_hd219882219935_
                           (let ()
                             (declare (not safe))
                             (##car _e219883219932_)))
                          (_tl219881219937_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219883219932_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl219881219937_))
                          (let ((_e219886219940_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl219881219937_))))
                            (let ((_hd219885219943_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219886219940_)))
                                  (_tl219884219945_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219886219940_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd219885219943_))
                                  (let ((_e219889219948_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd219885219943_))))
                                    (let ((_hd219888219951_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219889219948_)))
                                          (_tl219887219953_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219889219948_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd219888219951_))
                                          (let ((_e219892219956_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd219888219951_))))
                                            (let ((_hd219891219959_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e219892219956_)))
                                                  (_tl219890219961_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e219892219956_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd219891219959_))
                                                  (let ((_e219895219964_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd219891219959_))))
                                                    (let ((_hd219894219967_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219895219964_)))
                                                          (_tl219893219969_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219895219964_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219893219969_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl219890219961_))
                      (let ((_e219898219972_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl219890219961_))))
                        (let ((_hd219897219975_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219898219972_)))
                              (_tl219896219977_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219898219972_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd219897219975_))
                              (let ((_e219901219980_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd219897219975_))))
                                (let ((_hd219900219983_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219901219980_)))
                                      (_tl219899219985_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219901219980_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219899219985_))
                                      (let ((_e219904219988_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219899219985_))))
                                        (let ((_hd219903219991_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219904219988_)))
                                              (_tl219902219993_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219904219988_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd219903219991_))
                                              (let ((_e219907219996_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd219903219991_))))
                                                (let ((_hd219906219999_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e219907219996_)))
                                                      (_tl219905220001_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e219907219996_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd219906219999_))
                                                      (let ((_e219910220004_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd219906219999_))))
                (let ((_hd219909220007_
                       (let () (declare (not safe)) (##car _e219910220004_)))
                      (_tl219908220009_
                       (let () (declare (not safe)) (##cdr _e219910220004_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd219909220007_))
                      (let ((_e219913220012_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd219909220007_))))
                        (let ((_hd219912220015_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219913220012_)))
                              (_tl219911220017_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219913220012_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl219911220017_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl219908220009_))
                                  (let ((_e219916220020_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl219908220009_))))
                                    (let ((_hd219915220023_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219916220020_)))
                                          (_tl219914220025_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219916220020_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl219914220025_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219905220001_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl219902219993_))
                                                  (let ((_e219919220028_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl219902219993_))))
                                                    (let ((_hd219918220031_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219919220028_)))
                                                          (_tl219917220033_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219919220028_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219917220033_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl219896219977_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl219887219953_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219884219945_))
                              (let ((_e219922220036_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219884219945_))))
                                (let ((_hd219921220039_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219922220036_)))
                                      (_tl219920220041_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219922220036_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219920220041_))
                                      ((lambda (_L220044_
                                                _L220045_
                                                _L220046_
                                                _L220047_
                                                _L220048_)
                                         (let* ((_get-kws-id220088_
                                                 (let ((__tmp233357
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L219860_)))
                                                       (__tmp233356
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp233357
                                                    __tmp233356)))
                                                (_get-kws-id220090_
                                                 (let ((__tmp233358
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx219561_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id220088_
                                                    __tmp233358)))
                                                (_main-id220092_
                                                 (let ((__tmp233360
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L219860_)))
                                                       (__tmp233359
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp233360
                                                    __tmp233359)))
                                                (_main-id220094_
                                                 (let ((__tmp233361
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx219561_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id220092_
                                                    __tmp233361)))
                                                (_g233362_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id220090_)))
                                                (_g233363_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id220094_)))
                                                (_new-kw-dispatch220098_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L220044_
                                                    _L220048_
                                                    _get-kws-id220090_)))
                                                (_new-get-kws220100_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L220045_
                                                    _L220047_
                                                    _main-id220094_))))
                                           (let ((__tmp233366
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L219860_)))
                                                 (__tmp233365
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id220090_)))
                                                 (__tmp233364
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id220094_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp233366
                                              '" => "
                                              __tmp233365
                                              '" => "
                                              __tmp233364))
                                           (let ((__tmp233371
                                                  (let ((__tmp233372
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__230992230993_
                                                            _main-id220094_
                                                            _L220046_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp233372
                                                          _lift1219738_)))
                                                 (__tmp233369
                                                  (let ((__tmp233370
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__230992230993_
                                                            _get-kws-id220090_
                                                            _new-get-kws220100_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp233370
                                                          _lift2219739_)))
                                                 (__tmp233367
                                                  (let ((__tmp233368
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__230992230993_
                                                            _L219860_
                                                            _new-kw-dispatch220098_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp233368
                                                          _bind219740_))))
                                             (declare (not safe))
                                             (_lp219735_
                                              _rest219760_
                                              __tmp233371
                                              __tmp233369
                                              __tmp233367))))
                                       _hd219921220039_
                                       _hd219918220031_
                                       _hd219915220023_
                                       _hd219912220015_
                                       _hd219894219967_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219874219927_ _g219875219930_)))))
                              (let ()
                                (declare (not safe))
                                (_g219874219927_ _g219875219930_)))
                          (let ()
                            (declare (not safe))
                            (_g219874219927_ _g219875219930_)))
                      (let ()
                        (declare (not safe))
                        (_g219874219927_ _g219875219930_)))
                  (let ()
                    (declare (not safe))
                    (_g219874219927_ _g219875219930_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g219874219927_
                                                     _g219875219930_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g219874219927_
                                                 _g219875219930_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g219874219927_
                                             _g219875219930_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g219874219927_ _g219875219930_)))
                              (let ()
                                (declare (not safe))
                                (_g219874219927_ _g219875219930_)))))
                      (let ()
                        (declare (not safe))
                        (_g219874219927_ _g219875219930_)))))
              (let ()
                (declare (not safe))
                (_g219874219927_ _g219875219930_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g219874219927_
                                                 _g219875219930_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219874219927_ _g219875219930_)))))
                              (let ()
                                (declare (not safe))
                                (_g219874219927_ _g219875219930_)))))
                      (let ()
                        (declare (not safe))
                        (_g219874219927_ _g219875219930_)))
                  (let ()
                    (declare (not safe))
                    (_g219874219927_ _g219875219930_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g219874219927_
                                                     _g219875219930_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g219874219927_
                                             _g219875219930_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g219874219927_ _g219875219930_)))))
                          (let ()
                            (declare (not safe))
                            (_g219874219927_ _g219875219930_)))))
                  (let ()
                    (declare (not safe))
                    (_g219874219927_ _g219875219930_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g219873220103_ _L219859_))))
                                         (___kont232834232835_
                                          (lambda (_L219810_ _L219811_)
                                            (let ((__tmp233373
                                                   (let ((__tmp233374
                                                          (let ((__tmp233375
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L219810_ '()))))
                    (declare (not safe))
                    (cons _L219811_ __tmp233375))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp233374
                                                           _bind219740_))))
                                              (declare (not safe))
                                              (_lp219735_
                                               _rest219760_
                                               _lift1219738_
                                               _lift2219739_
                                               __tmp233373)))))
                                     (let ((___match232857232858_
                                            (lambda (_e219770219835_
                                                     _hd219769219838_
                                                     _tl219768219840_
                                                     _e219773219843_
                                                     _hd219772219846_
                                                     _tl219771219848_
                                                     _e219776219851_
                                                     _hd219775219854_
                                                     _tl219774219856_)
                                              (let ((_L219859_
                                                     _hd219775219854_)
                                                    (_L219860_
                                                     _hd219772219846_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L219860_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L219859_)))
                                                    (___kont232832232833_
                                                     _L219859_
                                                     _L219860_)
                                                    (___kont232834232835_
                                                     _hd219775219854_
                                                     _hd219769219838_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx232830232831_))
                                           (let ((_e219770219835_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx232830232831_))))
                                             (let ((_tl219768219840_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e219770219835_)))
                                                   (_hd219769219838_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e219770219835_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd219769219838_))
                                                   (let ((_e219773219843_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd219769219838_))))
                                                     (let ((_tl219771219848_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e219773219843_)))
                                                           (_hd219772219846_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e219773219843_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl219771219848_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl219768219840_))
                       (let ((_e219776219851_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl219768219840_))))
                         (let ((_tl219774219856_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e219776219851_)))
                               (_hd219775219854_
                                (let ()
                                  (declare (not safe))
                                  (##car _e219776219851_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl219774219856_))
                               (___match232857232858_
                                _e219770219835_
                                _hd219769219838_
                                _tl219768219840_
                                _e219773219843_
                                _hd219772219846_
                                _tl219771219848_
                                _e219776219851_
                                _hd219775219854_
                                _tl219774219856_)
                               (let ()
                                 (declare (not safe))
                                 (_g219764219789_)))))
                       (let () (declare (not safe)) (_g219764219789_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl219768219840_))
                       (let ((_e219784219802_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl219768219840_))))
                         (let ((_tl219782219807_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e219784219802_)))
                               (_hd219783219805_
                                (let ()
                                  (declare (not safe))
                                  (##car _e219784219802_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl219782219807_))
                               (___kont232834232835_
                                _hd219783219805_
                                _hd219769219838_)
                               (let ()
                                 (declare (not safe))
                                 (_g219764219789_)))))
                       (let () (declare (not safe)) (_g219764219789_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl219768219840_))
                                                       (let ((_e219784219802_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl219768219840_))))
                 (let ((_tl219782219807_
                        (let () (declare (not safe)) (##cdr _e219784219802_)))
                       (_hd219783219805_
                        (let () (declare (not safe)) (##car _e219784219802_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl219782219807_))
                       (___kont232834232835_ _hd219783219805_ _hd219769219838_)
                       (let () (declare (not safe)) (_g219764219789_)))))
               (let () (declare (not safe)) (_g219764219789_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g219764219789_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest219741219749_))
                             (let ((_hd219746220112_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest219741219749_)))
                                   (_tl219747220114_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest219741219749_))))
                               (let* ((_hd220117_ _hd219746220112_)
                                      (_rest220119_ _tl219747220114_))
                                 (declare (not safe))
                                 (_K219745220109_ _rest220119_ _hd220117_)))
                             (let ()
                               (declare (not safe))
                               (_else219743219757_))))))))
          (let* ((___stx232874232875_ _stx219561_)
                 (_g219569219595_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx232874232875_)))))
            (let ((___kont232876232877_
                   (lambda (_L219655_ _L219656_)
                     (let ((__tmp233377
                            (lambda ()
                              (if (let ((__tmp233404
                                         (let ((__tmp233405
                                                (lambda (_g219684219687_
                                                         _g219685219689_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g219684219687_
                                                          _g219685219689_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp233405
                                                   '()
                                                   _L219656_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?219565_
                                            __tmp233404))
                                  (let ((_g233391_
                                         (let ((__tmp233393
                                                (let ((__tmp233394
                                                       (lambda (_g219691219694_
                                                                _g219692219696_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g219691219694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g219692219696_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp233394
                                                          '()
                                                          _L219656_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings219566_
                                            __tmp233393))))
                                    (begin
                                      (let ((_g233392_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g233391_)
                                                   (##vector-length _g233391_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g233392_ 3)))
                                            (error "Context expects 3 values"
                                                   _g233392_)))
                                      (let ((_lift1219699_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g233391_ 0)))
                                            (_lift2219700_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g233391_ 1)))
                                            (_hd219701_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g233391_ 2))))
                                        (let* ((_expr219703_
                                                (let ((__tmp233395
                                                       (let ((__tmp233396
                                                              (let ((__tmp233397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L219655_ '()))))
                        (declare (not safe))
                        (cons _hd219701_ __tmp233397))))
                 (declare (not safe))
                 (cons '%#let-values __tmp233396))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp233395
                                                   _stx219561_)))
                                               (_expr219705_
                                                (let ((__tmp233398
                                                       (let ((__tmp233399
                                                              (let ((__tmp233400
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr219703_ '()))))
                        (declare (not safe))
                        (cons _lift2219700_ __tmp233400))))
                 (declare (not safe))
                 (cons '%#let-values __tmp233399))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp233398
                                                   _stx219561_)))
                                               (_expr219707_
                                                (let ((__tmp233401
                                                       (let ((__tmp233402
                                                              (let ((__tmp233403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr219705_ '()))))
                        (declare (not safe))
                        (cons _lift1219699_ __tmp233403))))
                 (declare (not safe))
                 (cons '%#let-values __tmp233402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp233401
                                                   _stx219561_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr219707_))))))
                                  (let ((_g233378_
                                         (let ((__tmp233380
                                                (let ((__tmp233381
                                                       (lambda (_g219709219712_
                                                                _g219710219714_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g219709219712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g219710219714_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp233381
                                                          '()
                                                          _L219656_))))
                                           (declare (not safe))
                                           (_compile-bindings219564_
                                            __tmp233380))))
                                    (begin
                                      (let ((_g233379_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g233378_)
                                                   (##vector-length _g233378_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g233379_ 3)))
                                            (error "Context expects 3 values"
                                                   _g233379_)))
                                      (let ((_lift1219717_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g233378_ 0)))
                                            (_lift2219718_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g233378_ 1)))
                                            (_hd219719_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g233378_ 2))))
                                        (let* ((_body219721_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L219655_)))
                                               (_expr219723_
                                                (let ((__tmp233382
                                                       (let ((__tmp233383
                                                              (let ((__tmp233384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body219721_ '()))))
                        (declare (not safe))
                        (cons _hd219719_ __tmp233384))))
                 (declare (not safe))
                 (cons '%#let-values __tmp233383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp233382
                                                   _stx219561_)))
                                               (_expr219725_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2219718_))
                                                    _expr219723_
                                                    (let ((__tmp233385
                                                           (let ((__tmp233386
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp233387
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr219723_ '()))))
                            (declare (not safe))
                            (cons _lift2219718_ __tmp233387))))
                     (declare (not safe))
                     (cons '%#let-values __tmp233386))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp233385 _stx219561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr219727_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1219717_))
                                                    _expr219725_
                                                    (let ((__tmp233388
                                                           (let ((__tmp233389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp233390
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr219725_ '()))))
                            (declare (not safe))
                            (cons _lift1219717_ __tmp233390))))
                     (declare (not safe))
                     (cons '%#let-values __tmp233389))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp233388 _stx219561_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr219727_)))))))
                           (__tmp233376
                            (let ((__obj233080
                                   (make-object gx#local-context::t '6)))
                              (gx#local-context:::init! __obj233080)
                              __obj233080)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp233377
                        gx#current-expander-context
                        __tmp233376))))
                  (___kont232880232881_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx219561_)))))
              (let ((___match232901232902_
                     (lambda (_e219575219607_
                              _hd219574219610_
                              _tl219573219612_
                              _e219578219615_
                              _hd219577219618_
                              _tl219576219620_
                              ___splice232878232879_
                              _target219579219623_
                              _tl219581219625_)
                       (letrec ((_loop219582219628_
                                 (lambda (_hd219580219631_ _bind219586219633_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd219580219631_))
                                       (let ((_e219583219636_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd219580219631_))))
                                         (let ((_lp-tl219585219641_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e219583219636_)))
                                               (_lp-hd219584219639_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e219583219636_))))
                                           (let ((__tmp233408
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd219584219639_
                                                          _bind219586219633_))))
                                             (declare (not safe))
                                             (_loop219582219628_
                                              _lp-tl219585219641_
                                              __tmp233408))))
                                       (let ((_bind219587219644_
                                              (reverse _bind219586219633_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl219576219620_))
                                             (let ((_e219590219647_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl219576219620_))))
                                               (let ((_tl219588219652_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e219590219647_)))
                                                     (_hd219589219650_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e219590219647_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl219588219652_))
                                                     (let ((_L219655_
                                                            _hd219589219650_)
                                                           (_L219656_
                                                            _bind219587219644_))
                                                       (if (let ((__tmp233406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp233407
                                 (lambda (_g219676219679_ _g219677219681_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g219676219679_ _g219677219681_)))))
                            (declare (not safe))
                            (foldr1 __tmp233407 '() _L219656_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp233406))
                   (___kont232876232877_ _L219655_ _L219656_)
                   (___kont232880232881_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont232880232881_))))
                                             (___kont232880232881_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop219582219628_ _target219579219623_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx232874232875_))
                    (let ((_e219575219607_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx232874232875_))))
                      (let ((_tl219573219612_
                             (let ()
                               (declare (not safe))
                               (##cdr _e219575219607_)))
                            (_hd219574219610_
                             (let ()
                               (declare (not safe))
                               (##car _e219575219607_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl219573219612_))
                            (let ((_e219578219615_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl219573219612_))))
                              (let ((_tl219576219620_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e219578219615_)))
                                    (_hd219577219618_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e219578219615_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd219577219618_))
                                    (let ((___splice232878232879_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd219577219618_
                                              '0))))
                                      (let ((_tl219581219625_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice232878232879_
                                                '1)))
                                            (_target219579219623_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice232878232879_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl219581219625_))
                                            (___match232901232902_
                                             _e219575219607_
                                             _hd219574219610_
                                             _tl219573219612_
                                             _e219578219615_
                                             _hd219577219618_
                                             _tl219576219620_
                                             ___splice232878232879_
                                             _target219579219623_
                                             _tl219581219625_)
                                            (___kont232880232881_))))
                                    (___kont232880232881_))))
                            (___kont232880232881_))))
                    (___kont232880232881_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx218705_)
        (letrec* ((_bind-e__230997230998_
                   (lambda (_id219545_ _expr219546_ _compile?219547_)
                     (let ((__tmp233411
                            (let ()
                              (declare (not safe))
                              (cons _id219545_ '())))
                           (__tmp233409
                            (let ((__tmp233410
                                   (if _compile?219547_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr219546_))
                                       _expr219546_)))
                              (declare (not safe))
                              (cons __tmp233410 '()))))
                       (declare (not safe))
                       (cons __tmp233411 __tmp233409))))
                  (_bind-e__0__230999231000_
                   (lambda (_id219552_ _expr219553_)
                     (let ((_compile?219555_ '#t))
                       (declare (not safe))
                       (_bind-e__230997230998_
                        _id219552_
                        _expr219553_
                        _compile?219555_))))
                  (_bind-e218707_
                   (lambda _g233413_
                     (let ((_g233412_
                            (let ()
                              (declare (not safe))
                              (##length _g233413_))))
                       (cond ((let () (declare (not safe)) (##fx= _g233412_ 2))
                              (apply (lambda (_id219552_ _expr219553_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__230999231000_
                                          _id219552_
                                          _expr219553_)))
                                     _g233413_))
                             ((let () (declare (not safe)) (##fx= _g233412_ 3))
                              (apply (lambda (_id219557_
                                              _expr219558_
                                              _compile?219559_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__230997230998_
                                          _id219557_
                                          _expr219558_
                                          _compile?219559_)))
                                     _g233413_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g233413_))))))
                  (_compile-bindings218708_
                   (lambda (_rest218843_)
                     (let _lp218845_ ((_rest218847_ _rest218843_)
                                      (_bind218848_ '()))
                       (let* ((_rest218849218857_ _rest218847_)
                              (_else218851218865_
                               (lambda () (reverse _bind218848_)))
                              (_K218853219532_
                               (lambda (_rest218868_ _hd218869_)
                                 (let* ((___stx232924232925_ _hd218869_)
                                        (_g218874218921_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx232924232925_)))))
                                   (let ((___kont232926232927_
                                          (lambda (_L219439_ _L219440_)
                                            (let* ((___stx232904232905_
                                                    _L219439_)
                                                   (_g219455219469_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx232904232905_)))))
                                              (let ((___kont232906232907_
                                                     (lambda (_L219517_)
                                                       (let ((__tmp233414
                                                              (let ((__tmp233415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__230997230998_
                                _L219440_
                                _L219439_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp233415 _bind218848_))))
                 (declare (not safe))
                 (_lp218845_ _rest218868_ __tmp233414))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232908232909_
                                                     (lambda (_L219482_)
                                                       (let ((_g233416_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx218705_
                         _L219440_
                         _L219482_
                         '#t))))
                 (begin
                   (let ((_g233417_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g233416_)
                                (##vector-length _g233416_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g233417_ 3)))
                         (error "Context expects 3 values" _g233417_)))
                   (let ((_ids219492_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g233416_ 0)))
                         (_impls219493_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g233416_ 1)))
                         (_clauses219494_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g233416_ 2))))
                     (let* ((_g233418_
                             (for-each gx#core-bind-runtime! _ids219492_))
                            (_xbind219497_
                             (map _bind-e218707_ _ids219492_ _impls219493_))
                            (_expr*219499_
                             (let ((__tmp233420
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses219494_)))
                                   (__tmp233419
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp233420
                                __tmp233419)))
                            (_bind*219501_
                             (let ()
                               (declare (not safe))
                               (_bind-e__230997230998_
                                _L219440_
                                _expr*219499_
                                '#f))))
                       (let ((__tmp233422
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L219440_)))
                             (__tmp233421
                              (map gxc#identifier-symbol _ids219492_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp233422
                          '" => "
                          __tmp233421))
                       (let ((__tmp233423
                              (let ((__tmp233424
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind218848_
                                               _xbind219497_))))
                                (declare (not safe))
                                (cons _bind*219501_ __tmp233424))))
                         (declare (not safe))
                         (_lp218845_ _rest218868_ __tmp233423)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match232915232916_
                                                       (lambda (_e219460219509_
                                                                _hd219459219512_
                                                                _tl219458219514_)
                                                         (let ((_L219517_
                                                                _tl219458219514_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L219517_))
                       (___kont232906232907_ _L219517_)
                       (___kont232908232909_ _tl219458219514_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx232904232905_))
                                                      (let ((_e219460219509_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx232904232905_))))
                (let ((_tl219458219514_
                       (let () (declare (not safe)) (##cdr _e219460219509_)))
                      (_hd219459219512_
                       (let () (declare (not safe)) (##car _e219460219509_))))
                  (___match232915232916_
                   _e219460219509_
                   _hd219459219512_
                   _tl219458219514_)))
              (let () (declare (not safe)) (_g219455219469_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont232928232929_
                                          (lambda (_L219267_ _L219268_)
                                            (let* ((_g219282219312_
                                                    (lambda (_g219283219309_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g219283219309_))))
                                                   (_g219281219407_
                                                    (lambda (_g219283219315_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g219283219315_))
                                                          (let ((_e219289219317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g219283219315_))))
                    (let ((_hd219288219320_
                           (let ()
                             (declare (not safe))
                             (##car _e219289219317_)))
                          (_tl219287219322_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219289219317_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl219287219322_))
                          (let ((_e219292219325_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl219287219322_))))
                            (let ((_hd219291219328_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219292219325_)))
                                  (_tl219290219330_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219292219325_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd219291219328_))
                                  (let ((_e219295219333_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd219291219328_))))
                                    (let ((_hd219294219336_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219295219333_)))
                                          (_tl219293219338_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219295219333_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd219294219336_))
                                          (let ((_e219298219341_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd219294219336_))))
                                            (let ((_hd219297219344_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e219298219341_)))
                                                  (_tl219296219346_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e219298219341_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd219297219344_))
                                                  (let ((_e219301219349_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd219297219344_))))
                                                    (let ((_hd219300219352_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219301219349_)))
                                                          (_tl219299219354_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219301219349_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219299219354_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl219296219346_))
                      (let ((_e219304219357_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl219296219346_))))
                        (let ((_hd219303219360_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219304219357_)))
                              (_tl219302219362_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219304219357_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl219302219362_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl219293219338_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219290219330_))
                                      (let ((_e219307219365_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219290219330_))))
                                        (let ((_hd219306219368_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219307219365_)))
                                              (_tl219305219370_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219307219365_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219305219370_))
                                              ((lambda (_L219373_
                                                        _L219374_
                                                        _L219375_)
                                                 (let* ((_lambda-id219399_
                                                         (let ((__tmp233426
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L219268_)))
                       (__tmp233425 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp233426 __tmp233425)))
                (_lambda-id219401_
                 (let ((__tmp233427
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx218705_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id219399_ __tmp233427)))
                (_g233428_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id219401_)))
                (_new-case-lambda-expr219404_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L219373_
                    _L219375_
                    _lambda-id219401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp233430
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L219268_)))
                                                         (__tmp233429
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id219401_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp233430
                                                      '" => "
                                                      __tmp233429))
                                                   (let ((__tmp233433
                                                          (let ((__tmp233434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__230997230998_
                            _L219268_
                            _new-case-lambda-expr219404_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp233434 _rest218868_)))
                 (__tmp233431
                  (let ((__tmp233432
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__230999231000_
                            _lambda-id219401_
                            _L219374_))))
                    (declare (not safe))
                    (cons __tmp233432 _bind218848_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp218845_
                                                      __tmp233433
                                                      __tmp233431))))
                                               _hd219306219368_
                                               _hd219303219360_
                                               _hd219300219352_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219282219312_
                                                 _g219283219315_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219282219312_ _g219283219315_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g219282219312_ _g219283219315_)))
                              (let ()
                                (declare (not safe))
                                (_g219282219312_ _g219283219315_)))))
                      (let ()
                        (declare (not safe))
                        (_g219282219312_ _g219283219315_)))
                  (let ()
                    (declare (not safe))
                    (_g219282219312_ _g219283219315_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g219282219312_
                                                     _g219283219315_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g219282219312_
                                             _g219283219315_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g219282219312_ _g219283219315_)))))
                          (let ()
                            (declare (not safe))
                            (_g219282219312_ _g219283219315_)))))
                  (let ()
                    (declare (not safe))
                    (_g219282219312_ _g219283219315_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g219281219407_ _L219267_))))
                                         (___kont232930232931_
                                          (lambda (_L218991_ _L218992_)
                                            (let* ((_g219006219059_
                                                    (lambda (_g219007219056_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g219007219056_))))
                                                   (_g219005219235_
                                                    (lambda (_g219007219062_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g219007219062_))
                                                          (let ((_e219015219064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g219007219062_))))
                    (let ((_hd219014219067_
                           (let ()
                             (declare (not safe))
                             (##car _e219015219064_)))
                          (_tl219013219069_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219015219064_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl219013219069_))
                          (let ((_e219018219072_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl219013219069_))))
                            (let ((_hd219017219075_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219018219072_)))
                                  (_tl219016219077_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219018219072_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd219017219075_))
                                  (let ((_e219021219080_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd219017219075_))))
                                    (let ((_hd219020219083_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219021219080_)))
                                          (_tl219019219085_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219021219080_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd219020219083_))
                                          (let ((_e219024219088_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd219020219083_))))
                                            (let ((_hd219023219091_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e219024219088_)))
                                                  (_tl219022219093_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e219024219088_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd219023219091_))
                                                  (let ((_e219027219096_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd219023219091_))))
                                                    (let ((_hd219026219099_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219027219096_)))
                                                          (_tl219025219101_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219027219096_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219025219101_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl219022219093_))
                      (let ((_e219030219104_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl219022219093_))))
                        (let ((_hd219029219107_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219030219104_)))
                              (_tl219028219109_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219030219104_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd219029219107_))
                              (let ((_e219033219112_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd219029219107_))))
                                (let ((_hd219032219115_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219033219112_)))
                                      (_tl219031219117_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219033219112_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219031219117_))
                                      (let ((_e219036219120_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219031219117_))))
                                        (let ((_hd219035219123_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219036219120_)))
                                              (_tl219034219125_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219036219120_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd219035219123_))
                                              (let ((_e219039219128_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd219035219123_))))
                                                (let ((_hd219038219131_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e219039219128_)))
                                                      (_tl219037219133_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e219039219128_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd219038219131_))
                                                      (let ((_e219042219136_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd219038219131_))))
                (let ((_hd219041219139_
                       (let () (declare (not safe)) (##car _e219042219136_)))
                      (_tl219040219141_
                       (let () (declare (not safe)) (##cdr _e219042219136_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd219041219139_))
                      (let ((_e219045219144_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd219041219139_))))
                        (let ((_hd219044219147_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219045219144_)))
                              (_tl219043219149_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219045219144_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl219043219149_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl219040219141_))
                                  (let ((_e219048219152_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl219040219141_))))
                                    (let ((_hd219047219155_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219048219152_)))
                                          (_tl219046219157_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219048219152_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl219046219157_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219037219133_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl219034219125_))
                                                  (let ((_e219051219160_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl219034219125_))))
                                                    (let ((_hd219050219163_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219051219160_)))
                                                          (_tl219049219165_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219051219160_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219049219165_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl219028219109_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl219019219085_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219016219077_))
                              (let ((_e219054219168_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219016219077_))))
                                (let ((_hd219053219171_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219054219168_)))
                                      (_tl219052219173_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219054219168_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219052219173_))
                                      ((lambda (_L219176_
                                                _L219177_
                                                _L219178_
                                                _L219179_
                                                _L219180_)
                                         (let* ((_get-kws-id219220_
                                                 (let ((__tmp233436
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L218992_)))
                                                       (__tmp233435
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp233436
                                                    __tmp233435)))
                                                (_get-kws-id219222_
                                                 (let ((__tmp233437
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx218705_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id219220_
                                                    __tmp233437)))
                                                (_main-id219224_
                                                 (let ((__tmp233439
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L218992_)))
                                                       (__tmp233438
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp233439
                                                    __tmp233438)))
                                                (_main-id219226_
                                                 (let ((__tmp233440
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx218705_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id219224_
                                                    __tmp233440)))
                                                (_g233441_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id219222_)))
                                                (_g233442_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id219226_)))
                                                (_new-kw-dispatch219230_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L219176_
                                                    _L219180_
                                                    _get-kws-id219222_)))
                                                (_new-get-kws219232_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L219177_
                                                    _L219179_
                                                    _main-id219226_))))
                                           (let ((__tmp233445
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L218992_)))
                                                 (__tmp233444
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id219222_)))
                                                 (__tmp233443
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id219226_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp233445
                                              '" => "
                                              __tmp233444
                                              '" => "
                                              __tmp233443))
                                           (let ((__tmp233446
                                                  (let ((__tmp233451
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__230997230998_
                                                            _main-id219226_
                                                            _L219178_
                                                            '#f)))
                                                        (__tmp233447
                                                         (let ((__tmp233450
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__230997230998_
                           _get-kws-id219222_
                           _new-get-kws219232_
                           '#f)))
                       (__tmp233448
                        (let ((__tmp233449
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__230997230998_
                                  _L218992_
                                  _new-kw-dispatch219230_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp233449 _rest218868_))))
                   (declare (not safe))
                   (cons __tmp233450 __tmp233448))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp233451
                                                          __tmp233447))))
                                             (declare (not safe))
                                             (_lp218845_
                                              __tmp233446
                                              _bind218848_))))
                                       _hd219053219171_
                                       _hd219050219163_
                                       _hd219047219155_
                                       _hd219044219147_
                                       _hd219026219099_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219006219059_ _g219007219062_)))))
                              (let ()
                                (declare (not safe))
                                (_g219006219059_ _g219007219062_)))
                          (let ()
                            (declare (not safe))
                            (_g219006219059_ _g219007219062_)))
                      (let ()
                        (declare (not safe))
                        (_g219006219059_ _g219007219062_)))
                  (let ()
                    (declare (not safe))
                    (_g219006219059_ _g219007219062_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g219006219059_
                                                     _g219007219062_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g219006219059_
                                                 _g219007219062_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g219006219059_
                                             _g219007219062_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g219006219059_ _g219007219062_)))
                              (let ()
                                (declare (not safe))
                                (_g219006219059_ _g219007219062_)))))
                      (let ()
                        (declare (not safe))
                        (_g219006219059_ _g219007219062_)))))
              (let ()
                (declare (not safe))
                (_g219006219059_ _g219007219062_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g219006219059_
                                                 _g219007219062_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219006219059_ _g219007219062_)))))
                              (let ()
                                (declare (not safe))
                                (_g219006219059_ _g219007219062_)))))
                      (let ()
                        (declare (not safe))
                        (_g219006219059_ _g219007219062_)))
                  (let ()
                    (declare (not safe))
                    (_g219006219059_ _g219007219062_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g219006219059_
                                                     _g219007219062_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g219006219059_
                                             _g219007219062_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g219006219059_ _g219007219062_)))))
                          (let ()
                            (declare (not safe))
                            (_g219006219059_ _g219007219062_)))))
                  (let ()
                    (declare (not safe))
                    (_g219006219059_ _g219007219062_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g219005219235_ _L218991_))))
                                         (___kont232932232933_
                                          (lambda (_L218942_ _L218943_)
                                            (let ((__tmp233452
                                                   (let ((__tmp233453
                                                          (let ((__tmp233454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp233455
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L218942_))))
                           (declare (not safe))
                           (cons __tmp233455 '()))))
                    (declare (not safe))
                    (cons _L218943_ __tmp233454))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp233453
                                                           _bind218848_))))
                                              (declare (not safe))
                                              (_lp218845_
                                               _rest218868_
                                               __tmp233452)))))
                                     (let* ((___match232999233000_
                                             (lambda (_e218902218967_
                                                      _hd218901218970_
                                                      _tl218900218972_
                                                      _e218905218975_
                                                      _hd218904218978_
                                                      _tl218903218980_
                                                      _e218908218983_
                                                      _hd218907218986_
                                                      _tl218906218988_)
                                               (let ((_L218991_
                                                      _hd218907218986_)
                                                     (_L218992_
                                                      _hd218904218978_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L218992_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L218991_)))
                                                     (___kont232930232931_
                                                      _L218991_
                                                      _L218992_)
                                                     (___kont232932232933_
                                                      _hd218907218986_
                                                      _hd218901218970_)))))
                                            (___match232977232978_
                                             (lambda (_e218891219243_
                                                      _hd218890219246_
                                                      _tl218889219248_
                                                      _e218894219251_
                                                      _hd218893219254_
                                                      _tl218892219256_
                                                      _e218897219259_
                                                      _hd218896219262_
                                                      _tl218895219264_)
                                               (let ((_L219267_
                                                      _hd218896219262_)
                                                     (_L219268_
                                                      _hd218893219254_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L219268_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L219267_)))
                                                     (___kont232928232929_
                                                      _L219267_
                                                      _L219268_)
                                                     (___match232999233000_
                                                      _e218891219243_
                                                      _hd218890219246_
                                                      _tl218889219248_
                                                      _e218894219251_
                                                      _hd218893219254_
                                                      _tl218892219256_
                                                      _e218897219259_
                                                      _hd218896219262_
                                                      _tl218895219264_)))))
                                            (___match232955232956_
                                             (lambda (_e218880219415_
                                                      _hd218879219418_
                                                      _tl218878219420_
                                                      _e218883219423_
                                                      _hd218882219426_
                                                      _tl218881219428_
                                                      _e218886219431_
                                                      _hd218885219434_
                                                      _tl218884219436_)
                                               (let ((_L219439_
                                                      _hd218885219434_)
                                                     (_L219440_
                                                      _hd218882219426_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L219440_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L219439_)))
                                                     (___kont232926232927_
                                                      _L219439_
                                                      _L219440_)
                                                     (___match232977232978_
                                                      _e218880219415_
                                                      _hd218879219418_
                                                      _tl218878219420_
                                                      _e218883219423_
                                                      _hd218882219426_
                                                      _tl218881219428_
                                                      _e218886219431_
                                                      _hd218885219434_
                                                      _tl218884219436_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx232924232925_))
                                           (let ((_e218880219415_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx232924232925_))))
                                             (let ((_tl218878219420_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e218880219415_)))
                                                   (_hd218879219418_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e218880219415_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd218879219418_))
                                                   (let ((_e218883219423_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd218879219418_))))
                                                     (let ((_tl218881219428_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e218883219423_)))
                                                           (_hd218882219426_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e218883219423_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl218881219428_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl218878219420_))
                       (let ((_e218886219431_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl218878219420_))))
                         (let ((_tl218884219436_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e218886219431_)))
                               (_hd218885219434_
                                (let ()
                                  (declare (not safe))
                                  (##car _e218886219431_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl218884219436_))
                               (___match232955232956_
                                _e218880219415_
                                _hd218879219418_
                                _tl218878219420_
                                _e218883219423_
                                _hd218882219426_
                                _tl218881219428_
                                _e218886219431_
                                _hd218885219434_
                                _tl218884219436_)
                               (let ()
                                 (declare (not safe))
                                 (_g218874218921_)))))
                       (let () (declare (not safe)) (_g218874218921_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl218878219420_))
                       (let ((_e218916218934_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl218878219420_))))
                         (let ((_tl218914218939_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e218916218934_)))
                               (_hd218915218937_
                                (let ()
                                  (declare (not safe))
                                  (##car _e218916218934_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl218914218939_))
                               (___kont232932232933_
                                _hd218915218937_
                                _hd218879219418_)
                               (let ()
                                 (declare (not safe))
                                 (_g218874218921_)))))
                       (let () (declare (not safe)) (_g218874218921_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl218878219420_))
                                                       (let ((_e218916218934_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl218878219420_))))
                 (let ((_tl218914218939_
                        (let () (declare (not safe)) (##cdr _e218916218934_)))
                       (_hd218915218937_
                        (let () (declare (not safe)) (##car _e218916218934_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl218914218939_))
                       (___kont232932232933_ _hd218915218937_ _hd218879219418_)
                       (let () (declare (not safe)) (_g218874218921_)))))
               (let () (declare (not safe)) (_g218874218921_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g218874218921_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest218849218857_))
                             (let ((_hd218854219535_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest218849218857_)))
                                   (_tl218855219537_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest218849218857_))))
                               (let* ((_hd219540_ _hd218854219535_)
                                      (_rest219542_ _tl218855219537_))
                                 (declare (not safe))
                                 (_K218853219532_ _rest219542_ _hd219540_)))
                             (let ()
                               (declare (not safe))
                               (_else218851218865_))))))))
          (let* ((___stx233016233017_ _stx218705_)
                 (_g218711218738_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx233016233017_)))))
            (let ((___kont233018233019_
                   (lambda (_L218798_ _L218799_ _L218800_)
                     (let ((__tmp233457
                            (lambda ()
                              (let ((_hd218837_
                                     (let ((__tmp233458
                                            (let ((__tmp233459
                                                   (lambda (_g218829218832_
                                                            _g218830218834_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g218829218832_
                                                             _g218830218834_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp233459
                                                      '()
                                                      _L218799_))))
                                       (declare (not safe))
                                       (_compile-bindings218708_ __tmp233458)))
                                    (_body218838_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L218798_))))
                                (let ((__tmp233460
                                       (let ((__tmp233461
                                              (let ((__tmp233462
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body218838_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd218837_
                                                      __tmp233462))))
                                         (declare (not safe))
                                         (cons _L218800_ __tmp233461))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp233460
                                   _stx218705_)))))
                           (__tmp233456
                            (let ((__obj233081
                                   (make-object gx#local-context::t '6)))
                              (gx#local-context:::init! __obj233081)
                              __obj233081)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp233457
                        gx#current-expander-context
                        __tmp233456))))
                  (___kont233022233023_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx218705_)))))
              (let ((___match233043233044_
                     (lambda (_e218718218750_
                              _hd218717218753_
                              _tl218716218755_
                              _e218721218758_
                              _hd218720218761_
                              _tl218719218763_
                              ___splice233020233021_
                              _target218722218766_
                              _tl218724218768_)
                       (letrec ((_loop218725218771_
                                 (lambda (_hd218723218774_ _bind218729218776_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd218723218774_))
                                       (let ((_e218726218779_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd218723218774_))))
                                         (let ((_lp-tl218728218784_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e218726218779_)))
                                               (_lp-hd218727218782_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e218726218779_))))
                                           (let ((__tmp233465
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd218727218782_
                                                          _bind218729218776_))))
                                             (declare (not safe))
                                             (_loop218725218771_
                                              _lp-tl218728218784_
                                              __tmp233465))))
                                       (let ((_bind218730218787_
                                              (reverse _bind218729218776_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl218719218763_))
                                             (let ((_e218733218790_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl218719218763_))))
                                               (let ((_tl218731218795_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e218733218790_)))
                                                     (_hd218732218793_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e218733218790_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl218731218795_))
                                                     (let ((_L218798_
                                                            _hd218732218793_)
                                                           (_L218799_
                                                            _bind218730218787_)
                                                           (_L218800_
                                                            _hd218717218753_))
                                                       (if (let ((__tmp233463
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp233464
                                 (lambda (_g218821218824_ _g218822218826_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g218821218824_ _g218822218826_)))))
                            (declare (not safe))
                            (foldr1 __tmp233464 '() _L218799_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp233463))
                   (___kont233018233019_ _L218798_ _L218799_ _L218800_)
                   (___kont233022233023_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont233022233023_))))
                                             (___kont233022233023_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop218725218771_ _target218722218766_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx233016233017_))
                    (let ((_e218718218750_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx233016233017_))))
                      (let ((_tl218716218755_
                             (let ()
                               (declare (not safe))
                               (##cdr _e218718218750_)))
                            (_hd218717218753_
                             (let ()
                               (declare (not safe))
                               (##car _e218718218750_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl218716218755_))
                            (let ((_e218721218758_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl218716218755_))))
                              (let ((_tl218719218763_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e218721218758_)))
                                    (_hd218720218761_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e218721218758_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd218720218761_))
                                    (let ((___splice233020233021_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd218720218761_
                                              '0))))
                                      (let ((_tl218724218768_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice233020233021_
                                                '1)))
                                            (_target218722218766_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice233020233021_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl218724218768_))
                                            (___match233043233044_
                                             _e218718218750_
                                             _hd218717218753_
                                             _tl218716218755_
                                             _e218721218758_
                                             _hd218720218761_
                                             _tl218719218763_
                                             ___splice233020233021_
                                             _target218722218766_
                                             _tl218724218768_)
                                            (___kont233022233023_))))
                                    (___kont233022233023_))))
                            (___kont233022233023_))))
                    (___kont233022233023_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind218623_)
        (let* ((___stx233046233047_ _bind218623_)
               (_g218626218643_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx233046233047_)))))
          (let ((___kont233048233049_
                 (lambda (_L218679_ _L218680_)
                   (if (let () (declare (not safe)) (gx#identifier? _L218680_))
                       (let ((_$e218696_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L218679_))))
                         (if _$e218696_
                             _$e218696_
                             (let ((_$e218699_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L218679_))))
                               (if _$e218699_
                                   _$e218699_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L218679_))))))
                       '#f)))
                (___kont233050233051_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx233046233047_))
                (let ((_e218632218655_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx233046233047_))))
                  (let ((_tl218630218660_
                         (let () (declare (not safe)) (##cdr _e218632218655_)))
                        (_hd218631218658_
                         (let ()
                           (declare (not safe))
                           (##car _e218632218655_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd218631218658_))
                        (let ((_e218635218663_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd218631218658_))))
                          (let ((_tl218633218668_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e218635218663_)))
                                (_hd218634218666_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e218635218663_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl218633218668_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl218630218660_))
                                    (let ((_e218638218671_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl218630218660_))))
                                      (let ((_tl218636218676_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e218638218671_)))
                                            (_hd218637218674_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e218638218671_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl218636218676_))
                                            (___kont233048233049_
                                             _hd218637218674_
                                             _hd218634218666_)
                                            (___kont233050233051_))))
                                    (___kont233050233051_))
                                (___kont233050233051_))))
                        (___kont233050233051_))))
                (___kont233050233051_))))))))
