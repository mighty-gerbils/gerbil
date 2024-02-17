(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1708168072)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl245094_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp251755 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl245094_ __tmp251755))
           (let ()
             (declare (not safe))
             (table-set! _tbl245094_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245094_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl245094_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245094_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl245094_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx245077_ . _args245079_)
        (let ((__tmp251757
               (lambda ()
                 (declare (not safe))
                 (if (null? _args245079_)
                     (gxc#compile-e__0 _stx245077_)
                     (let ((_arg1245084_ (car _args245079_))
                           (_rest245086_ (cdr _args245079_)))
                       (if (null? _rest245086_)
                           (gxc#compile-e__1 _stx245077_ _arg1245084_)
                           (let ((_arg2245089_ (car _rest245086_))
                                 (_rest245091_ (cdr _rest245086_)))
                             (if (null? _rest245091_)
                                 (gxc#compile-e__2
                                  _stx245077_
                                  _arg1245084_
                                  _arg2245089_)
                                 (apply gxc#compile-e
                                        _stx245077_
                                        _arg1245084_
                                        _arg2245089_
                                        _rest245091_))))))))
              (__tmp251756 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp251757
           gxc#current-compile-methods
           __tmp251756))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl245074_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp251758 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl245074_ __tmp251758))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245074_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl245074_ '%#call gxc#basic-expression-type-call%))
           _tbl245074_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx245057_ . _args245059_)
        (let ((__tmp251760
               (lambda ()
                 (declare (not safe))
                 (if (null? _args245059_)
                     (gxc#compile-e__0 _stx245057_)
                     (let ((_arg1245064_ (car _args245059_))
                           (_rest245066_ (cdr _args245059_)))
                       (if (null? _rest245066_)
                           (gxc#compile-e__1 _stx245057_ _arg1245064_)
                           (let ((_arg2245069_ (car _rest245066_))
                                 (_rest245071_ (cdr _rest245066_)))
                             (if (null? _rest245071_)
                                 (gxc#compile-e__2
                                  _stx245057_
                                  _arg1245064_
                                  _arg2245069_)
                                 (apply gxc#compile-e
                                        _stx245057_
                                        _arg1245064_
                                        _arg2245069_
                                        _rest245071_))))))))
              (__tmp251759 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp251760
           gxc#current-compile-methods
           __tmp251759))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl245054_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp251761 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl245054_ __tmp251761))
           (let ()
             (declare (not safe))
             (table-set! _tbl245054_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245054_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl245054_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245054_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245054_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl245054_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245054_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245054_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245054_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245054_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl245054_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl245054_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl245054_ '%#set! gxc#collect-body-setq%))
           _tbl245054_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx245037_ . _args245039_)
        (let ((__tmp251763
               (lambda ()
                 (declare (not safe))
                 (if (null? _args245039_)
                     (gxc#compile-e__0 _stx245037_)
                     (let ((_arg1245044_ (car _args245039_))
                           (_rest245046_ (cdr _args245039_)))
                       (if (null? _rest245046_)
                           (gxc#compile-e__1 _stx245037_ _arg1245044_)
                           (let ((_arg2245049_ (car _rest245046_))
                                 (_rest245051_ (cdr _rest245046_)))
                             (if (null? _rest245051_)
                                 (gxc#compile-e__2
                                  _stx245037_
                                  _arg1245044_
                                  _arg2245049_)
                                 (apply gxc#compile-e
                                        _stx245037_
                                        _arg1245044_
                                        _arg2245049_
                                        _rest245051_))))))))
              (__tmp251762 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp251763
           gxc#current-compile-methods
           __tmp251762))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl245034_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp251764 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl245034_ __tmp251764))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245034_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245034_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245034_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245034_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245034_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245034_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245034_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl245034_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl245034_ '%#ref gxc#basic-expression-type-ref%))
           _tbl245034_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx245017_ . _args245019_)
        (let ((__tmp251766
               (lambda ()
                 (declare (not safe))
                 (if (null? _args245019_)
                     (gxc#compile-e__0 _stx245017_)
                     (let ((_arg1245024_ (car _args245019_))
                           (_rest245026_ (cdr _args245019_)))
                       (if (null? _rest245026_)
                           (gxc#compile-e__1 _stx245017_ _arg1245024_)
                           (let ((_arg2245029_ (car _rest245026_))
                                 (_rest245031_ (cdr _rest245026_)))
                             (if (null? _rest245031_)
                                 (gxc#compile-e__2
                                  _stx245017_
                                  _arg1245024_
                                  _arg2245029_)
                                 (apply gxc#compile-e
                                        _stx245017_
                                        _arg1245024_
                                        _arg2245029_
                                        _rest245031_))))))))
              (__tmp251765 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp251766
           gxc#current-compile-methods
           __tmp251765))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl245014_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp251767 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl245014_ __tmp251767))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245014_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245014_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245014_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245014_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl245014_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx244997_ . _args244999_)
        (let ((__tmp251769
               (lambda ()
                 (declare (not safe))
                 (if (null? _args244999_)
                     (gxc#compile-e__0 _stx244997_)
                     (let ((_arg1245004_ (car _args244999_))
                           (_rest245006_ (cdr _args244999_)))
                       (if (null? _rest245006_)
                           (gxc#compile-e__1 _stx244997_ _arg1245004_)
                           (let ((_arg2245009_ (car _rest245006_))
                                 (_rest245011_ (cdr _rest245006_)))
                             (if (null? _rest245011_)
                                 (gxc#compile-e__2
                                  _stx244997_
                                  _arg1245004_
                                  _arg2245009_)
                                 (apply gxc#compile-e
                                        _stx244997_
                                        _arg1245004_
                                        _arg2245009_
                                        _rest245011_))))))))
              (__tmp251768 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp251769
           gxc#current-compile-methods
           __tmp251768))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx244900_)
        (let* ((___stx249675249676_ _stx244900_)
               (_g244903244923_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249675249676_)))))
          (let ((___kont249677249678_
                 (lambda (_L244967_ _L244968_)
                   (let ((_sym244986_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244968_))))
                     (if (let ((__tmp251770 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp251770 _sym244986_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym244986_))
                         (let ((_type244987244989_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L244967_))))
                           (if _type244987244989_
                               (let ((_type244992_ _type244987244989_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym244986_
                                  _type244992_))
                               '#f))))))
                (___kont249679249680_ (lambda () '#!void)))
            (let ((___match249708249709_
                   (lambda (_e244909244935_
                            _hd244908244938_
                            _tl244907244940_
                            _e244912244943_
                            _hd244911244946_
                            _tl244910244948_
                            _e244915244951_
                            _hd244914244954_
                            _tl244913244956_
                            _e244918244959_
                            _hd244917244962_
                            _tl244916244964_)
                     (let ((_L244967_ _hd244917244962_)
                           (_L244968_ _hd244914244954_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L244968_))
                           (___kont249677249678_ _L244967_ _L244968_)
                           (___kont249679249680_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx249675249676_))
                  (let ((_e244909244935_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx249675249676_))))
                    (let ((_tl244907244940_
                           (let ()
                             (declare (not safe))
                             (##cdr _e244909244935_)))
                          (_hd244908244938_
                           (let ()
                             (declare (not safe))
                             (##car _e244909244935_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl244907244940_))
                          (let ((_e244912244943_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl244907244940_))))
                            (let ((_tl244910244948_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e244912244943_)))
                                  (_hd244911244946_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e244912244943_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd244911244946_))
                                  (let ((_e244915244951_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd244911244946_))))
                                    (let ((_tl244913244956_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e244915244951_)))
                                          (_hd244914244954_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e244915244951_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl244913244956_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl244910244948_))
                                              (let ((_e244918244959_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl244910244948_))))
                                                (let ((_tl244916244964_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e244918244959_)))
                                                      (_hd244917244962_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e244918244959_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244916244964_))
                                                      (___match249708249709_
                                                       _e244909244935_
                                                       _hd244908244938_
                                                       _tl244907244940_
                                                       _e244912244943_
                                                       _hd244911244946_
                                                       _tl244910244948_
                                                       _e244915244951_
                                                       _hd244914244954_
                                                       _tl244913244956_
                                                       _e244918244959_
                                                       _hd244917244962_
                                                       _tl244916244964_)
                                                      (___kont249679249680_))))
                                              (___kont249679249680_))
                                          (___kont249679249680_))))
                                  (___kont249679249680_))))
                          (___kont249679249680_))))
                  (___kont249679249680_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx244756_)
        (let* ((___stx249711249712_ _stx244756_)
               (_g244759244790_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249711249712_)))))
          (let ((___kont249713249714_
                 (lambda (_L244872_ _L244873_)
                   (let ((_sym244889_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244873_))))
                     (if (let ((__tmp251771 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp251771 _sym244889_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym244889_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym244889_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym244889_))
                             (let ((_type244890244892_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L244872_))))
                               (if _type244890244892_
                                   (let ((_type244895_ _type244890244892_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym244889_
                                      _type244895_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L244872_)))))
                (___kont249715249716_
                 (lambda (_L244819_ _L244820_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L244819_)))))
            (let ((___match249744249745_
                   (lambda (_e244765244840_
                            _hd244764244843_
                            _tl244763244845_
                            _e244768244848_
                            _hd244767244851_
                            _tl244766244853_
                            _e244771244856_
                            _hd244770244859_
                            _tl244769244861_
                            _e244774244864_
                            _hd244773244867_
                            _tl244772244869_)
                     (let ((_L244872_ _hd244773244867_)
                           (_L244873_ _hd244770244859_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L244873_))
                           (___kont249713249714_ _L244872_ _L244873_)
                           (___kont249715249716_
                            _hd244773244867_
                            _hd244767244851_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx249711249712_))
                  (let ((_e244765244840_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx249711249712_))))
                    (let ((_tl244763244845_
                           (let ()
                             (declare (not safe))
                             (##cdr _e244765244840_)))
                          (_hd244764244843_
                           (let ()
                             (declare (not safe))
                             (##car _e244765244840_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl244763244845_))
                          (let ((_e244768244848_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl244763244845_))))
                            (let ((_tl244766244853_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e244768244848_)))
                                  (_hd244767244851_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e244768244848_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd244767244851_))
                                  (let ((_e244771244856_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd244767244851_))))
                                    (let ((_tl244769244861_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e244771244856_)))
                                          (_hd244770244859_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e244771244856_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl244769244861_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl244766244853_))
                                              (let ((_e244774244864_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl244766244853_))))
                                                (let ((_tl244772244869_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e244774244864_)))
                                                      (_hd244773244867_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e244774244864_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244772244869_))
                                                      (___match249744249745_
                                                       _e244765244840_
                                                       _hd244764244843_
                                                       _tl244763244845_
                                                       _e244768244848_
                                                       _hd244767244851_
                                                       _tl244766244853_
                                                       _e244771244856_
                                                       _hd244770244859_
                                                       _tl244769244861_
                                                       _e244774244864_
                                                       _hd244773244867_
                                                       _tl244772244869_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g244759244790_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g244759244790_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl244766244853_))
                                              (let ((_e244785244811_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl244766244853_))))
                                                (let ((_tl244783244816_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e244785244811_)))
                                                      (_hd244784244814_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e244785244811_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244783244816_))
                                                      (___kont249715249716_
                                                       _hd244784244814_
                                                       _hd244767244851_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g244759244790_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g244759244790_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl244766244853_))
                                      (let ((_e244785244811_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl244766244853_))))
                                        (let ((_tl244783244816_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e244785244811_)))
                                              (_hd244784244814_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e244785244811_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl244783244816_))
                                              (___kont249715249716_
                                               _hd244784244814_
                                               _hd244767244851_)
                                              (let ()
                                                (declare (not safe))
                                                (_g244759244790_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g244759244790_))))))
                          (let () (declare (not safe)) (_g244759244790_)))))
                  (let () (declare (not safe)) (_g244759244790_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx244541_)
        (letrec ((_collect-e244543_
                  (lambda (_hd244700_ _expr244701_)
                    (let* ((___stx249767249768_ _hd244700_)
                           (_g244704244714_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx249767249768_)))))
                      (let ((___kont249769249770_
                             (lambda (_L244734_)
                               (let ((_sym244745_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L244734_))))
                                 (if (let ((__tmp251772
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp251772 _sym244745_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym244745_))
                                     (let ((_type244746244748_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr244701_))))
                                       (if _type244746244748_
                                           (let ((_type244751_
                                                  _type244746244748_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym244745_
                                              _type244751_
                                              '#t))
                                           '#f))))))
                            (___kont249771249772_ (lambda () '#!void)))
                        (let ((___match249780249781_
                               (lambda (_e244709244726_
                                        _hd244708244729_
                                        _tl244707244731_)
                                 (let ((_L244734_ _hd244708244729_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L244734_))
                                       (___kont249769249770_ _L244734_)
                                       (___kont249771249772_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx249767249768_))
                              (let ((_e244709244726_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx249767249768_))))
                                (let ((_tl244707244731_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e244709244726_)))
                                      (_hd244708244729_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e244709244726_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl244707244731_))
                                      (___match249780249781_
                                       _e244709244726_
                                       _hd244708244729_
                                       _tl244707244731_)
                                      (___kont249771249772_))))
                              (___kont249771249772_))))))))
          (let* ((_g244545244580_
                  (lambda (_g244546244577_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g244546244577_))))
                 (_g244544244697_
                  (lambda (_g244546244583_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g244546244583_))
                        (let ((_e244552244585_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g244546244583_))))
                          (let ((_hd244551244588_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e244552244585_)))
                                (_tl244550244590_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e244552244585_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl244550244590_))
                                (let ((_e244555244593_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl244550244590_))))
                                  (let ((_hd244554244596_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244555244593_)))
                                        (_tl244553244598_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244555244593_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd244554244596_))
                                        (let ((_g251773_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd244554244596_
                                                  '0))))
                                          (begin
                                            (let ((_g251774_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g251773_)
                                                         (##vector-length
                                                          _g251773_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g251774_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g251774_)))
                                            (let ((_target244556244601_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g251773_
                                                      0)))
                                                  (_tl244558244603_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g251773_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl244558244603_))
                                                  (letrec ((_loop244559244606_
                                                            (lambda (_hd244557244609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr244563244611_
                             _hd244564244613_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd244557244609_))
                          (let ((_e244560244616_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd244557244609_))))
                            (let ((_lp-hd244561244619_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e244560244616_)))
                                  (_lp-tl244562244621_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e244560244616_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd244561244619_))
                                  (let ((_e244569244624_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd244561244619_))))
                                    (let ((_hd244568244627_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e244569244624_)))
                                          (_tl244567244629_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e244569244624_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl244567244629_))
                                          (let ((_e244572244632_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl244567244629_))))
                                            (let ((_hd244571244635_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e244572244632_)))
                                                  (_tl244570244637_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e244572244632_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl244570244637_))
                                                  (let ((__tmp251779
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd244571244635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr244563244611_)))
                (__tmp251778
                 (let ()
                   (declare (not safe))
                   (cons _hd244568244627_ _hd244564244613_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop244559244606_
                                                     _lp-tl244562244621_
                                                     __tmp251779
                                                     __tmp251778))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244545244580_
                                                     _g244546244583_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g244545244580_
                                             _g244546244583_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g244545244580_ _g244546244583_)))))
                          (let ((_expr244565244640_
                                 (reverse _expr244563244611_))
                                (_hd244566244642_ (reverse _hd244564244613_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl244553244598_))
                                (let ((_e244575244645_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl244553244598_))))
                                  (let ((_hd244574244648_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244575244645_)))
                                        (_tl244573244650_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244575244645_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl244573244650_))
                                        ((lambda (_L244653_
                                                  _L244654_
                                                  _L244655_)
                                           (for-each
                                            _collect-e244543_
                                            (let ((__tmp251775
                                                   (lambda (_g244675244678_
                                                            _g244676244680_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g244675244678_
                                                             _g244676244680_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp251775
                                                      '()
                                                      _L244655_))
                                            (let ((__tmp251776
                                                   (lambda (_g244682244685_
                                                            _g244683244687_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g244682244685_
                                                             _g244683244687_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp251776
                                                      '()
                                                      _L244654_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp251777
                                                   (lambda (_g244689244692_
                                                            _g244690244694_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g244689244692_
                                                             _g244690244694_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp251777
                                                      '()
                                                      _L244654_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L244653_)))
                                         _hd244574244648_
                                         _expr244565244640_
                                         _hd244566244642_)
                                        (let ()
                                          (declare (not safe))
                                          (_g244545244580_ _g244546244583_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g244545244580_ _g244546244583_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop244559244606_
                                                       _target244556244601_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244545244580_
                                                     _g244546244583_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g244545244580_ _g244546244583_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g244545244580_ _g244546244583_)))))
                        (let ()
                          (declare (not safe))
                          (_g244545244580_ _g244546244583_))))))
            (declare (not safe))
            (_g244544244697_ _stx244541_)))))
    (define gxc#collect-type-call%
      (lambda (_stx244033_)
        (let* ((___stx249783249784_ _stx244033_)
               (_g244037244152_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249783249784_)))))
          (let ((___kont249785249786_
                 (lambda (_L244491_ _L244492_ _L244493_ _L244494_ _L244495_)
                   (let ((__tmp251783
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244494_)))
                         (__tmp251782
                          (let () (declare (not safe)) (gx#stx-e _L244493_)))
                         (__tmp251781
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244492_)))
                         (__tmp251780
                          (let () (declare (not safe)) (gx#stx-e _L244491_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp251783
                      __tmp251782
                      __tmp251781
                      __tmp251780))))
                (___kont249787249788_
                 (lambda (_L244319_ _L244320_ _L244321_ _L244322_)
                   (let ((__tmp251786
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244321_)))
                         (__tmp251785
                          (let () (declare (not safe)) (gx#stx-e _L244320_)))
                         (__tmp251784
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244319_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp251786
                      __tmp251785
                      __tmp251784
                      '#f))))
                (___kont249789249790_
                 (lambda (_L244189_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp251787
                           (lambda (_g244202244205_ _g244203244207_)
                             (let ()
                               (declare (not safe))
                               (cons _g244202244205_ _g244203244207_)))))
                      (declare (not safe))
                      (foldr1 __tmp251787 '() _L244189_))))))
            (let* ((___match250040250041_
                    (lambda (_e244138244157_
                             _hd244137244160_
                             _tl244136244162_
                             ___splice249791249792_
                             _target244139244165_
                             _tl244141244167_)
                      (letrec ((_loop244142244170_
                                (lambda (_hd244140244173_ _expr244146244175_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd244140244173_))
                                      (let ((_e244143244178_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd244140244173_))))
                                        (let ((_lp-tl244145244183_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e244143244178_)))
                                              (_lp-hd244144244181_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e244143244178_))))
                                          (let ((__tmp251788
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd244144244181_
                                                         _expr244146244175_))))
                                            (declare (not safe))
                                            (_loop244142244170_
                                             _lp-tl244145244183_
                                             __tmp251788))))
                                      (let ((_expr244147244186_
                                             (reverse _expr244146244175_)))
                                        (___kont249789249790_
                                         _expr244147244186_))))))
                        (let ()
                          (declare (not safe))
                          (_loop244142244170_ _target244139244165_ '())))))
                   (___match249920249921_
                    (lambda (_e244046244363_
                             _hd244045244366_
                             _tl244044244368_
                             _e244049244371_
                             _hd244048244374_
                             _tl244047244376_
                             _e244052244379_
                             _hd244051244382_
                             _tl244050244384_
                             _e244055244387_
                             _hd244054244390_
                             _tl244053244392_
                             _e244058244395_
                             _hd244057244398_
                             _tl244056244400_
                             _e244061244403_
                             _hd244060244406_
                             _tl244059244408_
                             _e244064244411_
                             _hd244063244414_
                             _tl244062244416_
                             _e244067244419_
                             _hd244066244422_
                             _tl244065244424_
                             _e244070244427_
                             _hd244069244430_
                             _tl244068244432_
                             _e244073244435_
                             _hd244072244438_
                             _tl244071244440_
                             _e244076244443_
                             _hd244075244446_
                             _tl244074244448_
                             _e244079244451_
                             _hd244078244454_
                             _tl244077244456_
                             _e244082244459_
                             _hd244081244462_
                             _tl244080244464_
                             _e244085244467_
                             _hd244084244470_
                             _tl244083244472_
                             _e244088244475_
                             _hd244087244478_
                             _tl244086244480_
                             _e244091244483_
                             _hd244090244486_
                             _tl244089244488_)
                      (let ((_L244491_ _hd244090244486_)
                            (_L244492_ _hd244081244462_)
                            (_L244493_ _hd244072244438_)
                            (_L244494_ _hd244063244414_)
                            (_L244495_ _hd244054244390_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L244495_
                               'bind-method!))
                            (___kont249785249786_
                             _L244491_
                             _L244492_
                             _L244493_
                             _L244494_
                             _L244495_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl244044244368_))
                                (let ((___splice249791249792_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl244044244368_
                                          '0))))
                                  (let ((_tl244141244167_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice249791249792_
                                            '1)))
                                        (_target244139244165_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice249791249792_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl244141244167_))
                                        (___match250040250041_
                                         _e244046244363_
                                         _hd244045244366_
                                         _tl244044244368_
                                         ___splice249791249792_
                                         _target244139244165_
                                         _tl244141244167_)
                                        (let ()
                                          (declare (not safe))
                                          (_g244037244152_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g244037244152_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx249783249784_))
                  (let ((_e244046244363_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx249783249784_))))
                    (let ((_tl244044244368_
                           (let ()
                             (declare (not safe))
                             (##cdr _e244046244363_)))
                          (_hd244045244366_
                           (let ()
                             (declare (not safe))
                             (##car _e244046244363_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl244044244368_))
                          (let ((_e244049244371_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl244044244368_))))
                            (let ((_tl244047244376_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e244049244371_)))
                                  (_hd244048244374_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e244049244371_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd244048244374_))
                                  (let ((_e244052244379_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd244048244374_))))
                                    (let ((_tl244050244384_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e244052244379_)))
                                          (_hd244051244382_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e244052244379_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd244051244382_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd244051244382_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl244050244384_))
                                                  (let ((_e244055244387_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl244050244384_))))
                                                    (let ((_tl244053244392_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e244055244387_)))
                                                          (_hd244054244390_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e244055244387_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl244053244392_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl244047244376_))
                      (let ((_e244058244395_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl244047244376_))))
                        (let ((_tl244056244400_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e244058244395_)))
                              (_hd244057244398_
                               (let ()
                                 (declare (not safe))
                                 (##car _e244058244395_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd244057244398_))
                              (let ((_e244061244403_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd244057244398_))))
                                (let ((_tl244059244408_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e244061244403_)))
                                      (_hd244060244406_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e244061244403_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd244060244406_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd244060244406_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl244059244408_))
                                              (let ((_e244064244411_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl244059244408_))))
                                                (let ((_tl244062244416_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e244064244411_)))
                                                      (_hd244063244414_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e244064244411_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244062244416_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl244056244400_))
                                                          (let ((_e244067244419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl244056244400_))))
                    (let ((_tl244065244424_
                           (let ()
                             (declare (not safe))
                             (##cdr _e244067244419_)))
                          (_hd244066244422_
                           (let ()
                             (declare (not safe))
                             (##car _e244067244419_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd244066244422_))
                          (let ((_e244070244427_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd244066244422_))))
                            (let ((_tl244068244432_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e244070244427_)))
                                  (_hd244069244430_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e244070244427_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd244069244430_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd244069244430_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl244068244432_))
                                          (let ((_e244073244435_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl244068244432_))))
                                            (let ((_tl244071244440_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e244073244435_)))
                                                  (_hd244072244438_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e244073244435_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl244071244440_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl244065244424_))
                                                      (let ((_e244076244443_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl244065244424_))))
                (let ((_tl244074244448_
                       (let () (declare (not safe)) (##cdr _e244076244443_)))
                      (_hd244075244446_
                       (let () (declare (not safe)) (##car _e244076244443_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd244075244446_))
                      (let ((_e244079244451_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd244075244446_))))
                        (let ((_tl244077244456_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e244079244451_)))
                              (_hd244078244454_
                               (let ()
                                 (declare (not safe))
                                 (##car _e244079244451_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd244078244454_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd244078244454_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl244077244456_))
                                      (let ((_e244082244459_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl244077244456_))))
                                        (let ((_tl244080244464_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e244082244459_)))
                                              (_hd244081244462_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e244082244459_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl244080244464_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl244074244448_))
                                                  (let ((_e244085244467_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl244074244448_))))
                                                    (let ((_tl244083244472_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e244085244467_)))
                                                          (_hd244084244470_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e244085244467_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd244084244470_))
                                                          (let ((_e244088244475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd244084244470_))))
                    (let ((_tl244086244480_
                           (let ()
                             (declare (not safe))
                             (##cdr _e244088244475_)))
                          (_hd244087244478_
                           (let ()
                             (declare (not safe))
                             (##car _e244088244475_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd244087244478_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd244087244478_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl244086244480_))
                                  (let ((_e244091244483_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl244086244480_))))
                                    (let ((_tl244089244488_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e244091244483_)))
                                          (_hd244090244486_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e244091244483_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl244089244488_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl244083244472_))
                                              (___match249920249921_
                                               _e244046244363_
                                               _hd244045244366_
                                               _tl244044244368_
                                               _e244049244371_
                                               _hd244048244374_
                                               _tl244047244376_
                                               _e244052244379_
                                               _hd244051244382_
                                               _tl244050244384_
                                               _e244055244387_
                                               _hd244054244390_
                                               _tl244053244392_
                                               _e244058244395_
                                               _hd244057244398_
                                               _tl244056244400_
                                               _e244061244403_
                                               _hd244060244406_
                                               _tl244059244408_
                                               _e244064244411_
                                               _hd244063244414_
                                               _tl244062244416_
                                               _e244067244419_
                                               _hd244066244422_
                                               _tl244065244424_
                                               _e244070244427_
                                               _hd244069244430_
                                               _tl244068244432_
                                               _e244073244435_
                                               _hd244072244438_
                                               _tl244071244440_
                                               _e244076244443_
                                               _hd244075244446_
                                               _tl244074244448_
                                               _e244079244451_
                                               _hd244078244454_
                                               _tl244077244456_
                                               _e244082244459_
                                               _hd244081244462_
                                               _tl244080244464_
                                               _e244085244467_
                                               _hd244084244470_
                                               _tl244083244472_
                                               _e244088244475_
                                               _hd244087244478_
                                               _tl244086244480_
                                               _e244091244483_
                                               _hd244090244486_
                                               _tl244089244488_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl244044244368_))
                                                  (let ((___splice249791249792_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl244044244368_
                                                            '0))))
                                                    (let ((_tl244141244167_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249791249792_
                                                              '1)))
                                                          (_target244139244165_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249791249792_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl244141244167_))
                                                          (___match250040250041_
                                                           _e244046244363_
                                                           _hd244045244366_
                                                           _tl244044244368_
                                                           ___splice249791249792_
                                                           _target244139244165_
                                                           _tl244141244167_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g244037244152_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244037244152_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl244044244368_))
                                              (let ((___splice249791249792_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl244044244368_
                                                        '0))))
                                                (let ((_tl244141244167_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249791249792_
                                                          '1)))
                                                      (_target244139244165_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249791249792_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244141244167_))
                                                      (___match250040250041_
                                                       _e244046244363_
                                                       _hd244045244366_
                                                       _tl244044244368_
                                                       ___splice249791249792_
                                                       _target244139244165_
                                                       _tl244141244167_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g244037244152_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g244037244152_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl244044244368_))
                                      (let ((___splice249791249792_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl244044244368_
                                                '0))))
                                        (let ((_tl244141244167_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249791249792_
                                                  '1)))
                                              (_target244139244165_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249791249792_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl244141244167_))
                                              (___match250040250041_
                                               _e244046244363_
                                               _hd244045244366_
                                               _tl244044244368_
                                               ___splice249791249792_
                                               _target244139244165_
                                               _tl244141244167_)
                                              (let ()
                                                (declare (not safe))
                                                (_g244037244152_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g244037244152_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl244044244368_))
                                  (let ((___splice249791249792_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl244044244368_
                                            '0))))
                                    (let ((_tl244141244167_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249791249792_
                                              '1)))
                                          (_target244139244165_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249791249792_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl244141244167_))
                                          (___match250040250041_
                                           _e244046244363_
                                           _hd244045244366_
                                           _tl244044244368_
                                           ___splice249791249792_
                                           _target244139244165_
                                           _tl244141244167_)
                                          (let ()
                                            (declare (not safe))
                                            (_g244037244152_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g244037244152_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl244044244368_))
                              (let ((___splice249791249792_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl244044244368_
                                        '0))))
                                (let ((_tl244141244167_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249791249792_
                                          '1)))
                                      (_target244139244165_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249791249792_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl244141244167_))
                                      (___match250040250041_
                                       _e244046244363_
                                       _hd244045244366_
                                       _tl244044244368_
                                       ___splice249791249792_
                                       _target244139244165_
                                       _tl244141244167_)
                                      (let ()
                                        (declare (not safe))
                                        (_g244037244152_)))))
                              (let ()
                                (declare (not safe))
                                (_g244037244152_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl244044244368_))
                      (let ((___splice249791249792_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl244044244368_ '0))))
                        (let ((_tl244141244167_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249791249792_ '1)))
                              (_target244139244165_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249791249792_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl244141244167_))
                              (___match250040250041_
                               _e244046244363_
                               _hd244045244366_
                               _tl244044244368_
                               ___splice249791249792_
                               _target244139244165_
                               _tl244141244167_)
                              (let ()
                                (declare (not safe))
                                (_g244037244152_)))))
                      (let () (declare (not safe)) (_g244037244152_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244074244448_))
                                                      (if (let ((__tmp251789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp251789 'bind-method!))
                  (let ((_L244319_ _hd244081244462_)
                        (_L244320_ _hd244072244438_)
                        (_L244321_ _hd244063244414_)
                        (_L244322_ _hd244054244390_))
                    (___kont249787249788_
                     _L244319_
                     _L244320_
                     _L244321_
                     _L244322_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl244044244368_))
                      (let ((___splice249791249792_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl244044244368_ '0))))
                        (let ((_tl244141244167_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249791249792_ '1)))
                              (_target244139244165_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249791249792_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl244141244167_))
                              (___match250040250041_
                               _e244046244363_
                               _hd244045244366_
                               _tl244044244368_
                               ___splice249791249792_
                               _target244139244165_
                               _tl244141244167_)
                              (let ()
                                (declare (not safe))
                                (_g244037244152_)))))
                      (let () (declare (not safe)) (_g244037244152_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl244044244368_))
                  (let ((___splice249791249792_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl244044244368_ '0))))
                    (let ((_tl244141244167_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249791249792_ '1)))
                          (_target244139244165_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249791249792_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl244141244167_))
                          (___match250040250041_
                           _e244046244363_
                           _hd244045244366_
                           _tl244044244368_
                           ___splice249791249792_
                           _target244139244165_
                           _tl244141244167_)
                          (let () (declare (not safe)) (_g244037244152_)))))
                  (let () (declare (not safe)) (_g244037244152_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl244044244368_))
                                                  (let ((___splice249791249792_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl244044244368_
                                                            '0))))
                                                    (let ((_tl244141244167_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249791249792_
                                                              '1)))
                                                          (_target244139244165_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249791249792_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl244141244167_))
                                                          (___match250040250041_
                                                           _e244046244363_
                                                           _hd244045244366_
                                                           _tl244044244368_
                                                           ___splice249791249792_
                                                           _target244139244165_
                                                           _tl244141244167_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g244037244152_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244037244152_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl244044244368_))
                                          (let ((___splice249791249792_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl244044244368_
                                                    '0))))
                                            (let ((_tl244141244167_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249791249792_
                                                      '1)))
                                                  (_target244139244165_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249791249792_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl244141244167_))
                                                  (___match250040250041_
                                                   _e244046244363_
                                                   _hd244045244366_
                                                   _tl244044244368_
                                                   ___splice249791249792_
                                                   _target244139244165_
                                                   _tl244141244167_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244037244152_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g244037244152_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl244044244368_))
                                      (let ((___splice249791249792_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl244044244368_
                                                '0))))
                                        (let ((_tl244141244167_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249791249792_
                                                  '1)))
                                              (_target244139244165_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249791249792_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl244141244167_))
                                              (___match250040250041_
                                               _e244046244363_
                                               _hd244045244366_
                                               _tl244044244368_
                                               ___splice249791249792_
                                               _target244139244165_
                                               _tl244141244167_)
                                              (let ()
                                                (declare (not safe))
                                                (_g244037244152_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g244037244152_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl244044244368_))
                                  (let ((___splice249791249792_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl244044244368_
                                            '0))))
                                    (let ((_tl244141244167_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249791249792_
                                              '1)))
                                          (_target244139244165_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249791249792_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl244141244167_))
                                          (___match250040250041_
                                           _e244046244363_
                                           _hd244045244366_
                                           _tl244044244368_
                                           ___splice249791249792_
                                           _target244139244165_
                                           _tl244141244167_)
                                          (let ()
                                            (declare (not safe))
                                            (_g244037244152_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g244037244152_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl244044244368_))
                          (let ((___splice249791249792_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl244044244368_
                                    '0))))
                            (let ((_tl244141244167_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice249791249792_ '1)))
                                  (_target244139244165_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice249791249792_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl244141244167_))
                                  (___match250040250041_
                                   _e244046244363_
                                   _hd244045244366_
                                   _tl244044244368_
                                   ___splice249791249792_
                                   _target244139244165_
                                   _tl244141244167_)
                                  (let ()
                                    (declare (not safe))
                                    (_g244037244152_)))))
                          (let () (declare (not safe)) (_g244037244152_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl244044244368_))
                  (let ((___splice249791249792_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl244044244368_ '0))))
                    (let ((_tl244141244167_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249791249792_ '1)))
                          (_target244139244165_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249791249792_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl244141244167_))
                          (___match250040250041_
                           _e244046244363_
                           _hd244045244366_
                           _tl244044244368_
                           ___splice249791249792_
                           _target244139244165_
                           _tl244141244167_)
                          (let () (declare (not safe)) (_g244037244152_)))))
                  (let () (declare (not safe)) (_g244037244152_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl244044244368_))
                                                      (let ((___splice249791249792_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl244044244368_ '0))))
                (let ((_tl244141244167_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice249791249792_ '1)))
                      (_target244139244165_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice249791249792_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl244141244167_))
                      (___match250040250041_
                       _e244046244363_
                       _hd244045244366_
                       _tl244044244368_
                       ___splice249791249792_
                       _target244139244165_
                       _tl244141244167_)
                      (let () (declare (not safe)) (_g244037244152_)))))
              (let () (declare (not safe)) (_g244037244152_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl244044244368_))
                                              (let ((___splice249791249792_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl244044244368_
                                                        '0))))
                                                (let ((_tl244141244167_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249791249792_
                                                          '1)))
                                                      (_target244139244165_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249791249792_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244141244167_))
                                                      (___match250040250041_
                                                       _e244046244363_
                                                       _hd244045244366_
                                                       _tl244044244368_
                                                       ___splice249791249792_
                                                       _target244139244165_
                                                       _tl244141244167_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g244037244152_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g244037244152_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl244044244368_))
                                          (let ((___splice249791249792_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl244044244368_
                                                    '0))))
                                            (let ((_tl244141244167_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249791249792_
                                                      '1)))
                                                  (_target244139244165_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249791249792_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl244141244167_))
                                                  (___match250040250041_
                                                   _e244046244363_
                                                   _hd244045244366_
                                                   _tl244044244368_
                                                   ___splice249791249792_
                                                   _target244139244165_
                                                   _tl244141244167_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244037244152_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g244037244152_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl244044244368_))
                                      (let ((___splice249791249792_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl244044244368_
                                                '0))))
                                        (let ((_tl244141244167_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249791249792_
                                                  '1)))
                                              (_target244139244165_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249791249792_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl244141244167_))
                                              (___match250040250041_
                                               _e244046244363_
                                               _hd244045244366_
                                               _tl244044244368_
                                               ___splice249791249792_
                                               _target244139244165_
                                               _tl244141244167_)
                                              (let ()
                                                (declare (not safe))
                                                (_g244037244152_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g244037244152_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl244044244368_))
                              (let ((___splice249791249792_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl244044244368_
                                        '0))))
                                (let ((_tl244141244167_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249791249792_
                                          '1)))
                                      (_target244139244165_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249791249792_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl244141244167_))
                                      (___match250040250041_
                                       _e244046244363_
                                       _hd244045244366_
                                       _tl244044244368_
                                       ___splice249791249792_
                                       _target244139244165_
                                       _tl244141244167_)
                                      (let ()
                                        (declare (not safe))
                                        (_g244037244152_)))))
                              (let ()
                                (declare (not safe))
                                (_g244037244152_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl244044244368_))
                      (let ((___splice249791249792_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl244044244368_ '0))))
                        (let ((_tl244141244167_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249791249792_ '1)))
                              (_target244139244165_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249791249792_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl244141244167_))
                              (___match250040250041_
                               _e244046244363_
                               _hd244045244366_
                               _tl244044244368_
                               ___splice249791249792_
                               _target244139244165_
                               _tl244141244167_)
                              (let ()
                                (declare (not safe))
                                (_g244037244152_)))))
                      (let () (declare (not safe)) (_g244037244152_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl244044244368_))
                  (let ((___splice249791249792_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl244044244368_ '0))))
                    (let ((_tl244141244167_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249791249792_ '1)))
                          (_target244139244165_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249791249792_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl244141244167_))
                          (___match250040250041_
                           _e244046244363_
                           _hd244045244366_
                           _tl244044244368_
                           ___splice249791249792_
                           _target244139244165_
                           _tl244141244167_)
                          (let () (declare (not safe)) (_g244037244152_)))))
                  (let () (declare (not safe)) (_g244037244152_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl244044244368_))
                                                  (let ((___splice249791249792_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl244044244368_
                                                            '0))))
                                                    (let ((_tl244141244167_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249791249792_
                                                              '1)))
                                                          (_target244139244165_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249791249792_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl244141244167_))
                                                          (___match250040250041_
                                                           _e244046244363_
                                                           _hd244045244366_
                                                           _tl244044244368_
                                                           ___splice249791249792_
                                                           _target244139244165_
                                                           _tl244141244167_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g244037244152_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244037244152_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl244044244368_))
                                              (let ((___splice249791249792_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl244044244368_
                                                        '0))))
                                                (let ((_tl244141244167_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249791249792_
                                                          '1)))
                                                      (_target244139244165_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249791249792_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244141244167_))
                                                      (___match250040250041_
                                                       _e244046244363_
                                                       _hd244045244366_
                                                       _tl244044244368_
                                                       ___splice249791249792_
                                                       _target244139244165_
                                                       _tl244141244167_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g244037244152_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g244037244152_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl244044244368_))
                                          (let ((___splice249791249792_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl244044244368_
                                                    '0))))
                                            (let ((_tl244141244167_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249791249792_
                                                      '1)))
                                                  (_target244139244165_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249791249792_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl244141244167_))
                                                  (___match250040250041_
                                                   _e244046244363_
                                                   _hd244045244366_
                                                   _tl244044244368_
                                                   ___splice249791249792_
                                                   _target244139244165_
                                                   _tl244141244167_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244037244152_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g244037244152_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl244044244368_))
                                  (let ((___splice249791249792_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl244044244368_
                                            '0))))
                                    (let ((_tl244141244167_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249791249792_
                                              '1)))
                                          (_target244139244165_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249791249792_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl244141244167_))
                                          (___match250040250041_
                                           _e244046244363_
                                           _hd244045244366_
                                           _tl244044244368_
                                           ___splice249791249792_
                                           _target244139244165_
                                           _tl244141244167_)
                                          (let ()
                                            (declare (not safe))
                                            (_g244037244152_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g244037244152_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl244044244368_))
                          (let ((___splice249791249792_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl244044244368_
                                    '0))))
                            (let ((_tl244141244167_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice249791249792_ '1)))
                                  (_target244139244165_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice249791249792_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl244141244167_))
                                  (___match250040250041_
                                   _e244046244363_
                                   _hd244045244366_
                                   _tl244044244368_
                                   ___splice249791249792_
                                   _target244139244165_
                                   _tl244141244167_)
                                  (let ()
                                    (declare (not safe))
                                    (_g244037244152_)))))
                          (let () (declare (not safe)) (_g244037244152_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl244044244368_))
                      (let ((___splice249791249792_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl244044244368_ '0))))
                        (let ((_tl244141244167_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249791249792_ '1)))
                              (_target244139244165_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249791249792_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl244141244167_))
                              (___match250040250041_
                               _e244046244363_
                               _hd244045244366_
                               _tl244044244368_
                               ___splice249791249792_
                               _target244139244165_
                               _tl244141244167_)
                              (let ()
                                (declare (not safe))
                                (_g244037244152_)))))
                      (let () (declare (not safe)) (_g244037244152_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl244044244368_))
                                                      (let ((___splice249791249792_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl244044244368_ '0))))
                (let ((_tl244141244167_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice249791249792_ '1)))
                      (_target244139244165_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice249791249792_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl244141244167_))
                      (___match250040250041_
                       _e244046244363_
                       _hd244045244366_
                       _tl244044244368_
                       ___splice249791249792_
                       _target244139244165_
                       _tl244141244167_)
                      (let () (declare (not safe)) (_g244037244152_)))))
              (let () (declare (not safe)) (_g244037244152_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl244044244368_))
                                                  (let ((___splice249791249792_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl244044244368_
                                                            '0))))
                                                    (let ((_tl244141244167_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249791249792_
                                                              '1)))
                                                          (_target244139244165_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249791249792_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl244141244167_))
                                                          (___match250040250041_
                                                           _e244046244363_
                                                           _hd244045244366_
                                                           _tl244044244368_
                                                           ___splice249791249792_
                                                           _target244139244165_
                                                           _tl244141244167_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g244037244152_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244037244152_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl244044244368_))
                                              (let ((___splice249791249792_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl244044244368_
                                                        '0))))
                                                (let ((_tl244141244167_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249791249792_
                                                          '1)))
                                                      (_target244139244165_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249791249792_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244141244167_))
                                                      (___match250040250041_
                                                       _e244046244363_
                                                       _hd244045244366_
                                                       _tl244044244368_
                                                       ___splice249791249792_
                                                       _target244139244165_
                                                       _tl244141244167_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g244037244152_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g244037244152_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl244044244368_))
                                      (let ((___splice249791249792_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl244044244368_
                                                '0))))
                                        (let ((_tl244141244167_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249791249792_
                                                  '1)))
                                              (_target244139244165_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249791249792_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl244141244167_))
                                              (___match250040250041_
                                               _e244046244363_
                                               _hd244045244366_
                                               _tl244044244368_
                                               ___splice249791249792_
                                               _target244139244165_
                                               _tl244141244167_)
                                              (let ()
                                                (declare (not safe))
                                                (_g244037244152_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g244037244152_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl244044244368_))
                              (let ((___splice249791249792_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl244044244368_
                                        '0))))
                                (let ((_tl244141244167_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249791249792_
                                          '1)))
                                      (_target244139244165_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249791249792_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl244141244167_))
                                      (___match250040250041_
                                       _e244046244363_
                                       _hd244045244366_
                                       _tl244044244368_
                                       ___splice249791249792_
                                       _target244139244165_
                                       _tl244141244167_)
                                      (let ()
                                        (declare (not safe))
                                        (_g244037244152_)))))
                              (let ()
                                (declare (not safe))
                                (_g244037244152_))))))
                  (let () (declare (not safe)) (_g244037244152_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx243973_)
        (let* ((___stx250043250044_ _stx243973_)
               (_g243976243989_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250043250044_)))))
          (let ((___kont250045250046_
                 (lambda (_L244017_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L244017_))))
                (___kont250047250048_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx250043250044_))
                (let ((_e243981244001_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx250043250044_))))
                  (let ((_tl243979244006_
                         (let () (declare (not safe)) (##cdr _e243981244001_)))
                        (_hd243980244004_
                         (let ()
                           (declare (not safe))
                           (##car _e243981244001_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl243979244006_))
                        (let ((_e243984244009_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl243979244006_))))
                          (let ((_tl243982244014_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e243984244009_)))
                                (_hd243983244012_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e243984244009_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl243982244014_))
                                (___kont250045250046_ _hd243983244012_)
                                (___kont250047250048_))))
                        (___kont250047250048_))))
                (___kont250047250048_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx243853_)
        (let* ((_g243855243872_
                (lambda (_g243856243869_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243856243869_))))
               (_g243854243970_
                (lambda (_g243856243875_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243856243875_))
                      (let ((_e243861243877_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243856243875_))))
                        (let ((_hd243860243880_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243861243877_)))
                              (_tl243859243882_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243861243877_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243859243882_))
                              (let ((_e243864243885_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243859243882_))))
                                (let ((_hd243863243888_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243864243885_)))
                                      (_tl243862243890_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243864243885_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243862243890_))
                                      (let ((_e243867243893_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243862243890_))))
                                        (let ((_hd243866243896_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243867243893_)))
                                              (_tl243865243898_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243867243893_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243865243898_))
                                              ((lambda (_L243901_ _L243902_)
                                                 (let* ((___stx250065250066_
                                                         _L243902_)
                                                        (_g243918243929_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx250065250066_)))))
                                                   (let ((___kont250067250068_
                                                          (lambda (_L243949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L243950_)
                    (let ((_$e243962_
                           (let ((__tmp251790
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L243950_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp251790
                              '#f))))
                      (if _$e243962_
                          ((lambda (_type-e243965_)
                             (_type-e243965_ _stx243853_ _L243902_))
                           _$e243962_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L243901_))))))
                 (___kont250069250070_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L243901_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match250076250077_
                                                            (lambda (_e243924243941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd243923243944_
                             _tl243922243946_)
                      (let ((_L243949_ _tl243922243946_)
                            (_L243950_ _hd243923243944_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L243950_))
                            (___kont250067250068_ _L243949_ _L243950_)
                            (___kont250069250070_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx250065250066_))
                   (let ((_e243924243941_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx250065250066_))))
                     (let ((_tl243922243946_
                            (let ()
                              (declare (not safe))
                              (##cdr _e243924243941_)))
                           (_hd243923243944_
                            (let ()
                              (declare (not safe))
                              (##car _e243924243941_))))
                       (___match250076250077_
                        _e243924243941_
                        _hd243923243944_
                        _tl243922243946_)))
                   (___kont250069250070_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd243866243896_
                                               _hd243863243888_)
                                              (let ()
                                                (declare (not safe))
                                                (_g243855243872_
                                                 _g243856243875_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243855243872_ _g243856243875_)))))
                              (let ()
                                (declare (not safe))
                                (_g243855243872_ _g243856243875_)))))
                      (let ()
                        (declare (not safe))
                        (_g243855243872_ _g243856243875_))))))
          (declare (not safe))
          (_g243854243970_ _stx243853_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx243697_ _ann243698_)
        (let* ((_g243700243737_
                (lambda (_g243701243734_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243701243734_))))
               (_g243699243850_
                (lambda (_g243701243740_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243701243740_))
                      (let ((_e243711243742_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243701243740_))))
                        (let ((_hd243710243745_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243711243742_)))
                              (_tl243709243747_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243711243742_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243709243747_))
                              (let ((_e243714243750_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243709243747_))))
                                (let ((_hd243713243753_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243714243750_)))
                                      (_tl243712243755_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243714243750_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243712243755_))
                                      (let ((_e243717243758_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243712243755_))))
                                        (let ((_hd243716243761_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243717243758_)))
                                              (_tl243715243763_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243717243758_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl243715243763_))
                                              (let ((_e243720243766_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl243715243763_))))
                                                (let ((_hd243719243769_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243720243766_)))
                                                      (_tl243718243771_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243720243766_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl243718243771_))
                                                      (let ((_e243723243774_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl243718243771_))))
                (let ((_hd243722243777_
                       (let () (declare (not safe)) (##car _e243723243774_)))
                      (_tl243721243779_
                       (let () (declare (not safe)) (##cdr _e243723243774_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl243721243779_))
                      (let ((_e243726243782_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl243721243779_))))
                        (let ((_hd243725243785_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243726243782_)))
                              (_tl243724243787_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243726243782_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243724243787_))
                              (let ((_e243729243790_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243724243787_))))
                                (let ((_hd243728243793_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243729243790_)))
                                      (_tl243727243795_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243729243790_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243727243795_))
                                      (let ((_e243732243798_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243727243795_))))
                                        (let ((_hd243731243801_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243732243798_)))
                                              (_tl243730243803_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243732243798_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243730243803_))
                                              ((lambda (_L243806_
                                                        _L243807_
                                                        _L243808_
                                                        _L243809_
                                                        _L243810_
                                                        _L243811_
                                                        _L243812_)
                                                 (let ((_type-id243842_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L243812_)))
                                                       (_super243843_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L243811_)))
                                                       (_slots243844_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L243810_)))
                                                       (_ctor-method243845_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L243809_)))
                                                       (_struct?243846_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L243808_)))
                                                       (_final?243847_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L243807_)))
                                                       (_metaclass243848_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L243806_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L243806_))
                                                            '#f)))
                                                   (let ((__obj251748
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
                                                      __obj251748
                                                      _type-id243842_
                                                      _super243843_
                                                      _slots243844_
                                                      _ctor-method243845_
                                                      _struct?243846_
                                                      _final?243847_
                                                      _metaclass243848_)
                                                     __obj251748)))
                                               _hd243731243801_
                                               _hd243728243793_
                                               _hd243725243785_
                                               _hd243722243777_
                                               _hd243719243769_
                                               _hd243716243761_
                                               _hd243713243753_)
                                              (let ()
                                                (declare (not safe))
                                                (_g243700243737_
                                                 _g243701243740_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243700243737_ _g243701243740_)))))
                              (let ()
                                (declare (not safe))
                                (_g243700243737_ _g243701243740_)))))
                      (let ()
                        (declare (not safe))
                        (_g243700243737_ _g243701243740_)))))
              (let ()
                (declare (not safe))
                (_g243700243737_ _g243701243740_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g243700243737_
                                                 _g243701243740_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243700243737_ _g243701243740_)))))
                              (let ()
                                (declare (not safe))
                                (_g243700243737_ _g243701243740_)))))
                      (let ()
                        (declare (not safe))
                        (_g243700243737_ _g243701243740_))))))
          (declare (not safe))
          (_g243699243850_ _ann243698_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx243645_ _ann243646_)
        (let* ((_g243648243661_
                (lambda (_g243649243658_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243649243658_))))
               (_g243647243694_
                (lambda (_g243649243664_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243649243664_))
                      (let ((_e243653243666_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243649243664_))))
                        (let ((_hd243652243669_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243653243666_)))
                              (_tl243651243671_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243653243666_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243651243671_))
                              (let ((_e243656243674_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243651243671_))))
                                (let ((_hd243655243677_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243656243674_)))
                                      (_tl243654243679_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243656243674_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl243654243679_))
                                      ((lambda (_L243682_)
                                         (let ((__tmp251791
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L243682_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp251791)))
                                       _hd243655243677_)
                                      (let ()
                                        (declare (not safe))
                                        (_g243648243661_ _g243649243664_)))))
                              (let ()
                                (declare (not safe))
                                (_g243648243661_ _g243649243664_)))))
                      (let ()
                        (declare (not safe))
                        (_g243648243661_ _g243649243664_))))))
          (declare (not safe))
          (_g243647243694_ _ann243646_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx243593_ _ann243594_)
        (let* ((_g243596243609_
                (lambda (_g243597243606_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243597243606_))))
               (_g243595243642_
                (lambda (_g243597243612_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243597243612_))
                      (let ((_e243601243614_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243597243612_))))
                        (let ((_hd243600243617_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243601243614_)))
                              (_tl243599243619_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243601243614_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243599243619_))
                              (let ((_e243604243622_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243599243619_))))
                                (let ((_hd243603243625_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243604243622_)))
                                      (_tl243602243627_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243604243622_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl243602243627_))
                                      ((lambda (_L243630_)
                                         (let ((__tmp251792
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L243630_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp251792)))
                                       _hd243603243625_)
                                      (let ()
                                        (declare (not safe))
                                        (_g243596243609_ _g243597243612_)))))
                              (let ()
                                (declare (not safe))
                                (_g243596243609_ _g243597243612_)))))
                      (let ()
                        (declare (not safe))
                        (_g243596243609_ _g243597243612_))))))
          (declare (not safe))
          (_g243595243642_ _ann243594_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx243509_ _ann243510_)
        (let* ((_g243512243533_
                (lambda (_g243513243530_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243513243530_))))
               (_g243511243590_
                (lambda (_g243513243536_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243513243536_))
                      (let ((_e243519243538_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243513243536_))))
                        (let ((_hd243518243541_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243519243538_)))
                              (_tl243517243543_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243519243538_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243517243543_))
                              (let ((_e243522243546_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243517243543_))))
                                (let ((_hd243521243549_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243522243546_)))
                                      (_tl243520243551_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243522243546_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243520243551_))
                                      (let ((_e243525243554_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243520243551_))))
                                        (let ((_hd243524243557_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243525243554_)))
                                              (_tl243523243559_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243525243554_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl243523243559_))
                                              (let ((_e243528243562_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl243523243559_))))
                                                (let ((_hd243527243565_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243528243562_)))
                                                      (_tl243526243567_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243528243562_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243526243567_))
                                                      ((lambda (_L243570_
                                                                _L243571_
                                                                _L243572_)
                                                         (let ((__tmp251795
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L243572_)))
                       (__tmp251794
                        (let () (declare (not safe)) (gx#stx-e _L243571_)))
                       (__tmp251793
                        (let () (declare (not safe)) (gx#stx-e _L243570_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp251795
                    __tmp251794
                    __tmp251793)))
               _hd243527243565_
               _hd243524243557_
               _hd243521243549_)
              (let ()
                (declare (not safe))
                (_g243512243533_ _g243513243536_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g243512243533_
                                                 _g243513243536_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243512243533_ _g243513243536_)))))
                              (let ()
                                (declare (not safe))
                                (_g243512243533_ _g243513243536_)))))
                      (let ()
                        (declare (not safe))
                        (_g243512243533_ _g243513243536_))))))
          (declare (not safe))
          (_g243511243590_ _ann243510_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx243425_ _ann243426_)
        (let* ((_g243428243449_
                (lambda (_g243429243446_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243429243446_))))
               (_g243427243506_
                (lambda (_g243429243452_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243429243452_))
                      (let ((_e243435243454_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243429243452_))))
                        (let ((_hd243434243457_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243435243454_)))
                              (_tl243433243459_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243435243454_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243433243459_))
                              (let ((_e243438243462_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243433243459_))))
                                (let ((_hd243437243465_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243438243462_)))
                                      (_tl243436243467_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243438243462_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243436243467_))
                                      (let ((_e243441243470_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243436243467_))))
                                        (let ((_hd243440243473_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243441243470_)))
                                              (_tl243439243475_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243441243470_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl243439243475_))
                                              (let ((_e243444243478_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl243439243475_))))
                                                (let ((_hd243443243481_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243444243478_)))
                                                      (_tl243442243483_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243444243478_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243442243483_))
                                                      ((lambda (_L243486_
                                                                _L243487_
                                                                _L243488_)
                                                         (let ((__tmp251798
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L243488_)))
                       (__tmp251797
                        (let () (declare (not safe)) (gx#stx-e _L243487_)))
                       (__tmp251796
                        (let () (declare (not safe)) (gx#stx-e _L243486_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp251798
                    __tmp251797
                    __tmp251796)))
               _hd243443243481_
               _hd243440243473_
               _hd243437243465_)
              (let ()
                (declare (not safe))
                (_g243428243449_ _g243429243452_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g243428243449_
                                                 _g243429243452_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243428243449_ _g243429243452_)))))
                              (let ()
                                (declare (not safe))
                                (_g243428243449_ _g243429243452_)))))
                      (let ()
                        (declare (not safe))
                        (_g243428243449_ _g243429243452_))))))
          (declare (not safe))
          (_g243427243506_ _ann243426_))))
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
      (lambda (_stx242545_)
        (let* ((___stx250079250080_ _stx242545_)
               (_g242551242747_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250079250080_)))))
          (let ((___kont250081250082_
                 (lambda (_L243413_)
                   (let ((__obj251749
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj251749
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L243413_))
                      '#f)
                     __obj251749)))
                (___kont250083250084_
                 (lambda (_L243340_
                          _L243341_
                          _L243342_
                          _L243343_
                          _L243344_
                          _L243345_)
                   (let* ((_tab243395_
                           (let () (declare (not safe)) (gx#stx-e _L243342_)))
                          (_keys243397_
                           (if _tab243395_
                               (let ((__tmp251799 (vector->list _tab243395_)))
                                 (declare (not safe))
                                 (filter values __tmp251799))
                               '#f)))
                     (let ((__tmp251800
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L243341_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys243397_
                        __tmp251800)))))
                (___kont250085250086_
                 (lambda (_L243073_
                          _L243074_
                          _L243075_
                          _L243076_
                          _L243077_
                          _L243078_
                          _L243079_
                          _L243080_
                          _L243081_
                          _L243082_)
                   (let ((__tmp251802
                          (map gx#stx-e
                               (let ((__tmp251803
                                      (lambda (_g243175243178_ _g243176243180_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g243175243178_
                                                _g243176243180_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp251803 '() _L243075_))))
                         (__tmp251801
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L243079_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp251802
                      __tmp251801))))
                (___kont250089250090_
                 (lambda (_L242783_)
                   (let ((__obj251750
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj251750
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L242783_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L242783_)))
                     __obj251750)))
                (___kont250091250092_
                 (lambda (_L242760_)
                   (let ((__obj251751
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj251751
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L242760_))
                      '#f)
                     __obj251751))))
            (let* ((___match250398250399_
                    (lambda (_e242738242775_ _hd242737242778_ _tl242736242780_)
                      (let ((_L242783_ _tl242736242780_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L242783_))
                            (___kont250089250090_ _L242783_)
                            (___kont250091250092_ _tl242736242780_)))))
                   (___match250392250393_
                    (lambda (_e242632242797_
                             _hd242631242800_
                             _tl242630242802_
                             _e242635242805_
                             _hd242634242808_
                             _tl242633242810_
                             _e242638242813_
                             _hd242637242816_
                             _tl242636242818_
                             _e242641242821_
                             _hd242640242824_
                             _tl242639242826_
                             _e242644242829_
                             _hd242643242832_
                             _tl242642242834_
                             _e242647242837_
                             _hd242646242840_
                             _tl242645242842_
                             _e242650242845_
                             _hd242649242848_
                             _tl242648242850_
                             _e242653242853_
                             _hd242652242856_
                             _tl242651242858_
                             _e242656242861_
                             _hd242655242864_
                             _tl242654242866_
                             _e242659242869_
                             _hd242658242872_
                             _tl242657242874_
                             _e242662242877_
                             _hd242661242880_
                             _tl242660242882_
                             _e242665242885_
                             _hd242664242888_
                             _tl242663242890_
                             _e242668242893_
                             _hd242667242896_
                             _tl242666242898_
                             _e242671242901_
                             _hd242670242904_
                             _tl242669242906_
                             ___splice250087250088_
                             _target242672242909_
                             _tl242674242911_
                             _e242689242914_
                             _hd242688242917_
                             _tl242687242919_
                             _e242692242922_
                             _hd242691242925_
                             _tl242690242927_
                             _e242695242930_
                             _hd242694242933_
                             _tl242693242935_)
                      (letrec ((_loop242675242938_
                                (lambda (_hd242673242941_
                                         _-absent-value242679242943_
                                         _key242680242945_
                                         _-xkwvar242681242947_
                                         _-hash-ref242682242949_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd242673242941_))
                                      (let ((_e242676242952_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd242673242941_))))
                                        (let ((_lp-tl242678242957_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242676242952_)))
                                              (_lp-hd242677242955_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242676242952_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd242677242955_))
                                              (let ((_e242698242960_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd242677242955_))))
                                                (let ((_tl242696242965_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242698242960_)))
                                                      (_hd242697242963_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242698242960_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd242697242963_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd242697242963_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl242696242965_))
                      (let ((_e242701242968_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl242696242965_))))
                        (let ((_tl242699242973_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242701242968_)))
                              (_hd242700242971_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242701242968_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd242700242971_))
                              (let ((_e242704242976_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd242700242971_))))
                                (let ((_tl242702242981_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242704242976_)))
                                      (_hd242703242979_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242704242976_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd242703242979_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd242703242979_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242702242981_))
                                              (let ((_e242707242984_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242702242981_))))
                                                (let ((_tl242705242989_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242707242984_)))
                                                      (_hd242706242987_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242707242984_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242705242989_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242699242973_))
                                                          (let ((_e242710242992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242699242973_))))
                    (let ((_tl242708242997_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242710242992_)))
                          (_hd242709242995_
                           (let ()
                             (declare (not safe))
                             (##car _e242710242992_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242709242995_))
                          (let ((_e242713243000_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242709242995_))))
                            (let ((_tl242711243005_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242713243000_)))
                                  (_hd242712243003_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242713243000_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242712243003_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd242712243003_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242711243005_))
                                          (let ((_e242716243008_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242711243005_))))
                                            (let ((_tl242714243013_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242716243008_)))
                                                  (_hd242715243011_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242716243008_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242714243013_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl242708242997_))
                                                      (let ((_e242719243016_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl242708242997_))))
                (let ((_tl242717243021_
                       (let () (declare (not safe)) (##cdr _e242719243016_)))
                      (_hd242718243019_
                       (let () (declare (not safe)) (##car _e242719243016_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd242718243019_))
                      (let ((_e242722243024_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd242718243019_))))
                        (let ((_tl242720243029_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242722243024_)))
                              (_hd242721243027_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242722243024_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd242721243027_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd242721243027_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242720243029_))
                                      (let ((_e242725243032_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242720243029_))))
                                        (let ((_tl242723243037_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242725243032_)))
                                              (_hd242724243035_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242725243032_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242723243037_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242717243021_))
                                                  (let ((_e242728243040_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242717243021_))))
                                                    (let ((_tl242726243045_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242728243040_)))
                                                          (_hd242727243043_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242728243040_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd242727243043_))
                                                          (let ((_e242731243048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd242727243043_))))
                    (let ((_tl242729243053_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242731243048_)))
                          (_hd242730243051_
                           (let ()
                             (declare (not safe))
                             (##car _e242731243048_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd242730243051_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd242730243051_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242729243053_))
                                  (let ((_e242734243056_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242729243053_))))
                                    (let ((_tl242732243061_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242734243056_)))
                                          (_hd242733243059_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242734243056_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242732243061_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242726243045_))
                                              (let ((__tmp251818
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd242733243059_
                                                             _-absent-value242679242943_)))
                                                    (__tmp251817
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd242724243035_
                                                             _key242680242945_)))
                                                    (__tmp251816
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd242715243011_
                                                             _-xkwvar242681242947_)))
                                                    (__tmp251815
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd242706242987_
                                                             _-hash-ref242682242949_))))
                                                (declare (not safe))
                                                (_loop242675242938_
                                                 _lp-tl242678242957_
                                                 __tmp251818
                                                 __tmp251817
                                                 __tmp251816
                                                 __tmp251815))
                                              (___match250398250399_
                                               _e242632242797_
                                               _hd242631242800_
                                               _tl242630242802_))
                                          (___match250398250399_
                                           _e242632242797_
                                           _hd242631242800_
                                           _tl242630242802_))))
                                  (___match250398250399_
                                   _e242632242797_
                                   _hd242631242800_
                                   _tl242630242802_))
                              (___match250398250399_
                               _e242632242797_
                               _hd242631242800_
                               _tl242630242802_))
                          (___match250398250399_
                           _e242632242797_
                           _hd242631242800_
                           _tl242630242802_))))
                  (___match250398250399_
                   _e242632242797_
                   _hd242631242800_
                   _tl242630242802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match250398250399_
                                                   _e242632242797_
                                                   _hd242631242800_
                                                   _tl242630242802_))
                                              (___match250398250399_
                                               _e242632242797_
                                               _hd242631242800_
                                               _tl242630242802_))))
                                      (___match250398250399_
                                       _e242632242797_
                                       _hd242631242800_
                                       _tl242630242802_))
                                  (___match250398250399_
                                   _e242632242797_
                                   _hd242631242800_
                                   _tl242630242802_))
                              (___match250398250399_
                               _e242632242797_
                               _hd242631242800_
                               _tl242630242802_))))
                      (___match250398250399_
                       _e242632242797_
                       _hd242631242800_
                       _tl242630242802_))))
              (___match250398250399_
               _e242632242797_
               _hd242631242800_
               _tl242630242802_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match250398250399_
                                                   _e242632242797_
                                                   _hd242631242800_
                                                   _tl242630242802_))))
                                          (___match250398250399_
                                           _e242632242797_
                                           _hd242631242800_
                                           _tl242630242802_))
                                      (___match250398250399_
                                       _e242632242797_
                                       _hd242631242800_
                                       _tl242630242802_))
                                  (___match250398250399_
                                   _e242632242797_
                                   _hd242631242800_
                                   _tl242630242802_))))
                          (___match250398250399_
                           _e242632242797_
                           _hd242631242800_
                           _tl242630242802_))))
                  (___match250398250399_
                   _e242632242797_
                   _hd242631242800_
                   _tl242630242802_))
              (___match250398250399_
               _e242632242797_
               _hd242631242800_
               _tl242630242802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match250398250399_
                                               _e242632242797_
                                               _hd242631242800_
                                               _tl242630242802_))
                                          (___match250398250399_
                                           _e242632242797_
                                           _hd242631242800_
                                           _tl242630242802_))
                                      (___match250398250399_
                                       _e242632242797_
                                       _hd242631242800_
                                       _tl242630242802_))))
                              (___match250398250399_
                               _e242632242797_
                               _hd242631242800_
                               _tl242630242802_))))
                      (___match250398250399_
                       _e242632242797_
                       _hd242631242800_
                       _tl242630242802_))
                  (___match250398250399_
                   _e242632242797_
                   _hd242631242800_
                   _tl242630242802_))
              (___match250398250399_
               _e242632242797_
               _hd242631242800_
               _tl242630242802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match250398250399_
                                               _e242632242797_
                                               _hd242631242800_
                                               _tl242630242802_))))
                                      (let ((_-hash-ref242686243070_
                                             (reverse _-hash-ref242682242949_))
                                            (_-xkwvar242685243068_
                                             (reverse _-xkwvar242681242947_))
                                            (_key242684243066_
                                             (reverse _key242680242945_))
                                            (_-absent-value242683243064_
                                             (reverse _-absent-value242679242943_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl242639242826_))
                                            (let ((_L243073_ _hd242694242933_)
                                                  (_L243074_
                                                   _-absent-value242683243064_)
                                                  (_L243075_ _key242684243066_)
                                                  (_L243076_
                                                   _-xkwvar242685243068_)
                                                  (_L243077_
                                                   _-hash-ref242686243070_)
                                                  (_L243078_ _hd242670242904_)
                                                  (_L243079_ _hd242661242880_)
                                                  (_L243080_ _hd242652242856_)
                                                  (_L243081_ _tl242636242818_)
                                                  (_L243082_ _hd242637242816_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L243082_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L243081_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L243080_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L243082_
                                                          _L243078_))
                                                       (let ((__tmp251813
                                                              (let ((__tmp251814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g243135243138_ _g243136243140_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g243135243138_ _g243136243140_)))))
                        (declare (not safe))
                        (foldr1 __tmp251814 '() _L243075_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp251813))
               (let ((__tmp251812
                      (lambda (_g243142243144_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g243142243144_
                           'hash-ref))))
                     (__tmp251810
                      (let ((__tmp251811
                             (lambda (_g243146243149_ _g243147243151_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g243146243149_ _g243147243151_)))))
                        (declare (not safe))
                        (foldr1 __tmp251811 '() _L243077_))))
                 (declare (not safe))
                 (andmap1 __tmp251812 __tmp251810))
               (let ((__tmp251809
                      (lambda (_g243153243155_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g243153243155_
                           'absent-value))))
                     (__tmp251807
                      (let ((__tmp251808
                             (lambda (_g243157243160_ _g243158243162_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g243157243160_ _g243158243162_)))))
                        (declare (not safe))
                        (foldr1 __tmp251808 '() _L243074_))))
                 (declare (not safe))
                 (andmap1 __tmp251809 __tmp251807))
               (let ((__tmp251806
                      (lambda (_g243164243166_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g243164243166_ _L243082_))))
                     (__tmp251804
                      (let ((__tmp251805
                             (lambda (_g243168243171_ _g243169243173_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g243168243171_ _g243169243173_)))))
                        (declare (not safe))
                        (foldr1 __tmp251805 '() _L243076_))))
                 (declare (not safe))
                 (andmap1 __tmp251806 __tmp251804)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont250085250086_
                                                   _L243073_
                                                   _L243074_
                                                   _L243075_
                                                   _L243076_
                                                   _L243077_
                                                   _L243078_
                                                   _L243079_
                                                   _L243080_
                                                   _L243081_
                                                   _L243082_)
                                                  (___match250398250399_
                                                   _e242632242797_
                                                   _hd242631242800_
                                                   _tl242630242802_)))
                                            (___match250398250399_
                                             _e242632242797_
                                             _hd242631242800_
                                             _tl242630242802_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop242675242938_
                           _target242672242909_
                           '()
                           '()
                           '()
                           '())))))
                   (___match250264250265_
                    (lambda (_e242632242797_
                             _hd242631242800_
                             _tl242630242802_
                             _e242635242805_
                             _hd242634242808_
                             _tl242633242810_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242634242808_))
                          (let ((_e242638242813_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242634242808_))))
                            (let ((_tl242636242818_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242638242813_)))
                                  (_hd242637242816_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242638242813_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242633242810_))
                                  (let ((_e242641242821_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242633242810_))))
                                    (let ((_tl242639242826_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242641242821_)))
                                          (_hd242640242824_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242641242821_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd242640242824_))
                                          (let ((_e242644242829_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd242640242824_))))
                                            (let ((_tl242642242834_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242644242829_)))
                                                  (_hd242643242832_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242644242829_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd242643242832_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd242643242832_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242642242834_))
                                                          (let ((_e242647242837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242642242834_))))
                    (let ((_tl242645242842_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242647242837_)))
                          (_hd242646242840_
                           (let ()
                             (declare (not safe))
                             (##car _e242647242837_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242646242840_))
                          (let ((_e242650242845_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242646242840_))))
                            (let ((_tl242648242850_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242650242845_)))
                                  (_hd242649242848_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242650242845_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242649242848_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd242649242848_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242648242850_))
                                          (let ((_e242653242853_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242648242850_))))
                                            (let ((_tl242651242858_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242653242853_)))
                                                  (_hd242652242856_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242653242853_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242651242858_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl242645242842_))
                                                      (let ((_e242656242861_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl242645242842_))))
                (let ((_tl242654242866_
                       (let () (declare (not safe)) (##cdr _e242656242861_)))
                      (_hd242655242864_
                       (let () (declare (not safe)) (##car _e242656242861_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd242655242864_))
                      (let ((_e242659242869_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd242655242864_))))
                        (let ((_tl242657242874_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242659242869_)))
                              (_hd242658242872_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242659242869_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd242658242872_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd242658242872_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242657242874_))
                                      (let ((_e242662242877_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242657242874_))))
                                        (let ((_tl242660242882_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242662242877_)))
                                              (_hd242661242880_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242662242877_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242660242882_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242654242866_))
                                                  (let ((_e242665242885_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242654242866_))))
                                                    (let ((_tl242663242890_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242665242885_)))
                                                          (_hd242664242888_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242665242885_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd242664242888_))
                                                          (let ((_e242668242893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd242664242888_))))
                    (let ((_tl242666242898_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242668242893_)))
                          (_hd242667242896_
                           (let ()
                             (declare (not safe))
                             (##car _e242668242893_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd242667242896_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd242667242896_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242666242898_))
                                  (let ((_e242671242901_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242666242898_))))
                                    (let ((_tl242669242906_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242671242901_)))
                                          (_hd242670242904_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242671242901_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242669242906_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl242663242890_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl242663242890_))
                                                        '1)
                                                  (let ((___splice250087250088_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl242663242890_
                                                            '1))))
                                                    (let ((_tl242674242911_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice250087250088_
                                                              '1)))
                                                          (_target242672242909_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice250087250088_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242674242911_))
                                                          (let ((_e242689242914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242674242911_))))
                    (let ((_tl242687242919_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242689242914_)))
                          (_hd242688242917_
                           (let ()
                             (declare (not safe))
                             (##car _e242689242914_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242688242917_))
                          (let ((_e242692242922_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242688242917_))))
                            (let ((_tl242690242927_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242692242922_)))
                                  (_hd242691242925_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242692242922_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242691242925_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd242691242925_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242690242927_))
                                          (let ((_e242695242930_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242690242927_))))
                                            (let ((_tl242693242935_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242695242930_)))
                                                  (_hd242694242933_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242695242930_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242693242935_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242687242919_))
                                                      (___match250392250393_
                                                       _e242632242797_
                                                       _hd242631242800_
                                                       _tl242630242802_
                                                       _e242635242805_
                                                       _hd242634242808_
                                                       _tl242633242810_
                                                       _e242638242813_
                                                       _hd242637242816_
                                                       _tl242636242818_
                                                       _e242641242821_
                                                       _hd242640242824_
                                                       _tl242639242826_
                                                       _e242644242829_
                                                       _hd242643242832_
                                                       _tl242642242834_
                                                       _e242647242837_
                                                       _hd242646242840_
                                                       _tl242645242842_
                                                       _e242650242845_
                                                       _hd242649242848_
                                                       _tl242648242850_
                                                       _e242653242853_
                                                       _hd242652242856_
                                                       _tl242651242858_
                                                       _e242656242861_
                                                       _hd242655242864_
                                                       _tl242654242866_
                                                       _e242659242869_
                                                       _hd242658242872_
                                                       _tl242657242874_
                                                       _e242662242877_
                                                       _hd242661242880_
                                                       _tl242660242882_
                                                       _e242665242885_
                                                       _hd242664242888_
                                                       _tl242663242890_
                                                       _e242668242893_
                                                       _hd242667242896_
                                                       _tl242666242898_
                                                       _e242671242901_
                                                       _hd242670242904_
                                                       _tl242669242906_
                                                       ___splice250087250088_
                                                       _target242672242909_
                                                       _tl242674242911_
                                                       _e242689242914_
                                                       _hd242688242917_
                                                       _tl242687242919_
                                                       _e242692242922_
                                                       _hd242691242925_
                                                       _tl242690242927_
                                                       _e242695242930_
                                                       _hd242694242933_
                                                       _tl242693242935_)
                                                      (___match250398250399_
                                                       _e242632242797_
                                                       _hd242631242800_
                                                       _tl242630242802_))
                                                  (___match250398250399_
                                                   _e242632242797_
                                                   _hd242631242800_
                                                   _tl242630242802_))))
                                          (___match250398250399_
                                           _e242632242797_
                                           _hd242631242800_
                                           _tl242630242802_))
                                      (___match250398250399_
                                       _e242632242797_
                                       _hd242631242800_
                                       _tl242630242802_))
                                  (___match250398250399_
                                   _e242632242797_
                                   _hd242631242800_
                                   _tl242630242802_))))
                          (___match250398250399_
                           _e242632242797_
                           _hd242631242800_
                           _tl242630242802_))))
                  (___match250398250399_
                   _e242632242797_
                   _hd242631242800_
                   _tl242630242802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match250398250399_
                                                   _e242632242797_
                                                   _hd242631242800_
                                                   _tl242630242802_))
                                              (___match250398250399_
                                               _e242632242797_
                                               _hd242631242800_
                                               _tl242630242802_))
                                          (___match250398250399_
                                           _e242632242797_
                                           _hd242631242800_
                                           _tl242630242802_))))
                                  (___match250398250399_
                                   _e242632242797_
                                   _hd242631242800_
                                   _tl242630242802_))
                              (___match250398250399_
                               _e242632242797_
                               _hd242631242800_
                               _tl242630242802_))
                          (___match250398250399_
                           _e242632242797_
                           _hd242631242800_
                           _tl242630242802_))))
                  (___match250398250399_
                   _e242632242797_
                   _hd242631242800_
                   _tl242630242802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match250398250399_
                                                   _e242632242797_
                                                   _hd242631242800_
                                                   _tl242630242802_))
                                              (___match250398250399_
                                               _e242632242797_
                                               _hd242631242800_
                                               _tl242630242802_))))
                                      (___match250398250399_
                                       _e242632242797_
                                       _hd242631242800_
                                       _tl242630242802_))
                                  (___match250398250399_
                                   _e242632242797_
                                   _hd242631242800_
                                   _tl242630242802_))
                              (___match250398250399_
                               _e242632242797_
                               _hd242631242800_
                               _tl242630242802_))))
                      (___match250398250399_
                       _e242632242797_
                       _hd242631242800_
                       _tl242630242802_))))
              (___match250398250399_
               _e242632242797_
               _hd242631242800_
               _tl242630242802_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match250398250399_
                                                   _e242632242797_
                                                   _hd242631242800_
                                                   _tl242630242802_))))
                                          (___match250398250399_
                                           _e242632242797_
                                           _hd242631242800_
                                           _tl242630242802_))
                                      (___match250398250399_
                                       _e242632242797_
                                       _hd242631242800_
                                       _tl242630242802_))
                                  (___match250398250399_
                                   _e242632242797_
                                   _hd242631242800_
                                   _tl242630242802_))))
                          (___match250398250399_
                           _e242632242797_
                           _hd242631242800_
                           _tl242630242802_))))
                  (___match250398250399_
                   _e242632242797_
                   _hd242631242800_
                   _tl242630242802_))
              (___match250398250399_
               _e242632242797_
               _hd242631242800_
               _tl242630242802_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match250398250399_
                                                   _e242632242797_
                                                   _hd242631242800_
                                                   _tl242630242802_))))
                                          (___match250398250399_
                                           _e242632242797_
                                           _hd242631242800_
                                           _tl242630242802_))))
                                  (___match250398250399_
                                   _e242632242797_
                                   _hd242631242800_
                                   _tl242630242802_))))
                          (___match250398250399_
                           _e242632242797_
                           _hd242631242800_
                           _tl242630242802_))))
                   (___match250252250253_
                    (lambda (_e242565243188_
                             _hd242564243191_
                             _tl242563243193_
                             _e242568243196_
                             _hd242567243199_
                             _tl242566243201_
                             _e242571243204_
                             _hd242570243207_
                             _tl242569243209_
                             _e242574243212_
                             _hd242573243215_
                             _tl242572243217_
                             _e242577243220_
                             _hd242576243223_
                             _tl242575243225_
                             _e242580243228_
                             _hd242579243231_
                             _tl242578243233_
                             _e242583243236_
                             _hd242582243239_
                             _tl242581243241_
                             _e242586243244_
                             _hd242585243247_
                             _tl242584243249_
                             _e242589243252_
                             _hd242588243255_
                             _tl242587243257_
                             _e242592243260_
                             _hd242591243263_
                             _tl242590243265_
                             _e242595243268_
                             _hd242594243271_
                             _tl242593243273_
                             _e242598243276_
                             _hd242597243279_
                             _tl242596243281_
                             _e242601243284_
                             _hd242600243287_
                             _tl242599243289_
                             _e242604243292_
                             _hd242603243295_
                             _tl242602243297_
                             _e242607243300_
                             _hd242606243303_
                             _tl242605243305_
                             _e242610243308_
                             _hd242609243311_
                             _tl242608243313_
                             _e242613243316_
                             _hd242612243319_
                             _tl242611243321_
                             _e242616243324_
                             _hd242615243327_
                             _tl242614243329_
                             _e242619243332_
                             _hd242618243335_
                             _tl242617243337_)
                      (let ((_L243340_ _hd242618243335_)
                            (_L243341_ _hd242609243311_)
                            (_L243342_ _hd242600243287_)
                            (_L243343_ _hd242591243263_)
                            (_L243344_ _hd242582243239_)
                            (_L243345_ _hd242567243199_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L243345_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L243344_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L243343_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L243345_ _L243340_)))
                            (___kont250083250084_
                             _L243340_
                             _L243341_
                             _L243342_
                             _L243343_
                             _L243344_
                             _L243345_)
                            (___match250264250265_
                             _e242565243188_
                             _hd242564243191_
                             _tl242563243193_
                             _e242568243196_
                             _hd242567243199_
                             _tl242566243201_)))))
                   (___match250106250107_
                    (lambda (_e242565243188_ _hd242564243191_ _tl242563243193_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242563243193_))
                          (let ((_e242568243196_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242563243193_))))
                            (let ((_tl242566243201_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242568243196_)))
                                  (_hd242567243199_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242568243196_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242566243201_))
                                  (let ((_e242571243204_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242566243201_))))
                                    (let ((_tl242569243209_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242571243204_)))
                                          (_hd242570243207_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242571243204_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd242570243207_))
                                          (let ((_e242574243212_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd242570243207_))))
                                            (let ((_tl242572243217_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242574243212_)))
                                                  (_hd242573243215_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242574243212_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd242573243215_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd242573243215_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242572243217_))
                                                          (let ((_e242577243220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242572243217_))))
                    (let ((_tl242575243225_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242577243220_)))
                          (_hd242576243223_
                           (let ()
                             (declare (not safe))
                             (##car _e242577243220_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242576243223_))
                          (let ((_e242580243228_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242576243223_))))
                            (let ((_tl242578243233_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242580243228_)))
                                  (_hd242579243231_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242580243228_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242579243231_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd242579243231_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242578243233_))
                                          (let ((_e242583243236_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242578243233_))))
                                            (let ((_tl242581243241_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242583243236_)))
                                                  (_hd242582243239_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242583243236_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242581243241_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl242575243225_))
                                                      (let ((_e242586243244_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl242575243225_))))
                (let ((_tl242584243249_
                       (let () (declare (not safe)) (##cdr _e242586243244_)))
                      (_hd242585243247_
                       (let () (declare (not safe)) (##car _e242586243244_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd242585243247_))
                      (let ((_e242589243252_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd242585243247_))))
                        (let ((_tl242587243257_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242589243252_)))
                              (_hd242588243255_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242589243252_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd242588243255_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd242588243255_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242587243257_))
                                      (let ((_e242592243260_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242587243257_))))
                                        (let ((_tl242590243265_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242592243260_)))
                                              (_hd242591243263_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242592243260_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242590243265_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242584243249_))
                                                  (let ((_e242595243268_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242584243249_))))
                                                    (let ((_tl242593243273_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242595243268_)))
                                                          (_hd242594243271_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242595243268_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd242594243271_))
                                                          (let ((_e242598243276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd242594243271_))))
                    (let ((_tl242596243281_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242598243276_)))
                          (_hd242597243279_
                           (let ()
                             (declare (not safe))
                             (##car _e242598243276_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd242597243279_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd242597243279_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242596243281_))
                                  (let ((_e242601243284_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242596243281_))))
                                    (let ((_tl242599243289_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242601243284_)))
                                          (_hd242600243287_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242601243284_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242599243289_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242593243273_))
                                              (let ((_e242604243292_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242593243273_))))
                                                (let ((_tl242602243297_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242604243292_)))
                                                      (_hd242603243295_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242604243292_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd242603243295_))
                                                      (let ((_e242607243300_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd242603243295_))))
                (let ((_tl242605243305_
                       (let () (declare (not safe)) (##cdr _e242607243300_)))
                      (_hd242606243303_
                       (let () (declare (not safe)) (##car _e242607243300_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd242606243303_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd242606243303_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242605243305_))
                              (let ((_e242610243308_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242605243305_))))
                                (let ((_tl242608243313_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242610243308_)))
                                      (_hd242609243311_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242610243308_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242608243313_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242602243297_))
                                          (let ((_e242613243316_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242602243297_))))
                                            (let ((_tl242611243321_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242613243316_)))
                                                  (_hd242612243319_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242613243316_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd242612243319_))
                                                  (let ((_e242616243324_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd242612243319_))))
                                                    (let ((_tl242614243329_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242616243324_)))
                                                          (_hd242615243327_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242616243324_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd242615243327_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd242615243327_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242614243329_))
                          (let ((_e242619243332_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242614243329_))))
                            (let ((_tl242617243337_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242619243332_)))
                                  (_hd242618243335_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242619243332_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242617243337_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242611243321_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242569243209_))
                                          (___match250252250253_
                                           _e242565243188_
                                           _hd242564243191_
                                           _tl242563243193_
                                           _e242568243196_
                                           _hd242567243199_
                                           _tl242566243201_
                                           _e242571243204_
                                           _hd242570243207_
                                           _tl242569243209_
                                           _e242574243212_
                                           _hd242573243215_
                                           _tl242572243217_
                                           _e242577243220_
                                           _hd242576243223_
                                           _tl242575243225_
                                           _e242580243228_
                                           _hd242579243231_
                                           _tl242578243233_
                                           _e242583243236_
                                           _hd242582243239_
                                           _tl242581243241_
                                           _e242586243244_
                                           _hd242585243247_
                                           _tl242584243249_
                                           _e242589243252_
                                           _hd242588243255_
                                           _tl242587243257_
                                           _e242592243260_
                                           _hd242591243263_
                                           _tl242590243265_
                                           _e242595243268_
                                           _hd242594243271_
                                           _tl242593243273_
                                           _e242598243276_
                                           _hd242597243279_
                                           _tl242596243281_
                                           _e242601243284_
                                           _hd242600243287_
                                           _tl242599243289_
                                           _e242604243292_
                                           _hd242603243295_
                                           _tl242602243297_
                                           _e242607243300_
                                           _hd242606243303_
                                           _tl242605243305_
                                           _e242610243308_
                                           _hd242609243311_
                                           _tl242608243313_
                                           _e242613243316_
                                           _hd242612243319_
                                           _tl242611243321_
                                           _e242616243324_
                                           _hd242615243327_
                                           _tl242614243329_
                                           _e242619243332_
                                           _hd242618243335_
                                           _tl242617243337_)
                                          (___match250264250265_
                                           _e242565243188_
                                           _hd242564243191_
                                           _tl242563243193_
                                           _e242568243196_
                                           _hd242567243199_
                                           _tl242566243201_))
                                      (___match250264250265_
                                       _e242565243188_
                                       _hd242564243191_
                                       _tl242563243193_
                                       _e242568243196_
                                       _hd242567243199_
                                       _tl242566243201_))
                                  (___match250264250265_
                                   _e242565243188_
                                   _hd242564243191_
                                   _tl242563243193_
                                   _e242568243196_
                                   _hd242567243199_
                                   _tl242566243201_))))
                          (___match250264250265_
                           _e242565243188_
                           _hd242564243191_
                           _tl242563243193_
                           _e242568243196_
                           _hd242567243199_
                           _tl242566243201_))
                      (___match250264250265_
                       _e242565243188_
                       _hd242564243191_
                       _tl242563243193_
                       _e242568243196_
                       _hd242567243199_
                       _tl242566243201_))
                  (___match250264250265_
                   _e242565243188_
                   _hd242564243191_
                   _tl242563243193_
                   _e242568243196_
                   _hd242567243199_
                   _tl242566243201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match250264250265_
                                                   _e242565243188_
                                                   _hd242564243191_
                                                   _tl242563243193_
                                                   _e242568243196_
                                                   _hd242567243199_
                                                   _tl242566243201_))))
                                          (___match250264250265_
                                           _e242565243188_
                                           _hd242564243191_
                                           _tl242563243193_
                                           _e242568243196_
                                           _hd242567243199_
                                           _tl242566243201_))
                                      (___match250264250265_
                                       _e242565243188_
                                       _hd242564243191_
                                       _tl242563243193_
                                       _e242568243196_
                                       _hd242567243199_
                                       _tl242566243201_))))
                              (___match250264250265_
                               _e242565243188_
                               _hd242564243191_
                               _tl242563243193_
                               _e242568243196_
                               _hd242567243199_
                               _tl242566243201_))
                          (___match250264250265_
                           _e242565243188_
                           _hd242564243191_
                           _tl242563243193_
                           _e242568243196_
                           _hd242567243199_
                           _tl242566243201_))
                      (___match250264250265_
                       _e242565243188_
                       _hd242564243191_
                       _tl242563243193_
                       _e242568243196_
                       _hd242567243199_
                       _tl242566243201_))))
              (___match250264250265_
               _e242565243188_
               _hd242564243191_
               _tl242563243193_
               _e242568243196_
               _hd242567243199_
               _tl242566243201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match250264250265_
                                               _e242565243188_
                                               _hd242564243191_
                                               _tl242563243193_
                                               _e242568243196_
                                               _hd242567243199_
                                               _tl242566243201_))
                                          (___match250264250265_
                                           _e242565243188_
                                           _hd242564243191_
                                           _tl242563243193_
                                           _e242568243196_
                                           _hd242567243199_
                                           _tl242566243201_))))
                                  (___match250264250265_
                                   _e242565243188_
                                   _hd242564243191_
                                   _tl242563243193_
                                   _e242568243196_
                                   _hd242567243199_
                                   _tl242566243201_))
                              (___match250264250265_
                               _e242565243188_
                               _hd242564243191_
                               _tl242563243193_
                               _e242568243196_
                               _hd242567243199_
                               _tl242566243201_))
                          (___match250264250265_
                           _e242565243188_
                           _hd242564243191_
                           _tl242563243193_
                           _e242568243196_
                           _hd242567243199_
                           _tl242566243201_))))
                  (___match250264250265_
                   _e242565243188_
                   _hd242564243191_
                   _tl242563243193_
                   _e242568243196_
                   _hd242567243199_
                   _tl242566243201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match250264250265_
                                                   _e242565243188_
                                                   _hd242564243191_
                                                   _tl242563243193_
                                                   _e242568243196_
                                                   _hd242567243199_
                                                   _tl242566243201_))
                                              (___match250264250265_
                                               _e242565243188_
                                               _hd242564243191_
                                               _tl242563243193_
                                               _e242568243196_
                                               _hd242567243199_
                                               _tl242566243201_))))
                                      (___match250264250265_
                                       _e242565243188_
                                       _hd242564243191_
                                       _tl242563243193_
                                       _e242568243196_
                                       _hd242567243199_
                                       _tl242566243201_))
                                  (___match250264250265_
                                   _e242565243188_
                                   _hd242564243191_
                                   _tl242563243193_
                                   _e242568243196_
                                   _hd242567243199_
                                   _tl242566243201_))
                              (___match250264250265_
                               _e242565243188_
                               _hd242564243191_
                               _tl242563243193_
                               _e242568243196_
                               _hd242567243199_
                               _tl242566243201_))))
                      (___match250264250265_
                       _e242565243188_
                       _hd242564243191_
                       _tl242563243193_
                       _e242568243196_
                       _hd242567243199_
                       _tl242566243201_))))
              (___match250264250265_
               _e242565243188_
               _hd242564243191_
               _tl242563243193_
               _e242568243196_
               _hd242567243199_
               _tl242566243201_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match250264250265_
                                                   _e242565243188_
                                                   _hd242564243191_
                                                   _tl242563243193_
                                                   _e242568243196_
                                                   _hd242567243199_
                                                   _tl242566243201_))))
                                          (___match250264250265_
                                           _e242565243188_
                                           _hd242564243191_
                                           _tl242563243193_
                                           _e242568243196_
                                           _hd242567243199_
                                           _tl242566243201_))
                                      (___match250264250265_
                                       _e242565243188_
                                       _hd242564243191_
                                       _tl242563243193_
                                       _e242568243196_
                                       _hd242567243199_
                                       _tl242566243201_))
                                  (___match250264250265_
                                   _e242565243188_
                                   _hd242564243191_
                                   _tl242563243193_
                                   _e242568243196_
                                   _hd242567243199_
                                   _tl242566243201_))))
                          (___match250264250265_
                           _e242565243188_
                           _hd242564243191_
                           _tl242563243193_
                           _e242568243196_
                           _hd242567243199_
                           _tl242566243201_))))
                  (___match250264250265_
                   _e242565243188_
                   _hd242564243191_
                   _tl242563243193_
                   _e242568243196_
                   _hd242567243199_
                   _tl242566243201_))
              (___match250264250265_
               _e242565243188_
               _hd242564243191_
               _tl242563243193_
               _e242568243196_
               _hd242567243199_
               _tl242566243201_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match250264250265_
                                                   _e242565243188_
                                                   _hd242564243191_
                                                   _tl242563243193_
                                                   _e242568243196_
                                                   _hd242567243199_
                                                   _tl242566243201_))))
                                          (___match250264250265_
                                           _e242565243188_
                                           _hd242564243191_
                                           _tl242563243193_
                                           _e242568243196_
                                           _hd242567243199_
                                           _tl242566243201_))))
                                  (___match250264250265_
                                   _e242565243188_
                                   _hd242564243191_
                                   _tl242563243193_
                                   _e242568243196_
                                   _hd242567243199_
                                   _tl242566243201_))))
                          (___match250398250399_
                           _e242565243188_
                           _hd242564243191_
                           _tl242563243193_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx250079250080_))
                  (let ((_e242556243405_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx250079250080_))))
                    (let ((_tl242554243410_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242556243405_)))
                          (_hd242555243408_
                           (let ()
                             (declare (not safe))
                             (##car _e242556243405_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L243413_ _tl242554243410_))
                            (___kont250081250082_ _L243413_))
                          (___match250106250107_
                           _e242556243405_
                           _hd242555243408_
                           _tl242554243410_))))
                  (let () (declare (not safe)) (_g242551242747_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx242500_)
        (letrec ((_clause-e242502_
                  (lambda (_form242543_)
                    (let ((__obj251752
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
                       __obj251752
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form242543_))
                       (if (let ((__tmp251819
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp251819))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form242543_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form242543_))
                               '#f)
                           '#f))
                      __obj251752))))
          (let* ((_g242504242514_
                  (lambda (_g242505242511_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g242505242511_))))
                 (_g242503242540_
                  (lambda (_g242505242517_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g242505242517_))
                        (let ((_e242509242519_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g242505242517_))))
                          (let ((_hd242508242522_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e242509242519_)))
                                (_tl242507242524_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e242509242519_))))
                            ((lambda (_L242527_)
                               (let ((_clauses242538_
                                      (map _clause-e242502_ _L242527_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses242538_)))
                             _tl242507242524_)))
                        (let ()
                          (declare (not safe))
                          (_g242504242514_ _g242505242517_))))))
            (declare (not safe))
            (_g242503242540_ _stx242500_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx242432_)
        (let* ((_g242434242451_
                (lambda (_g242435242448_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g242435242448_))))
               (_g242433242497_
                (lambda (_g242435242454_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g242435242454_))
                      (let ((_e242440242456_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g242435242454_))))
                        (let ((_hd242439242459_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242440242456_)))
                              (_tl242438242461_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242440242456_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242438242461_))
                              (let ((_e242443242464_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242438242461_))))
                                (let ((_hd242442242467_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242443242464_)))
                                      (_tl242441242469_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242443242464_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242441242469_))
                                      (let ((_e242446242472_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242441242469_))))
                                        (let ((_hd242445242475_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242446242472_)))
                                              (_tl242444242477_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242446242472_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242444242477_))
                                              ((lambda (_L242480_ _L242481_)
                                                 (let ((__tmp251820
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L242480_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp251820
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd242445242475_
                                               _hd242442242467_)
                                              (let ()
                                                (declare (not safe))
                                                (_g242434242451_
                                                 _g242435242454_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g242434242451_ _g242435242454_)))))
                              (let ()
                                (declare (not safe))
                                (_g242434242451_ _g242435242454_)))))
                      (let ()
                        (declare (not safe))
                        (_g242434242451_ _g242435242454_))))))
          (declare (not safe))
          (_g242433242497_ _stx242432_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx242337_)
        (let* ((___stx250407250408_ _stx242337_)
               (_g242340242360_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250407250408_)))))
          (let ((___kont250409250410_
                 (lambda (_L242404_ _L242405_)
                   (let ((_type-e242422242424_
                          (let ((__tmp251821
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L242405_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp251821
                             '#f))))
                     (if _type-e242422242424_
                         (let ((_type-e242427_ _type-e242422242424_))
                           (_type-e242427_ _stx242337_ _L242404_))
                         '#f))))
                (___kont250411250412_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx250407250408_))
                (let ((_e242346242372_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx250407250408_))))
                  (let ((_tl242344242377_
                         (let () (declare (not safe)) (##cdr _e242346242372_)))
                        (_hd242345242375_
                         (let ()
                           (declare (not safe))
                           (##car _e242346242372_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl242344242377_))
                        (let ((_e242349242380_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl242344242377_))))
                          (let ((_tl242347242385_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e242349242380_)))
                                (_hd242348242383_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e242349242380_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd242348242383_))
                                (let ((_e242352242388_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd242348242383_))))
                                  (let ((_tl242350242393_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e242352242388_)))
                                        (_hd242351242391_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e242352242388_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd242351242391_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd242351242391_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl242350242393_))
                                                (let ((_e242355242396_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl242350242393_))))
                                                  (let ((_tl242353242401_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e242355242396_)))
                                                        (_hd242354242399_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e242355242396_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl242353242401_))
                                                        (___kont250409250410_
                                                         _tl242347242385_
                                                         _hd242354242399_)
                                                        (___kont250411250412_))))
                                                (___kont250411250412_))
                                            (___kont250411250412_))
                                        (___kont250411250412_))))
                                (___kont250411250412_))))
                        (___kont250411250412_))))
                (___kont250411250412_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx242286_)
        (let* ((_g242288242301_
                (lambda (_g242289242298_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g242289242298_))))
               (_g242287242334_
                (lambda (_g242289242304_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g242289242304_))
                      (let ((_e242293242306_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g242289242304_))))
                        (let ((_hd242292242309_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242293242306_)))
                              (_tl242291242311_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242293242306_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242291242311_))
                              (let ((_e242296242314_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242291242311_))))
                                (let ((_hd242295242317_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242296242314_)))
                                      (_tl242294242319_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242296242314_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242294242319_))
                                      ((lambda (_L242322_)
                                         (let ((__tmp251822
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L242322_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp251822)))
                                       _hd242295242317_)
                                      (let ()
                                        (declare (not safe))
                                        (_g242288242301_ _g242289242304_)))))
                              (let ()
                                (declare (not safe))
                                (_g242288242301_ _g242289242304_)))))
                      (let ()
                        (declare (not safe))
                        (_g242288242301_ _g242289242304_))))))
          (declare (not safe))
          (_g242287242334_ _stx242286_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form241520_)
        (let* ((___stx250445250446_ _form241520_)
               (_g241525241682_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250445250446_)))))
          (let ((___kont250447250448_
                 (lambda (_L242206_ _L242207_ _L242208_) '#t))
                (___kont250453250454_
                 (lambda (_L241994_
                          _L241995_
                          _L241996_
                          _L241997_
                          _L241998_
                          _L241999_)
                   '#t))
                (___kont250459250460_
                 (lambda (_L241790_ _L241791_ _L241792_ _L241793_) '#t))
                (___kont250461250462_ (lambda () '#f)))
            (let* ((___match250586250587_
                    (lambda (_e241644241694_
                             _hd241643241697_
                             _tl241642241699_
                             _e241647241702_
                             _hd241646241705_
                             _tl241645241707_
                             _e241650241710_
                             _hd241649241713_
                             _tl241648241715_
                             _e241653241718_
                             _hd241652241721_
                             _tl241651241723_
                             _e241656241726_
                             _hd241655241729_
                             _tl241654241731_
                             _e241659241734_
                             _hd241658241737_
                             _tl241657241739_
                             _e241662241742_
                             _hd241661241745_
                             _tl241660241747_
                             _e241665241750_
                             _hd241664241753_
                             _tl241663241755_
                             _e241668241758_
                             _hd241667241761_
                             _tl241666241763_
                             _e241671241766_
                             _hd241670241769_
                             _tl241669241771_
                             _e241674241774_
                             _hd241673241777_
                             _tl241672241779_
                             _e241677241782_
                             _hd241676241785_
                             _tl241675241787_)
                      (let ((_L241790_ _hd241676241785_)
                            (_L241791_ _hd241667241761_)
                            (_L241792_ _hd241658241737_)
                            (_L241793_ _hd241643241697_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L241793_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L241792_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L241793_ _L241790_))
                                 (let ((__tmp251823
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L241791_
                                           _L241793_))))
                                   (declare (not safe))
                                   (not __tmp251823)))
                            (___kont250459250460_
                             _L241790_
                             _L241791_
                             _L241792_
                             _L241793_)
                            (___kont250461250462_)))))
                   (___match250558250559_
                    (lambda (_e241644241694_
                             _hd241643241697_
                             _tl241642241699_
                             _e241647241702_
                             _hd241646241705_
                             _tl241645241707_
                             _e241650241710_
                             _hd241649241713_
                             _tl241648241715_
                             _e241653241718_
                             _hd241652241721_
                             _tl241651241723_
                             _e241656241726_
                             _hd241655241729_
                             _tl241654241731_
                             _e241659241734_
                             _hd241658241737_
                             _tl241657241739_
                             _e241662241742_
                             _hd241661241745_
                             _tl241660241747_
                             _e241665241750_
                             _hd241664241753_
                             _tl241663241755_
                             _e241668241758_
                             _hd241667241761_
                             _tl241666241763_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl241660241747_))
                          (let ((_e241671241766_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl241660241747_))))
                            (let ((_tl241669241771_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e241671241766_)))
                                  (_hd241670241769_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e241671241766_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd241670241769_))
                                  (let ((_e241674241774_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd241670241769_))))
                                    (let ((_tl241672241779_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e241674241774_)))
                                          (_hd241673241777_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e241674241774_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd241673241777_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd241673241777_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl241672241779_))
                                                  (let ((_e241677241782_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl241672241779_))))
                                                    (let ((_tl241675241787_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e241677241782_)))
                                                          (_hd241676241785_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e241677241782_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl241675241787_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl241669241771_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl241645241707_))
                          (___match250586250587_
                           _e241644241694_
                           _hd241643241697_
                           _tl241642241699_
                           _e241647241702_
                           _hd241646241705_
                           _tl241645241707_
                           _e241650241710_
                           _hd241649241713_
                           _tl241648241715_
                           _e241653241718_
                           _hd241652241721_
                           _tl241651241723_
                           _e241656241726_
                           _hd241655241729_
                           _tl241654241731_
                           _e241659241734_
                           _hd241658241737_
                           _tl241657241739_
                           _e241662241742_
                           _hd241661241745_
                           _tl241660241747_
                           _e241665241750_
                           _hd241664241753_
                           _tl241663241755_
                           _e241668241758_
                           _hd241667241761_
                           _tl241666241763_
                           _e241671241766_
                           _hd241670241769_
                           _tl241669241771_
                           _e241674241774_
                           _hd241673241777_
                           _tl241672241779_
                           _e241677241782_
                           _hd241676241785_
                           _tl241675241787_)
                          (___kont250461250462_))
                      (___kont250461250462_))
                  (___kont250461250462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont250461250462_))
                                              (___kont250461250462_))
                                          (___kont250461250462_))))
                                  (___kont250461250462_))))
                          (___kont250461250462_))))
                   (___match250488250489_
                    (lambda (_e241580241834_
                             _hd241579241837_
                             _tl241578241839_
                             ___splice250455250456_
                             _target241581241842_
                             _tl241583241844_)
                      (letrec ((_loop241584241847_
                                (lambda (_hd241582241850_ _arg241588241852_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd241582241850_))
                                      (let ((_e241585241855_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd241582241850_))))
                                        (let ((_lp-tl241587241860_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241585241855_)))
                                              (_lp-hd241586241858_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241585241855_))))
                                          (let ((__tmp251838
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd241586241858_
                                                         _arg241588241852_))))
                                            (declare (not safe))
                                            (_loop241584241847_
                                             _lp-tl241587241860_
                                             __tmp251838))))
                                      (let ((_arg241589241863_
                                             (reverse _arg241588241852_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241578241839_))
                                            (let ((_e241592241866_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241578241839_))))
                                              (let ((_tl241590241871_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241592241866_)))
                                                    (_hd241591241869_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241592241866_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd241591241869_))
                                                    (let ((_e241595241874_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd241591241869_))))
                                                      (let ((_tl241593241879_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241595241874_)))
                    (_hd241594241877_
                     (let () (declare (not safe)) (##car _e241595241874_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241594241877_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd241594241877_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241593241879_))
                            (let ((_e241598241882_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241593241879_))))
                              (let ((_tl241596241887_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241598241882_)))
                                    (_hd241597241885_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241598241882_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241597241885_))
                                    (let ((_e241601241890_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241597241885_))))
                                      (let ((_tl241599241895_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241601241890_)))
                                            (_hd241600241893_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241601241890_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241600241893_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241600241893_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241599241895_))
                                                    (let ((_e241604241898_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241599241895_))))
                                                      (let ((_tl241602241903_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241604241898_)))
                    (_hd241603241901_
                     (let () (declare (not safe)) (##car _e241604241898_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241602241903_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl241596241887_))
                        (let ((_e241607241906_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl241596241887_))))
                          (let ((_tl241605241911_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e241607241906_)))
                                (_hd241606241909_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e241607241906_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd241606241909_))
                                (let ((_e241610241914_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd241606241909_))))
                                  (let ((_tl241608241919_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241610241914_)))
                                        (_hd241609241917_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241610241914_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd241609241917_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd241609241917_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl241608241919_))
                                                (let ((_e241613241922_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl241608241919_))))
                                                  (let ((_tl241611241927_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e241613241922_)))
                                                        (_hd241612241925_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e241613241922_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl241611241927_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl241605241911_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl241605241911_))
                              '1)
                        (let ((___splice250457250458_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl241605241911_
                                  '1))))
                          (let ((_tl241616241932_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice250457250458_ '1)))
                                (_target241614241930_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice250457250458_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241616241932_))
                                (let ((_e241625241935_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241616241932_))))
                                  (let ((_tl241623241940_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241625241935_)))
                                        (_hd241624241938_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241625241935_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd241624241938_))
                                        (let ((_e241628241943_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd241624241938_))))
                                          (let ((_tl241626241948_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e241628241943_)))
                                                (_hd241627241946_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e241628241943_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd241627241946_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd241627241946_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl241626241948_))
                                                        (let ((_e241631241951_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl241626241948_))))
                  (let ((_tl241629241956_
                         (let () (declare (not safe)) (##cdr _e241631241951_)))
                        (_hd241630241954_
                         (let ()
                           (declare (not safe))
                           (##car _e241631241951_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl241629241956_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241623241940_))
                            (letrec ((_loop241617241959_
                                      (lambda (_hd241615241962_
                                               _xarg241621241964_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd241615241962_))
                                            (let ((_e241618241967_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd241615241962_))))
                                              (let ((_lp-tl241620241972_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241618241967_)))
                                                    (_lp-hd241619241970_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241618241967_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd241619241970_))
                                                    (let ((_e241634241975_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd241619241970_))))
                                                      (let ((_tl241632241980_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241634241975_)))
                    (_hd241633241978_
                     (let () (declare (not safe)) (##car _e241634241975_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241633241978_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd241633241978_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241632241980_))
                            (let ((_e241637241983_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241632241980_))))
                              (let ((_tl241635241988_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241637241983_)))
                                    (_hd241636241986_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241637241983_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241635241988_))
                                    (let ((__tmp251837
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd241636241986_
                                                   _xarg241621241964_))))
                                      (declare (not safe))
                                      (_loop241617241959_
                                       _lp-tl241620241972_
                                       __tmp251837))
                                    (___match250558250559_
                                     _e241580241834_
                                     _hd241579241837_
                                     _tl241578241839_
                                     _e241592241866_
                                     _hd241591241869_
                                     _tl241590241871_
                                     _e241595241874_
                                     _hd241594241877_
                                     _tl241593241879_
                                     _e241598241882_
                                     _hd241597241885_
                                     _tl241596241887_
                                     _e241601241890_
                                     _hd241600241893_
                                     _tl241599241895_
                                     _e241604241898_
                                     _hd241603241901_
                                     _tl241602241903_
                                     _e241607241906_
                                     _hd241606241909_
                                     _tl241605241911_
                                     _e241610241914_
                                     _hd241609241917_
                                     _tl241608241919_
                                     _e241613241922_
                                     _hd241612241925_
                                     _tl241611241927_))))
                            (___match250558250559_
                             _e241580241834_
                             _hd241579241837_
                             _tl241578241839_
                             _e241592241866_
                             _hd241591241869_
                             _tl241590241871_
                             _e241595241874_
                             _hd241594241877_
                             _tl241593241879_
                             _e241598241882_
                             _hd241597241885_
                             _tl241596241887_
                             _e241601241890_
                             _hd241600241893_
                             _tl241599241895_
                             _e241604241898_
                             _hd241603241901_
                             _tl241602241903_
                             _e241607241906_
                             _hd241606241909_
                             _tl241605241911_
                             _e241610241914_
                             _hd241609241917_
                             _tl241608241919_
                             _e241613241922_
                             _hd241612241925_
                             _tl241611241927_))
                        (___match250558250559_
                         _e241580241834_
                         _hd241579241837_
                         _tl241578241839_
                         _e241592241866_
                         _hd241591241869_
                         _tl241590241871_
                         _e241595241874_
                         _hd241594241877_
                         _tl241593241879_
                         _e241598241882_
                         _hd241597241885_
                         _tl241596241887_
                         _e241601241890_
                         _hd241600241893_
                         _tl241599241895_
                         _e241604241898_
                         _hd241603241901_
                         _tl241602241903_
                         _e241607241906_
                         _hd241606241909_
                         _tl241605241911_
                         _e241610241914_
                         _hd241609241917_
                         _tl241608241919_
                         _e241613241922_
                         _hd241612241925_
                         _tl241611241927_))
                    (___match250558250559_
                     _e241580241834_
                     _hd241579241837_
                     _tl241578241839_
                     _e241592241866_
                     _hd241591241869_
                     _tl241590241871_
                     _e241595241874_
                     _hd241594241877_
                     _tl241593241879_
                     _e241598241882_
                     _hd241597241885_
                     _tl241596241887_
                     _e241601241890_
                     _hd241600241893_
                     _tl241599241895_
                     _e241604241898_
                     _hd241603241901_
                     _tl241602241903_
                     _e241607241906_
                     _hd241606241909_
                     _tl241605241911_
                     _e241610241914_
                     _hd241609241917_
                     _tl241608241919_
                     _e241613241922_
                     _hd241612241925_
                     _tl241611241927_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match250558250559_
                                                     _e241580241834_
                                                     _hd241579241837_
                                                     _tl241578241839_
                                                     _e241592241866_
                                                     _hd241591241869_
                                                     _tl241590241871_
                                                     _e241595241874_
                                                     _hd241594241877_
                                                     _tl241593241879_
                                                     _e241598241882_
                                                     _hd241597241885_
                                                     _tl241596241887_
                                                     _e241601241890_
                                                     _hd241600241893_
                                                     _tl241599241895_
                                                     _e241604241898_
                                                     _hd241603241901_
                                                     _tl241602241903_
                                                     _e241607241906_
                                                     _hd241606241909_
                                                     _tl241605241911_
                                                     _e241610241914_
                                                     _hd241609241917_
                                                     _tl241608241919_
                                                     _e241613241922_
                                                     _hd241612241925_
                                                     _tl241611241927_))))
                                            (let ((_xarg241622241991_
                                                   (reverse _xarg241621241964_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl241590241871_))
                                                  (let ((_L241994_
                                                         _hd241630241954_)
                                                        (_L241995_
                                                         _xarg241622241991_)
                                                        (_L241996_
                                                         _hd241612241925_)
                                                        (_L241997_
                                                         _hd241603241901_)
                                                        (_L241998_
                                                         _tl241583241844_)
                                                        (_L241999_
                                                         _arg241589241863_))
                                                    (if (and (let ((__tmp251835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp251836
                                   (lambda (_g242042242045_ _g242043242047_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g242042242045_
                                             _g242043242047_)))))
                              (declare (not safe))
                              (foldr1 __tmp251836 '() _L241999_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp251835))
                     (let () (declare (not safe)) (gx#identifier? _L241998_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L241997_ 'apply))
                     (fx= (length (let ((__tmp251833
                                         (lambda (_g242049242052_
                                                  _g242050242054_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g242049242052_
                                                   _g242050242054_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp251833 '() _L241999_)))
                          (length (let ((__tmp251834
                                         (lambda (_g242056242059_
                                                  _g242057242061_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g242056242059_
                                                   _g242057242061_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp251834 '() _L241995_))))
                     (let ((__tmp251831
                            (let ((__tmp251832
                                   (lambda (_g242063242066_ _g242064242068_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g242063242066_
                                             _g242064242068_)))))
                              (declare (not safe))
                              (foldr1 __tmp251832 '() _L241999_)))
                           (__tmp251829
                            (let ((__tmp251830
                                   (lambda (_g242070242073_ _g242071242075_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g242070242073_
                                             _g242071242075_)))))
                              (declare (not safe))
                              (foldr1 __tmp251830 '() _L241995_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp251831 __tmp251829))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L241998_ _L241994_))
                     (let ((__tmp251824
                            (let ((__tmp251828
                                   (lambda (_g242077242079_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g242077242079_
                                        _L241996_))))
                                  (__tmp251825
                                   (let ((__tmp251827
                                          (lambda (_g242081242084_
                                                   _g242082242086_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g242081242084_
                                                    _g242082242086_))))
                                         (__tmp251826
                                          (let ()
                                            (declare (not safe))
                                            (cons _L241998_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp251827
                                             __tmp251826
                                             _L241999_))))
                              (declare (not safe))
                              (find __tmp251828 __tmp251825))))
                       (declare (not safe))
                       (not __tmp251824)))
                (___kont250453250454_
                 _L241994_
                 _L241995_
                 _L241996_
                 _L241997_
                 _L241998_
                 _L241999_)
                (___match250558250559_
                 _e241580241834_
                 _hd241579241837_
                 _tl241578241839_
                 _e241592241866_
                 _hd241591241869_
                 _tl241590241871_
                 _e241595241874_
                 _hd241594241877_
                 _tl241593241879_
                 _e241598241882_
                 _hd241597241885_
                 _tl241596241887_
                 _e241601241890_
                 _hd241600241893_
                 _tl241599241895_
                 _e241604241898_
                 _hd241603241901_
                 _tl241602241903_
                 _e241607241906_
                 _hd241606241909_
                 _tl241605241911_
                 _e241610241914_
                 _hd241609241917_
                 _tl241608241919_
                 _e241613241922_
                 _hd241612241925_
                 _tl241611241927_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match250558250559_
                                                   _e241580241834_
                                                   _hd241579241837_
                                                   _tl241578241839_
                                                   _e241592241866_
                                                   _hd241591241869_
                                                   _tl241590241871_
                                                   _e241595241874_
                                                   _hd241594241877_
                                                   _tl241593241879_
                                                   _e241598241882_
                                                   _hd241597241885_
                                                   _tl241596241887_
                                                   _e241601241890_
                                                   _hd241600241893_
                                                   _tl241599241895_
                                                   _e241604241898_
                                                   _hd241603241901_
                                                   _tl241602241903_
                                                   _e241607241906_
                                                   _hd241606241909_
                                                   _tl241605241911_
                                                   _e241610241914_
                                                   _hd241609241917_
                                                   _tl241608241919_
                                                   _e241613241922_
                                                   _hd241612241925_
                                                   _tl241611241927_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop241617241959_ _target241614241930_ '())))
                            (___match250558250559_
                             _e241580241834_
                             _hd241579241837_
                             _tl241578241839_
                             _e241592241866_
                             _hd241591241869_
                             _tl241590241871_
                             _e241595241874_
                             _hd241594241877_
                             _tl241593241879_
                             _e241598241882_
                             _hd241597241885_
                             _tl241596241887_
                             _e241601241890_
                             _hd241600241893_
                             _tl241599241895_
                             _e241604241898_
                             _hd241603241901_
                             _tl241602241903_
                             _e241607241906_
                             _hd241606241909_
                             _tl241605241911_
                             _e241610241914_
                             _hd241609241917_
                             _tl241608241919_
                             _e241613241922_
                             _hd241612241925_
                             _tl241611241927_))
                        (___match250558250559_
                         _e241580241834_
                         _hd241579241837_
                         _tl241578241839_
                         _e241592241866_
                         _hd241591241869_
                         _tl241590241871_
                         _e241595241874_
                         _hd241594241877_
                         _tl241593241879_
                         _e241598241882_
                         _hd241597241885_
                         _tl241596241887_
                         _e241601241890_
                         _hd241600241893_
                         _tl241599241895_
                         _e241604241898_
                         _hd241603241901_
                         _tl241602241903_
                         _e241607241906_
                         _hd241606241909_
                         _tl241605241911_
                         _e241610241914_
                         _hd241609241917_
                         _tl241608241919_
                         _e241613241922_
                         _hd241612241925_
                         _tl241611241927_))))
                (___match250558250559_
                 _e241580241834_
                 _hd241579241837_
                 _tl241578241839_
                 _e241592241866_
                 _hd241591241869_
                 _tl241590241871_
                 _e241595241874_
                 _hd241594241877_
                 _tl241593241879_
                 _e241598241882_
                 _hd241597241885_
                 _tl241596241887_
                 _e241601241890_
                 _hd241600241893_
                 _tl241599241895_
                 _e241604241898_
                 _hd241603241901_
                 _tl241602241903_
                 _e241607241906_
                 _hd241606241909_
                 _tl241605241911_
                 _e241610241914_
                 _hd241609241917_
                 _tl241608241919_
                 _e241613241922_
                 _hd241612241925_
                 _tl241611241927_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match250558250559_
                                                     _e241580241834_
                                                     _hd241579241837_
                                                     _tl241578241839_
                                                     _e241592241866_
                                                     _hd241591241869_
                                                     _tl241590241871_
                                                     _e241595241874_
                                                     _hd241594241877_
                                                     _tl241593241879_
                                                     _e241598241882_
                                                     _hd241597241885_
                                                     _tl241596241887_
                                                     _e241601241890_
                                                     _hd241600241893_
                                                     _tl241599241895_
                                                     _e241604241898_
                                                     _hd241603241901_
                                                     _tl241602241903_
                                                     _e241607241906_
                                                     _hd241606241909_
                                                     _tl241605241911_
                                                     _e241610241914_
                                                     _hd241609241917_
                                                     _tl241608241919_
                                                     _e241613241922_
                                                     _hd241612241925_
                                                     _tl241611241927_))
                                                (___match250558250559_
                                                 _e241580241834_
                                                 _hd241579241837_
                                                 _tl241578241839_
                                                 _e241592241866_
                                                 _hd241591241869_
                                                 _tl241590241871_
                                                 _e241595241874_
                                                 _hd241594241877_
                                                 _tl241593241879_
                                                 _e241598241882_
                                                 _hd241597241885_
                                                 _tl241596241887_
                                                 _e241601241890_
                                                 _hd241600241893_
                                                 _tl241599241895_
                                                 _e241604241898_
                                                 _hd241603241901_
                                                 _tl241602241903_
                                                 _e241607241906_
                                                 _hd241606241909_
                                                 _tl241605241911_
                                                 _e241610241914_
                                                 _hd241609241917_
                                                 _tl241608241919_
                                                 _e241613241922_
                                                 _hd241612241925_
                                                 _tl241611241927_))))
                                        (___match250558250559_
                                         _e241580241834_
                                         _hd241579241837_
                                         _tl241578241839_
                                         _e241592241866_
                                         _hd241591241869_
                                         _tl241590241871_
                                         _e241595241874_
                                         _hd241594241877_
                                         _tl241593241879_
                                         _e241598241882_
                                         _hd241597241885_
                                         _tl241596241887_
                                         _e241601241890_
                                         _hd241600241893_
                                         _tl241599241895_
                                         _e241604241898_
                                         _hd241603241901_
                                         _tl241602241903_
                                         _e241607241906_
                                         _hd241606241909_
                                         _tl241605241911_
                                         _e241610241914_
                                         _hd241609241917_
                                         _tl241608241919_
                                         _e241613241922_
                                         _hd241612241925_
                                         _tl241611241927_))))
                                (___match250558250559_
                                 _e241580241834_
                                 _hd241579241837_
                                 _tl241578241839_
                                 _e241592241866_
                                 _hd241591241869_
                                 _tl241590241871_
                                 _e241595241874_
                                 _hd241594241877_
                                 _tl241593241879_
                                 _e241598241882_
                                 _hd241597241885_
                                 _tl241596241887_
                                 _e241601241890_
                                 _hd241600241893_
                                 _tl241599241895_
                                 _e241604241898_
                                 _hd241603241901_
                                 _tl241602241903_
                                 _e241607241906_
                                 _hd241606241909_
                                 _tl241605241911_
                                 _e241610241914_
                                 _hd241609241917_
                                 _tl241608241919_
                                 _e241613241922_
                                 _hd241612241925_
                                 _tl241611241927_))))
                        (___match250558250559_
                         _e241580241834_
                         _hd241579241837_
                         _tl241578241839_
                         _e241592241866_
                         _hd241591241869_
                         _tl241590241871_
                         _e241595241874_
                         _hd241594241877_
                         _tl241593241879_
                         _e241598241882_
                         _hd241597241885_
                         _tl241596241887_
                         _e241601241890_
                         _hd241600241893_
                         _tl241599241895_
                         _e241604241898_
                         _hd241603241901_
                         _tl241602241903_
                         _e241607241906_
                         _hd241606241909_
                         _tl241605241911_
                         _e241610241914_
                         _hd241609241917_
                         _tl241608241919_
                         _e241613241922_
                         _hd241612241925_
                         _tl241611241927_))
                    (___match250558250559_
                     _e241580241834_
                     _hd241579241837_
                     _tl241578241839_
                     _e241592241866_
                     _hd241591241869_
                     _tl241590241871_
                     _e241595241874_
                     _hd241594241877_
                     _tl241593241879_
                     _e241598241882_
                     _hd241597241885_
                     _tl241596241887_
                     _e241601241890_
                     _hd241600241893_
                     _tl241599241895_
                     _e241604241898_
                     _hd241603241901_
                     _tl241602241903_
                     _e241607241906_
                     _hd241606241909_
                     _tl241605241911_
                     _e241610241914_
                     _hd241609241917_
                     _tl241608241919_
                     _e241613241922_
                     _hd241612241925_
                     _tl241611241927_))
                (___kont250461250462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250461250462_))
                                            (___kont250461250462_))
                                        (___kont250461250462_))))
                                (___kont250461250462_))))
                        (___kont250461250462_))
                    (___kont250461250462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250461250462_))
                                                (___kont250461250462_))
                                            (___kont250461250462_))))
                                    (___kont250461250462_))))
                            (___kont250461250462_))
                        (___kont250461250462_))
                    (___kont250461250462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250461250462_))))
                                            (___kont250461250462_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop241584241847_ _target241581241842_ '())))))
                   (___match250476250477_
                    (lambda (_e241532242094_
                             _hd241531242097_
                             _tl241530242099_
                             ___splice250449250450_
                             _target241533242102_
                             _tl241535242104_)
                      (letrec ((_loop241536242107_
                                (lambda (_hd241534242110_ _arg241540242112_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd241534242110_))
                                      (let ((_e241537242115_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd241534242110_))))
                                        (let ((_lp-tl241539242120_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241537242115_)))
                                              (_lp-hd241538242118_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241537242115_))))
                                          (let ((__tmp251852
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd241538242118_
                                                         _arg241540242112_))))
                                            (declare (not safe))
                                            (_loop241536242107_
                                             _lp-tl241539242120_
                                             __tmp251852))))
                                      (let ((_arg241541242123_
                                             (reverse _arg241540242112_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241530242099_))
                                            (let ((_e241544242126_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241530242099_))))
                                              (let ((_tl241542242131_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241544242126_)))
                                                    (_hd241543242129_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241544242126_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd241543242129_))
                                                    (let ((_e241547242134_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd241543242129_))))
                                                      (let ((_tl241545242139_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241547242134_)))
                    (_hd241546242137_
                     (let () (declare (not safe)) (##car _e241547242134_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241546242137_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd241546242137_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241545242139_))
                            (let ((_e241550242142_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241545242139_))))
                              (let ((_tl241548242147_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241550242142_)))
                                    (_hd241549242145_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241550242142_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241549242145_))
                                    (let ((_e241553242150_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241549242145_))))
                                      (let ((_tl241551242155_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241553242150_)))
                                            (_hd241552242153_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241553242150_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241552242153_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241552242153_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241551242155_))
                                                    (let ((_e241556242158_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241551242155_))))
                                                      (let ((_tl241554242163_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241556242158_)))
                    (_hd241555242161_
                     (let () (declare (not safe)) (##car _e241556242158_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241554242163_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl241548242147_))
                        (let ((___splice250451250452_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl241548242147_
                                  '0))))
                          (let ((_tl241559242168_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice250451250452_ '1)))
                                (_target241557242166_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice250451250452_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl241559242168_))
                                (letrec ((_loop241560242171_
                                          (lambda (_hd241558242174_
                                                   _xarg241564242176_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd241558242174_))
                                                (let ((_e241561242179_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd241558242174_))))
                                                  (let ((_lp-tl241563242184_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e241561242179_)))
                                                        (_lp-hd241562242182_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e241561242179_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd241562242182_))
                                                        (let ((_e241568242187_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd241562242182_))))
                  (let ((_tl241566242192_
                         (let () (declare (not safe)) (##cdr _e241568242187_)))
                        (_hd241567242190_
                         (let ()
                           (declare (not safe))
                           (##car _e241568242187_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd241567242190_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd241567242190_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241566242192_))
                                (let ((_e241571242195_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241566242192_))))
                                  (let ((_tl241569242200_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241571242195_)))
                                        (_hd241570242198_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241571242195_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241569242200_))
                                        (let ((__tmp251851
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd241570242198_
                                                       _xarg241564242176_))))
                                          (declare (not safe))
                                          (_loop241560242171_
                                           _lp-tl241563242184_
                                           __tmp251851))
                                        (___match250488250489_
                                         _e241532242094_
                                         _hd241531242097_
                                         _tl241530242099_
                                         ___splice250449250450_
                                         _target241533242102_
                                         _tl241535242104_))))
                                (___match250488250489_
                                 _e241532242094_
                                 _hd241531242097_
                                 _tl241530242099_
                                 ___splice250449250450_
                                 _target241533242102_
                                 _tl241535242104_))
                            (___match250488250489_
                             _e241532242094_
                             _hd241531242097_
                             _tl241530242099_
                             ___splice250449250450_
                             _target241533242102_
                             _tl241535242104_))
                        (___match250488250489_
                         _e241532242094_
                         _hd241531242097_
                         _tl241530242099_
                         ___splice250449250450_
                         _target241533242102_
                         _tl241535242104_))))
                (___match250488250489_
                 _e241532242094_
                 _hd241531242097_
                 _tl241530242099_
                 ___splice250449250450_
                 _target241533242102_
                 _tl241535242104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg241565242203_
                                                       (reverse _xarg241564242176_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl241542242131_))
                                                      (let ((_L242206_
                                                             _xarg241565242203_)
                                                            (_L242207_
                                                             _hd241555242161_)
                                                            (_L242208_
                                                             _arg241541242123_))
                                                        (if (and (let ((__tmp251849
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp251850
                                       (lambda (_g242236242239_
                                                _g242237242241_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g242236242239_
                                                 _g242237242241_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp251850 '() _L242208_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp251849))
                         (fx= (length (let ((__tmp251847
                                             (lambda (_g242243242246_
                                                      _g242244242248_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g242243242246_
                                                       _g242244242248_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp251847 '() _L242208_)))
                              (length (let ((__tmp251848
                                             (lambda (_g242250242253_
                                                      _g242251242255_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g242250242253_
                                                       _g242251242255_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp251848 '() _L242206_))))
                         (let ((__tmp251845
                                (let ((__tmp251846
                                       (lambda (_g242257242260_
                                                _g242258242262_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g242257242260_
                                                 _g242258242262_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp251846 '() _L242208_)))
                               (__tmp251843
                                (let ((__tmp251844
                                       (lambda (_g242264242267_
                                                _g242265242269_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g242264242267_
                                                 _g242265242269_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp251844 '() _L242206_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp251845
                                    __tmp251843))
                         (let ((__tmp251839
                                (let ((__tmp251842
                                       (lambda (_g242271242273_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g242271242273_
                                            _L242207_))))
                                      (__tmp251840
                                       (let ((__tmp251841
                                              (lambda (_g242275242278_
                                                       _g242276242280_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g242275242278_
                                                        _g242276242280_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp251841 '() _L242208_))))
                                  (declare (not safe))
                                  (find __tmp251842 __tmp251840))))
                           (declare (not safe))
                           (not __tmp251839)))
                    (___kont250447250448_ _L242206_ _L242207_ _L242208_)
                    (___match250488250489_
                     _e241532242094_
                     _hd241531242097_
                     _tl241530242099_
                     ___splice250449250450_
                     _target241533242102_
                     _tl241535242104_)))
              (___match250488250489_
               _e241532242094_
               _hd241531242097_
               _tl241530242099_
               ___splice250449250450_
               _target241533242102_
               _tl241535242104_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop241560242171_
                                     _target241557242166_
                                     '())))
                                (___match250488250489_
                                 _e241532242094_
                                 _hd241531242097_
                                 _tl241530242099_
                                 ___splice250449250450_
                                 _target241533242102_
                                 _tl241535242104_))))
                        (___match250488250489_
                         _e241532242094_
                         _hd241531242097_
                         _tl241530242099_
                         ___splice250449250450_
                         _target241533242102_
                         _tl241535242104_))
                    (___match250488250489_
                     _e241532242094_
                     _hd241531242097_
                     _tl241530242099_
                     ___splice250449250450_
                     _target241533242102_
                     _tl241535242104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match250488250489_
                                                     _e241532242094_
                                                     _hd241531242097_
                                                     _tl241530242099_
                                                     ___splice250449250450_
                                                     _target241533242102_
                                                     _tl241535242104_))
                                                (___match250488250489_
                                                 _e241532242094_
                                                 _hd241531242097_
                                                 _tl241530242099_
                                                 ___splice250449250450_
                                                 _target241533242102_
                                                 _tl241535242104_))
                                            (___match250488250489_
                                             _e241532242094_
                                             _hd241531242097_
                                             _tl241530242099_
                                             ___splice250449250450_
                                             _target241533242102_
                                             _tl241535242104_))))
                                    (___match250488250489_
                                     _e241532242094_
                                     _hd241531242097_
                                     _tl241530242099_
                                     ___splice250449250450_
                                     _target241533242102_
                                     _tl241535242104_))))
                            (___match250488250489_
                             _e241532242094_
                             _hd241531242097_
                             _tl241530242099_
                             ___splice250449250450_
                             _target241533242102_
                             _tl241535242104_))
                        (___match250488250489_
                         _e241532242094_
                         _hd241531242097_
                         _tl241530242099_
                         ___splice250449250450_
                         _target241533242102_
                         _tl241535242104_))
                    (___match250488250489_
                     _e241532242094_
                     _hd241531242097_
                     _tl241530242099_
                     ___splice250449250450_
                     _target241533242102_
                     _tl241535242104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match250488250489_
                                                     _e241532242094_
                                                     _hd241531242097_
                                                     _tl241530242099_
                                                     ___splice250449250450_
                                                     _target241533242102_
                                                     _tl241535242104_))))
                                            (___match250488250489_
                                             _e241532242094_
                                             _hd241531242097_
                                             _tl241530242099_
                                             ___splice250449250450_
                                             _target241533242102_
                                             _tl241535242104_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop241536242107_ _target241533242102_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx250445250446_))
                  (let ((_e241532242094_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx250445250446_))))
                    (let ((_tl241530242099_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241532242094_)))
                          (_hd241531242097_
                           (let ()
                             (declare (not safe))
                             (##car _e241532242094_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd241531242097_))
                          (let ((___splice250449250450_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd241531242097_
                                    '0))))
                            (let ((_tl241535242104_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice250449250450_ '1)))
                                  (_target241533242102_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice250449250450_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl241535242104_))
                                  (___match250476250477_
                                   _e241532242094_
                                   _hd241531242097_
                                   _tl241530242099_
                                   ___splice250449250450_
                                   _target241533242102_
                                   _tl241535242104_)
                                  (___match250488250489_
                                   _e241532242094_
                                   _hd241531242097_
                                   _tl241530242099_
                                   ___splice250449250450_
                                   _target241533242102_
                                   _tl241535242104_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241530242099_))
                              (let ((_e241647241702_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241530242099_))))
                                (let ((_tl241645241707_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241647241702_)))
                                      (_hd241646241705_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241647241702_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd241646241705_))
                                      (let ((_e241650241710_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd241646241705_))))
                                        (let ((_tl241648241715_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241650241710_)))
                                              (_hd241649241713_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241650241710_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd241649241713_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd241649241713_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl241648241715_))
                                                      (let ((_e241653241718_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl241648241715_))))
                (let ((_tl241651241723_
                       (let () (declare (not safe)) (##cdr _e241653241718_)))
                      (_hd241652241721_
                       (let () (declare (not safe)) (##car _e241653241718_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd241652241721_))
                      (let ((_e241656241726_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd241652241721_))))
                        (let ((_tl241654241731_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241656241726_)))
                              (_hd241655241729_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241656241726_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd241655241729_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd241655241729_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl241654241731_))
                                      (let ((_e241659241734_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl241654241731_))))
                                        (let ((_tl241657241739_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241659241734_)))
                                              (_hd241658241737_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241659241734_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241657241739_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl241651241723_))
                                                  (let ((_e241662241742_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl241651241723_))))
                                                    (let ((_tl241660241747_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e241662241742_)))
                                                          (_hd241661241745_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e241662241742_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd241661241745_))
                                                          (let ((_e241665241750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd241661241745_))))
                    (let ((_tl241663241755_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241665241750_)))
                          (_hd241664241753_
                           (let ()
                             (declare (not safe))
                             (##car _e241665241750_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd241664241753_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd241664241753_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl241663241755_))
                                  (let ((_e241668241758_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl241663241755_))))
                                    (let ((_tl241666241763_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e241668241758_)))
                                          (_hd241667241761_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e241668241758_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl241666241763_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl241660241747_))
                                              (let ((_e241671241766_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl241660241747_))))
                                                (let ((_tl241669241771_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e241671241766_)))
                                                      (_hd241670241769_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e241671241766_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd241670241769_))
                                                      (let ((_e241674241774_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd241670241769_))))
                (let ((_tl241672241779_
                       (let () (declare (not safe)) (##cdr _e241674241774_)))
                      (_hd241673241777_
                       (let () (declare (not safe)) (##car _e241674241774_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd241673241777_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd241673241777_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241672241779_))
                              (let ((_e241677241782_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241672241779_))))
                                (let ((_tl241675241787_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241677241782_)))
                                      (_hd241676241785_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241677241782_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl241675241787_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl241669241771_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241645241707_))
                                              (___match250586250587_
                                               _e241532242094_
                                               _hd241531242097_
                                               _tl241530242099_
                                               _e241647241702_
                                               _hd241646241705_
                                               _tl241645241707_
                                               _e241650241710_
                                               _hd241649241713_
                                               _tl241648241715_
                                               _e241653241718_
                                               _hd241652241721_
                                               _tl241651241723_
                                               _e241656241726_
                                               _hd241655241729_
                                               _tl241654241731_
                                               _e241659241734_
                                               _hd241658241737_
                                               _tl241657241739_
                                               _e241662241742_
                                               _hd241661241745_
                                               _tl241660241747_
                                               _e241665241750_
                                               _hd241664241753_
                                               _tl241663241755_
                                               _e241668241758_
                                               _hd241667241761_
                                               _tl241666241763_
                                               _e241671241766_
                                               _hd241670241769_
                                               _tl241669241771_
                                               _e241674241774_
                                               _hd241673241777_
                                               _tl241672241779_
                                               _e241677241782_
                                               _hd241676241785_
                                               _tl241675241787_)
                                              (___kont250461250462_))
                                          (___kont250461250462_))
                                      (___kont250461250462_))))
                              (___kont250461250462_))
                          (___kont250461250462_))
                      (___kont250461250462_))))
              (___kont250461250462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont250461250462_))
                                          (___kont250461250462_))))
                                  (___kont250461250462_))
                              (___kont250461250462_))
                          (___kont250461250462_))))
                  (___kont250461250462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont250461250462_))
                                              (___kont250461250462_))))
                                      (___kont250461250462_))
                                  (___kont250461250462_))
                              (___kont250461250462_))))
                      (___kont250461250462_))))
              (___kont250461250462_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont250461250462_))
                                              (___kont250461250462_))))
                                      (___kont250461250462_))))
                              (___kont250461250462_)))))
                  (___kont250461250462_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form240988_)
        (let* ((___stx250589250590_ _form240988_)
               (_g240992241116_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250589250590_)))))
          (let ((___kont250591250592_
                 (lambda (_L241486_ _L241487_ _L241488_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L241487_))))
                (___kont250597250598_
                 (lambda (_L241334_ _L241335_ _L241336_ _L241337_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L241334_))))
                (___kont250601250602_
                 (lambda (_L241201_ _L241202_ _L241203_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L241201_)))))
            (let* ((___match250698250699_
                    (lambda (_e241084241121_
                             _hd241083241124_
                             _tl241082241126_
                             _e241087241129_
                             _hd241086241132_
                             _tl241085241134_
                             _e241090241137_
                             _hd241089241140_
                             _tl241088241142_
                             _e241093241145_
                             _hd241092241148_
                             _tl241091241150_
                             _e241096241153_
                             _hd241095241156_
                             _tl241094241158_
                             _e241099241161_
                             _hd241098241164_
                             _tl241097241166_
                             _e241102241169_
                             _hd241101241172_
                             _tl241100241174_
                             _e241105241177_
                             _hd241104241180_
                             _tl241103241182_
                             _e241108241185_
                             _hd241107241188_
                             _tl241106241190_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl241100241174_))
                          (let ((_e241111241193_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl241100241174_))))
                            (let ((_tl241109241198_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e241111241193_)))
                                  (_hd241110241196_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e241111241193_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl241109241198_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl241085241134_))
                                      (___kont250601250602_
                                       _hd241107241188_
                                       _hd241098241164_
                                       _hd241083241124_)
                                      (let ()
                                        (declare (not safe))
                                        (_g240992241116_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g240992241116_)))))
                          (let () (declare (not safe)) (_g240992241116_)))))
                   (___match250628250629_
                    (lambda (_e241045241238_
                             _hd241044241241_
                             _tl241043241243_
                             ___splice250599250600_
                             _target241046241246_
                             _tl241048241248_)
                      (letrec ((_loop241049241251_
                                (lambda (_hd241047241254_ _arg241053241256_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd241047241254_))
                                      (let ((_e241050241259_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd241047241254_))))
                                        (let ((_lp-tl241052241264_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241050241259_)))
                                              (_lp-hd241051241262_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241050241259_))))
                                          (let ((__tmp251853
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd241051241262_
                                                         _arg241053241256_))))
                                            (declare (not safe))
                                            (_loop241049241251_
                                             _lp-tl241052241264_
                                             __tmp251853))))
                                      (let ((_arg241054241267_
                                             (reverse _arg241053241256_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241043241243_))
                                            (let ((_e241057241270_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241043241243_))))
                                              (let ((_tl241055241275_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241057241270_)))
                                                    (_hd241056241273_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241057241270_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd241056241273_))
                                                    (let ((_e241060241278_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd241056241273_))))
                                                      (let ((_tl241058241283_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241060241278_)))
                    (_hd241059241281_
                     (let () (declare (not safe)) (##car _e241060241278_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241059241281_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd241059241281_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241058241283_))
                            (let ((_e241063241286_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241058241283_))))
                              (let ((_tl241061241291_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241063241286_)))
                                    (_hd241062241289_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241063241286_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241062241289_))
                                    (let ((_e241066241294_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241062241289_))))
                                      (let ((_tl241064241299_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241066241294_)))
                                            (_hd241065241297_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241066241294_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241065241297_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241065241297_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241064241299_))
                                                    (let ((_e241069241302_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241064241299_))))
                                                      (let ((_tl241067241307_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241069241302_)))
                    (_hd241068241305_
                     (let () (declare (not safe)) (##car _e241069241302_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241067241307_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl241061241291_))
                        (let ((_e241072241310_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl241061241291_))))
                          (let ((_tl241070241315_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e241072241310_)))
                                (_hd241071241313_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e241072241310_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd241071241313_))
                                (let ((_e241075241318_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd241071241313_))))
                                  (let ((_tl241073241323_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241075241318_)))
                                        (_hd241074241321_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241075241318_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd241074241321_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd241074241321_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl241073241323_))
                                                (let ((_e241078241326_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl241073241323_))))
                                                  (let ((_tl241076241331_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e241078241326_)))
                                                        (_hd241077241329_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e241078241326_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl241076241331_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl241055241275_))
                                                            (___kont250597250598_
                                                             _hd241077241329_
                                                             _hd241068241305_
                                                             _tl241048241248_
                                                             _arg241054241267_)
                                                            (___match250698250699_
                                                             _e241045241238_
                                                             _hd241044241241_
                                                             _tl241043241243_
                                                             _e241057241270_
                                                             _hd241056241273_
                                                             _tl241055241275_
                                                             _e241060241278_
                                                             _hd241059241281_
                                                             _tl241058241283_
                                                             _e241063241286_
                                                             _hd241062241289_
                                                             _tl241061241291_
                                                             _e241066241294_
                                                             _hd241065241297_
                                                             _tl241064241299_
                                                             _e241069241302_
                                                             _hd241068241305_
                                                             _tl241067241307_
                                                             _e241072241310_
                                                             _hd241071241313_
                                                             _tl241070241315_
                                                             _e241075241318_
                                                             _hd241074241321_
                                                             _tl241073241323_
                                                             _e241078241326_
                                                             _hd241077241329_
                                                             _tl241076241331_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g240992241116_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g240992241116_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g240992241116_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g240992241116_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g240992241116_)))))
                        (let () (declare (not safe)) (_g240992241116_)))
                    (let () (declare (not safe)) (_g240992241116_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g240992241116_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g240992241116_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g240992241116_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g240992241116_)))))
                            (let () (declare (not safe)) (_g240992241116_)))
                        (let () (declare (not safe)) (_g240992241116_)))
                    (let () (declare (not safe)) (_g240992241116_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g240992241116_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g240992241116_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop241049241251_ _target241046241246_ '())))))
                   (___match250616250617_
                    (lambda (_e240999241374_
                             _hd240998241377_
                             _tl240997241379_
                             ___splice250593250594_
                             _target241000241382_
                             _tl241002241384_)
                      (letrec ((_loop241003241387_
                                (lambda (_hd241001241390_ _arg241007241392_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd241001241390_))
                                      (let ((_e241004241395_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd241001241390_))))
                                        (let ((_lp-tl241006241400_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241004241395_)))
                                              (_lp-hd241005241398_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241004241395_))))
                                          (let ((__tmp251855
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd241005241398_
                                                         _arg241007241392_))))
                                            (declare (not safe))
                                            (_loop241003241387_
                                             _lp-tl241006241400_
                                             __tmp251855))))
                                      (let ((_arg241008241403_
                                             (reverse _arg241007241392_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl240997241379_))
                                            (let ((_e241011241406_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl240997241379_))))
                                              (let ((_tl241009241411_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241011241406_)))
                                                    (_hd241010241409_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241011241406_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd241010241409_))
                                                    (let ((_e241014241414_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd241010241409_))))
                                                      (let ((_tl241012241419_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241014241414_)))
                    (_hd241013241417_
                     (let () (declare (not safe)) (##car _e241014241414_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241013241417_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd241013241417_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241012241419_))
                            (let ((_e241017241422_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241012241419_))))
                              (let ((_tl241015241427_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241017241422_)))
                                    (_hd241016241425_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241017241422_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241016241425_))
                                    (let ((_e241020241430_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241016241425_))))
                                      (let ((_tl241018241435_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241020241430_)))
                                            (_hd241019241433_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241020241430_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241019241433_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241019241433_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241018241435_))
                                                    (let ((_e241023241438_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241018241435_))))
                                                      (let ((_tl241021241443_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241023241438_)))
                    (_hd241022241441_
                     (let () (declare (not safe)) (##car _e241023241438_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241021241443_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl241015241427_))
                        (let ((___splice250595250596_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl241015241427_
                                  '0))))
                          (let ((_tl241026241448_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice250595250596_ '1)))
                                (_target241024241446_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice250595250596_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl241026241448_))
                                (letrec ((_loop241027241451_
                                          (lambda (_hd241025241454_
                                                   _xarg241031241456_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd241025241454_))
                                                (let ((_e241028241459_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd241025241454_))))
                                                  (let ((_lp-tl241030241464_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e241028241459_)))
                                                        (_lp-hd241029241462_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e241028241459_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd241029241462_))
                                                        (let ((_e241035241467_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd241029241462_))))
                  (let ((_tl241033241472_
                         (let () (declare (not safe)) (##cdr _e241035241467_)))
                        (_hd241034241470_
                         (let ()
                           (declare (not safe))
                           (##car _e241035241467_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd241034241470_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd241034241470_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241033241472_))
                                (let ((_e241038241475_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241033241472_))))
                                  (let ((_tl241036241480_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241038241475_)))
                                        (_hd241037241478_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241038241475_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241036241480_))
                                        (let ((__tmp251854
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd241037241478_
                                                       _xarg241031241456_))))
                                          (declare (not safe))
                                          (_loop241027241451_
                                           _lp-tl241030241464_
                                           __tmp251854))
                                        (___match250628250629_
                                         _e240999241374_
                                         _hd240998241377_
                                         _tl240997241379_
                                         ___splice250593250594_
                                         _target241000241382_
                                         _tl241002241384_))))
                                (___match250628250629_
                                 _e240999241374_
                                 _hd240998241377_
                                 _tl240997241379_
                                 ___splice250593250594_
                                 _target241000241382_
                                 _tl241002241384_))
                            (___match250628250629_
                             _e240999241374_
                             _hd240998241377_
                             _tl240997241379_
                             ___splice250593250594_
                             _target241000241382_
                             _tl241002241384_))
                        (___match250628250629_
                         _e240999241374_
                         _hd240998241377_
                         _tl240997241379_
                         ___splice250593250594_
                         _target241000241382_
                         _tl241002241384_))))
                (___match250628250629_
                 _e240999241374_
                 _hd240998241377_
                 _tl240997241379_
                 ___splice250593250594_
                 _target241000241382_
                 _tl241002241384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg241032241483_
                                                       (reverse _xarg241031241456_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl241009241411_))
                                                      (___kont250591250592_
                                                       _xarg241032241483_
                                                       _hd241022241441_
                                                       _arg241008241403_)
                                                      (___match250628250629_
                                                       _e240999241374_
                                                       _hd240998241377_
                                                       _tl240997241379_
                                                       ___splice250593250594_
                                                       _target241000241382_
                                                       _tl241002241384_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop241027241451_
                                     _target241024241446_
                                     '())))
                                (___match250628250629_
                                 _e240999241374_
                                 _hd240998241377_
                                 _tl240997241379_
                                 ___splice250593250594_
                                 _target241000241382_
                                 _tl241002241384_))))
                        (___match250628250629_
                         _e240999241374_
                         _hd240998241377_
                         _tl240997241379_
                         ___splice250593250594_
                         _target241000241382_
                         _tl241002241384_))
                    (___match250628250629_
                     _e240999241374_
                     _hd240998241377_
                     _tl240997241379_
                     ___splice250593250594_
                     _target241000241382_
                     _tl241002241384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match250628250629_
                                                     _e240999241374_
                                                     _hd240998241377_
                                                     _tl240997241379_
                                                     ___splice250593250594_
                                                     _target241000241382_
                                                     _tl241002241384_))
                                                (___match250628250629_
                                                 _e240999241374_
                                                 _hd240998241377_
                                                 _tl240997241379_
                                                 ___splice250593250594_
                                                 _target241000241382_
                                                 _tl241002241384_))
                                            (___match250628250629_
                                             _e240999241374_
                                             _hd240998241377_
                                             _tl240997241379_
                                             ___splice250593250594_
                                             _target241000241382_
                                             _tl241002241384_))))
                                    (___match250628250629_
                                     _e240999241374_
                                     _hd240998241377_
                                     _tl240997241379_
                                     ___splice250593250594_
                                     _target241000241382_
                                     _tl241002241384_))))
                            (___match250628250629_
                             _e240999241374_
                             _hd240998241377_
                             _tl240997241379_
                             ___splice250593250594_
                             _target241000241382_
                             _tl241002241384_))
                        (___match250628250629_
                         _e240999241374_
                         _hd240998241377_
                         _tl240997241379_
                         ___splice250593250594_
                         _target241000241382_
                         _tl241002241384_))
                    (___match250628250629_
                     _e240999241374_
                     _hd240998241377_
                     _tl240997241379_
                     ___splice250593250594_
                     _target241000241382_
                     _tl241002241384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match250628250629_
                                                     _e240999241374_
                                                     _hd240998241377_
                                                     _tl240997241379_
                                                     ___splice250593250594_
                                                     _target241000241382_
                                                     _tl241002241384_))))
                                            (___match250628250629_
                                             _e240999241374_
                                             _hd240998241377_
                                             _tl240997241379_
                                             ___splice250593250594_
                                             _target241000241382_
                                             _tl241002241384_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop241003241387_ _target241000241382_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx250589250590_))
                  (let ((_e240999241374_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx250589250590_))))
                    (let ((_tl240997241379_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240999241374_)))
                          (_hd240998241377_
                           (let ()
                             (declare (not safe))
                             (##car _e240999241374_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd240998241377_))
                          (let ((___splice250593250594_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd240998241377_
                                    '0))))
                            (let ((_tl241002241384_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice250593250594_ '1)))
                                  (_target241000241382_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice250593250594_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl241002241384_))
                                  (___match250616250617_
                                   _e240999241374_
                                   _hd240998241377_
                                   _tl240997241379_
                                   ___splice250593250594_
                                   _target241000241382_
                                   _tl241002241384_)
                                  (___match250628250629_
                                   _e240999241374_
                                   _hd240998241377_
                                   _tl240997241379_
                                   ___splice250593250594_
                                   _target241000241382_
                                   _tl241002241384_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl240997241379_))
                              (let ((_e241087241129_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl240997241379_))))
                                (let ((_tl241085241134_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241087241129_)))
                                      (_hd241086241132_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241087241129_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd241086241132_))
                                      (let ((_e241090241137_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd241086241132_))))
                                        (let ((_tl241088241142_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241090241137_)))
                                              (_hd241089241140_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241090241137_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd241089241140_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd241089241140_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl241088241142_))
                                                      (let ((_e241093241145_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl241088241142_))))
                (let ((_tl241091241150_
                       (let () (declare (not safe)) (##cdr _e241093241145_)))
                      (_hd241092241148_
                       (let () (declare (not safe)) (##car _e241093241145_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd241092241148_))
                      (let ((_e241096241153_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd241092241148_))))
                        (let ((_tl241094241158_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241096241153_)))
                              (_hd241095241156_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241096241153_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd241095241156_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd241095241156_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl241094241158_))
                                      (let ((_e241099241161_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl241094241158_))))
                                        (let ((_tl241097241166_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241099241161_)))
                                              (_hd241098241164_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241099241161_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241097241166_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl241091241150_))
                                                  (let ((_e241102241169_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl241091241150_))))
                                                    (let ((_tl241100241174_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e241102241169_)))
                                                          (_hd241101241172_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e241102241169_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd241101241172_))
                                                          (let ((_e241105241177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd241101241172_))))
                    (let ((_tl241103241182_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241105241177_)))
                          (_hd241104241180_
                           (let ()
                             (declare (not safe))
                             (##car _e241105241177_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd241104241180_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd241104241180_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl241103241182_))
                                  (let ((_e241108241185_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl241103241182_))))
                                    (let ((_tl241106241190_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e241108241185_)))
                                          (_hd241107241188_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e241108241185_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl241106241190_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl241100241174_))
                                              (let ((_e241111241193_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl241100241174_))))
                                                (let ((_tl241109241198_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e241111241193_)))
                                                      (_hd241110241196_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e241111241193_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl241109241198_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl241085241134_))
                                                          (___kont250601250602_
                                                           _hd241107241188_
                                                           _hd241098241164_
                                                           _hd240998241377_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g240992241116_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g240992241116_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g240992241116_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g240992241116_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g240992241116_)))
                              (let () (declare (not safe)) (_g240992241116_)))
                          (let () (declare (not safe)) (_g240992241116_)))))
                  (let () (declare (not safe)) (_g240992241116_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g240992241116_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g240992241116_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g240992241116_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g240992241116_)))
                              (let ()
                                (declare (not safe))
                                (_g240992241116_)))))
                      (let () (declare (not safe)) (_g240992241116_)))))
              (let () (declare (not safe)) (_g240992241116_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g240992241116_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g240992241116_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g240992241116_)))))
                              (let ()
                                (declare (not safe))
                                (_g240992241116_))))))
                  (let () (declare (not safe)) (_g240992241116_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form240792_)
        (let* ((_g240794240808_
                (lambda (_g240795240805_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g240795240805_))))
               (_g240793240985_
                (lambda (_g240795240811_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g240795240811_))
                      (let ((_e240800240813_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g240795240811_))))
                        (let ((_hd240799240816_
                               (let ()
                                 (declare (not safe))
                                 (##car _e240800240813_)))
                              (_tl240798240818_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e240800240813_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl240798240818_))
                              (let ((_e240803240821_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl240798240818_))))
                                (let ((_hd240802240824_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240803240821_)))
                                      (_tl240801240826_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240803240821_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl240801240826_))
                                      ((lambda (_L240829_ _L240830_)
                                         (let* ((___stx250711250712_ _L240830_)
                                                (_g240845240873_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx250711250712_)))))
                                           (let ((___kont250713250714_
                                                  (lambda (_L240964_)
                                                    (length (let ((__tmp251856
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g240974240977_ _g240975240979_)
                             (let ()
                               (declare (not safe))
                               (cons _g240974240977_ _g240975240979_)))))
                      (declare (not safe))
                      (foldr1 __tmp251856 '() _L240964_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont250717250718_
                                                  (lambda (_L240915_ _L240916_)
                                                    (let ((__tmp251857
                                                           (length (let ((__tmp251858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g240927240930_ _g240928240932_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g240927240930_
                                            _g240928240932_)))))
                             (declare (not safe))
                             (foldr1 __tmp251858 '() _L240916_)))))
              (declare (not safe))
              (cons __tmp251857 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont250721250722_
                                                  (lambda (_L240878_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match250736250737_
                                                     (lambda (___splice250719250720_
                                                              _target240859240891_
                                                              _tl240861240893_)
                                                       (letrec ((_loop240862240896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd240860240899_ _arg240866240901_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd240860240899_))
                               (let ((_e240863240904_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd240860240899_))))
                                 (let ((_lp-tl240865240909_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e240863240904_)))
                                       (_lp-hd240864240907_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e240863240904_))))
                                   (let ((__tmp251859
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd240864240907_
                                                  _arg240866240901_))))
                                     (declare (not safe))
                                     (_loop240862240896_
                                      _lp-tl240865240909_
                                      __tmp251859))))
                               (let ((_arg240867240912_
                                      (reverse _arg240866240901_)))
                                 (___kont250717250718_
                                  _tl240861240893_
                                  _arg240867240912_))))))
                 (let ()
                   (declare (not safe))
                   (_loop240862240896_ _target240859240891_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match250730250731_
                                                     (lambda (___splice250715250716_
                                                              _target240848240940_
                                                              _tl240850240942_)
                                                       (letrec ((_loop240851240945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd240849240948_ _arg240855240950_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd240849240948_))
                               (let ((_e240852240953_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd240849240948_))))
                                 (let ((_lp-tl240854240958_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e240852240953_)))
                                       (_lp-hd240853240956_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e240852240953_))))
                                   (let ((__tmp251860
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd240853240956_
                                                  _arg240855240950_))))
                                     (declare (not safe))
                                     (_loop240851240945_
                                      _lp-tl240854240958_
                                      __tmp251860))))
                               (let ((_arg240856240961_
                                      (reverse _arg240855240950_)))
                                 (___kont250713250714_ _arg240856240961_))))))
                 (let ()
                   (declare (not safe))
                   (_loop240851240945_ _target240848240940_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx250711250712_))
                                                   (let ((___splice250715250716_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx250711250712_
                                                             '0))))
                                                     (let ((_tl240850240942_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice250715250716_
                                                               '1)))
                                                           (_target240848240940_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice250715250716_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl240850240942_))
                                                           (___match250730250731_
                                                            ___splice250715250716_
                                                            _target240848240940_
                                                            _tl240850240942_)
                                                           (___match250736250737_
                                                            ___splice250715250716_
                                                            _target240848240940_
                                                            _tl240850240942_))))
                                                   (___kont250721250722_
                                                    ___stx250711250712_))))))
                                       _hd240802240824_
                                       _hd240799240816_)
                                      (let ()
                                        (declare (not safe))
                                        (_g240794240808_ _g240795240811_)))))
                              (let ()
                                (declare (not safe))
                                (_g240794240808_ _g240795240811_)))))
                      (let ()
                        (declare (not safe))
                        (_g240794240808_ _g240795240811_))))))
          (declare (not safe))
          (_g240793240985_ _form240792_))))
    (define gxc#lambda-expr?
      (lambda (_expr240745_)
        (let* ((___stx250739250740_ _expr240745_)
               (_g240748240758_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250739250740_)))))
          (let ((___kont250741250742_ (lambda (_L240778_) '#t))
                (___kont250743250744_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx250739250740_))
                (let ((_e240753240770_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx250739250740_))))
                  (let ((_tl240751240775_
                         (let () (declare (not safe)) (##cdr _e240753240770_)))
                        (_hd240752240773_
                         (let ()
                           (declare (not safe))
                           (##car _e240753240770_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd240752240773_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd240752240773_))
                            (___kont250741250742_ _tl240751240775_)
                            (___kont250743250744_))
                        (___kont250743250744_))))
                (___kont250743250744_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr240698_)
        (let* ((___stx250757250758_ _expr240698_)
               (_g240701240711_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250757250758_)))))
          (let ((___kont250759250760_ (lambda (_L240731_) '#t))
                (___kont250761250762_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx250757250758_))
                (let ((_e240706240723_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx250757250758_))))
                  (let ((_tl240704240728_
                         (let () (declare (not safe)) (##cdr _e240706240723_)))
                        (_hd240705240726_
                         (let ()
                           (declare (not safe))
                           (##car _e240706240723_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd240705240726_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd240705240726_))
                            (___kont250759250760_ _tl240704240728_)
                            (___kont250761250762_))
                        (___kont250761250762_))))
                (___kont250761250762_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr240567_)
        (let* ((___stx250775250776_ _expr240567_)
               (_g240570240600_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250775250776_)))))
          (let ((___kont250777250778_
                 (lambda (_L240668_ _L240669_ _L240670_)
                   (if (let () (declare (not safe)) (gx#identifier? _L240670_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L240669_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L240668_))
                           '#f)
                       '#f)))
                (___kont250779250780_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx250775250776_))
                (let ((_e240577240612_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx250775250776_))))
                  (let ((_tl240575240617_
                         (let () (declare (not safe)) (##cdr _e240577240612_)))
                        (_hd240576240615_
                         (let ()
                           (declare (not safe))
                           (##car _e240577240612_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd240576240615_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd240576240615_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl240575240617_))
                                (let ((_e240580240620_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl240575240617_))))
                                  (let ((_tl240578240625_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e240580240620_)))
                                        (_hd240579240623_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e240580240620_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd240579240623_))
                                        (let ((_e240583240628_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd240579240623_))))
                                          (let ((_tl240581240633_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e240583240628_)))
                                                (_hd240582240631_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e240583240628_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd240582240631_))
                                                (let ((_e240586240636_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd240582240631_))))
                                                  (let ((_tl240584240641_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e240586240636_)))
                                                        (_hd240585240639_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e240586240636_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd240585240639_))
                                                        (let ((_e240589240644_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd240585240639_))))
                  (let ((_tl240587240649_
                         (let () (declare (not safe)) (##cdr _e240589240644_)))
                        (_hd240588240647_
                         (let ()
                           (declare (not safe))
                           (##car _e240589240644_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl240587240649_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl240584240641_))
                            (let ((_e240592240652_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl240584240641_))))
                              (let ((_tl240590240657_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e240592240652_)))
                                    (_hd240591240655_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e240592240652_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl240590240657_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl240581240633_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl240578240625_))
                                            (let ((_e240595240660_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl240578240625_))))
                                              (let ((_tl240593240665_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e240595240660_)))
                                                    (_hd240594240663_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e240595240660_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl240593240665_))
                                                    (___kont250777250778_
                                                     _hd240594240663_
                                                     _hd240591240655_
                                                     _hd240588240647_)
                                                    (___kont250779250780_))))
                                            (___kont250779250780_))
                                        (___kont250779250780_))
                                    (___kont250779250780_))))
                            (___kont250779250780_))
                        (___kont250779250780_))))
                (___kont250779250780_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250779250780_))))
                                        (___kont250779250780_))))
                                (___kont250779250780_))
                            (___kont250779250780_))
                        (___kont250779250780_))))
                (___kont250779250780_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr239892_)
        (let* ((___stx250837250838_ _expr239892_)
               (_g239895240053_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250837250838_)))))
          (let ((___kont250839250840_
                 (lambda (_L240441_
                          _L240442_
                          _L240443_
                          _L240444_
                          _L240445_
                          _L240446_
                          _L240447_
                          _L240448_
                          _L240449_
                          _L240450_
                          _L240451_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L240448_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L240444_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L240443_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L240451_
                                      _L240442_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L240450_
                                          _L240447_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L240445_
                                              _L240441_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L240449_
                                              _L240446_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont250841250842_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx250837250838_))
                (let ((_e239910240065_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx250837250838_))))
                  (let ((_tl239908240070_
                         (let () (declare (not safe)) (##cdr _e239910240065_)))
                        (_hd239909240068_
                         (let ()
                           (declare (not safe))
                           (##car _e239910240065_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd239909240068_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd239909240068_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl239908240070_))
                                (let ((_e239913240073_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl239908240070_))))
                                  (let ((_tl239911240078_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239913240073_)))
                                        (_hd239912240076_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239913240073_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd239912240076_))
                                        (let ((_e239916240081_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd239912240076_))))
                                          (let ((_tl239914240086_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e239916240081_)))
                                                (_hd239915240084_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e239916240081_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd239915240084_))
                                                (let ((_e239919240089_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd239915240084_))))
                                                  (let ((_tl239917240094_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239919240089_)))
                                                        (_hd239918240092_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239919240089_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd239918240092_))
                                                        (let ((_e239922240097_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd239918240092_))))
                  (let ((_tl239920240102_
                         (let () (declare (not safe)) (##cdr _e239922240097_)))
                        (_hd239921240100_
                         (let ()
                           (declare (not safe))
                           (##car _e239922240097_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl239920240102_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239917240094_))
                            (let ((_e239925240105_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239917240094_))))
                              (let ((_tl239923240110_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239925240105_)))
                                    (_hd239924240108_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239925240105_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd239924240108_))
                                    (let ((_e239928240113_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd239924240108_))))
                                      (let ((_tl239926240118_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239928240113_)))
                                            (_hd239927240116_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239928240113_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd239927240116_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd239927240116_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl239926240118_))
                                                    (let ((_e239931240121_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl239926240118_))))
                                                      (let ((_tl239929240126_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239931240121_)))
                    (_hd239930240124_
                     (let () (declare (not safe)) (##car _e239931240121_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd239930240124_))
                    (let ((_e239934240129_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd239930240124_))))
                      (let ((_tl239932240134_
                             (let ()
                               (declare (not safe))
                               (##cdr _e239934240129_)))
                            (_hd239933240132_
                             (let ()
                               (declare (not safe))
                               (##car _e239934240129_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd239933240132_))
                            (let ((_e239937240137_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd239933240132_))))
                              (let ((_tl239935240142_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239937240137_)))
                                    (_hd239936240140_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239937240137_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd239936240140_))
                                    (let ((_e239940240145_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd239936240140_))))
                                      (let ((_tl239938240150_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239940240145_)))
                                            (_hd239939240148_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239940240145_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl239938240150_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239935240142_))
                                                (let ((_e239943240153_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239935240142_))))
                                                  (let ((_tl239941240158_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239943240153_)))
                                                        (_hd239942240156_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239943240153_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl239941240158_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl239932240134_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl239929240126_))
                        (let ((_e239946240161_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl239929240126_))))
                          (let ((_tl239944240166_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239946240161_)))
                                (_hd239945240164_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239946240161_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd239945240164_))
                                (let ((_e239949240169_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd239945240164_))))
                                  (let ((_tl239947240174_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239949240169_)))
                                        (_hd239948240172_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239949240169_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd239948240172_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd239948240172_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239947240174_))
                                                (let ((_e239952240177_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239947240174_))))
                                                  (let ((_tl239950240182_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239952240177_)))
                                                        (_hd239951240180_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239952240177_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd239951240180_))
                                                        (let ((_e239955240185_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd239951240180_))))
                  (let ((_tl239953240190_
                         (let () (declare (not safe)) (##cdr _e239955240185_)))
                        (_hd239954240188_
                         (let ()
                           (declare (not safe))
                           (##car _e239955240185_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl239950240182_))
                        (let ((_e239958240193_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl239950240182_))))
                          (let ((_tl239956240198_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239958240193_)))
                                (_hd239957240196_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239958240193_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd239957240196_))
                                (let ((_e239961240201_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd239957240196_))))
                                  (let ((_tl239959240206_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239961240201_)))
                                        (_hd239960240204_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239961240201_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd239960240204_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd239960240204_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239959240206_))
                                                (let ((_e239964240209_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239959240206_))))
                                                  (let ((_tl239962240214_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239964240209_)))
                                                        (_hd239963240212_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239964240209_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd239963240212_))
                                                        (let ((_e239967240217_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd239963240212_))))
                  (let ((_tl239965240222_
                         (let () (declare (not safe)) (##cdr _e239967240217_)))
                        (_hd239966240220_
                         (let ()
                           (declare (not safe))
                           (##car _e239967240217_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd239966240220_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd239966240220_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl239965240222_))
                                (let ((_e239970240225_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl239965240222_))))
                                  (let ((_tl239968240230_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239970240225_)))
                                        (_hd239969240228_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239970240225_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl239968240230_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl239962240214_))
                                            (let ((_e239973240233_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl239962240214_))))
                                              (let ((_tl239971240238_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e239973240233_)))
                                                    (_hd239972240236_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e239973240233_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd239972240236_))
                                                    (let ((_e239976240241_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd239972240236_))))
                                                      (let ((_tl239974240246_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239976240241_)))
                    (_hd239975240244_
                     (let () (declare (not safe)) (##car _e239976240241_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd239975240244_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd239975240244_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239974240246_))
                            (let ((_e239979240249_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239974240246_))))
                              (let ((_tl239977240254_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239979240249_)))
                                    (_hd239978240252_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239979240249_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl239977240254_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl239971240238_))
                                        (let ((_e239982240257_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl239971240238_))))
                                          (let ((_tl239980240262_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e239982240257_)))
                                                (_hd239981240260_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e239982240257_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd239981240260_))
                                                (let ((_e239985240265_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd239981240260_))))
                                                  (let ((_tl239983240270_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239985240265_)))
                                                        (_hd239984240268_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239985240265_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd239984240268_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd239984240268_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl239983240270_))
                        (let ((_e239988240273_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl239983240270_))))
                          (let ((_tl239986240278_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239988240273_)))
                                (_hd239987240276_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239988240273_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl239986240278_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl239956240198_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl239944240166_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl239923240110_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl239914240086_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl239911240078_))
                                                    (let ((_e239991240281_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl239911240078_))))
                                                      (let ((_tl239989240286_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239991240281_)))
                    (_hd239990240284_
                     (let () (declare (not safe)) (##car _e239991240281_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd239990240284_))
                    (let ((_e239994240289_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd239990240284_))))
                      (let ((_tl239992240294_
                             (let ()
                               (declare (not safe))
                               (##cdr _e239994240289_)))
                            (_hd239993240292_
                             (let ()
                               (declare (not safe))
                               (##car _e239994240289_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd239993240292_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd239993240292_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl239992240294_))
                                    (let ((_e239997240297_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl239992240294_))))
                                      (let ((_tl239995240302_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239997240297_)))
                                            (_hd239996240300_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239997240297_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl239995240302_))
                                            (let ((_e240000240305_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl239995240302_))))
                                              (let ((_tl239998240310_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e240000240305_)))
                                                    (_hd239999240308_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e240000240305_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd239999240308_))
                                                    (let ((_e240003240313_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd239999240308_))))
                                                      (let ((_tl240001240318_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e240003240313_)))
                    (_hd240002240316_
                     (let () (declare (not safe)) (##car _e240003240313_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd240002240316_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd240002240316_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl240001240318_))
                            (let ((_e240006240321_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl240001240318_))))
                              (let ((_tl240004240326_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e240006240321_)))
                                    (_hd240005240324_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e240006240321_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd240005240324_))
                                    (let ((_e240009240329_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd240005240324_))))
                                      (let ((_tl240007240334_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e240009240329_)))
                                            (_hd240008240332_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e240009240329_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd240008240332_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd240008240332_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl240007240334_))
                                                    (let ((_e240012240337_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl240007240334_))))
                                                      (let ((_tl240010240342_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e240012240337_)))
                    (_hd240011240340_
                     (let () (declare (not safe)) (##car _e240012240337_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl240010240342_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl240004240326_))
                        (let ((_e240015240345_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl240004240326_))))
                          (let ((_tl240013240350_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e240015240345_)))
                                (_hd240014240348_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e240015240345_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd240014240348_))
                                (let ((_e240018240353_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd240014240348_))))
                                  (let ((_tl240016240358_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e240018240353_)))
                                        (_hd240017240356_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e240018240353_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd240017240356_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd240017240356_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl240016240358_))
                                                (let ((_e240021240361_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl240016240358_))))
                                                  (let ((_tl240019240366_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e240021240361_)))
                                                        (_hd240020240364_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e240021240361_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl240019240366_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl240013240350_))
                                                            (let ((_e240024240369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl240013240350_))))
                      (let ((_tl240022240374_
                             (let ()
                               (declare (not safe))
                               (##cdr _e240024240369_)))
                            (_hd240023240372_
                             (let ()
                               (declare (not safe))
                               (##car _e240024240369_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd240023240372_))
                            (let ((_e240027240377_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd240023240372_))))
                              (let ((_tl240025240382_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e240027240377_)))
                                    (_hd240026240380_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e240027240377_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd240026240380_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd240026240380_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl240025240382_))
                                            (let ((_e240030240385_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl240025240382_))))
                                              (let ((_tl240028240390_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e240030240385_)))
                                                    (_hd240029240388_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e240030240385_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl240028240390_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl240022240374_))
                                                        (let ((_e240033240393_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl240022240374_))))
                  (let ((_tl240031240398_
                         (let () (declare (not safe)) (##cdr _e240033240393_)))
                        (_hd240032240396_
                         (let ()
                           (declare (not safe))
                           (##car _e240033240393_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd240032240396_))
                        (let ((_e240036240401_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd240032240396_))))
                          (let ((_tl240034240406_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e240036240401_)))
                                (_hd240035240404_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e240036240401_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd240035240404_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd240035240404_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl240034240406_))
                                        (let ((_e240039240409_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl240034240406_))))
                                          (let ((_tl240037240414_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e240039240409_)))
                                                (_hd240038240412_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e240039240409_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl240037240414_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl240031240398_))
                                                    (let ((_e240042240417_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl240031240398_))))
                                                      (let ((_tl240040240422_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e240042240417_)))
                    (_hd240041240420_
                     (let () (declare (not safe)) (##car _e240042240417_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd240041240420_))
                    (let ((_e240045240425_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd240041240420_))))
                      (let ((_tl240043240430_
                             (let ()
                               (declare (not safe))
                               (##cdr _e240045240425_)))
                            (_hd240044240428_
                             (let ()
                               (declare (not safe))
                               (##car _e240045240425_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd240044240428_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd240044240428_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl240043240430_))
                                    (let ((_e240048240433_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl240043240430_))))
                                      (let ((_tl240046240438_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e240048240433_)))
                                            (_hd240047240436_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e240048240433_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl240046240438_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl240040240422_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl239998240310_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl239989240286_))
                                                        (___kont250839250840_
                                                         _hd240047240436_
                                                         _hd240038240412_
                                                         _hd240020240364_
                                                         _hd240011240340_
                                                         _hd239996240300_
                                                         _hd239987240276_
                                                         _hd239978240252_
                                                         _hd239969240228_
                                                         _hd239954240188_
                                                         _hd239939240148_
                                                         _hd239921240100_)
                                                        (___kont250841250842_))
                                                    (___kont250841250842_))
                                                (___kont250841250842_))
                                            (___kont250841250842_))))
                                    (___kont250841250842_))
                                (___kont250841250842_))
                            (___kont250841250842_))))
                    (___kont250841250842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250841250842_))
                                                (___kont250841250842_))))
                                        (___kont250841250842_))
                                    (___kont250841250842_))
                                (___kont250841250842_))))
                        (___kont250841250842_))))
                (___kont250841250842_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250841250842_))))
                                            (___kont250841250842_))
                                        (___kont250841250842_))
                                    (___kont250841250842_))))
                            (___kont250841250842_))))
                    (___kont250841250842_))
                (___kont250841250842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250841250842_))
                                            (___kont250841250842_))
                                        (___kont250841250842_))))
                                (___kont250841250842_))))
                        (___kont250841250842_))
                    (___kont250841250842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250841250842_))
                                                (___kont250841250842_))
                                            (___kont250841250842_))))
                                    (___kont250841250842_))))
                            (___kont250841250842_))
                        (___kont250841250842_))
                    (___kont250841250842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250841250842_))))
                                            (___kont250841250842_))))
                                    (___kont250841250842_))
                                (___kont250841250842_))
                            (___kont250841250842_))))
                    (___kont250841250842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250841250842_))
                                                (___kont250841250842_))
                                            (___kont250841250842_))
                                        (___kont250841250842_))
                                    (___kont250841250842_))
                                (___kont250841250842_))))
                        (___kont250841250842_))
                    (___kont250841250842_))
                (___kont250841250842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250841250842_))))
                                        (___kont250841250842_))
                                    (___kont250841250842_))))
                            (___kont250841250842_))
                        (___kont250841250842_))
                    (___kont250841250842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250841250842_))))
                                            (___kont250841250842_))
                                        (___kont250841250842_))))
                                (___kont250841250842_))
                            (___kont250841250842_))
                        (___kont250841250842_))))
                (___kont250841250842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250841250842_))
                                            (___kont250841250842_))
                                        (___kont250841250842_))))
                                (___kont250841250842_))))
                        (___kont250841250842_))))
                (___kont250841250842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250841250842_))
                                            (___kont250841250842_))
                                        (___kont250841250842_))))
                                (___kont250841250842_))))
                        (___kont250841250842_))
                    (___kont250841250842_))
                (___kont250841250842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250841250842_))
                                            (___kont250841250842_))))
                                    (___kont250841250842_))))
                            (___kont250841250842_))))
                    (___kont250841250842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250841250842_))
                                                (___kont250841250842_))
                                            (___kont250841250842_))))
                                    (___kont250841250842_))))
                            (___kont250841250842_))
                        (___kont250841250842_))))
                (___kont250841250842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250841250842_))))
                                        (___kont250841250842_))))
                                (___kont250841250842_))
                            (___kont250841250842_))
                        (___kont250841250842_))))
                (___kont250841250842_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx239634_ _id239635_ _clauses239636_ _gensym?239637_)
        (let _lp239639_ ((_rest239641_ _clauses239636_)
                         (_ids239642_ '())
                         (_impls239643_ '())
                         (_clauses239644_ '()))
          (let* ((_rest239645239653_ _rest239641_)
                 (_else239647239661_
                  (lambda ()
                    (values (reverse _ids239642_)
                            (reverse _impls239643_)
                            (reverse _clauses239644_))))
                 (_K239649239866_
                  (lambda (_rest239664_ _clause239665_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause239665_))
                        (let ((__tmp251916
                               (let ()
                                 (declare (not safe))
                                 (cons _clause239665_ _clauses239644_))))
                          (declare (not safe))
                          (_lp239639_
                           _rest239664_
                           _ids239642_
                           _impls239643_
                           __tmp251916))
                        (let* ((_g239667239678_
                                (lambda (_g239668239675_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g239668239675_))))
                               (_g239666239863_
                                (lambda (_g239668239681_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g239668239681_))
                                      (let ((_e239673239683_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g239668239681_))))
                                        (let ((_hd239672239686_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e239673239683_)))
                                              (_tl239671239688_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e239673239683_))))
                                          ((lambda (_L239691_ _L239692_)
                                             (let* ((_id239709_
                                                     (let ((__tmp251863
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id239635_)))
                                                           (__tmp251862
                                                            (length _clauses239644_))
                                                           (__tmp251861
                                                            (if _gensym?239637_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp251863
                                                        '"__"
                                                        __tmp251862
                                                        __tmp251861)))
                                                    (_id239711_
                                                     (let ((__tmp251864
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx239634_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id239709_
                                                        __tmp251864)))
                                                    (_impl239713_
                                                     (let ((__tmp251865
                                                            (let ((__tmp251867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp251866
                           (let ()
                             (declare (not safe))
                             (cons _L239692_ _L239691_))))
                      (declare (not safe))
                      (cons __tmp251867 __tmp251866))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp251865 _stx239634_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause239860_
                                                     (let* ((___stx251221251222_
                                                             _L239692_)
                                                            (_g239717239745_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx251221251222_)))))
               (let ((___kont251223251224_
                      (lambda (_L239839_)
                        (let ((__tmp251868
                               (let ((__tmp251869
                                      (let ((__tmp251870
                                             (let ((__tmp251871
                                                    (let ((__tmp251877
                                                           (let ((__tmp251878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id239711_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp251878)))
                  (__tmp251872
                   (let ((__tmp251873
                          (lambda (_g239849239852_ _g239850239854_)
                            (let ((__tmp251874
                                   (let ((__tmp251876
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp251875
                                          (let ()
                                            (declare (not safe))
                                            (cons _g239849239852_ '()))))
                                     (declare (not safe))
                                     (cons __tmp251876 __tmp251875))))
                              (declare (not safe))
                              (cons __tmp251874 _g239850239854_)))))
                     (declare (not safe))
                     (foldr1 __tmp251873 '() _L239839_))))
              (declare (not safe))
              (cons __tmp251877 __tmp251872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp251871))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp251870
                                         _stx239634_))))
                                 (declare (not safe))
                                 (cons __tmp251869 '()))))
                          (declare (not safe))
                          (cons _L239692_ __tmp251868))))
                     (___kont251227251228_
                      (lambda (_L239790_ _L239791_)
                        (let ((__tmp251879
                               (let ((__tmp251880
                                      (let ((__tmp251881
                                             (let ((__tmp251882
                                                    (let ((__tmp251896
                                                           (let ((__tmp251897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp251897)))
                  (__tmp251883
                   (let ((__tmp251894
                          (let ((__tmp251895
                                 (let ()
                                   (declare (not safe))
                                   (cons _id239711_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp251895)))
                         (__tmp251884
                          (let ((__tmp251890
                                 (let ((__tmp251891
                                        (let ((__tmp251893
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp251892
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L239790_ '()))))
                                          (declare (not safe))
                                          (cons __tmp251893 __tmp251892))))
                                   (declare (not safe))
                                   (cons __tmp251891 '())))
                                (__tmp251885
                                 (let ((__tmp251886
                                        (lambda (_g239802239805_
                                                 _g239803239807_)
                                          (let ((__tmp251887
                                                 (let ((__tmp251889
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp251888
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g239802239805_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp251889
                                                         __tmp251888))))
                                            (declare (not safe))
                                            (cons __tmp251887
                                                  _g239803239807_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp251886 '() _L239791_))))
                            (declare (not safe))
                            (foldr1 cons __tmp251890 __tmp251885))))
                     (declare (not safe))
                     (cons __tmp251894 __tmp251884))))
              (declare (not safe))
              (cons __tmp251896 __tmp251883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp251882))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp251881
                                         _stx239634_))))
                                 (declare (not safe))
                                 (cons __tmp251880 '()))))
                          (declare (not safe))
                          (cons _L239692_ __tmp251879))))
                     (___kont251231251232_
                      (lambda (_L239750_)
                        (let ((__tmp251898
                               (let ((__tmp251899
                                      (let ((__tmp251900
                                             (let ((__tmp251901
                                                    (let ((__tmp251909
                                                           (let ((__tmp251910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp251910)))
                  (__tmp251902
                   (let ((__tmp251907
                          (let ((__tmp251908
                                 (let ()
                                   (declare (not safe))
                                   (cons _id239711_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp251908)))
                         (__tmp251903
                          (let ((__tmp251904
                                 (let ((__tmp251906
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp251905
                                        (let ()
                                          (declare (not safe))
                                          (cons _L239750_ '()))))
                                   (declare (not safe))
                                   (cons __tmp251906 __tmp251905))))
                            (declare (not safe))
                            (cons __tmp251904 '()))))
                     (declare (not safe))
                     (cons __tmp251907 __tmp251903))))
              (declare (not safe))
              (cons __tmp251909 __tmp251902))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp251901))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp251900
                                         _stx239634_))))
                                 (declare (not safe))
                                 (cons __tmp251899 '()))))
                          (declare (not safe))
                          (cons _L239692_ __tmp251898)))))
                 (let* ((___match251246251247_
                         (lambda (___splice251229251230_
                                  _target239731239766_
                                  _tl239733239768_)
                           (letrec ((_loop239734239771_
                                     (lambda (_hd239732239774_
                                              _arg239738239776_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd239732239774_))
                                           (let ((_e239735239779_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd239732239774_))))
                                             (let ((_lp-tl239737239784_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e239735239779_)))
                                                   (_lp-hd239736239782_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e239735239779_))))
                                               (let ((__tmp251911
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd239736239782_
                                                              _arg239738239776_))))
                                                 (declare (not safe))
                                                 (_loop239734239771_
                                                  _lp-tl239737239784_
                                                  __tmp251911))))
                                           (let ((_arg239739239787_
                                                  (reverse _arg239738239776_)))
                                             (___kont251227251228_
                                              _tl239733239768_
                                              _arg239739239787_))))))
                             (let ()
                               (declare (not safe))
                               (_loop239734239771_
                                _target239731239766_
                                '())))))
                        (___match251240251241_
                         (lambda (___splice251225251226_
                                  _target239720239815_
                                  _tl239722239817_)
                           (letrec ((_loop239723239820_
                                     (lambda (_hd239721239823_
                                              _arg239727239825_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd239721239823_))
                                           (let ((_e239724239828_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd239721239823_))))
                                             (let ((_lp-tl239726239833_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e239724239828_)))
                                                   (_lp-hd239725239831_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e239724239828_))))
                                               (let ((__tmp251912
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd239725239831_
                                                              _arg239727239825_))))
                                                 (declare (not safe))
                                                 (_loop239723239820_
                                                  _lp-tl239726239833_
                                                  __tmp251912))))
                                           (let ((_arg239728239836_
                                                  (reverse _arg239727239825_)))
                                             (___kont251223251224_
                                              _arg239728239836_))))))
                             (let ()
                               (declare (not safe))
                               (_loop239723239820_
                                _target239720239815_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx251221251222_))
                       (let ((___splice251225251226_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx251221251222_
                                 '0))))
                         (let ((_tl239722239817_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice251225251226_ '1)))
                               (_target239720239815_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice251225251226_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl239722239817_))
                               (___match251240251241_
                                ___splice251225251226_
                                _target239720239815_
                                _tl239722239817_)
                               (___match251246251247_
                                ___splice251225251226_
                                _target239720239815_
                                _tl239722239817_))))
                       (___kont251231251232_ ___stx251221251222_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp251915
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id239711_
                                                              _ids239642_)))
                                                     (__tmp251914
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl239713_
                                                              _impls239643_)))
                                                     (__tmp251913
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause239860_
                                                              _clauses239644_))))
                                                 (declare (not safe))
                                                 (_lp239639_
                                                  _rest239664_
                                                  __tmp251915
                                                  __tmp251914
                                                  __tmp251913))))
                                           _tl239671239688_
                                           _hd239672239686_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g239667239678_ _g239668239681_))))))
                          (declare (not safe))
                          (_g239666239863_ _clause239665_))))))
            (if (let () (declare (not safe)) (##pair? _rest239645239653_))
                (let ((_hd239650239869_
                       (let ()
                         (declare (not safe))
                         (##car _rest239645239653_)))
                      (_tl239651239871_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest239645239653_))))
                  (let* ((_clause239874_ _hd239650239869_)
                         (_rest239876_ _tl239651239871_))
                    (declare (not safe))
                    (_K239649239866_ _rest239876_ _clause239874_)))
                (let () (declare (not safe)) (_else239647239661_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx239881_ _id239882_ _clauses239883_)
        (let ((_gensym?239885_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx239881_
           _id239882_
           _clauses239883_
           _gensym?239885_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g251918_
        (let ((_g251917_ (let () (declare (not safe)) (##length _g251918_))))
          (cond ((let () (declare (not safe)) (##fx= _g251917_ 3))
                 (apply (lambda (_stx239881_ _id239882_ _clauses239883_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx239881_
                             _id239882_
                             _clauses239883_)))
                        _g251918_))
                ((let () (declare (not safe)) (##fx= _g251917_ 4))
                 (apply (lambda (_stx239887_
                                 _id239888_
                                 _clauses239889_
                                 _gensym?239890_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx239887_
                             _id239888_
                             _clauses239889_
                             _gensym?239890_)))
                        _g251918_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g251918_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx238911_)
        (letrec ((_case-lambda-clause-def238913_
                  (lambda (_id239630_ _impl239631_)
                    (let ((__tmp251919
                           (let ((__tmp251920
                                  (let ((__tmp251923
                                         (let ()
                                           (declare (not safe))
                                           (cons _id239630_ '())))
                                        (__tmp251921
                                         (let ((__tmp251922
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl239631_))))
                                           (declare (not safe))
                                           (cons __tmp251922 '()))))
                                    (declare (not safe))
                                    (cons __tmp251923 __tmp251921))))
                             (declare (not safe))
                             (cons '%#define-values __tmp251920))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp251919 _stx238911_))))
                 (_opt-lambda-dispatch-name238914_
                  (lambda (_id239626_)
                    (if (uninterned-symbol? _id239626_)
                        (let ((_str239628_ (symbol->string _id239626_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str239628_))
                              '"%"
                              _id239626_))
                        _id239626_)))
                 (_kw-lambda-dispatch-name238915_
                  (lambda (_id239621_ _name239622_)
                    (if (uninterned-symbol? _id239621_)
                        (let ((_str239624_ (symbol->string _id239621_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str239624_))
                              _name239622_
                              _id239621_))
                        _id239621_))))
          (let* ((___stx251269251270_ _stx238911_)
                 (_g238920238979_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx251269251270_)))))
            (let ((___kont251271251272_
                   (lambda (_L239530_ _L239531_)
                     (let* ((___stx251249251250_ _L239530_)
                            (_g239548239562_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx251249251250_)))))
                       (let ((___kont251251251252_
                              (lambda (_L239606_) _stx238911_))
                             (___kont251253251254_
                              (lambda (_L239575_)
                                (let ((_g251924_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx238911_
                                          _L239531_
                                          _L239575_))))
                                  (begin
                                    (let ((_g251925_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g251924_)
                                                 (##vector-length _g251924_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g251925_ 3)))
                                          (error "Context expects 3 values"
                                                 _g251925_)))
                                    (let ((_ids239585_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g251924_ 0)))
                                          (_impls239586_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g251924_ 1)))
                                          (_clauses239587_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g251924_ 2))))
                                      (let* ((_g251926_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids239585_))
                                             (_defs239590_
                                              (map _case-lambda-clause-def238913_
                                                   _ids239585_
                                                   _impls239586_)))
                                        (let ((__tmp251928
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L239531_)))
                                              (__tmp251927
                                               (map gxc#identifier-symbol
                                                    _ids239585_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp251928
                                           '" => "
                                           __tmp251927))
                                        (let ((__tmp251929
                                               (let ((__tmp251930
                                                      (let ((__tmp251931
                                                             (let ((__tmp251932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp251933
                                   (let ((__tmp251934
                                          (let ((__tmp251939
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L239531_ '())))
                                                (__tmp251935
                                                 (let ((__tmp251936
                                                        (let ((__tmp251938
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses239587_)))
                      (__tmp251937
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp251938 __tmp251937))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp251936 '()))))
                                            (declare (not safe))
                                            (cons __tmp251939 __tmp251935))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp251934))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp251933
                               _stx238911_))))
                       (declare (not safe))
                       (cons __tmp251932 '()))))
                (declare (not safe))
                (foldr1 cons __tmp251931 _defs239590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp251930))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp251929
                                           _stx238911_)))))))))
                         (let ((___match251260251261_
                                (lambda (_e239553239598_
                                         _hd239552239601_
                                         _tl239551239603_)
                                  (let ((_L239606_ _tl239551239603_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L239606_))
                                        (___kont251251251252_ _L239606_)
                                        (___kont251253251254_
                                         _tl239551239603_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx251249251250_))
                               (let ((_e239553239598_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx251249251250_))))
                                 (let ((_tl239551239603_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e239553239598_)))
                                       (_hd239552239601_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e239553239598_))))
                                   (___match251260251261_
                                    _e239553239598_
                                    _hd239552239601_
                                    _tl239551239603_)))
                               (let ()
                                 (declare (not safe))
                                 (_g239548239562_))))))))
                  (___kont251273251274_
                   (lambda (_L239348_ _L239349_)
                     (let* ((_g239365239395_
                             (lambda (_g239366239392_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g239366239392_))))
                            (_g239364239490_
                             (lambda (_g239366239398_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g239366239398_))
                                   (let ((_e239372239400_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g239366239398_))))
                                     (let ((_hd239371239403_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e239372239400_)))
                                           (_tl239370239405_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e239372239400_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl239370239405_))
                                           (let ((_e239375239408_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl239370239405_))))
                                             (let ((_hd239374239411_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e239375239408_)))
                                                   (_tl239373239413_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e239375239408_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd239374239411_))
                                                   (let ((_e239378239416_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd239374239411_))))
                                                     (let ((_hd239377239419_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e239378239416_)))
                                                           (_tl239376239421_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e239378239416_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd239377239419_))
                                                           (let ((_e239381239424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd239377239419_))))
                     (let ((_hd239380239427_
                            (let ()
                              (declare (not safe))
                              (##car _e239381239424_)))
                           (_tl239379239429_
                            (let ()
                              (declare (not safe))
                              (##cdr _e239381239424_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd239380239427_))
                           (let ((_e239384239432_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd239380239427_))))
                             (let ((_hd239383239435_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e239384239432_)))
                                   (_tl239382239437_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e239384239432_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl239382239437_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl239379239429_))
                                       (let ((_e239387239440_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl239379239429_))))
                                         (let ((_hd239386239443_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e239387239440_)))
                                               (_tl239385239445_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e239387239440_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl239385239445_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl239376239421_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl239373239413_))
                                                       (let ((_e239390239448_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl239373239413_))))
                 (let ((_hd239389239451_
                        (let () (declare (not safe)) (##car _e239390239448_)))
                       (_tl239388239453_
                        (let () (declare (not safe)) (##cdr _e239390239448_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl239388239453_))
                       ((lambda (_L239456_ _L239457_ _L239458_)
                          (let* ((_lambda-id239482_
                                  (let ((__tmp251942
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L239349_)))
                                        (__tmp251940
                                         (let ((__tmp251941
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L239458_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name238914_
                                            __tmp251941))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp251942
                                     '"__"
                                     __tmp251940)))
                                 (_lambda-id239484_
                                  (let ((__tmp251943
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx238911_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id239482_
                                     __tmp251943)))
                                 (_g251944_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id239484_)))
                                 (_new-case-lambda-expr239487_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L239456_
                                     _L239458_
                                     _lambda-id239484_))))
                            (let ((__tmp251946
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L239349_)))
                                  (__tmp251945
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id239484_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp251946
                               '" => "
                               __tmp251945))
                            (let ((__tmp251947
                                   (let ((__tmp251948
                                          (let ((__tmp251956
                                                 (let ((__tmp251957
                                                        (let ((__tmp251958
                                                               (let ((__tmp251961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id239484_ '())))
                             (__tmp251959
                              (let ((__tmp251960
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L239457_))))
                                (declare (not safe))
                                (cons __tmp251960 '()))))
                         (declare (not safe))
                         (cons __tmp251961 __tmp251959))))
                  (declare (not safe))
                  (cons '%#define-values __tmp251958))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp251957
                                                    _stx238911_)))
                                                (__tmp251949
                                                 (let ((__tmp251950
                                                        (let ((__tmp251951
                                                               (let ((__tmp251952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp251953
                                     (let ((__tmp251955
                                            (let ()
                                              (declare (not safe))
                                              (cons _L239349_ '())))
                                           (__tmp251954
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr239487_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp251955 __tmp251954))))
                                (declare (not safe))
                                (cons '%#define-values __tmp251953))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp251952 _stx238911_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp251951))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp251950 '()))))
                                            (declare (not safe))
                                            (cons __tmp251956 __tmp251949))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp251948))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp251947
                               _stx238911_))))
                        _hd239389239451_
                        _hd239386239443_
                        _hd239383239435_)
                       (let ()
                         (declare (not safe))
                         (_g239365239395_ _g239366239398_)))))
               (let () (declare (not safe)) (_g239365239395_ _g239366239398_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g239365239395_
                                                      _g239366239398_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g239365239395_
                                                  _g239366239398_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g239365239395_ _g239366239398_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g239365239395_ _g239366239398_)))))
                           (let ()
                             (declare (not safe))
                             (_g239365239395_ _g239366239398_)))))
                   (let ()
                     (declare (not safe))
                     (_g239365239395_ _g239366239398_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g239365239395_
                                                      _g239366239398_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g239365239395_
                                              _g239366239398_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g239365239395_ _g239366239398_))))))
                       (declare (not safe))
                       (_g239364239490_ _L239348_))))
                  (___kont251275251276_
                   (lambda (_L239062_ _L239063_)
                     (let* ((_g239079239132_
                             (lambda (_g239080239129_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g239080239129_))))
                            (_g239078239308_
                             (lambda (_g239080239135_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g239080239135_))
                                   (let ((_e239088239137_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g239080239135_))))
                                     (let ((_hd239087239140_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e239088239137_)))
                                           (_tl239086239142_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e239088239137_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl239086239142_))
                                           (let ((_e239091239145_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl239086239142_))))
                                             (let ((_hd239090239148_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e239091239145_)))
                                                   (_tl239089239150_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e239091239145_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd239090239148_))
                                                   (let ((_e239094239153_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd239090239148_))))
                                                     (let ((_hd239093239156_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e239094239153_)))
                                                           (_tl239092239158_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e239094239153_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd239093239156_))
                                                           (let ((_e239097239161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd239093239156_))))
                     (let ((_hd239096239164_
                            (let ()
                              (declare (not safe))
                              (##car _e239097239161_)))
                           (_tl239095239166_
                            (let ()
                              (declare (not safe))
                              (##cdr _e239097239161_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd239096239164_))
                           (let ((_e239100239169_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd239096239164_))))
                             (let ((_hd239099239172_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e239100239169_)))
                                   (_tl239098239174_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e239100239169_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl239098239174_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl239095239166_))
                                       (let ((_e239103239177_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl239095239166_))))
                                         (let ((_hd239102239180_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e239103239177_)))
                                               (_tl239101239182_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e239103239177_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd239102239180_))
                                               (let ((_e239106239185_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd239102239180_))))
                                                 (let ((_hd239105239188_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e239106239185_)))
                                                       (_tl239104239190_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e239106239185_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl239104239190_))
                                                       (let ((_e239109239193_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl239104239190_))))
                 (let ((_hd239108239196_
                        (let () (declare (not safe)) (##car _e239109239193_)))
                       (_tl239107239198_
                        (let () (declare (not safe)) (##cdr _e239109239193_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd239108239196_))
                       (let ((_e239112239201_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd239108239196_))))
                         (let ((_hd239111239204_
                                (let ()
                                  (declare (not safe))
                                  (##car _e239112239201_)))
                               (_tl239110239206_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e239112239201_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd239111239204_))
                               (let ((_e239115239209_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd239111239204_))))
                                 (let ((_hd239114239212_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e239115239209_)))
                                       (_tl239113239214_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e239115239209_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd239114239212_))
                                       (let ((_e239118239217_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd239114239212_))))
                                         (let ((_hd239117239220_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e239118239217_)))
                                               (_tl239116239222_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e239118239217_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl239116239222_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl239113239214_))
                                                   (let ((_e239121239225_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl239113239214_))))
                                                     (let ((_hd239120239228_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e239121239225_)))
                                                           (_tl239119239230_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e239121239225_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl239119239230_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl239110239206_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl239107239198_))
                           (let ((_e239124239233_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl239107239198_))))
                             (let ((_hd239123239236_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e239124239233_)))
                                   (_tl239122239238_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e239124239233_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl239122239238_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl239101239182_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl239092239158_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl239089239150_))
                                               (let ((_e239127239241_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl239089239150_))))
                                                 (let ((_hd239126239244_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e239127239241_)))
                                                       (_tl239125239246_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e239127239241_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl239125239246_))
                                                       ((lambda (_L239249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L239250_
                         _L239251_
                         _L239252_
                         _L239253_)
                  (let* ((_get-kws-id239293_
                          (let ((__tmp251964
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L239063_)))
                                (__tmp251962
                                 (let ((__tmp251963
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L239253_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name238915_
                                    __tmp251963
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp251964 '"__" __tmp251962)))
                         (_get-kws-id239295_
                          (let ((__tmp251965
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx238911_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id239293_
                             __tmp251965)))
                         (_main-id239297_
                          (let ((__tmp251968
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L239063_)))
                                (__tmp251966
                                 (let ((__tmp251967
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L239252_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name238915_
                                    __tmp251967
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp251968 '"__" __tmp251966)))
                         (_main-id239299_
                          (let ((__tmp251969
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx238911_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id239297_
                             __tmp251969)))
                         (_g251970_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id239295_)))
                         (_g251971_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id239299_)))
                         (_new-kw-dispatch239303_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L239249_
                             _L239253_
                             _get-kws-id239295_)))
                         (_new-get-kws239305_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L239250_
                             _L239252_
                             _main-id239299_))))
                    (let ((__tmp251974
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L239063_)))
                          (__tmp251973
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id239295_)))
                          (__tmp251972
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id239299_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp251974
                       '" => "
                       __tmp251973
                       '" => "
                       __tmp251972))
                    (let ((__tmp251975
                           (let ((__tmp251976
                                  (let ((__tmp251989
                                         (let ((__tmp251990
                                                (let ((__tmp251991
                                                       (let ((__tmp251992
                                                              (let ((__tmp251994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id239299_ '())))
                            (__tmp251993
                             (let ()
                               (declare (not safe))
                               (cons _L239251_ '()))))
                        (declare (not safe))
                        (cons __tmp251994 __tmp251993))))
                 (declare (not safe))
                 (cons '%#define-values __tmp251992))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251991
                                                   _stx238911_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp251990)))
                                        (__tmp251977
                                         (let ((__tmp251984
                                                (let ((__tmp251985
                                                       (let ((__tmp251986
                                                              (let ((__tmp251988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id239295_ '())))
                            (__tmp251987
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws239305_ '()))))
                        (declare (not safe))
                        (cons __tmp251988 __tmp251987))))
                 (declare (not safe))
                 (cons '%#define-values __tmp251986))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251985
                                                   _stx238911_)))
                                               (__tmp251978
                                                (let ((__tmp251979
                                                       (let ((__tmp251980
                                                              (let ((__tmp251981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp251983
                                    (let ()
                                      (declare (not safe))
                                      (cons _L239063_ '())))
                                   (__tmp251982
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch239303_ '()))))
                               (declare (not safe))
                               (cons __tmp251983 __tmp251982))))
                        (declare (not safe))
                        (cons '%#define-values __tmp251981))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp251980 _stx238911_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp251979 '()))))
                                           (declare (not safe))
                                           (cons __tmp251984 __tmp251978))))
                                    (declare (not safe))
                                    (cons __tmp251989 __tmp251977))))
                             (declare (not safe))
                             (cons '%#begin __tmp251976))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp251975 _stx238911_))))
                _hd239126239244_
                _hd239123239236_
                _hd239120239228_
                _hd239117239220_
                _hd239099239172_)
               (let ()
                 (declare (not safe))
                 (_g239079239132_ _g239080239135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g239079239132_
                                                  _g239080239135_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g239079239132_
                                              _g239080239135_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g239079239132_ _g239080239135_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g239079239132_ _g239080239135_)))))
                           (let ()
                             (declare (not safe))
                             (_g239079239132_ _g239080239135_)))
                       (let ()
                         (declare (not safe))
                         (_g239079239132_ _g239080239135_)))
                   (let ()
                     (declare (not safe))
                     (_g239079239132_ _g239080239135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g239079239132_
                                                      _g239080239135_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g239079239132_
                                                  _g239080239135_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g239079239132_ _g239080239135_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g239079239132_ _g239080239135_)))))
                       (let ()
                         (declare (not safe))
                         (_g239079239132_ _g239080239135_)))))
               (let ()
                 (declare (not safe))
                 (_g239079239132_ _g239080239135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g239079239132_
                                                  _g239080239135_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g239079239132_ _g239080239135_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g239079239132_ _g239080239135_)))))
                           (let ()
                             (declare (not safe))
                             (_g239079239132_ _g239080239135_)))))
                   (let ()
                     (declare (not safe))
                     (_g239079239132_ _g239080239135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g239079239132_
                                                      _g239080239135_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g239079239132_
                                              _g239080239135_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g239079239132_ _g239080239135_))))))
                       (declare (not safe))
                       (_g239078239308_ _L239062_))))
                  (___kont251277251278_
                   (lambda (_L239008_ _L239009_)
                     (let ((__tmp251995
                            (let ((__tmp251996
                                   (let ((__tmp251997
                                          (let ((__tmp251998
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L239008_))))
                                            (declare (not safe))
                                            (cons __tmp251998 '()))))
                                     (declare (not safe))
                                     (cons _L239009_ __tmp251997))))
                              (declare (not safe))
                              (cons '%#define-values __tmp251996))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp251995 _stx238911_)))))
              (let* ((___match251362251363_
                      (lambda (_e238954239030_
                               _hd238953239033_
                               _tl238952239035_
                               _e238957239038_
                               _hd238956239041_
                               _tl238955239043_
                               _e238960239046_
                               _hd238959239049_
                               _tl238958239051_
                               _e238963239054_
                               _hd238962239057_
                               _tl238961239059_)
                        (let ((_L239062_ _hd238962239057_)
                              (_L239063_ _hd238959239049_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L239063_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L239062_)))
                              (___kont251275251276_ _L239062_ _L239063_)
                              (___kont251277251278_
                               _hd238962239057_
                               _hd238956239041_)))))
                     (___match251334251335_
                      (lambda (_e238940239316_
                               _hd238939239319_
                               _tl238938239321_
                               _e238943239324_
                               _hd238942239327_
                               _tl238941239329_
                               _e238946239332_
                               _hd238945239335_
                               _tl238944239337_
                               _e238949239340_
                               _hd238948239343_
                               _tl238947239345_)
                        (let ((_L239348_ _hd238948239343_)
                              (_L239349_ _hd238945239335_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L239349_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L239348_)))
                              (___kont251273251274_ _L239348_ _L239349_)
                              (___match251362251363_
                               _e238940239316_
                               _hd238939239319_
                               _tl238938239321_
                               _e238943239324_
                               _hd238942239327_
                               _tl238941239329_
                               _e238946239332_
                               _hd238945239335_
                               _tl238944239337_
                               _e238949239340_
                               _hd238948239343_
                               _tl238947239345_)))))
                     (___match251306251307_
                      (lambda (_e238926239498_
                               _hd238925239501_
                               _tl238924239503_
                               _e238929239506_
                               _hd238928239509_
                               _tl238927239511_
                               _e238932239514_
                               _hd238931239517_
                               _tl238930239519_
                               _e238935239522_
                               _hd238934239525_
                               _tl238933239527_)
                        (let ((_L239530_ _hd238934239525_)
                              (_L239531_ _hd238931239517_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L239531_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L239530_)))
                              (___kont251271251272_ _L239530_ _L239531_)
                              (___match251334251335_
                               _e238926239498_
                               _hd238925239501_
                               _tl238924239503_
                               _e238929239506_
                               _hd238928239509_
                               _tl238927239511_
                               _e238932239514_
                               _hd238931239517_
                               _tl238930239519_
                               _e238935239522_
                               _hd238934239525_
                               _tl238933239527_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx251269251270_))
                    (let ((_e238926239498_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx251269251270_))))
                      (let ((_tl238924239503_
                             (let ()
                               (declare (not safe))
                               (##cdr _e238926239498_)))
                            (_hd238925239501_
                             (let ()
                               (declare (not safe))
                               (##car _e238926239498_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl238924239503_))
                            (let ((_e238929239506_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl238924239503_))))
                              (let ((_tl238927239511_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238929239506_)))
                                    (_hd238928239509_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238929239506_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd238928239509_))
                                    (let ((_e238932239514_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd238928239509_))))
                                      (let ((_tl238930239519_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e238932239514_)))
                                            (_hd238931239517_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e238932239514_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl238930239519_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl238927239511_))
                                                (let ((_e238935239522_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl238927239511_))))
                                                  (let ((_tl238933239527_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238935239522_)))
                                                        (_hd238934239525_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238935239522_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl238933239527_))
                                                        (___match251306251307_
                                                         _e238926239498_
                                                         _hd238925239501_
                                                         _tl238924239503_
                                                         _e238929239506_
                                                         _hd238928239509_
                                                         _tl238927239511_
                                                         _e238932239514_
                                                         _hd238931239517_
                                                         _tl238930239519_
                                                         _e238935239522_
                                                         _hd238934239525_
                                                         _tl238933239527_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g238920238979_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g238920238979_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl238927239511_))
                                                (let ((_e238974239000_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl238927239511_))))
                                                  (let ((_tl238972239005_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238974239000_)))
                                                        (_hd238973239003_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238974239000_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl238972239005_))
                                                        (___kont251277251278_
                                                         _hd238973239003_
                                                         _hd238928239509_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g238920238979_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g238920238979_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl238927239511_))
                                        (let ((_e238974239000_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl238927239511_))))
                                          (let ((_tl238972239005_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e238974239000_)))
                                                (_hd238973239003_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e238974239000_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl238972239005_))
                                                (___kont251277251278_
                                                 _hd238973239003_
                                                 _hd238928239509_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g238920238979_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g238920238979_))))))
                            (let () (declare (not safe)) (_g238920238979_)))))
                    (let () (declare (not safe)) (_g238920238979_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx237843_)
        (letrec* ((_bind-e__249665249666_
                   (lambda (_id238895_ _expr238896_ _compile?238897_)
                     (let ((__tmp252001
                            (let ()
                              (declare (not safe))
                              (cons _id238895_ '())))
                           (__tmp251999
                            (let ((__tmp252000
                                   (if _compile?238897_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr238896_))
                                       _expr238896_)))
                              (declare (not safe))
                              (cons __tmp252000 '()))))
                       (declare (not safe))
                       (cons __tmp252001 __tmp251999))))
                  (_bind-e__0__249667249668_
                   (lambda (_id238902_ _expr238903_)
                     (let ((_compile?238905_ '#t))
                       (declare (not safe))
                       (_bind-e__249665249666_
                        _id238902_
                        _expr238903_
                        _compile?238905_))))
                  (_bind-e237845_
                   (lambda _g252003_
                     (let ((_g252002_
                            (let ()
                              (declare (not safe))
                              (##length _g252003_))))
                       (cond ((let () (declare (not safe)) (##fx= _g252002_ 2))
                              (apply (lambda (_id238902_ _expr238903_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__249667249668_
                                          _id238902_
                                          _expr238903_)))
                                     _g252003_))
                             ((let () (declare (not safe)) (##fx= _g252002_ 3))
                              (apply (lambda (_id238907_
                                              _expr238908_
                                              _compile?238909_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__249665249666_
                                          _id238907_
                                          _expr238908_
                                          _compile?238909_)))
                                     _g252003_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g252003_))))))
                  (_compile-bindings237846_
                   (lambda (_bindings238479_)
                     (let _lp238481_ ((_rest238483_ _bindings238479_)
                                      (_lift1238484_ '())
                                      (_lift2238485_ '())
                                      (_bind238486_ '()))
                       (let* ((_rest238487238495_ _rest238483_)
                              (_else238489238503_
                               (lambda ()
                                 (values (reverse _lift1238484_)
                                         (reverse _lift2238485_)
                                         (reverse _bind238486_))))
                              (_K238491238882_
                               (lambda (_rest238506_ _hd238507_)
                                 (let* ((___stx251405251406_ _hd238507_)
                                        (_g238511238547_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx251405251406_)))))
                                   (let ((___kont251407251408_
                                          (lambda (_L238789_ _L238790_)
                                            (let* ((___stx251385251386_
                                                    _L238789_)
                                                   (_g238805238819_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx251385251386_)))))
                                              (let ((___kont251387251388_
                                                     (lambda (_L238867_)
                                                       (let ((__tmp252004
                                                              (let ((__tmp252005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__249665249666_
                                _L238790_
                                _L238789_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp252005 _bind238486_))))
                 (declare (not safe))
                 (_lp238481_
                  _rest238506_
                  _lift1238484_
                  _lift2238485_
                  __tmp252004))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251389251390_
                                                     (lambda (_L238832_)
                                                       (let ((_g252006_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx237843_
                         _L238790_
                         _L238832_
                         '#t))))
                 (begin
                   (let ((_g252007_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g252006_)
                                (##vector-length _g252006_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g252007_ 3)))
                         (error "Context expects 3 values" _g252007_)))
                   (let ((_ids238842_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g252006_ 0)))
                         (_impls238843_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g252006_ 1)))
                         (_clauses238844_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g252006_ 2))))
                     (let* ((_g252008_
                             (for-each gx#core-bind-runtime! _ids238842_))
                            (_xbind238847_
                             (map _bind-e237845_ _ids238842_ _impls238843_))
                            (_expr*238849_
                             (let ((__tmp252010
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses238844_)))
                                   (__tmp252009
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp252010
                                __tmp252009)))
                            (_bind*238851_
                             (let ()
                               (declare (not safe))
                               (_bind-e__249665249666_
                                _L238790_
                                _expr*238849_
                                '#f))))
                       (let ((__tmp252012
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L238790_)))
                             (__tmp252011
                              (map gxc#identifier-symbol _ids238842_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp252012
                          '" => "
                          __tmp252011))
                       (let ((__tmp252014
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2238485_ _xbind238847_)))
                             (__tmp252013
                              (let ()
                                (declare (not safe))
                                (cons _bind*238851_ _bind238486_))))
                         (declare (not safe))
                         (_lp238481_
                          _rest238506_
                          _lift1238484_
                          __tmp252014
                          __tmp252013)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match251396251397_
                                                       (lambda (_e238810238859_
                                                                _hd238809238862_
                                                                _tl238808238864_)
                                                         (let ((_L238867_
                                                                _tl238808238864_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L238867_))
                       (___kont251387251388_ _L238867_)
                       (___kont251389251390_ _tl238808238864_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx251385251386_))
                                                      (let ((_e238810238859_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx251385251386_))))
                (let ((_tl238808238864_
                       (let () (declare (not safe)) (##cdr _e238810238859_)))
                      (_hd238809238862_
                       (let () (declare (not safe)) (##car _e238810238859_))))
                  (___match251396251397_
                   _e238810238859_
                   _hd238809238862_
                   _tl238808238864_)))
              (let () (declare (not safe)) (_g238805238819_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont251409251410_
                                          (lambda (_L238617_ _L238618_)
                                            (let* ((_g238632238662_
                                                    (lambda (_g238633238659_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g238633238659_))))
                                                   (_g238631238757_
                                                    (lambda (_g238633238665_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g238633238665_))
                                                          (let ((_e238639238667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g238633238665_))))
                    (let ((_hd238638238670_
                           (let ()
                             (declare (not safe))
                             (##car _e238639238667_)))
                          (_tl238637238672_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238639238667_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238637238672_))
                          (let ((_e238642238675_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238637238672_))))
                            (let ((_hd238641238678_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238642238675_)))
                                  (_tl238640238680_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238642238675_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd238641238678_))
                                  (let ((_e238645238683_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd238641238678_))))
                                    (let ((_hd238644238686_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238645238683_)))
                                          (_tl238643238688_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238645238683_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd238644238686_))
                                          (let ((_e238648238691_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd238644238686_))))
                                            (let ((_hd238647238694_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e238648238691_)))
                                                  (_tl238646238696_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e238648238691_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd238647238694_))
                                                  (let ((_e238651238699_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd238647238694_))))
                                                    (let ((_hd238650238702_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e238651238699_)))
                                                          (_tl238649238704_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e238651238699_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl238649238704_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl238646238696_))
                      (let ((_e238654238707_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl238646238696_))))
                        (let ((_hd238653238710_
                               (let ()
                                 (declare (not safe))
                                 (##car _e238654238707_)))
                              (_tl238652238712_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e238654238707_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl238652238712_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl238643238688_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl238640238680_))
                                      (let ((_e238657238715_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl238640238680_))))
                                        (let ((_hd238656238718_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238657238715_)))
                                              (_tl238655238720_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238657238715_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl238655238720_))
                                              ((lambda (_L238723_
                                                        _L238724_
                                                        _L238725_)
                                                 (let* ((_lambda-id238749_
                                                         (let ((__tmp252016
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L238618_)))
                       (__tmp252015 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp252016 __tmp252015)))
                (_lambda-id238751_
                 (let ((__tmp252017
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx237843_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id238749_ __tmp252017)))
                (_g252018_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id238751_)))
                (_new-case-lambda-expr238754_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L238723_
                    _L238725_
                    _lambda-id238751_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp252020
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L238618_)))
                                                         (__tmp252019
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id238751_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp252020
                                                      '" => "
                                                      __tmp252019))
                                                   (let ((__tmp252023
                                                          (let ((__tmp252024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__249665249666_
                            _L238618_
                            _new-case-lambda-expr238754_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp252024 _rest238506_)))
                 (__tmp252021
                  (let ((__tmp252022
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__249667249668_
                            _lambda-id238751_
                            _L238724_))))
                    (declare (not safe))
                    (cons __tmp252022 _lift1238484_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp238481_
                                                      __tmp252023
                                                      __tmp252021
                                                      _lift2238485_
                                                      _bind238486_))))
                                               _hd238656238718_
                                               _hd238653238710_
                                               _hd238650238702_)
                                              (let ()
                                                (declare (not safe))
                                                (_g238632238662_
                                                 _g238633238665_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g238632238662_ _g238633238665_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g238632238662_ _g238633238665_)))
                              (let ()
                                (declare (not safe))
                                (_g238632238662_ _g238633238665_)))))
                      (let ()
                        (declare (not safe))
                        (_g238632238662_ _g238633238665_)))
                  (let ()
                    (declare (not safe))
                    (_g238632238662_ _g238633238665_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g238632238662_
                                                     _g238633238665_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g238632238662_
                                             _g238633238665_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g238632238662_ _g238633238665_)))))
                          (let ()
                            (declare (not safe))
                            (_g238632238662_ _g238633238665_)))))
                  (let ()
                    (declare (not safe))
                    (_g238632238662_ _g238633238665_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g238631238757_ _L238617_))))
                                         (___kont251411251412_
                                          (lambda (_L238568_ _L238569_)
                                            (let ((__tmp252025
                                                   (let ((__tmp252026
                                                          (let ((__tmp252027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp252028
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L238568_))))
                           (declare (not safe))
                           (cons __tmp252028 '()))))
                    (declare (not safe))
                    (cons _L238569_ __tmp252027))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252026
                                                           _bind238486_))))
                                              (declare (not safe))
                                              (_lp238481_
                                               _rest238506_
                                               _lift1238484_
                                               _lift2238485_
                                               __tmp252025)))))
                                     (let* ((___match251456251457_
                                             (lambda (_e238528238593_
                                                      _hd238527238596_
                                                      _tl238526238598_
                                                      _e238531238601_
                                                      _hd238530238604_
                                                      _tl238529238606_
                                                      _e238534238609_
                                                      _hd238533238612_
                                                      _tl238532238614_)
                                               (let ((_L238617_
                                                      _hd238533238612_)
                                                     (_L238618_
                                                      _hd238530238604_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L238618_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L238617_)))
                                                     (___kont251409251410_
                                                      _L238617_
                                                      _L238618_)
                                                     (___kont251411251412_
                                                      _hd238533238612_
                                                      _hd238527238596_)))))
                                            (___match251434251435_
                                             (lambda (_e238517238765_
                                                      _hd238516238768_
                                                      _tl238515238770_
                                                      _e238520238773_
                                                      _hd238519238776_
                                                      _tl238518238778_
                                                      _e238523238781_
                                                      _hd238522238784_
                                                      _tl238521238786_)
                                               (let ((_L238789_
                                                      _hd238522238784_)
                                                     (_L238790_
                                                      _hd238519238776_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L238790_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L238789_)))
                                                     (___kont251407251408_
                                                      _L238789_
                                                      _L238790_)
                                                     (___match251456251457_
                                                      _e238517238765_
                                                      _hd238516238768_
                                                      _tl238515238770_
                                                      _e238520238773_
                                                      _hd238519238776_
                                                      _tl238518238778_
                                                      _e238523238781_
                                                      _hd238522238784_
                                                      _tl238521238786_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx251405251406_))
                                           (let ((_e238517238765_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx251405251406_))))
                                             (let ((_tl238515238770_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e238517238765_)))
                                                   (_hd238516238768_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e238517238765_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd238516238768_))
                                                   (let ((_e238520238773_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd238516238768_))))
                                                     (let ((_tl238518238778_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e238520238773_)))
                                                           (_hd238519238776_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e238520238773_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl238518238778_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl238515238770_))
                       (let ((_e238523238781_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl238515238770_))))
                         (let ((_tl238521238786_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e238523238781_)))
                               (_hd238522238784_
                                (let ()
                                  (declare (not safe))
                                  (##car _e238523238781_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl238521238786_))
                               (___match251434251435_
                                _e238517238765_
                                _hd238516238768_
                                _tl238515238770_
                                _e238520238773_
                                _hd238519238776_
                                _tl238518238778_
                                _e238523238781_
                                _hd238522238784_
                                _tl238521238786_)
                               (let ()
                                 (declare (not safe))
                                 (_g238511238547_)))))
                       (let () (declare (not safe)) (_g238511238547_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl238515238770_))
                       (let ((_e238542238560_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl238515238770_))))
                         (let ((_tl238540238565_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e238542238560_)))
                               (_hd238541238563_
                                (let ()
                                  (declare (not safe))
                                  (##car _e238542238560_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl238540238565_))
                               (___kont251411251412_
                                _hd238541238563_
                                _hd238516238768_)
                               (let ()
                                 (declare (not safe))
                                 (_g238511238547_)))))
                       (let () (declare (not safe)) (_g238511238547_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl238515238770_))
                                                       (let ((_e238542238560_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl238515238770_))))
                 (let ((_tl238540238565_
                        (let () (declare (not safe)) (##cdr _e238542238560_)))
                       (_hd238541238563_
                        (let () (declare (not safe)) (##car _e238542238560_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl238540238565_))
                       (___kont251411251412_ _hd238541238563_ _hd238516238768_)
                       (let () (declare (not safe)) (_g238511238547_)))))
               (let () (declare (not safe)) (_g238511238547_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g238511238547_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest238487238495_))
                             (let ((_hd238492238885_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest238487238495_)))
                                   (_tl238493238887_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest238487238495_))))
                               (let* ((_hd238890_ _hd238492238885_)
                                      (_rest238892_ _tl238493238887_))
                                 (declare (not safe))
                                 (_K238491238882_ _rest238892_ _hd238890_)))
                             (let ()
                               (declare (not safe))
                               (_else238489238503_)))))))
                  (_lift-kw-lambda?237847_
                   (lambda (_bind238403_)
                     (let* ((___stx251473251474_ _bind238403_)
                            (_g238406238423_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx251473251474_)))))
                       (let ((___kont251475251476_
                              (lambda (_L238459_ _L238460_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L238460_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L238459_))
                                    '#f)))
                             (___kont251477251478_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx251473251474_))
                             (let ((_e238412238435_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx251473251474_))))
                               (let ((_tl238410238440_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e238412238435_)))
                                     (_hd238411238438_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e238412238435_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd238411238438_))
                                     (let ((_e238415238443_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd238411238438_))))
                                       (let ((_tl238413238448_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e238415238443_)))
                                             (_hd238414238446_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e238415238443_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl238413238448_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl238410238440_))
                                                 (let ((_e238418238451_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl238410238440_))))
                                                   (let ((_tl238416238456_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e238418238451_)))
                                                         (_hd238417238454_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e238418238451_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl238416238456_))
                                                         (___kont251475251476_
                                                          _hd238417238454_
                                                          _hd238414238446_)
                                                         (___kont251477251478_))))
                                                 (___kont251477251478_))
                                             (___kont251477251478_))))
                                     (___kont251477251478_))))
                             (___kont251477251478_))))))
                  (_lift-kw-lambda-bindings237848_
                   (lambda (_bindings238015_)
                     (let _lp238017_ ((_rest238019_ _bindings238015_)
                                      (_lift1238020_ '())
                                      (_lift2238021_ '())
                                      (_bind238022_ '()))
                       (let* ((_rest238023238031_ _rest238019_)
                              (_else238025238039_
                               (lambda ()
                                 (values (reverse _lift1238020_)
                                         (reverse _lift2238021_)
                                         (reverse _bind238022_))))
                              (_K238027238391_
                               (lambda (_rest238042_ _hd238043_)
                                 (let* ((___stx251503251504_ _hd238043_)
                                        (_g238046238071_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx251503251504_)))))
                                   (let ((___kont251505251506_
                                          (lambda (_L238141_ _L238142_)
                                            (let* ((_g238156238209_
                                                    (lambda (_g238157238206_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g238157238206_))))
                                                   (_g238155238385_
                                                    (lambda (_g238157238212_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g238157238212_))
                                                          (let ((_e238165238214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g238157238212_))))
                    (let ((_hd238164238217_
                           (let ()
                             (declare (not safe))
                             (##car _e238165238214_)))
                          (_tl238163238219_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238165238214_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238163238219_))
                          (let ((_e238168238222_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238163238219_))))
                            (let ((_hd238167238225_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238168238222_)))
                                  (_tl238166238227_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238168238222_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd238167238225_))
                                  (let ((_e238171238230_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd238167238225_))))
                                    (let ((_hd238170238233_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238171238230_)))
                                          (_tl238169238235_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238171238230_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd238170238233_))
                                          (let ((_e238174238238_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd238170238233_))))
                                            (let ((_hd238173238241_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e238174238238_)))
                                                  (_tl238172238243_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e238174238238_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd238173238241_))
                                                  (let ((_e238177238246_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd238173238241_))))
                                                    (let ((_hd238176238249_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e238177238246_)))
                                                          (_tl238175238251_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e238177238246_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl238175238251_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl238172238243_))
                      (let ((_e238180238254_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl238172238243_))))
                        (let ((_hd238179238257_
                               (let ()
                                 (declare (not safe))
                                 (##car _e238180238254_)))
                              (_tl238178238259_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e238180238254_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd238179238257_))
                              (let ((_e238183238262_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd238179238257_))))
                                (let ((_hd238182238265_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e238183238262_)))
                                      (_tl238181238267_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e238183238262_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl238181238267_))
                                      (let ((_e238186238270_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl238181238267_))))
                                        (let ((_hd238185238273_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238186238270_)))
                                              (_tl238184238275_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238186238270_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd238185238273_))
                                              (let ((_e238189238278_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd238185238273_))))
                                                (let ((_hd238188238281_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e238189238278_)))
                                                      (_tl238187238283_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e238189238278_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd238188238281_))
                                                      (let ((_e238192238286_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd238188238281_))))
                (let ((_hd238191238289_
                       (let () (declare (not safe)) (##car _e238192238286_)))
                      (_tl238190238291_
                       (let () (declare (not safe)) (##cdr _e238192238286_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd238191238289_))
                      (let ((_e238195238294_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd238191238289_))))
                        (let ((_hd238194238297_
                               (let ()
                                 (declare (not safe))
                                 (##car _e238195238294_)))
                              (_tl238193238299_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e238195238294_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl238193238299_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl238190238291_))
                                  (let ((_e238198238302_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl238190238291_))))
                                    (let ((_hd238197238305_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238198238302_)))
                                          (_tl238196238307_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238198238302_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl238196238307_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl238187238283_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl238184238275_))
                                                  (let ((_e238201238310_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl238184238275_))))
                                                    (let ((_hd238200238313_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e238201238310_)))
                                                          (_tl238199238315_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e238201238310_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl238199238315_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl238178238259_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl238169238235_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl238166238227_))
                              (let ((_e238204238318_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl238166238227_))))
                                (let ((_hd238203238321_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e238204238318_)))
                                      (_tl238202238323_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e238204238318_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl238202238323_))
                                      ((lambda (_L238326_
                                                _L238327_
                                                _L238328_
                                                _L238329_
                                                _L238330_)
                                         (let* ((_get-kws-id238370_
                                                 (let ((__tmp252030
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L238142_)))
                                                       (__tmp252029
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp252030
                                                    __tmp252029)))
                                                (_get-kws-id238372_
                                                 (let ((__tmp252031
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx237843_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id238370_
                                                    __tmp252031)))
                                                (_main-id238374_
                                                 (let ((__tmp252033
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L238142_)))
                                                       (__tmp252032
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp252033
                                                    __tmp252032)))
                                                (_main-id238376_
                                                 (let ((__tmp252034
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx237843_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id238374_
                                                    __tmp252034)))
                                                (_g252035_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id238372_)))
                                                (_g252036_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id238376_)))
                                                (_new-kw-dispatch238380_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L238326_
                                                    _L238330_
                                                    _get-kws-id238372_)))
                                                (_new-get-kws238382_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L238327_
                                                    _L238329_
                                                    _main-id238376_))))
                                           (let ((__tmp252039
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L238142_)))
                                                 (__tmp252038
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id238372_)))
                                                 (__tmp252037
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id238376_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp252039
                                              '" => "
                                              __tmp252038
                                              '" => "
                                              __tmp252037))
                                           (let ((__tmp252044
                                                  (let ((__tmp252045
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__249665249666_
                                                            _main-id238376_
                                                            _L238328_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp252045
                                                          _lift1238020_)))
                                                 (__tmp252042
                                                  (let ((__tmp252043
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__249665249666_
                                                            _get-kws-id238372_
                                                            _new-get-kws238382_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp252043
                                                          _lift2238021_)))
                                                 (__tmp252040
                                                  (let ((__tmp252041
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__249665249666_
                                                            _L238142_
                                                            _new-kw-dispatch238380_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp252041
                                                          _bind238022_))))
                                             (declare (not safe))
                                             (_lp238017_
                                              _rest238042_
                                              __tmp252044
                                              __tmp252042
                                              __tmp252040))))
                                       _hd238203238321_
                                       _hd238200238313_
                                       _hd238197238305_
                                       _hd238194238297_
                                       _hd238176238249_)
                                      (let ()
                                        (declare (not safe))
                                        (_g238156238209_ _g238157238212_)))))
                              (let ()
                                (declare (not safe))
                                (_g238156238209_ _g238157238212_)))
                          (let ()
                            (declare (not safe))
                            (_g238156238209_ _g238157238212_)))
                      (let ()
                        (declare (not safe))
                        (_g238156238209_ _g238157238212_)))
                  (let ()
                    (declare (not safe))
                    (_g238156238209_ _g238157238212_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g238156238209_
                                                     _g238157238212_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g238156238209_
                                                 _g238157238212_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g238156238209_
                                             _g238157238212_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g238156238209_ _g238157238212_)))
                              (let ()
                                (declare (not safe))
                                (_g238156238209_ _g238157238212_)))))
                      (let ()
                        (declare (not safe))
                        (_g238156238209_ _g238157238212_)))))
              (let ()
                (declare (not safe))
                (_g238156238209_ _g238157238212_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g238156238209_
                                                 _g238157238212_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g238156238209_ _g238157238212_)))))
                              (let ()
                                (declare (not safe))
                                (_g238156238209_ _g238157238212_)))))
                      (let ()
                        (declare (not safe))
                        (_g238156238209_ _g238157238212_)))
                  (let ()
                    (declare (not safe))
                    (_g238156238209_ _g238157238212_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g238156238209_
                                                     _g238157238212_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g238156238209_
                                             _g238157238212_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g238156238209_ _g238157238212_)))))
                          (let ()
                            (declare (not safe))
                            (_g238156238209_ _g238157238212_)))))
                  (let ()
                    (declare (not safe))
                    (_g238156238209_ _g238157238212_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g238155238385_ _L238141_))))
                                         (___kont251507251508_
                                          (lambda (_L238092_ _L238093_)
                                            (let ((__tmp252046
                                                   (let ((__tmp252047
                                                          (let ((__tmp252048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L238092_ '()))))
                    (declare (not safe))
                    (cons _L238093_ __tmp252048))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252047
                                                           _bind238022_))))
                                              (declare (not safe))
                                              (_lp238017_
                                               _rest238042_
                                               _lift1238020_
                                               _lift2238021_
                                               __tmp252046)))))
                                     (let ((___match251530251531_
                                            (lambda (_e238052238117_
                                                     _hd238051238120_
                                                     _tl238050238122_
                                                     _e238055238125_
                                                     _hd238054238128_
                                                     _tl238053238130_
                                                     _e238058238133_
                                                     _hd238057238136_
                                                     _tl238056238138_)
                                              (let ((_L238141_
                                                     _hd238057238136_)
                                                    (_L238142_
                                                     _hd238054238128_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L238142_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L238141_)))
                                                    (___kont251505251506_
                                                     _L238141_
                                                     _L238142_)
                                                    (___kont251507251508_
                                                     _hd238057238136_
                                                     _hd238051238120_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx251503251504_))
                                           (let ((_e238052238117_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx251503251504_))))
                                             (let ((_tl238050238122_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e238052238117_)))
                                                   (_hd238051238120_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e238052238117_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd238051238120_))
                                                   (let ((_e238055238125_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd238051238120_))))
                                                     (let ((_tl238053238130_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e238055238125_)))
                                                           (_hd238054238128_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e238055238125_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl238053238130_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl238050238122_))
                       (let ((_e238058238133_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl238050238122_))))
                         (let ((_tl238056238138_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e238058238133_)))
                               (_hd238057238136_
                                (let ()
                                  (declare (not safe))
                                  (##car _e238058238133_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl238056238138_))
                               (___match251530251531_
                                _e238052238117_
                                _hd238051238120_
                                _tl238050238122_
                                _e238055238125_
                                _hd238054238128_
                                _tl238053238130_
                                _e238058238133_
                                _hd238057238136_
                                _tl238056238138_)
                               (let ()
                                 (declare (not safe))
                                 (_g238046238071_)))))
                       (let () (declare (not safe)) (_g238046238071_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl238050238122_))
                       (let ((_e238066238084_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl238050238122_))))
                         (let ((_tl238064238089_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e238066238084_)))
                               (_hd238065238087_
                                (let ()
                                  (declare (not safe))
                                  (##car _e238066238084_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl238064238089_))
                               (___kont251507251508_
                                _hd238065238087_
                                _hd238051238120_)
                               (let ()
                                 (declare (not safe))
                                 (_g238046238071_)))))
                       (let () (declare (not safe)) (_g238046238071_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl238050238122_))
                                                       (let ((_e238066238084_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl238050238122_))))
                 (let ((_tl238064238089_
                        (let () (declare (not safe)) (##cdr _e238066238084_)))
                       (_hd238065238087_
                        (let () (declare (not safe)) (##car _e238066238084_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl238064238089_))
                       (___kont251507251508_ _hd238065238087_ _hd238051238120_)
                       (let () (declare (not safe)) (_g238046238071_)))))
               (let () (declare (not safe)) (_g238046238071_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g238046238071_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest238023238031_))
                             (let ((_hd238028238394_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest238023238031_)))
                                   (_tl238029238396_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest238023238031_))))
                               (let* ((_hd238399_ _hd238028238394_)
                                      (_rest238401_ _tl238029238396_))
                                 (declare (not safe))
                                 (_K238027238391_ _rest238401_ _hd238399_)))
                             (let ()
                               (declare (not safe))
                               (_else238025238039_))))))))
          (let* ((___stx251547251548_ _stx237843_)
                 (_g237851237877_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx251547251548_)))))
            (let ((___kont251549251550_
                   (lambda (_L237937_ _L237938_)
                     (let ((__tmp252050
                            (lambda ()
                              (if (let ((__tmp252077
                                         (let ((__tmp252078
                                                (lambda (_g237966237969_
                                                         _g237967237971_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g237966237969_
                                                          _g237967237971_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp252078
                                                   '()
                                                   _L237938_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?237847_
                                            __tmp252077))
                                  (let ((_g252064_
                                         (let ((__tmp252066
                                                (let ((__tmp252067
                                                       (lambda (_g237973237976_
                                                                _g237974237978_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g237973237976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g237974237978_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp252067
                                                          '()
                                                          _L237938_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings237848_
                                            __tmp252066))))
                                    (begin
                                      (let ((_g252065_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g252064_)
                                                   (##vector-length _g252064_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g252065_ 3)))
                                            (error "Context expects 3 values"
                                                   _g252065_)))
                                      (let ((_lift1237981_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g252064_ 0)))
                                            (_lift2237982_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g252064_ 1)))
                                            (_hd237983_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g252064_ 2))))
                                        (let* ((_expr237985_
                                                (let ((__tmp252068
                                                       (let ((__tmp252069
                                                              (let ((__tmp252070
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L237937_ '()))))
                        (declare (not safe))
                        (cons _hd237983_ __tmp252070))))
                 (declare (not safe))
                 (cons '%#let-values __tmp252069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp252068
                                                   _stx237843_)))
                                               (_expr237987_
                                                (let ((__tmp252071
                                                       (let ((__tmp252072
                                                              (let ((__tmp252073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr237985_ '()))))
                        (declare (not safe))
                        (cons _lift2237982_ __tmp252073))))
                 (declare (not safe))
                 (cons '%#let-values __tmp252072))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp252071
                                                   _stx237843_)))
                                               (_expr237989_
                                                (let ((__tmp252074
                                                       (let ((__tmp252075
                                                              (let ((__tmp252076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr237987_ '()))))
                        (declare (not safe))
                        (cons _lift1237981_ __tmp252076))))
                 (declare (not safe))
                 (cons '%#let-values __tmp252075))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp252074
                                                   _stx237843_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr237989_))))))
                                  (let ((_g252051_
                                         (let ((__tmp252053
                                                (let ((__tmp252054
                                                       (lambda (_g237991237994_
                                                                _g237992237996_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g237991237994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g237992237996_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp252054
                                                          '()
                                                          _L237938_))))
                                           (declare (not safe))
                                           (_compile-bindings237846_
                                            __tmp252053))))
                                    (begin
                                      (let ((_g252052_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g252051_)
                                                   (##vector-length _g252051_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g252052_ 3)))
                                            (error "Context expects 3 values"
                                                   _g252052_)))
                                      (let ((_lift1237999_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g252051_ 0)))
                                            (_lift2238000_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g252051_ 1)))
                                            (_hd238001_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g252051_ 2))))
                                        (let* ((_body238003_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L237937_)))
                                               (_expr238005_
                                                (let ((__tmp252055
                                                       (let ((__tmp252056
                                                              (let ((__tmp252057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body238003_ '()))))
                        (declare (not safe))
                        (cons _hd238001_ __tmp252057))))
                 (declare (not safe))
                 (cons '%#let-values __tmp252056))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp252055
                                                   _stx237843_)))
                                               (_expr238007_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2238000_))
                                                    _expr238005_
                                                    (let ((__tmp252058
                                                           (let ((__tmp252059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252060
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr238005_ '()))))
                            (declare (not safe))
                            (cons _lift2238000_ __tmp252060))))
                     (declare (not safe))
                     (cons '%#let-values __tmp252059))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp252058 _stx237843_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr238009_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1237999_))
                                                    _expr238007_
                                                    (let ((__tmp252061
                                                           (let ((__tmp252062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252063
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr238007_ '()))))
                            (declare (not safe))
                            (cons _lift1237999_ __tmp252063))))
                     (declare (not safe))
                     (cons '%#let-values __tmp252062))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp252061 _stx237843_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr238009_)))))))
                           (__tmp252049
                            (let ((__obj251753
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj251753)
                              __obj251753)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp252050
                        gx#current-expander-context
                        __tmp252049))))
                  (___kont251553251554_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx237843_)))))
              (let ((___match251574251575_
                     (lambda (_e237857237889_
                              _hd237856237892_
                              _tl237855237894_
                              _e237860237897_
                              _hd237859237900_
                              _tl237858237902_
                              ___splice251551251552_
                              _target237861237905_
                              _tl237863237907_)
                       (letrec ((_loop237864237910_
                                 (lambda (_hd237862237913_ _bind237868237915_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd237862237913_))
                                       (let ((_e237865237918_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd237862237913_))))
                                         (let ((_lp-tl237867237923_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e237865237918_)))
                                               (_lp-hd237866237921_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e237865237918_))))
                                           (let ((__tmp252081
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd237866237921_
                                                          _bind237868237915_))))
                                             (declare (not safe))
                                             (_loop237864237910_
                                              _lp-tl237867237923_
                                              __tmp252081))))
                                       (let ((_bind237869237926_
                                              (reverse _bind237868237915_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl237858237902_))
                                             (let ((_e237872237929_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl237858237902_))))
                                               (let ((_tl237870237934_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e237872237929_)))
                                                     (_hd237871237932_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e237872237929_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl237870237934_))
                                                     (let ((_L237937_
                                                            _hd237871237932_)
                                                           (_L237938_
                                                            _bind237869237926_))
                                                       (if (let ((__tmp252079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252080
                                 (lambda (_g237958237961_ _g237959237963_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g237958237961_ _g237959237963_)))))
                            (declare (not safe))
                            (foldr1 __tmp252080 '() _L237938_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp252079))
                   (___kont251549251550_ _L237937_ _L237938_)
                   (___kont251553251554_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont251553251554_))))
                                             (___kont251553251554_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop237864237910_ _target237861237905_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx251547251548_))
                    (let ((_e237857237889_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx251547251548_))))
                      (let ((_tl237855237894_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237857237889_)))
                            (_hd237856237892_
                             (let ()
                               (declare (not safe))
                               (##car _e237857237889_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237855237894_))
                            (let ((_e237860237897_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237855237894_))))
                              (let ((_tl237858237902_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237860237897_)))
                                    (_hd237859237900_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237860237897_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd237859237900_))
                                    (let ((___splice251551251552_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd237859237900_
                                              '0))))
                                      (let ((_tl237863237907_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice251551251552_
                                                '1)))
                                            (_target237861237905_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice251551251552_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl237863237907_))
                                            (___match251574251575_
                                             _e237857237889_
                                             _hd237856237892_
                                             _tl237855237894_
                                             _e237860237897_
                                             _hd237859237900_
                                             _tl237858237902_
                                             ___splice251551251552_
                                             _target237861237905_
                                             _tl237863237907_)
                                            (___kont251553251554_))))
                                    (___kont251553251554_))))
                            (___kont251553251554_))))
                    (___kont251553251554_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx236987_)
        (letrec* ((_bind-e__249670249671_
                   (lambda (_id237827_ _expr237828_ _compile?237829_)
                     (let ((__tmp252084
                            (let ()
                              (declare (not safe))
                              (cons _id237827_ '())))
                           (__tmp252082
                            (let ((__tmp252083
                                   (if _compile?237829_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr237828_))
                                       _expr237828_)))
                              (declare (not safe))
                              (cons __tmp252083 '()))))
                       (declare (not safe))
                       (cons __tmp252084 __tmp252082))))
                  (_bind-e__0__249672249673_
                   (lambda (_id237834_ _expr237835_)
                     (let ((_compile?237837_ '#t))
                       (declare (not safe))
                       (_bind-e__249670249671_
                        _id237834_
                        _expr237835_
                        _compile?237837_))))
                  (_bind-e236989_
                   (lambda _g252086_
                     (let ((_g252085_
                            (let ()
                              (declare (not safe))
                              (##length _g252086_))))
                       (cond ((let () (declare (not safe)) (##fx= _g252085_ 2))
                              (apply (lambda (_id237834_ _expr237835_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__249672249673_
                                          _id237834_
                                          _expr237835_)))
                                     _g252086_))
                             ((let () (declare (not safe)) (##fx= _g252085_ 3))
                              (apply (lambda (_id237839_
                                              _expr237840_
                                              _compile?237841_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__249670249671_
                                          _id237839_
                                          _expr237840_
                                          _compile?237841_)))
                                     _g252086_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g252086_))))))
                  (_compile-bindings236990_
                   (lambda (_rest237125_)
                     (let _lp237127_ ((_rest237129_ _rest237125_)
                                      (_bind237130_ '()))
                       (let* ((_rest237131237139_ _rest237129_)
                              (_else237133237147_
                               (lambda () (reverse _bind237130_)))
                              (_K237135237814_
                               (lambda (_rest237150_ _hd237151_)
                                 (let* ((___stx251597251598_ _hd237151_)
                                        (_g237156237203_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx251597251598_)))))
                                   (let ((___kont251599251600_
                                          (lambda (_L237721_ _L237722_)
                                            (let* ((___stx251577251578_
                                                    _L237721_)
                                                   (_g237737237751_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx251577251578_)))))
                                              (let ((___kont251579251580_
                                                     (lambda (_L237799_)
                                                       (let ((__tmp252087
                                                              (let ((__tmp252088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__249670249671_
                                _L237722_
                                _L237721_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp252088 _bind237130_))))
                 (declare (not safe))
                 (_lp237127_ _rest237150_ __tmp252087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251581251582_
                                                     (lambda (_L237764_)
                                                       (let ((_g252089_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx236987_
                         _L237722_
                         _L237764_
                         '#t))))
                 (begin
                   (let ((_g252090_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g252089_)
                                (##vector-length _g252089_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g252090_ 3)))
                         (error "Context expects 3 values" _g252090_)))
                   (let ((_ids237774_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g252089_ 0)))
                         (_impls237775_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g252089_ 1)))
                         (_clauses237776_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g252089_ 2))))
                     (let* ((_g252091_
                             (for-each gx#core-bind-runtime! _ids237774_))
                            (_xbind237779_
                             (map _bind-e236989_ _ids237774_ _impls237775_))
                            (_expr*237781_
                             (let ((__tmp252093
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses237776_)))
                                   (__tmp252092
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp252093
                                __tmp252092)))
                            (_bind*237783_
                             (let ()
                               (declare (not safe))
                               (_bind-e__249670249671_
                                _L237722_
                                _expr*237781_
                                '#f))))
                       (let ((__tmp252095
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L237722_)))
                             (__tmp252094
                              (map gxc#identifier-symbol _ids237774_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp252095
                          '" => "
                          __tmp252094))
                       (let ((__tmp252096
                              (let ((__tmp252097
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind237130_
                                               _xbind237779_))))
                                (declare (not safe))
                                (cons _bind*237783_ __tmp252097))))
                         (declare (not safe))
                         (_lp237127_ _rest237150_ __tmp252096)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match251588251589_
                                                       (lambda (_e237742237791_
                                                                _hd237741237794_
                                                                _tl237740237796_)
                                                         (let ((_L237799_
                                                                _tl237740237796_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L237799_))
                       (___kont251579251580_ _L237799_)
                       (___kont251581251582_ _tl237740237796_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx251577251578_))
                                                      (let ((_e237742237791_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx251577251578_))))
                (let ((_tl237740237796_
                       (let () (declare (not safe)) (##cdr _e237742237791_)))
                      (_hd237741237794_
                       (let () (declare (not safe)) (##car _e237742237791_))))
                  (___match251588251589_
                   _e237742237791_
                   _hd237741237794_
                   _tl237740237796_)))
              (let () (declare (not safe)) (_g237737237751_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont251601251602_
                                          (lambda (_L237549_ _L237550_)
                                            (let* ((_g237564237594_
                                                    (lambda (_g237565237591_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g237565237591_))))
                                                   (_g237563237689_
                                                    (lambda (_g237565237597_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g237565237597_))
                                                          (let ((_e237571237599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g237565237597_))))
                    (let ((_hd237570237602_
                           (let ()
                             (declare (not safe))
                             (##car _e237571237599_)))
                          (_tl237569237604_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237571237599_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl237569237604_))
                          (let ((_e237574237607_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl237569237604_))))
                            (let ((_hd237573237610_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237574237607_)))
                                  (_tl237572237612_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237574237607_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd237573237610_))
                                  (let ((_e237577237615_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd237573237610_))))
                                    (let ((_hd237576237618_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237577237615_)))
                                          (_tl237575237620_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237577237615_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd237576237618_))
                                          (let ((_e237580237623_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd237576237618_))))
                                            (let ((_hd237579237626_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e237580237623_)))
                                                  (_tl237578237628_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e237580237623_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd237579237626_))
                                                  (let ((_e237583237631_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd237579237626_))))
                                                    (let ((_hd237582237634_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237583237631_)))
                                                          (_tl237581237636_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237583237631_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237581237636_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl237578237628_))
                      (let ((_e237586237639_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl237578237628_))))
                        (let ((_hd237585237642_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237586237639_)))
                              (_tl237584237644_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237586237639_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237584237644_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl237575237620_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237572237612_))
                                      (let ((_e237589237647_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237572237612_))))
                                        (let ((_hd237588237650_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237589237647_)))
                                              (_tl237587237652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237589237647_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237587237652_))
                                              ((lambda (_L237655_
                                                        _L237656_
                                                        _L237657_)
                                                 (let* ((_lambda-id237681_
                                                         (let ((__tmp252099
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L237550_)))
                       (__tmp252098 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp252099 __tmp252098)))
                (_lambda-id237683_
                 (let ((__tmp252100
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx236987_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id237681_ __tmp252100)))
                (_g252101_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id237683_)))
                (_new-case-lambda-expr237686_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L237655_
                    _L237657_
                    _lambda-id237683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp252103
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L237550_)))
                                                         (__tmp252102
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id237683_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp252103
                                                      '" => "
                                                      __tmp252102))
                                                   (let ((__tmp252106
                                                          (let ((__tmp252107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__249670249671_
                            _L237550_
                            _new-case-lambda-expr237686_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp252107 _rest237150_)))
                 (__tmp252104
                  (let ((__tmp252105
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__249672249673_
                            _lambda-id237683_
                            _L237656_))))
                    (declare (not safe))
                    (cons __tmp252105 _bind237130_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp237127_
                                                      __tmp252106
                                                      __tmp252104))))
                                               _hd237588237650_
                                               _hd237585237642_
                                               _hd237582237634_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237564237594_
                                                 _g237565237597_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237564237594_ _g237565237597_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g237564237594_ _g237565237597_)))
                              (let ()
                                (declare (not safe))
                                (_g237564237594_ _g237565237597_)))))
                      (let ()
                        (declare (not safe))
                        (_g237564237594_ _g237565237597_)))
                  (let ()
                    (declare (not safe))
                    (_g237564237594_ _g237565237597_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237564237594_
                                                     _g237565237597_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237564237594_
                                             _g237565237597_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237564237594_ _g237565237597_)))))
                          (let ()
                            (declare (not safe))
                            (_g237564237594_ _g237565237597_)))))
                  (let ()
                    (declare (not safe))
                    (_g237564237594_ _g237565237597_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g237563237689_ _L237549_))))
                                         (___kont251603251604_
                                          (lambda (_L237273_ _L237274_)
                                            (let* ((_g237288237341_
                                                    (lambda (_g237289237338_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g237289237338_))))
                                                   (_g237287237517_
                                                    (lambda (_g237289237344_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g237289237344_))
                                                          (let ((_e237297237346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g237289237344_))))
                    (let ((_hd237296237349_
                           (let ()
                             (declare (not safe))
                             (##car _e237297237346_)))
                          (_tl237295237351_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237297237346_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl237295237351_))
                          (let ((_e237300237354_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl237295237351_))))
                            (let ((_hd237299237357_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237300237354_)))
                                  (_tl237298237359_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237300237354_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd237299237357_))
                                  (let ((_e237303237362_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd237299237357_))))
                                    (let ((_hd237302237365_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237303237362_)))
                                          (_tl237301237367_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237303237362_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd237302237365_))
                                          (let ((_e237306237370_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd237302237365_))))
                                            (let ((_hd237305237373_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e237306237370_)))
                                                  (_tl237304237375_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e237306237370_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd237305237373_))
                                                  (let ((_e237309237378_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd237305237373_))))
                                                    (let ((_hd237308237381_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237309237378_)))
                                                          (_tl237307237383_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237309237378_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237307237383_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl237304237375_))
                      (let ((_e237312237386_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl237304237375_))))
                        (let ((_hd237311237389_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237312237386_)))
                              (_tl237310237391_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237312237386_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd237311237389_))
                              (let ((_e237315237394_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd237311237389_))))
                                (let ((_hd237314237397_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237315237394_)))
                                      (_tl237313237399_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237315237394_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237313237399_))
                                      (let ((_e237318237402_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237313237399_))))
                                        (let ((_hd237317237405_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237318237402_)))
                                              (_tl237316237407_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237318237402_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd237317237405_))
                                              (let ((_e237321237410_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd237317237405_))))
                                                (let ((_hd237320237413_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e237321237410_)))
                                                      (_tl237319237415_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e237321237410_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd237320237413_))
                                                      (let ((_e237324237418_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd237320237413_))))
                (let ((_hd237323237421_
                       (let () (declare (not safe)) (##car _e237324237418_)))
                      (_tl237322237423_
                       (let () (declare (not safe)) (##cdr _e237324237418_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd237323237421_))
                      (let ((_e237327237426_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd237323237421_))))
                        (let ((_hd237326237429_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237327237426_)))
                              (_tl237325237431_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237327237426_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237325237431_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl237322237423_))
                                  (let ((_e237330237434_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl237322237423_))))
                                    (let ((_hd237329237437_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237330237434_)))
                                          (_tl237328237439_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237330237434_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237328237439_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237319237415_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl237316237407_))
                                                  (let ((_e237333237442_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl237316237407_))))
                                                    (let ((_hd237332237445_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237333237442_)))
                                                          (_tl237331237447_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237333237442_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237331237447_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl237310237391_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl237301237367_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl237298237359_))
                              (let ((_e237336237450_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl237298237359_))))
                                (let ((_hd237335237453_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237336237450_)))
                                      (_tl237334237455_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237336237450_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl237334237455_))
                                      ((lambda (_L237458_
                                                _L237459_
                                                _L237460_
                                                _L237461_
                                                _L237462_)
                                         (let* ((_get-kws-id237502_
                                                 (let ((__tmp252109
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237274_)))
                                                       (__tmp252108
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp252109
                                                    __tmp252108)))
                                                (_get-kws-id237504_
                                                 (let ((__tmp252110
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx236987_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id237502_
                                                    __tmp252110)))
                                                (_main-id237506_
                                                 (let ((__tmp252112
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237274_)))
                                                       (__tmp252111
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp252112
                                                    __tmp252111)))
                                                (_main-id237508_
                                                 (let ((__tmp252113
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx236987_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id237506_
                                                    __tmp252113)))
                                                (_g252114_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id237504_)))
                                                (_g252115_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id237508_)))
                                                (_new-kw-dispatch237512_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L237458_
                                                    _L237462_
                                                    _get-kws-id237504_)))
                                                (_new-get-kws237514_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L237459_
                                                    _L237461_
                                                    _main-id237508_))))
                                           (let ((__tmp252118
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L237274_)))
                                                 (__tmp252117
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id237504_)))
                                                 (__tmp252116
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id237508_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp252118
                                              '" => "
                                              __tmp252117
                                              '" => "
                                              __tmp252116))
                                           (let ((__tmp252119
                                                  (let ((__tmp252124
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__249670249671_
                                                            _main-id237508_
                                                            _L237460_
                                                            '#f)))
                                                        (__tmp252120
                                                         (let ((__tmp252123
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__249670249671_
                           _get-kws-id237504_
                           _new-get-kws237514_
                           '#f)))
                       (__tmp252121
                        (let ((__tmp252122
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__249670249671_
                                  _L237274_
                                  _new-kw-dispatch237512_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp252122 _rest237150_))))
                   (declare (not safe))
                   (cons __tmp252123 __tmp252121))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252124
                                                          __tmp252120))))
                                             (declare (not safe))
                                             (_lp237127_
                                              __tmp252119
                                              _bind237130_))))
                                       _hd237335237453_
                                       _hd237332237445_
                                       _hd237329237437_
                                       _hd237326237429_
                                       _hd237308237381_)
                                      (let ()
                                        (declare (not safe))
                                        (_g237288237341_ _g237289237344_)))))
                              (let ()
                                (declare (not safe))
                                (_g237288237341_ _g237289237344_)))
                          (let ()
                            (declare (not safe))
                            (_g237288237341_ _g237289237344_)))
                      (let ()
                        (declare (not safe))
                        (_g237288237341_ _g237289237344_)))
                  (let ()
                    (declare (not safe))
                    (_g237288237341_ _g237289237344_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237288237341_
                                                     _g237289237344_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g237288237341_
                                                 _g237289237344_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g237288237341_
                                             _g237289237344_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237288237341_ _g237289237344_)))
                              (let ()
                                (declare (not safe))
                                (_g237288237341_ _g237289237344_)))))
                      (let ()
                        (declare (not safe))
                        (_g237288237341_ _g237289237344_)))))
              (let ()
                (declare (not safe))
                (_g237288237341_ _g237289237344_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g237288237341_
                                                 _g237289237344_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237288237341_ _g237289237344_)))))
                              (let ()
                                (declare (not safe))
                                (_g237288237341_ _g237289237344_)))))
                      (let ()
                        (declare (not safe))
                        (_g237288237341_ _g237289237344_)))
                  (let ()
                    (declare (not safe))
                    (_g237288237341_ _g237289237344_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237288237341_
                                                     _g237289237344_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237288237341_
                                             _g237289237344_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237288237341_ _g237289237344_)))))
                          (let ()
                            (declare (not safe))
                            (_g237288237341_ _g237289237344_)))))
                  (let ()
                    (declare (not safe))
                    (_g237288237341_ _g237289237344_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g237287237517_ _L237273_))))
                                         (___kont251605251606_
                                          (lambda (_L237224_ _L237225_)
                                            (let ((__tmp252125
                                                   (let ((__tmp252126
                                                          (let ((__tmp252127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp252128
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L237224_))))
                           (declare (not safe))
                           (cons __tmp252128 '()))))
                    (declare (not safe))
                    (cons _L237225_ __tmp252127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252126
                                                           _bind237130_))))
                                              (declare (not safe))
                                              (_lp237127_
                                               _rest237150_
                                               __tmp252125)))))
                                     (let* ((___match251672251673_
                                             (lambda (_e237184237249_
                                                      _hd237183237252_
                                                      _tl237182237254_
                                                      _e237187237257_
                                                      _hd237186237260_
                                                      _tl237185237262_
                                                      _e237190237265_
                                                      _hd237189237268_
                                                      _tl237188237270_)
                                               (let ((_L237273_
                                                      _hd237189237268_)
                                                     (_L237274_
                                                      _hd237186237260_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L237274_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L237273_)))
                                                     (___kont251603251604_
                                                      _L237273_
                                                      _L237274_)
                                                     (___kont251605251606_
                                                      _hd237189237268_
                                                      _hd237183237252_)))))
                                            (___match251650251651_
                                             (lambda (_e237173237525_
                                                      _hd237172237528_
                                                      _tl237171237530_
                                                      _e237176237533_
                                                      _hd237175237536_
                                                      _tl237174237538_
                                                      _e237179237541_
                                                      _hd237178237544_
                                                      _tl237177237546_)
                                               (let ((_L237549_
                                                      _hd237178237544_)
                                                     (_L237550_
                                                      _hd237175237536_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L237550_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L237549_)))
                                                     (___kont251601251602_
                                                      _L237549_
                                                      _L237550_)
                                                     (___match251672251673_
                                                      _e237173237525_
                                                      _hd237172237528_
                                                      _tl237171237530_
                                                      _e237176237533_
                                                      _hd237175237536_
                                                      _tl237174237538_
                                                      _e237179237541_
                                                      _hd237178237544_
                                                      _tl237177237546_)))))
                                            (___match251628251629_
                                             (lambda (_e237162237697_
                                                      _hd237161237700_
                                                      _tl237160237702_
                                                      _e237165237705_
                                                      _hd237164237708_
                                                      _tl237163237710_
                                                      _e237168237713_
                                                      _hd237167237716_
                                                      _tl237166237718_)
                                               (let ((_L237721_
                                                      _hd237167237716_)
                                                     (_L237722_
                                                      _hd237164237708_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L237722_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L237721_)))
                                                     (___kont251599251600_
                                                      _L237721_
                                                      _L237722_)
                                                     (___match251650251651_
                                                      _e237162237697_
                                                      _hd237161237700_
                                                      _tl237160237702_
                                                      _e237165237705_
                                                      _hd237164237708_
                                                      _tl237163237710_
                                                      _e237168237713_
                                                      _hd237167237716_
                                                      _tl237166237718_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx251597251598_))
                                           (let ((_e237162237697_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx251597251598_))))
                                             (let ((_tl237160237702_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e237162237697_)))
                                                   (_hd237161237700_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e237162237697_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd237161237700_))
                                                   (let ((_e237165237705_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd237161237700_))))
                                                     (let ((_tl237163237710_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e237165237705_)))
                                                           (_hd237164237708_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e237165237705_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl237163237710_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl237160237702_))
                       (let ((_e237168237713_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl237160237702_))))
                         (let ((_tl237166237718_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e237168237713_)))
                               (_hd237167237716_
                                (let ()
                                  (declare (not safe))
                                  (##car _e237168237713_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl237166237718_))
                               (___match251628251629_
                                _e237162237697_
                                _hd237161237700_
                                _tl237160237702_
                                _e237165237705_
                                _hd237164237708_
                                _tl237163237710_
                                _e237168237713_
                                _hd237167237716_
                                _tl237166237718_)
                               (let ()
                                 (declare (not safe))
                                 (_g237156237203_)))))
                       (let () (declare (not safe)) (_g237156237203_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl237160237702_))
                       (let ((_e237198237216_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl237160237702_))))
                         (let ((_tl237196237221_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e237198237216_)))
                               (_hd237197237219_
                                (let ()
                                  (declare (not safe))
                                  (##car _e237198237216_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl237196237221_))
                               (___kont251605251606_
                                _hd237197237219_
                                _hd237161237700_)
                               (let ()
                                 (declare (not safe))
                                 (_g237156237203_)))))
                       (let () (declare (not safe)) (_g237156237203_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl237160237702_))
                                                       (let ((_e237198237216_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl237160237702_))))
                 (let ((_tl237196237221_
                        (let () (declare (not safe)) (##cdr _e237198237216_)))
                       (_hd237197237219_
                        (let () (declare (not safe)) (##car _e237198237216_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl237196237221_))
                       (___kont251605251606_ _hd237197237219_ _hd237161237700_)
                       (let () (declare (not safe)) (_g237156237203_)))))
               (let () (declare (not safe)) (_g237156237203_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g237156237203_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest237131237139_))
                             (let ((_hd237136237817_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest237131237139_)))
                                   (_tl237137237819_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest237131237139_))))
                               (let* ((_hd237822_ _hd237136237817_)
                                      (_rest237824_ _tl237137237819_))
                                 (declare (not safe))
                                 (_K237135237814_ _rest237824_ _hd237822_)))
                             (let ()
                               (declare (not safe))
                               (_else237133237147_))))))))
          (let* ((___stx251689251690_ _stx236987_)
                 (_g236993237020_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx251689251690_)))))
            (let ((___kont251691251692_
                   (lambda (_L237080_ _L237081_ _L237082_)
                     (let ((__tmp252130
                            (lambda ()
                              (let ((_hd237119_
                                     (let ((__tmp252131
                                            (let ((__tmp252132
                                                   (lambda (_g237111237114_
                                                            _g237112237116_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g237111237114_
                                                             _g237112237116_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp252132
                                                      '()
                                                      _L237081_))))
                                       (declare (not safe))
                                       (_compile-bindings236990_ __tmp252131)))
                                    (_body237120_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L237080_))))
                                (let ((__tmp252133
                                       (let ((__tmp252134
                                              (let ((__tmp252135
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body237120_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd237119_
                                                      __tmp252135))))
                                         (declare (not safe))
                                         (cons _L237082_ __tmp252134))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp252133
                                   _stx236987_)))))
                           (__tmp252129
                            (let ((__obj251754
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj251754)
                              __obj251754)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp252130
                        gx#current-expander-context
                        __tmp252129))))
                  (___kont251695251696_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx236987_)))))
              (let ((___match251716251717_
                     (lambda (_e237000237032_
                              _hd236999237035_
                              _tl236998237037_
                              _e237003237040_
                              _hd237002237043_
                              _tl237001237045_
                              ___splice251693251694_
                              _target237004237048_
                              _tl237006237050_)
                       (letrec ((_loop237007237053_
                                 (lambda (_hd237005237056_ _bind237011237058_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd237005237056_))
                                       (let ((_e237008237061_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd237005237056_))))
                                         (let ((_lp-tl237010237066_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e237008237061_)))
                                               (_lp-hd237009237064_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e237008237061_))))
                                           (let ((__tmp252138
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd237009237064_
                                                          _bind237011237058_))))
                                             (declare (not safe))
                                             (_loop237007237053_
                                              _lp-tl237010237066_
                                              __tmp252138))))
                                       (let ((_bind237012237069_
                                              (reverse _bind237011237058_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl237001237045_))
                                             (let ((_e237015237072_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl237001237045_))))
                                               (let ((_tl237013237077_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e237015237072_)))
                                                     (_hd237014237075_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e237015237072_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl237013237077_))
                                                     (let ((_L237080_
                                                            _hd237014237075_)
                                                           (_L237081_
                                                            _bind237012237069_)
                                                           (_L237082_
                                                            _hd236999237035_))
                                                       (if (let ((__tmp252136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252137
                                 (lambda (_g237103237106_ _g237104237108_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g237103237106_ _g237104237108_)))))
                            (declare (not safe))
                            (foldr1 __tmp252137 '() _L237081_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp252136))
                   (___kont251691251692_ _L237080_ _L237081_ _L237082_)
                   (___kont251695251696_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont251695251696_))))
                                             (___kont251695251696_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop237007237053_ _target237004237048_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx251689251690_))
                    (let ((_e237000237032_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx251689251690_))))
                      (let ((_tl236998237037_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237000237032_)))
                            (_hd236999237035_
                             (let ()
                               (declare (not safe))
                               (##car _e237000237032_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl236998237037_))
                            (let ((_e237003237040_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl236998237037_))))
                              (let ((_tl237001237045_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237003237040_)))
                                    (_hd237002237043_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237003237040_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd237002237043_))
                                    (let ((___splice251693251694_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd237002237043_
                                              '0))))
                                      (let ((_tl237006237050_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice251693251694_
                                                '1)))
                                            (_target237004237048_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice251693251694_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl237006237050_))
                                            (___match251716251717_
                                             _e237000237032_
                                             _hd236999237035_
                                             _tl236998237037_
                                             _e237003237040_
                                             _hd237002237043_
                                             _tl237001237045_
                                             ___splice251693251694_
                                             _target237004237048_
                                             _tl237006237050_)
                                            (___kont251695251696_))))
                                    (___kont251695251696_))))
                            (___kont251695251696_))))
                    (___kont251695251696_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind236905_)
        (let* ((___stx251719251720_ _bind236905_)
               (_g236908236925_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx251719251720_)))))
          (let ((___kont251721251722_
                 (lambda (_L236961_ _L236962_)
                   (if (let () (declare (not safe)) (gx#identifier? _L236962_))
                       (let ((_$e236978_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L236961_))))
                         (if _$e236978_
                             _$e236978_
                             (let ((_$e236981_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L236961_))))
                               (if _$e236981_
                                   _$e236981_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L236961_))))))
                       '#f)))
                (___kont251723251724_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx251719251720_))
                (let ((_e236914236937_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx251719251720_))))
                  (let ((_tl236912236942_
                         (let () (declare (not safe)) (##cdr _e236914236937_)))
                        (_hd236913236940_
                         (let ()
                           (declare (not safe))
                           (##car _e236914236937_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd236913236940_))
                        (let ((_e236917236945_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd236913236940_))))
                          (let ((_tl236915236950_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e236917236945_)))
                                (_hd236916236948_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e236917236945_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl236915236950_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl236912236942_))
                                    (let ((_e236920236953_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl236912236942_))))
                                      (let ((_tl236918236958_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e236920236953_)))
                                            (_hd236919236956_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e236920236953_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl236918236958_))
                                            (___kont251721251722_
                                             _hd236919236956_
                                             _hd236916236948_)
                                            (___kont251723251724_))))
                                    (___kont251723251724_))
                                (___kont251723251724_))))
                        (___kont251723251724_))))
                (___kont251723251724_))))))))
