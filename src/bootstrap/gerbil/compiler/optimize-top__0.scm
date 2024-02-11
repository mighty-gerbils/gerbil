(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1707660404)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl234177_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp240738 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl234177_ __tmp240738))
           (let ()
             (declare (not safe))
             (table-set! _tbl234177_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234177_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234177_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234177_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl234177_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx234160_ . _args234162_)
        (let ((__tmp240740
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234162_)
                     (gxc#compile-e__0 _stx234160_)
                     (let ((_arg1234167_ (car _args234162_))
                           (_rest234169_ (cdr _args234162_)))
                       (if (null? _rest234169_)
                           (gxc#compile-e__1 _stx234160_ _arg1234167_)
                           (let ((_arg2234172_ (car _rest234169_))
                                 (_rest234174_ (cdr _rest234169_)))
                             (if (null? _rest234174_)
                                 (gxc#compile-e__2
                                  _stx234160_
                                  _arg1234167_
                                  _arg2234172_)
                                 (apply gxc#compile-e
                                        _stx234160_
                                        _arg1234167_
                                        _arg2234172_
                                        _rest234174_))))))))
              (__tmp240739 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp240740
           gxc#current-compile-methods
           __tmp240739))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl234157_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp240741 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl234157_ __tmp240741))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234157_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234157_ '%#call gxc#basic-expression-type-call%))
           _tbl234157_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx234140_ . _args234142_)
        (let ((__tmp240743
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234142_)
                     (gxc#compile-e__0 _stx234140_)
                     (let ((_arg1234147_ (car _args234142_))
                           (_rest234149_ (cdr _args234142_)))
                       (if (null? _rest234149_)
                           (gxc#compile-e__1 _stx234140_ _arg1234147_)
                           (let ((_arg2234152_ (car _rest234149_))
                                 (_rest234154_ (cdr _rest234149_)))
                             (if (null? _rest234154_)
                                 (gxc#compile-e__2
                                  _stx234140_
                                  _arg1234147_
                                  _arg2234152_)
                                 (apply gxc#compile-e
                                        _stx234140_
                                        _arg1234147_
                                        _arg2234152_
                                        _rest234154_))))))))
              (__tmp240742 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp240743
           gxc#current-compile-methods
           __tmp240742))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl234137_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp240744 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl234137_ __tmp240744))
           (let ()
             (declare (not safe))
             (table-set! _tbl234137_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234137_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234137_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234137_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234137_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234137_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234137_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234137_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234137_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234137_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234137_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234137_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl234137_ '%#set! gxc#collect-body-setq%))
           _tbl234137_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx234120_ . _args234122_)
        (let ((__tmp240746
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234122_)
                     (gxc#compile-e__0 _stx234120_)
                     (let ((_arg1234127_ (car _args234122_))
                           (_rest234129_ (cdr _args234122_)))
                       (if (null? _rest234129_)
                           (gxc#compile-e__1 _stx234120_ _arg1234127_)
                           (let ((_arg2234132_ (car _rest234129_))
                                 (_rest234134_ (cdr _rest234129_)))
                             (if (null? _rest234134_)
                                 (gxc#compile-e__2
                                  _stx234120_
                                  _arg1234127_
                                  _arg2234132_)
                                 (apply gxc#compile-e
                                        _stx234120_
                                        _arg1234127_
                                        _arg2234132_
                                        _rest234134_))))))))
              (__tmp240745 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp240746
           gxc#current-compile-methods
           __tmp240745))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl234117_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp240747 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl234117_ __tmp240747))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234117_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234117_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234117_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234117_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234117_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234117_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234117_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234117_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234117_ '%#ref gxc#basic-expression-type-ref%))
           _tbl234117_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx234100_ . _args234102_)
        (let ((__tmp240749
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234102_)
                     (gxc#compile-e__0 _stx234100_)
                     (let ((_arg1234107_ (car _args234102_))
                           (_rest234109_ (cdr _args234102_)))
                       (if (null? _rest234109_)
                           (gxc#compile-e__1 _stx234100_ _arg1234107_)
                           (let ((_arg2234112_ (car _rest234109_))
                                 (_rest234114_ (cdr _rest234109_)))
                             (if (null? _rest234114_)
                                 (gxc#compile-e__2
                                  _stx234100_
                                  _arg1234107_
                                  _arg2234112_)
                                 (apply gxc#compile-e
                                        _stx234100_
                                        _arg1234107_
                                        _arg2234112_
                                        _rest234114_))))))))
              (__tmp240748 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp240749
           gxc#current-compile-methods
           __tmp240748))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl234097_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp240750 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl234097_ __tmp240750))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234097_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234097_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234097_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234097_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl234097_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx234080_ . _args234082_)
        (let ((__tmp240752
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234082_)
                     (gxc#compile-e__0 _stx234080_)
                     (let ((_arg1234087_ (car _args234082_))
                           (_rest234089_ (cdr _args234082_)))
                       (if (null? _rest234089_)
                           (gxc#compile-e__1 _stx234080_ _arg1234087_)
                           (let ((_arg2234092_ (car _rest234089_))
                                 (_rest234094_ (cdr _rest234089_)))
                             (if (null? _rest234094_)
                                 (gxc#compile-e__2
                                  _stx234080_
                                  _arg1234087_
                                  _arg2234092_)
                                 (apply gxc#compile-e
                                        _stx234080_
                                        _arg1234087_
                                        _arg2234092_
                                        _rest234094_))))))))
              (__tmp240751 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp240752
           gxc#current-compile-methods
           __tmp240751))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx233983_)
        (let* ((___stx238658238659_ _stx233983_)
               (_g233986234006_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx238658238659_)))))
          (let ((___kont238660238661_
                 (lambda (_L234050_ _L234051_)
                   (let ((_sym234069_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234051_))))
                     (if (let ((__tmp240753 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp240753 _sym234069_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym234069_))
                         (let ((_type234070234072_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L234050_))))
                           (if _type234070234072_
                               (let ((_type234075_ _type234070234072_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym234069_
                                  _type234075_))
                               '#f))))))
                (___kont238662238663_ (lambda () '#!void)))
            (let ((___match238691238692_
                   (lambda (_e233992234018_
                            _hd233991234021_
                            _tl233990234023_
                            _e233995234026_
                            _hd233994234029_
                            _tl233993234031_
                            _e233998234034_
                            _hd233997234037_
                            _tl233996234039_
                            _e234001234042_
                            _hd234000234045_
                            _tl233999234047_)
                     (let ((_L234050_ _hd234000234045_)
                           (_L234051_ _hd233997234037_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L234051_))
                           (___kont238660238661_ _L234050_ _L234051_)
                           (___kont238662238663_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx238658238659_))
                  (let ((_e233992234018_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx238658238659_))))
                    (let ((_tl233990234023_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233992234018_)))
                          (_hd233991234021_
                           (let ()
                             (declare (not safe))
                             (##car _e233992234018_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233990234023_))
                          (let ((_e233995234026_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233990234023_))))
                            (let ((_tl233993234031_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233995234026_)))
                                  (_hd233994234029_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233995234026_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd233994234029_))
                                  (let ((_e233998234034_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd233994234029_))))
                                    (let ((_tl233996234039_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233998234034_)))
                                          (_hd233997234037_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233998234034_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233996234039_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233993234031_))
                                              (let ((_e234001234042_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233993234031_))))
                                                (let ((_tl233999234047_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234001234042_)))
                                                      (_hd234000234045_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234001234042_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233999234047_))
                                                      (___match238691238692_
                                                       _e233992234018_
                                                       _hd233991234021_
                                                       _tl233990234023_
                                                       _e233995234026_
                                                       _hd233994234029_
                                                       _tl233993234031_
                                                       _e233998234034_
                                                       _hd233997234037_
                                                       _tl233996234039_
                                                       _e234001234042_
                                                       _hd234000234045_
                                                       _tl233999234047_)
                                                      (___kont238662238663_))))
                                              (___kont238662238663_))
                                          (___kont238662238663_))))
                                  (___kont238662238663_))))
                          (___kont238662238663_))))
                  (___kont238662238663_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx233839_)
        (let* ((___stx238694238695_ _stx233839_)
               (_g233842233873_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx238694238695_)))))
          (let ((___kont238696238697_
                 (lambda (_L233955_ _L233956_)
                   (let ((_sym233972_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233956_))))
                     (if (let ((__tmp240754 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp240754 _sym233972_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym233972_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym233972_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym233972_))
                             (let ((_type233973233975_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L233955_))))
                               (if _type233973233975_
                                   (let ((_type233978_ _type233973233975_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym233972_
                                      _type233978_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L233955_)))))
                (___kont238698238699_
                 (lambda (_L233902_ _L233903_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L233902_)))))
            (let ((___match238727238728_
                   (lambda (_e233848233923_
                            _hd233847233926_
                            _tl233846233928_
                            _e233851233931_
                            _hd233850233934_
                            _tl233849233936_
                            _e233854233939_
                            _hd233853233942_
                            _tl233852233944_
                            _e233857233947_
                            _hd233856233950_
                            _tl233855233952_)
                     (let ((_L233955_ _hd233856233950_)
                           (_L233956_ _hd233853233942_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L233956_))
                           (___kont238696238697_ _L233955_ _L233956_)
                           (___kont238698238699_
                            _hd233856233950_
                            _hd233850233934_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx238694238695_))
                  (let ((_e233848233923_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx238694238695_))))
                    (let ((_tl233846233928_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233848233923_)))
                          (_hd233847233926_
                           (let ()
                             (declare (not safe))
                             (##car _e233848233923_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233846233928_))
                          (let ((_e233851233931_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233846233928_))))
                            (let ((_tl233849233936_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233851233931_)))
                                  (_hd233850233934_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233851233931_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd233850233934_))
                                  (let ((_e233854233939_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd233850233934_))))
                                    (let ((_tl233852233944_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233854233939_)))
                                          (_hd233853233942_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233854233939_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233852233944_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233849233936_))
                                              (let ((_e233857233947_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233849233936_))))
                                                (let ((_tl233855233952_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233857233947_)))
                                                      (_hd233856233950_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233857233947_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233855233952_))
                                                      (___match238727238728_
                                                       _e233848233923_
                                                       _hd233847233926_
                                                       _tl233846233928_
                                                       _e233851233931_
                                                       _hd233850233934_
                                                       _tl233849233936_
                                                       _e233854233939_
                                                       _hd233853233942_
                                                       _tl233852233944_
                                                       _e233857233947_
                                                       _hd233856233950_
                                                       _tl233855233952_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233842233873_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233842233873_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233849233936_))
                                              (let ((_e233868233894_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233849233936_))))
                                                (let ((_tl233866233899_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233868233894_)))
                                                      (_hd233867233897_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233868233894_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233866233899_))
                                                      (___kont238698238699_
                                                       _hd233867233897_
                                                       _hd233850233934_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233842233873_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233842233873_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233849233936_))
                                      (let ((_e233868233894_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233849233936_))))
                                        (let ((_tl233866233899_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233868233894_)))
                                              (_hd233867233897_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233868233894_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233866233899_))
                                              (___kont238698238699_
                                               _hd233867233897_
                                               _hd233850233934_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233842233873_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233842233873_))))))
                          (let () (declare (not safe)) (_g233842233873_)))))
                  (let () (declare (not safe)) (_g233842233873_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx233624_)
        (letrec ((_collect-e233626_
                  (lambda (_hd233783_ _expr233784_)
                    (let* ((___stx238750238751_ _hd233783_)
                           (_g233787233797_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx238750238751_)))))
                      (let ((___kont238752238753_
                             (lambda (_L233817_)
                               (let ((_sym233828_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L233817_))))
                                 (if (let ((__tmp240755
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp240755 _sym233828_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym233828_))
                                     (let ((_type233829233831_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr233784_))))
                                       (if _type233829233831_
                                           (let ((_type233834_
                                                  _type233829233831_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym233828_
                                              _type233834_
                                              '#t))
                                           '#f))))))
                            (___kont238754238755_ (lambda () '#!void)))
                        (let ((___match238763238764_
                               (lambda (_e233792233809_
                                        _hd233791233812_
                                        _tl233790233814_)
                                 (let ((_L233817_ _hd233791233812_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L233817_))
                                       (___kont238752238753_ _L233817_)
                                       (___kont238754238755_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx238750238751_))
                              (let ((_e233792233809_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx238750238751_))))
                                (let ((_tl233790233814_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233792233809_)))
                                      (_hd233791233812_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233792233809_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233790233814_))
                                      (___match238763238764_
                                       _e233792233809_
                                       _hd233791233812_
                                       _tl233790233814_)
                                      (___kont238754238755_))))
                              (___kont238754238755_))))))))
          (let* ((_g233628233663_
                  (lambda (_g233629233660_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g233629233660_))))
                 (_g233627233780_
                  (lambda (_g233629233666_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g233629233666_))
                        (let ((_e233635233668_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g233629233666_))))
                          (let ((_hd233634233671_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233635233668_)))
                                (_tl233633233673_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233635233668_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233633233673_))
                                (let ((_e233638233676_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233633233673_))))
                                  (let ((_hd233637233679_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233638233676_)))
                                        (_tl233636233681_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233638233676_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd233637233679_))
                                        (let ((_g240756_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd233637233679_
                                                  '0))))
                                          (begin
                                            (let ((_g240757_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g240756_)
                                                         (##vector-length
                                                          _g240756_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g240757_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g240757_)))
                                            (let ((_target233639233684_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g240756_
                                                      0)))
                                                  (_tl233641233686_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g240756_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233641233686_))
                                                  (letrec ((_loop233642233689_
                                                            (lambda (_hd233640233692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr233646233694_
                             _hd233647233696_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd233640233692_))
                          (let ((_e233643233699_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd233640233692_))))
                            (let ((_lp-hd233644233702_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233643233699_)))
                                  (_lp-tl233645233704_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233643233699_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd233644233702_))
                                  (let ((_e233652233707_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd233644233702_))))
                                    (let ((_hd233651233710_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233652233707_)))
                                          (_tl233650233712_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233652233707_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl233650233712_))
                                          (let ((_e233655233715_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl233650233712_))))
                                            (let ((_hd233654233718_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e233655233715_)))
                                                  (_tl233653233720_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e233655233715_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233653233720_))
                                                  (let ((__tmp240762
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd233654233718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr233646233694_)))
                (__tmp240761
                 (let ()
                   (declare (not safe))
                   (cons _hd233651233710_ _hd233647233696_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop233642233689_
                                                     _lp-tl233645233704_
                                                     __tmp240762
                                                     __tmp240761))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233628233663_
                                                     _g233629233666_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233628233663_
                                             _g233629233666_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233628233663_ _g233629233666_)))))
                          (let ((_expr233648233723_
                                 (reverse _expr233646233694_))
                                (_hd233649233725_ (reverse _hd233647233696_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233636233681_))
                                (let ((_e233658233728_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233636233681_))))
                                  (let ((_hd233657233731_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233658233728_)))
                                        (_tl233656233733_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233658233728_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233656233733_))
                                        ((lambda (_L233736_
                                                  _L233737_
                                                  _L233738_)
                                           (for-each
                                            _collect-e233626_
                                            (let ((__tmp240758
                                                   (lambda (_g233758233761_
                                                            _g233759233763_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g233758233761_
                                                             _g233759233763_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp240758
                                                      '()
                                                      _L233738_))
                                            (let ((__tmp240759
                                                   (lambda (_g233765233768_
                                                            _g233766233770_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g233765233768_
                                                             _g233766233770_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp240759
                                                      '()
                                                      _L233737_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp240760
                                                   (lambda (_g233772233775_
                                                            _g233773233777_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g233772233775_
                                                             _g233773233777_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp240760
                                                      '()
                                                      _L233737_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L233736_)))
                                         _hd233657233731_
                                         _expr233648233723_
                                         _hd233649233725_)
                                        (let ()
                                          (declare (not safe))
                                          (_g233628233663_ _g233629233666_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g233628233663_ _g233629233666_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop233642233689_
                                                       _target233639233684_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233628233663_
                                                     _g233629233666_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g233628233663_ _g233629233666_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g233628233663_ _g233629233666_)))))
                        (let ()
                          (declare (not safe))
                          (_g233628233663_ _g233629233666_))))))
            (declare (not safe))
            (_g233627233780_ _stx233624_)))))
    (define gxc#collect-type-call%
      (lambda (_stx233116_)
        (let* ((___stx238766238767_ _stx233116_)
               (_g233120233235_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx238766238767_)))))
          (let ((___kont238768238769_
                 (lambda (_L233574_ _L233575_ _L233576_ _L233577_ _L233578_)
                   (let ((__tmp240766
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233577_)))
                         (__tmp240765
                          (let () (declare (not safe)) (gx#stx-e _L233576_)))
                         (__tmp240764
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233575_)))
                         (__tmp240763
                          (let () (declare (not safe)) (gx#stx-e _L233574_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp240766
                      __tmp240765
                      __tmp240764
                      __tmp240763))))
                (___kont238770238771_
                 (lambda (_L233402_ _L233403_ _L233404_ _L233405_)
                   (let ((__tmp240769
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233404_)))
                         (__tmp240768
                          (let () (declare (not safe)) (gx#stx-e _L233403_)))
                         (__tmp240767
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233402_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp240769
                      __tmp240768
                      __tmp240767
                      '#f))))
                (___kont238772238773_
                 (lambda (_L233272_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp240770
                           (lambda (_g233285233288_ _g233286233290_)
                             (let ()
                               (declare (not safe))
                               (cons _g233285233288_ _g233286233290_)))))
                      (declare (not safe))
                      (foldr1 __tmp240770 '() _L233272_))))))
            (let* ((___match239023239024_
                    (lambda (_e233221233240_
                             _hd233220233243_
                             _tl233219233245_
                             ___splice238774238775_
                             _target233222233248_
                             _tl233224233250_)
                      (letrec ((_loop233225233253_
                                (lambda (_hd233223233256_ _expr233229233258_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233223233256_))
                                      (let ((_e233226233261_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233223233256_))))
                                        (let ((_lp-tl233228233266_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233226233261_)))
                                              (_lp-hd233227233264_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233226233261_))))
                                          (let ((__tmp240771
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd233227233264_
                                                         _expr233229233258_))))
                                            (declare (not safe))
                                            (_loop233225233253_
                                             _lp-tl233228233266_
                                             __tmp240771))))
                                      (let ((_expr233230233269_
                                             (reverse _expr233229233258_)))
                                        (___kont238772238773_
                                         _expr233230233269_))))))
                        (let ()
                          (declare (not safe))
                          (_loop233225233253_ _target233222233248_ '())))))
                   (___match238903238904_
                    (lambda (_e233129233446_
                             _hd233128233449_
                             _tl233127233451_
                             _e233132233454_
                             _hd233131233457_
                             _tl233130233459_
                             _e233135233462_
                             _hd233134233465_
                             _tl233133233467_
                             _e233138233470_
                             _hd233137233473_
                             _tl233136233475_
                             _e233141233478_
                             _hd233140233481_
                             _tl233139233483_
                             _e233144233486_
                             _hd233143233489_
                             _tl233142233491_
                             _e233147233494_
                             _hd233146233497_
                             _tl233145233499_
                             _e233150233502_
                             _hd233149233505_
                             _tl233148233507_
                             _e233153233510_
                             _hd233152233513_
                             _tl233151233515_
                             _e233156233518_
                             _hd233155233521_
                             _tl233154233523_
                             _e233159233526_
                             _hd233158233529_
                             _tl233157233531_
                             _e233162233534_
                             _hd233161233537_
                             _tl233160233539_
                             _e233165233542_
                             _hd233164233545_
                             _tl233163233547_
                             _e233168233550_
                             _hd233167233553_
                             _tl233166233555_
                             _e233171233558_
                             _hd233170233561_
                             _tl233169233563_
                             _e233174233566_
                             _hd233173233569_
                             _tl233172233571_)
                      (let ((_L233574_ _hd233173233569_)
                            (_L233575_ _hd233164233545_)
                            (_L233576_ _hd233155233521_)
                            (_L233577_ _hd233146233497_)
                            (_L233578_ _hd233137233473_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L233578_
                               'bind-method!))
                            (___kont238768238769_
                             _L233574_
                             _L233575_
                             _L233576_
                             _L233577_
                             _L233578_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl233127233451_))
                                (let ((___splice238774238775_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl233127233451_
                                          '0))))
                                  (let ((_tl233224233250_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice238774238775_
                                            '1)))
                                        (_target233222233248_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice238774238775_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233224233250_))
                                        (___match239023239024_
                                         _e233129233446_
                                         _hd233128233449_
                                         _tl233127233451_
                                         ___splice238774238775_
                                         _target233222233248_
                                         _tl233224233250_)
                                        (let ()
                                          (declare (not safe))
                                          (_g233120233235_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g233120233235_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx238766238767_))
                  (let ((_e233129233446_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx238766238767_))))
                    (let ((_tl233127233451_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233129233446_)))
                          (_hd233128233449_
                           (let ()
                             (declare (not safe))
                             (##car _e233129233446_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233127233451_))
                          (let ((_e233132233454_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233127233451_))))
                            (let ((_tl233130233459_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233132233454_)))
                                  (_hd233131233457_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233132233454_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd233131233457_))
                                  (let ((_e233135233462_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd233131233457_))))
                                    (let ((_tl233133233467_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233135233462_)))
                                          (_hd233134233465_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233135233462_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd233134233465_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd233134233465_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233133233467_))
                                                  (let ((_e233138233470_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233133233467_))))
                                                    (let ((_tl233136233475_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233138233470_)))
                                                          (_hd233137233473_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233138233470_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233136233475_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl233130233459_))
                      (let ((_e233141233478_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl233130233459_))))
                        (let ((_tl233139233483_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233141233478_)))
                              (_hd233140233481_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233141233478_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd233140233481_))
                              (let ((_e233144233486_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd233140233481_))))
                                (let ((_tl233142233491_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233144233486_)))
                                      (_hd233143233489_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233144233486_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd233143233489_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd233143233489_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233142233491_))
                                              (let ((_e233147233494_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233142233491_))))
                                                (let ((_tl233145233499_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233147233494_)))
                                                      (_hd233146233497_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233147233494_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233145233499_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl233139233483_))
                                                          (let ((_e233150233502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl233139233483_))))
                    (let ((_tl233148233507_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233150233502_)))
                          (_hd233149233505_
                           (let ()
                             (declare (not safe))
                             (##car _e233150233502_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd233149233505_))
                          (let ((_e233153233510_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd233149233505_))))
                            (let ((_tl233151233515_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233153233510_)))
                                  (_hd233152233513_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233153233510_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd233152233513_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd233152233513_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl233151233515_))
                                          (let ((_e233156233518_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl233151233515_))))
                                            (let ((_tl233154233523_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e233156233518_)))
                                                  (_hd233155233521_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e233156233518_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233154233523_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233148233507_))
                                                      (let ((_e233159233526_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233148233507_))))
                (let ((_tl233157233531_
                       (let () (declare (not safe)) (##cdr _e233159233526_)))
                      (_hd233158233529_
                       (let () (declare (not safe)) (##car _e233159233526_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd233158233529_))
                      (let ((_e233162233534_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd233158233529_))))
                        (let ((_tl233160233539_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233162233534_)))
                              (_hd233161233537_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233162233534_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd233161233537_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd233161233537_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233160233539_))
                                      (let ((_e233165233542_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233160233539_))))
                                        (let ((_tl233163233547_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233165233542_)))
                                              (_hd233164233545_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233165233542_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233163233547_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233157233531_))
                                                  (let ((_e233168233550_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233157233531_))))
                                                    (let ((_tl233166233555_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233168233550_)))
                                                          (_hd233167233553_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233168233550_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd233167233553_))
                                                          (let ((_e233171233558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd233167233553_))))
                    (let ((_tl233169233563_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233171233558_)))
                          (_hd233170233561_
                           (let ()
                             (declare (not safe))
                             (##car _e233171233558_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd233170233561_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd233170233561_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233169233563_))
                                  (let ((_e233174233566_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233169233563_))))
                                    (let ((_tl233172233571_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233174233566_)))
                                          (_hd233173233569_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233174233566_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233172233571_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233166233555_))
                                              (___match238903238904_
                                               _e233129233446_
                                               _hd233128233449_
                                               _tl233127233451_
                                               _e233132233454_
                                               _hd233131233457_
                                               _tl233130233459_
                                               _e233135233462_
                                               _hd233134233465_
                                               _tl233133233467_
                                               _e233138233470_
                                               _hd233137233473_
                                               _tl233136233475_
                                               _e233141233478_
                                               _hd233140233481_
                                               _tl233139233483_
                                               _e233144233486_
                                               _hd233143233489_
                                               _tl233142233491_
                                               _e233147233494_
                                               _hd233146233497_
                                               _tl233145233499_
                                               _e233150233502_
                                               _hd233149233505_
                                               _tl233148233507_
                                               _e233153233510_
                                               _hd233152233513_
                                               _tl233151233515_
                                               _e233156233518_
                                               _hd233155233521_
                                               _tl233154233523_
                                               _e233159233526_
                                               _hd233158233529_
                                               _tl233157233531_
                                               _e233162233534_
                                               _hd233161233537_
                                               _tl233160233539_
                                               _e233165233542_
                                               _hd233164233545_
                                               _tl233163233547_
                                               _e233168233550_
                                               _hd233167233553_
                                               _tl233166233555_
                                               _e233171233558_
                                               _hd233170233561_
                                               _tl233169233563_
                                               _e233174233566_
                                               _hd233173233569_
                                               _tl233172233571_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233127233451_))
                                                  (let ((___splice238774238775_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233127233451_
                                                            '0))))
                                                    (let ((_tl233224233250_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice238774238775_
                                                              '1)))
                                                          (_target233222233248_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice238774238775_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233224233250_))
                                                          (___match239023239024_
                                                           _e233129233446_
                                                           _hd233128233449_
                                                           _tl233127233451_
                                                           ___splice238774238775_
                                                           _target233222233248_
                                                           _tl233224233250_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233120233235_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233120233235_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233127233451_))
                                              (let ((___splice238774238775_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233127233451_
                                                        '0))))
                                                (let ((_tl233224233250_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice238774238775_
                                                          '1)))
                                                      (_target233222233248_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice238774238775_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233224233250_))
                                                      (___match239023239024_
                                                       _e233129233446_
                                                       _hd233128233449_
                                                       _tl233127233451_
                                                       ___splice238774238775_
                                                       _target233222233248_
                                                       _tl233224233250_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233120233235_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233120233235_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233127233451_))
                                      (let ((___splice238774238775_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233127233451_
                                                '0))))
                                        (let ((_tl233224233250_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice238774238775_
                                                  '1)))
                                              (_target233222233248_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice238774238775_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233224233250_))
                                              (___match239023239024_
                                               _e233129233446_
                                               _hd233128233449_
                                               _tl233127233451_
                                               ___splice238774238775_
                                               _target233222233248_
                                               _tl233224233250_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233120233235_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233120233235_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl233127233451_))
                                  (let ((___splice238774238775_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl233127233451_
                                            '0))))
                                    (let ((_tl233224233250_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice238774238775_
                                              '1)))
                                          (_target233222233248_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice238774238775_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233224233250_))
                                          (___match239023239024_
                                           _e233129233446_
                                           _hd233128233449_
                                           _tl233127233451_
                                           ___splice238774238775_
                                           _target233222233248_
                                           _tl233224233250_)
                                          (let ()
                                            (declare (not safe))
                                            (_g233120233235_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233120233235_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl233127233451_))
                              (let ((___splice238774238775_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl233127233451_
                                        '0))))
                                (let ((_tl233224233250_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice238774238775_
                                          '1)))
                                      (_target233222233248_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice238774238775_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233224233250_))
                                      (___match239023239024_
                                       _e233129233446_
                                       _hd233128233449_
                                       _tl233127233451_
                                       ___splice238774238775_
                                       _target233222233248_
                                       _tl233224233250_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233120233235_)))))
                              (let ()
                                (declare (not safe))
                                (_g233120233235_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233127233451_))
                      (let ((___splice238774238775_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233127233451_ '0))))
                        (let ((_tl233224233250_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice238774238775_ '1)))
                              (_target233222233248_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice238774238775_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233224233250_))
                              (___match239023239024_
                               _e233129233446_
                               _hd233128233449_
                               _tl233127233451_
                               ___splice238774238775_
                               _target233222233248_
                               _tl233224233250_)
                              (let ()
                                (declare (not safe))
                                (_g233120233235_)))))
                      (let () (declare (not safe)) (_g233120233235_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233157233531_))
                                                      (if (let ((__tmp240772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp240772 'bind-method!))
                  (let ((_L233402_ _hd233164233545_)
                        (_L233403_ _hd233155233521_)
                        (_L233404_ _hd233146233497_)
                        (_L233405_ _hd233137233473_))
                    (___kont238770238771_
                     _L233402_
                     _L233403_
                     _L233404_
                     _L233405_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233127233451_))
                      (let ((___splice238774238775_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233127233451_ '0))))
                        (let ((_tl233224233250_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice238774238775_ '1)))
                              (_target233222233248_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice238774238775_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233224233250_))
                              (___match239023239024_
                               _e233129233446_
                               _hd233128233449_
                               _tl233127233451_
                               ___splice238774238775_
                               _target233222233248_
                               _tl233224233250_)
                              (let ()
                                (declare (not safe))
                                (_g233120233235_)))))
                      (let () (declare (not safe)) (_g233120233235_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl233127233451_))
                  (let ((___splice238774238775_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl233127233451_ '0))))
                    (let ((_tl233224233250_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice238774238775_ '1)))
                          (_target233222233248_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice238774238775_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233224233250_))
                          (___match239023239024_
                           _e233129233446_
                           _hd233128233449_
                           _tl233127233451_
                           ___splice238774238775_
                           _target233222233248_
                           _tl233224233250_)
                          (let () (declare (not safe)) (_g233120233235_)))))
                  (let () (declare (not safe)) (_g233120233235_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233127233451_))
                                                  (let ((___splice238774238775_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233127233451_
                                                            '0))))
                                                    (let ((_tl233224233250_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice238774238775_
                                                              '1)))
                                                          (_target233222233248_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice238774238775_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233224233250_))
                                                          (___match239023239024_
                                                           _e233129233446_
                                                           _hd233128233449_
                                                           _tl233127233451_
                                                           ___splice238774238775_
                                                           _target233222233248_
                                                           _tl233224233250_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233120233235_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233120233235_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl233127233451_))
                                          (let ((___splice238774238775_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl233127233451_
                                                    '0))))
                                            (let ((_tl233224233250_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice238774238775_
                                                      '1)))
                                                  (_target233222233248_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice238774238775_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233224233250_))
                                                  (___match239023239024_
                                                   _e233129233446_
                                                   _hd233128233449_
                                                   _tl233127233451_
                                                   ___splice238774238775_
                                                   _target233222233248_
                                                   _tl233224233250_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233120233235_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233120233235_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233127233451_))
                                      (let ((___splice238774238775_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233127233451_
                                                '0))))
                                        (let ((_tl233224233250_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice238774238775_
                                                  '1)))
                                              (_target233222233248_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice238774238775_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233224233250_))
                                              (___match239023239024_
                                               _e233129233446_
                                               _hd233128233449_
                                               _tl233127233451_
                                               ___splice238774238775_
                                               _target233222233248_
                                               _tl233224233250_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233120233235_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233120233235_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl233127233451_))
                                  (let ((___splice238774238775_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl233127233451_
                                            '0))))
                                    (let ((_tl233224233250_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice238774238775_
                                              '1)))
                                          (_target233222233248_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice238774238775_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233224233250_))
                                          (___match239023239024_
                                           _e233129233446_
                                           _hd233128233449_
                                           _tl233127233451_
                                           ___splice238774238775_
                                           _target233222233248_
                                           _tl233224233250_)
                                          (let ()
                                            (declare (not safe))
                                            (_g233120233235_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233120233235_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl233127233451_))
                          (let ((___splice238774238775_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl233127233451_
                                    '0))))
                            (let ((_tl233224233250_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice238774238775_ '1)))
                                  (_target233222233248_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice238774238775_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233224233250_))
                                  (___match239023239024_
                                   _e233129233446_
                                   _hd233128233449_
                                   _tl233127233451_
                                   ___splice238774238775_
                                   _target233222233248_
                                   _tl233224233250_)
                                  (let ()
                                    (declare (not safe))
                                    (_g233120233235_)))))
                          (let () (declare (not safe)) (_g233120233235_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl233127233451_))
                  (let ((___splice238774238775_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl233127233451_ '0))))
                    (let ((_tl233224233250_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice238774238775_ '1)))
                          (_target233222233248_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice238774238775_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233224233250_))
                          (___match239023239024_
                           _e233129233446_
                           _hd233128233449_
                           _tl233127233451_
                           ___splice238774238775_
                           _target233222233248_
                           _tl233224233250_)
                          (let () (declare (not safe)) (_g233120233235_)))))
                  (let () (declare (not safe)) (_g233120233235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl233127233451_))
                                                      (let ((___splice238774238775_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl233127233451_ '0))))
                (let ((_tl233224233250_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice238774238775_ '1)))
                      (_target233222233248_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice238774238775_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl233224233250_))
                      (___match239023239024_
                       _e233129233446_
                       _hd233128233449_
                       _tl233127233451_
                       ___splice238774238775_
                       _target233222233248_
                       _tl233224233250_)
                      (let () (declare (not safe)) (_g233120233235_)))))
              (let () (declare (not safe)) (_g233120233235_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233127233451_))
                                              (let ((___splice238774238775_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233127233451_
                                                        '0))))
                                                (let ((_tl233224233250_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice238774238775_
                                                          '1)))
                                                      (_target233222233248_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice238774238775_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233224233250_))
                                                      (___match239023239024_
                                                       _e233129233446_
                                                       _hd233128233449_
                                                       _tl233127233451_
                                                       ___splice238774238775_
                                                       _target233222233248_
                                                       _tl233224233250_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233120233235_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233120233235_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl233127233451_))
                                          (let ((___splice238774238775_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl233127233451_
                                                    '0))))
                                            (let ((_tl233224233250_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice238774238775_
                                                      '1)))
                                                  (_target233222233248_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice238774238775_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233224233250_))
                                                  (___match239023239024_
                                                   _e233129233446_
                                                   _hd233128233449_
                                                   _tl233127233451_
                                                   ___splice238774238775_
                                                   _target233222233248_
                                                   _tl233224233250_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233120233235_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233120233235_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233127233451_))
                                      (let ((___splice238774238775_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233127233451_
                                                '0))))
                                        (let ((_tl233224233250_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice238774238775_
                                                  '1)))
                                              (_target233222233248_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice238774238775_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233224233250_))
                                              (___match239023239024_
                                               _e233129233446_
                                               _hd233128233449_
                                               _tl233127233451_
                                               ___splice238774238775_
                                               _target233222233248_
                                               _tl233224233250_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233120233235_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233120233235_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl233127233451_))
                              (let ((___splice238774238775_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl233127233451_
                                        '0))))
                                (let ((_tl233224233250_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice238774238775_
                                          '1)))
                                      (_target233222233248_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice238774238775_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233224233250_))
                                      (___match239023239024_
                                       _e233129233446_
                                       _hd233128233449_
                                       _tl233127233451_
                                       ___splice238774238775_
                                       _target233222233248_
                                       _tl233224233250_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233120233235_)))))
                              (let ()
                                (declare (not safe))
                                (_g233120233235_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233127233451_))
                      (let ((___splice238774238775_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233127233451_ '0))))
                        (let ((_tl233224233250_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice238774238775_ '1)))
                              (_target233222233248_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice238774238775_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233224233250_))
                              (___match239023239024_
                               _e233129233446_
                               _hd233128233449_
                               _tl233127233451_
                               ___splice238774238775_
                               _target233222233248_
                               _tl233224233250_)
                              (let ()
                                (declare (not safe))
                                (_g233120233235_)))))
                      (let () (declare (not safe)) (_g233120233235_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl233127233451_))
                  (let ((___splice238774238775_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl233127233451_ '0))))
                    (let ((_tl233224233250_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice238774238775_ '1)))
                          (_target233222233248_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice238774238775_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233224233250_))
                          (___match239023239024_
                           _e233129233446_
                           _hd233128233449_
                           _tl233127233451_
                           ___splice238774238775_
                           _target233222233248_
                           _tl233224233250_)
                          (let () (declare (not safe)) (_g233120233235_)))))
                  (let () (declare (not safe)) (_g233120233235_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233127233451_))
                                                  (let ((___splice238774238775_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233127233451_
                                                            '0))))
                                                    (let ((_tl233224233250_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice238774238775_
                                                              '1)))
                                                          (_target233222233248_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice238774238775_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233224233250_))
                                                          (___match239023239024_
                                                           _e233129233446_
                                                           _hd233128233449_
                                                           _tl233127233451_
                                                           ___splice238774238775_
                                                           _target233222233248_
                                                           _tl233224233250_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233120233235_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233120233235_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233127233451_))
                                              (let ((___splice238774238775_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233127233451_
                                                        '0))))
                                                (let ((_tl233224233250_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice238774238775_
                                                          '1)))
                                                      (_target233222233248_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice238774238775_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233224233250_))
                                                      (___match239023239024_
                                                       _e233129233446_
                                                       _hd233128233449_
                                                       _tl233127233451_
                                                       ___splice238774238775_
                                                       _target233222233248_
                                                       _tl233224233250_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233120233235_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233120233235_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl233127233451_))
                                          (let ((___splice238774238775_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl233127233451_
                                                    '0))))
                                            (let ((_tl233224233250_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice238774238775_
                                                      '1)))
                                                  (_target233222233248_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice238774238775_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233224233250_))
                                                  (___match239023239024_
                                                   _e233129233446_
                                                   _hd233128233449_
                                                   _tl233127233451_
                                                   ___splice238774238775_
                                                   _target233222233248_
                                                   _tl233224233250_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233120233235_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233120233235_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl233127233451_))
                                  (let ((___splice238774238775_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl233127233451_
                                            '0))))
                                    (let ((_tl233224233250_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice238774238775_
                                              '1)))
                                          (_target233222233248_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice238774238775_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233224233250_))
                                          (___match239023239024_
                                           _e233129233446_
                                           _hd233128233449_
                                           _tl233127233451_
                                           ___splice238774238775_
                                           _target233222233248_
                                           _tl233224233250_)
                                          (let ()
                                            (declare (not safe))
                                            (_g233120233235_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233120233235_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl233127233451_))
                          (let ((___splice238774238775_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl233127233451_
                                    '0))))
                            (let ((_tl233224233250_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice238774238775_ '1)))
                                  (_target233222233248_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice238774238775_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233224233250_))
                                  (___match239023239024_
                                   _e233129233446_
                                   _hd233128233449_
                                   _tl233127233451_
                                   ___splice238774238775_
                                   _target233222233248_
                                   _tl233224233250_)
                                  (let ()
                                    (declare (not safe))
                                    (_g233120233235_)))))
                          (let () (declare (not safe)) (_g233120233235_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233127233451_))
                      (let ((___splice238774238775_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233127233451_ '0))))
                        (let ((_tl233224233250_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice238774238775_ '1)))
                              (_target233222233248_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice238774238775_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233224233250_))
                              (___match239023239024_
                               _e233129233446_
                               _hd233128233449_
                               _tl233127233451_
                               ___splice238774238775_
                               _target233222233248_
                               _tl233224233250_)
                              (let ()
                                (declare (not safe))
                                (_g233120233235_)))))
                      (let () (declare (not safe)) (_g233120233235_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl233127233451_))
                                                      (let ((___splice238774238775_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl233127233451_ '0))))
                (let ((_tl233224233250_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice238774238775_ '1)))
                      (_target233222233248_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice238774238775_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl233224233250_))
                      (___match239023239024_
                       _e233129233446_
                       _hd233128233449_
                       _tl233127233451_
                       ___splice238774238775_
                       _target233222233248_
                       _tl233224233250_)
                      (let () (declare (not safe)) (_g233120233235_)))))
              (let () (declare (not safe)) (_g233120233235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233127233451_))
                                                  (let ((___splice238774238775_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233127233451_
                                                            '0))))
                                                    (let ((_tl233224233250_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice238774238775_
                                                              '1)))
                                                          (_target233222233248_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice238774238775_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233224233250_))
                                                          (___match239023239024_
                                                           _e233129233446_
                                                           _hd233128233449_
                                                           _tl233127233451_
                                                           ___splice238774238775_
                                                           _target233222233248_
                                                           _tl233224233250_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233120233235_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233120233235_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233127233451_))
                                              (let ((___splice238774238775_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233127233451_
                                                        '0))))
                                                (let ((_tl233224233250_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice238774238775_
                                                          '1)))
                                                      (_target233222233248_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice238774238775_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233224233250_))
                                                      (___match239023239024_
                                                       _e233129233446_
                                                       _hd233128233449_
                                                       _tl233127233451_
                                                       ___splice238774238775_
                                                       _target233222233248_
                                                       _tl233224233250_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233120233235_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233120233235_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233127233451_))
                                      (let ((___splice238774238775_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233127233451_
                                                '0))))
                                        (let ((_tl233224233250_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice238774238775_
                                                  '1)))
                                              (_target233222233248_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice238774238775_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233224233250_))
                                              (___match239023239024_
                                               _e233129233446_
                                               _hd233128233449_
                                               _tl233127233451_
                                               ___splice238774238775_
                                               _target233222233248_
                                               _tl233224233250_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233120233235_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233120233235_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl233127233451_))
                              (let ((___splice238774238775_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl233127233451_
                                        '0))))
                                (let ((_tl233224233250_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice238774238775_
                                          '1)))
                                      (_target233222233248_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice238774238775_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233224233250_))
                                      (___match239023239024_
                                       _e233129233446_
                                       _hd233128233449_
                                       _tl233127233451_
                                       ___splice238774238775_
                                       _target233222233248_
                                       _tl233224233250_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233120233235_)))))
                              (let ()
                                (declare (not safe))
                                (_g233120233235_))))))
                  (let () (declare (not safe)) (_g233120233235_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx233056_)
        (let* ((___stx239026239027_ _stx233056_)
               (_g233059233072_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239026239027_)))))
          (let ((___kont239028239029_
                 (lambda (_L233100_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L233100_))))
                (___kont239030239031_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239026239027_))
                (let ((_e233064233084_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239026239027_))))
                  (let ((_tl233062233089_
                         (let () (declare (not safe)) (##cdr _e233064233084_)))
                        (_hd233063233087_
                         (let ()
                           (declare (not safe))
                           (##car _e233064233084_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233062233089_))
                        (let ((_e233067233092_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233062233089_))))
                          (let ((_tl233065233097_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233067233092_)))
                                (_hd233066233095_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233067233092_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl233065233097_))
                                (___kont239028239029_ _hd233066233095_)
                                (___kont239030239031_))))
                        (___kont239030239031_))))
                (___kont239030239031_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx232936_)
        (let* ((_g232938232955_
                (lambda (_g232939232952_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232939232952_))))
               (_g232937233053_
                (lambda (_g232939232958_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232939232958_))
                      (let ((_e232944232960_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232939232958_))))
                        (let ((_hd232943232963_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232944232960_)))
                              (_tl232942232965_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232944232960_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232942232965_))
                              (let ((_e232947232968_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232942232965_))))
                                (let ((_hd232946232971_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232947232968_)))
                                      (_tl232945232973_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232947232968_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232945232973_))
                                      (let ((_e232950232976_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232945232973_))))
                                        (let ((_hd232949232979_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232950232976_)))
                                              (_tl232948232981_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232950232976_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232948232981_))
                                              ((lambda (_L232984_ _L232985_)
                                                 (let* ((___stx239048239049_
                                                         _L232985_)
                                                        (_g233001233012_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx239048239049_)))))
                                                   (let ((___kont239050239051_
                                                          (lambda (_L233032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L233033_)
                    (let ((_$e233045_
                           (let ((__tmp240773
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L233033_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp240773
                              '#f))))
                      (if _$e233045_
                          ((lambda (_type-e233048_)
                             (_type-e233048_ _stx232936_ _L232985_))
                           _$e233045_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L232984_))))))
                 (___kont239052239053_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L232984_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match239059239060_
                                                            (lambda (_e233007233024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd233006233027_
                             _tl233005233029_)
                      (let ((_L233032_ _tl233005233029_)
                            (_L233033_ _hd233006233027_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L233033_))
                            (___kont239050239051_ _L233032_ _L233033_)
                            (___kont239052239053_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx239048239049_))
                   (let ((_e233007233024_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx239048239049_))))
                     (let ((_tl233005233029_
                            (let ()
                              (declare (not safe))
                              (##cdr _e233007233024_)))
                           (_hd233006233027_
                            (let ()
                              (declare (not safe))
                              (##car _e233007233024_))))
                       (___match239059239060_
                        _e233007233024_
                        _hd233006233027_
                        _tl233005233029_)))
                   (___kont239052239053_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd232949232979_
                                               _hd232946232971_)
                                              (let ()
                                                (declare (not safe))
                                                (_g232938232955_
                                                 _g232939232958_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232938232955_ _g232939232958_)))))
                              (let ()
                                (declare (not safe))
                                (_g232938232955_ _g232939232958_)))))
                      (let ()
                        (declare (not safe))
                        (_g232938232955_ _g232939232958_))))))
          (declare (not safe))
          (_g232937233053_ _stx232936_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx232797_ _ann232798_)
        (let* ((_g232800232833_
                (lambda (_g232801232830_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232801232830_))))
               (_g232799232933_
                (lambda (_g232801232836_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232801232836_))
                      (let ((_e232810232838_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232801232836_))))
                        (let ((_hd232809232841_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232810232838_)))
                              (_tl232808232843_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232810232838_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232808232843_))
                              (let ((_e232813232846_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232808232843_))))
                                (let ((_hd232812232849_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232813232846_)))
                                      (_tl232811232851_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232813232846_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232811232851_))
                                      (let ((_e232816232854_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232811232851_))))
                                        (let ((_hd232815232857_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232816232854_)))
                                              (_tl232814232859_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232816232854_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl232814232859_))
                                              (let ((_e232819232862_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl232814232859_))))
                                                (let ((_hd232818232865_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232819232862_)))
                                                      (_tl232817232867_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232819232862_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl232817232867_))
                                                      (let ((_e232822232870_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl232817232867_))))
                (let ((_hd232821232873_
                       (let () (declare (not safe)) (##car _e232822232870_)))
                      (_tl232820232875_
                       (let () (declare (not safe)) (##cdr _e232822232870_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl232820232875_))
                      (let ((_e232825232878_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl232820232875_))))
                        (let ((_hd232824232881_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232825232878_)))
                              (_tl232823232883_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232825232878_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232823232883_))
                              (let ((_e232828232886_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232823232883_))))
                                (let ((_hd232827232889_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232828232886_)))
                                      (_tl232826232891_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232828232886_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232826232891_))
                                      ((lambda (_L232894_
                                                _L232895_
                                                _L232896_
                                                _L232897_
                                                _L232898_
                                                _L232899_)
                                         (let ((_type-id232926_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L232899_)))
                                               (_super232927_
                                                (map gxc#identifier-symbol
                                                     _L232898_))
                                               (_slots232928_
                                                (map gx#stx-e _L232897_))
                                               (_ctor-method232929_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L232896_)))
                                               (_struct?232930_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L232895_)))
                                               (_final?232931_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L232894_))))
                                           (let ((__obj240731
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
                                              __obj240731
                                              _type-id232926_
                                              _super232927_
                                              _slots232928_
                                              _ctor-method232929_
                                              _struct?232930_
                                              _final?232931_)
                                             __obj240731)))
                                       _hd232827232889_
                                       _hd232824232881_
                                       _hd232821232873_
                                       _hd232818232865_
                                       _hd232815232857_
                                       _hd232812232849_)
                                      (let ()
                                        (declare (not safe))
                                        (_g232800232833_ _g232801232836_)))))
                              (let ()
                                (declare (not safe))
                                (_g232800232833_ _g232801232836_)))))
                      (let ()
                        (declare (not safe))
                        (_g232800232833_ _g232801232836_)))))
              (let ()
                (declare (not safe))
                (_g232800232833_ _g232801232836_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g232800232833_
                                                 _g232801232836_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232800232833_ _g232801232836_)))))
                              (let ()
                                (declare (not safe))
                                (_g232800232833_ _g232801232836_)))))
                      (let ()
                        (declare (not safe))
                        (_g232800232833_ _g232801232836_))))))
          (declare (not safe))
          (_g232799232933_ _ann232798_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx232745_ _ann232746_)
        (let* ((_g232748232761_
                (lambda (_g232749232758_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232749232758_))))
               (_g232747232794_
                (lambda (_g232749232764_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232749232764_))
                      (let ((_e232753232766_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232749232764_))))
                        (let ((_hd232752232769_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232753232766_)))
                              (_tl232751232771_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232753232766_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232751232771_))
                              (let ((_e232756232774_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232751232771_))))
                                (let ((_hd232755232777_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232756232774_)))
                                      (_tl232754232779_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232756232774_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232754232779_))
                                      ((lambda (_L232782_)
                                         (let ((__tmp240774
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L232782_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp240774)))
                                       _hd232755232777_)
                                      (let ()
                                        (declare (not safe))
                                        (_g232748232761_ _g232749232764_)))))
                              (let ()
                                (declare (not safe))
                                (_g232748232761_ _g232749232764_)))))
                      (let ()
                        (declare (not safe))
                        (_g232748232761_ _g232749232764_))))))
          (declare (not safe))
          (_g232747232794_ _ann232746_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx232693_ _ann232694_)
        (let* ((_g232696232709_
                (lambda (_g232697232706_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232697232706_))))
               (_g232695232742_
                (lambda (_g232697232712_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232697232712_))
                      (let ((_e232701232714_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232697232712_))))
                        (let ((_hd232700232717_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232701232714_)))
                              (_tl232699232719_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232701232714_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232699232719_))
                              (let ((_e232704232722_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232699232719_))))
                                (let ((_hd232703232725_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232704232722_)))
                                      (_tl232702232727_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232704232722_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232702232727_))
                                      ((lambda (_L232730_)
                                         (let ((__tmp240775
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L232730_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp240775)))
                                       _hd232703232725_)
                                      (let ()
                                        (declare (not safe))
                                        (_g232696232709_ _g232697232712_)))))
                              (let ()
                                (declare (not safe))
                                (_g232696232709_ _g232697232712_)))))
                      (let ()
                        (declare (not safe))
                        (_g232696232709_ _g232697232712_))))))
          (declare (not safe))
          (_g232695232742_ _ann232694_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx232609_ _ann232610_)
        (let* ((_g232612232633_
                (lambda (_g232613232630_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232613232630_))))
               (_g232611232690_
                (lambda (_g232613232636_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232613232636_))
                      (let ((_e232619232638_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232613232636_))))
                        (let ((_hd232618232641_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232619232638_)))
                              (_tl232617232643_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232619232638_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232617232643_))
                              (let ((_e232622232646_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232617232643_))))
                                (let ((_hd232621232649_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232622232646_)))
                                      (_tl232620232651_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232622232646_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232620232651_))
                                      (let ((_e232625232654_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232620232651_))))
                                        (let ((_hd232624232657_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232625232654_)))
                                              (_tl232623232659_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232625232654_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl232623232659_))
                                              (let ((_e232628232662_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl232623232659_))))
                                                (let ((_hd232627232665_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232628232662_)))
                                                      (_tl232626232667_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232628232662_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232626232667_))
                                                      ((lambda (_L232670_
                                                                _L232671_
                                                                _L232672_)
                                                         (let ((__tmp240778
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L232672_)))
                       (__tmp240777
                        (let () (declare (not safe)) (gx#stx-e _L232671_)))
                       (__tmp240776
                        (let () (declare (not safe)) (gx#stx-e _L232670_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp240778
                    __tmp240777
                    __tmp240776)))
               _hd232627232665_
               _hd232624232657_
               _hd232621232649_)
              (let ()
                (declare (not safe))
                (_g232612232633_ _g232613232636_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g232612232633_
                                                 _g232613232636_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232612232633_ _g232613232636_)))))
                              (let ()
                                (declare (not safe))
                                (_g232612232633_ _g232613232636_)))))
                      (let ()
                        (declare (not safe))
                        (_g232612232633_ _g232613232636_))))))
          (declare (not safe))
          (_g232611232690_ _ann232610_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx232525_ _ann232526_)
        (let* ((_g232528232549_
                (lambda (_g232529232546_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232529232546_))))
               (_g232527232606_
                (lambda (_g232529232552_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232529232552_))
                      (let ((_e232535232554_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232529232552_))))
                        (let ((_hd232534232557_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232535232554_)))
                              (_tl232533232559_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232535232554_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232533232559_))
                              (let ((_e232538232562_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232533232559_))))
                                (let ((_hd232537232565_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232538232562_)))
                                      (_tl232536232567_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232538232562_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232536232567_))
                                      (let ((_e232541232570_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232536232567_))))
                                        (let ((_hd232540232573_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232541232570_)))
                                              (_tl232539232575_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232541232570_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl232539232575_))
                                              (let ((_e232544232578_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl232539232575_))))
                                                (let ((_hd232543232581_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232544232578_)))
                                                      (_tl232542232583_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232544232578_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232542232583_))
                                                      ((lambda (_L232586_
                                                                _L232587_
                                                                _L232588_)
                                                         (let ((__tmp240781
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L232588_)))
                       (__tmp240780
                        (let () (declare (not safe)) (gx#stx-e _L232587_)))
                       (__tmp240779
                        (let () (declare (not safe)) (gx#stx-e _L232586_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp240781
                    __tmp240780
                    __tmp240779)))
               _hd232543232581_
               _hd232540232573_
               _hd232537232565_)
              (let ()
                (declare (not safe))
                (_g232528232549_ _g232529232552_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g232528232549_
                                                 _g232529232552_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232528232549_ _g232529232552_)))))
                              (let ()
                                (declare (not safe))
                                (_g232528232549_ _g232529232552_)))))
                      (let ()
                        (declare (not safe))
                        (_g232528232549_ _g232529232552_))))))
          (declare (not safe))
          (_g232527232606_ _ann232526_))))
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
      (lambda (_stx231645_)
        (let* ((___stx239062239063_ _stx231645_)
               (_g231651231847_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239062239063_)))))
          (let ((___kont239064239065_
                 (lambda (_L232513_)
                   (let ((__obj240732
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj240732
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L232513_))
                      '#f)
                     __obj240732)))
                (___kont239066239067_
                 (lambda (_L232440_
                          _L232441_
                          _L232442_
                          _L232443_
                          _L232444_
                          _L232445_)
                   (let* ((_tab232495_
                           (let () (declare (not safe)) (gx#stx-e _L232442_)))
                          (_keys232497_
                           (if _tab232495_
                               (let ((__tmp240782 (vector->list _tab232495_)))
                                 (declare (not safe))
                                 (filter values __tmp240782))
                               '#f)))
                     (let ((__tmp240783
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L232441_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys232497_
                        __tmp240783)))))
                (___kont239068239069_
                 (lambda (_L232173_
                          _L232174_
                          _L232175_
                          _L232176_
                          _L232177_
                          _L232178_
                          _L232179_
                          _L232180_
                          _L232181_
                          _L232182_)
                   (let ((__tmp240785
                          (map gx#stx-e
                               (let ((__tmp240786
                                      (lambda (_g232275232278_ _g232276232280_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g232275232278_
                                                _g232276232280_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp240786 '() _L232175_))))
                         (__tmp240784
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L232179_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp240785
                      __tmp240784))))
                (___kont239072239073_
                 (lambda (_L231883_)
                   (let ((__obj240733
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj240733
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L231883_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L231883_)))
                     __obj240733)))
                (___kont239074239075_
                 (lambda (_L231860_)
                   (let ((__obj240734
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj240734
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L231860_))
                      '#f)
                     __obj240734))))
            (let* ((___match239381239382_
                    (lambda (_e231838231875_ _hd231837231878_ _tl231836231880_)
                      (let ((_L231883_ _tl231836231880_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L231883_))
                            (___kont239072239073_ _L231883_)
                            (___kont239074239075_ _tl231836231880_)))))
                   (___match239375239376_
                    (lambda (_e231732231897_
                             _hd231731231900_
                             _tl231730231902_
                             _e231735231905_
                             _hd231734231908_
                             _tl231733231910_
                             _e231738231913_
                             _hd231737231916_
                             _tl231736231918_
                             _e231741231921_
                             _hd231740231924_
                             _tl231739231926_
                             _e231744231929_
                             _hd231743231932_
                             _tl231742231934_
                             _e231747231937_
                             _hd231746231940_
                             _tl231745231942_
                             _e231750231945_
                             _hd231749231948_
                             _tl231748231950_
                             _e231753231953_
                             _hd231752231956_
                             _tl231751231958_
                             _e231756231961_
                             _hd231755231964_
                             _tl231754231966_
                             _e231759231969_
                             _hd231758231972_
                             _tl231757231974_
                             _e231762231977_
                             _hd231761231980_
                             _tl231760231982_
                             _e231765231985_
                             _hd231764231988_
                             _tl231763231990_
                             _e231768231993_
                             _hd231767231996_
                             _tl231766231998_
                             _e231771232001_
                             _hd231770232004_
                             _tl231769232006_
                             ___splice239070239071_
                             _target231772232009_
                             _tl231774232011_
                             _e231789232014_
                             _hd231788232017_
                             _tl231787232019_
                             _e231792232022_
                             _hd231791232025_
                             _tl231790232027_
                             _e231795232030_
                             _hd231794232033_
                             _tl231793232035_)
                      (letrec ((_loop231775232038_
                                (lambda (_hd231773232041_
                                         _-absent-value231779232043_
                                         _key231780232045_
                                         _-xkwvar231781232047_
                                         _-hash-ref231782232049_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd231773232041_))
                                      (let ((_e231776232052_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd231773232041_))))
                                        (let ((_lp-tl231778232057_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231776232052_)))
                                              (_lp-hd231777232055_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231776232052_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd231777232055_))
                                              (let ((_e231798232060_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd231777232055_))))
                                                (let ((_tl231796232065_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e231798232060_)))
                                                      (_hd231797232063_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e231798232060_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd231797232063_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd231797232063_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl231796232065_))
                      (let ((_e231801232068_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl231796232065_))))
                        (let ((_tl231799232073_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231801232068_)))
                              (_hd231800232071_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231801232068_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd231800232071_))
                              (let ((_e231804232076_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd231800232071_))))
                                (let ((_tl231802232081_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231804232076_)))
                                      (_hd231803232079_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231804232076_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd231803232079_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd231803232079_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl231802232081_))
                                              (let ((_e231807232084_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl231802232081_))))
                                                (let ((_tl231805232089_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e231807232084_)))
                                                      (_hd231806232087_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e231807232084_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl231805232089_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl231799232073_))
                                                          (let ((_e231810232092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl231799232073_))))
                    (let ((_tl231808232097_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231810232092_)))
                          (_hd231809232095_
                           (let ()
                             (declare (not safe))
                             (##car _e231810232092_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd231809232095_))
                          (let ((_e231813232100_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd231809232095_))))
                            (let ((_tl231811232105_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231813232100_)))
                                  (_hd231812232103_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231813232100_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd231812232103_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd231812232103_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl231811232105_))
                                          (let ((_e231816232108_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl231811232105_))))
                                            (let ((_tl231814232113_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231816232108_)))
                                                  (_hd231815232111_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231816232108_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl231814232113_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl231808232097_))
                                                      (let ((_e231819232116_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl231808232097_))))
                (let ((_tl231817232121_
                       (let () (declare (not safe)) (##cdr _e231819232116_)))
                      (_hd231818232119_
                       (let () (declare (not safe)) (##car _e231819232116_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd231818232119_))
                      (let ((_e231822232124_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd231818232119_))))
                        (let ((_tl231820232129_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231822232124_)))
                              (_hd231821232127_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231822232124_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd231821232127_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd231821232127_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231820232129_))
                                      (let ((_e231825232132_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231820232129_))))
                                        (let ((_tl231823232137_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231825232132_)))
                                              (_hd231824232135_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231825232132_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231823232137_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231817232121_))
                                                  (let ((_e231828232140_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231817232121_))))
                                                    (let ((_tl231826232145_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231828232140_)))
                                                          (_hd231827232143_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231828232140_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd231827232143_))
                                                          (let ((_e231831232148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd231827232143_))))
                    (let ((_tl231829232153_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231831232148_)))
                          (_hd231830232151_
                           (let ()
                             (declare (not safe))
                             (##car _e231831232148_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd231830232151_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd231830232151_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231829232153_))
                                  (let ((_e231834232156_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231829232153_))))
                                    (let ((_tl231832232161_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231834232156_)))
                                          (_hd231833232159_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231834232156_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231832232161_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231826232145_))
                                              (let ((__tmp240801
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd231833232159_
                                                             _-absent-value231779232043_)))
                                                    (__tmp240800
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd231824232135_
                                                             _key231780232045_)))
                                                    (__tmp240799
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd231815232111_
                                                             _-xkwvar231781232047_)))
                                                    (__tmp240798
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd231806232087_
                                                             _-hash-ref231782232049_))))
                                                (declare (not safe))
                                                (_loop231775232038_
                                                 _lp-tl231778232057_
                                                 __tmp240801
                                                 __tmp240800
                                                 __tmp240799
                                                 __tmp240798))
                                              (___match239381239382_
                                               _e231732231897_
                                               _hd231731231900_
                                               _tl231730231902_))
                                          (___match239381239382_
                                           _e231732231897_
                                           _hd231731231900_
                                           _tl231730231902_))))
                                  (___match239381239382_
                                   _e231732231897_
                                   _hd231731231900_
                                   _tl231730231902_))
                              (___match239381239382_
                               _e231732231897_
                               _hd231731231900_
                               _tl231730231902_))
                          (___match239381239382_
                           _e231732231897_
                           _hd231731231900_
                           _tl231730231902_))))
                  (___match239381239382_
                   _e231732231897_
                   _hd231731231900_
                   _tl231730231902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239381239382_
                                                   _e231732231897_
                                                   _hd231731231900_
                                                   _tl231730231902_))
                                              (___match239381239382_
                                               _e231732231897_
                                               _hd231731231900_
                                               _tl231730231902_))))
                                      (___match239381239382_
                                       _e231732231897_
                                       _hd231731231900_
                                       _tl231730231902_))
                                  (___match239381239382_
                                   _e231732231897_
                                   _hd231731231900_
                                   _tl231730231902_))
                              (___match239381239382_
                               _e231732231897_
                               _hd231731231900_
                               _tl231730231902_))))
                      (___match239381239382_
                       _e231732231897_
                       _hd231731231900_
                       _tl231730231902_))))
              (___match239381239382_
               _e231732231897_
               _hd231731231900_
               _tl231730231902_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239381239382_
                                                   _e231732231897_
                                                   _hd231731231900_
                                                   _tl231730231902_))))
                                          (___match239381239382_
                                           _e231732231897_
                                           _hd231731231900_
                                           _tl231730231902_))
                                      (___match239381239382_
                                       _e231732231897_
                                       _hd231731231900_
                                       _tl231730231902_))
                                  (___match239381239382_
                                   _e231732231897_
                                   _hd231731231900_
                                   _tl231730231902_))))
                          (___match239381239382_
                           _e231732231897_
                           _hd231731231900_
                           _tl231730231902_))))
                  (___match239381239382_
                   _e231732231897_
                   _hd231731231900_
                   _tl231730231902_))
              (___match239381239382_
               _e231732231897_
               _hd231731231900_
               _tl231730231902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match239381239382_
                                               _e231732231897_
                                               _hd231731231900_
                                               _tl231730231902_))
                                          (___match239381239382_
                                           _e231732231897_
                                           _hd231731231900_
                                           _tl231730231902_))
                                      (___match239381239382_
                                       _e231732231897_
                                       _hd231731231900_
                                       _tl231730231902_))))
                              (___match239381239382_
                               _e231732231897_
                               _hd231731231900_
                               _tl231730231902_))))
                      (___match239381239382_
                       _e231732231897_
                       _hd231731231900_
                       _tl231730231902_))
                  (___match239381239382_
                   _e231732231897_
                   _hd231731231900_
                   _tl231730231902_))
              (___match239381239382_
               _e231732231897_
               _hd231731231900_
               _tl231730231902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match239381239382_
                                               _e231732231897_
                                               _hd231731231900_
                                               _tl231730231902_))))
                                      (let ((_-hash-ref231786232170_
                                             (reverse _-hash-ref231782232049_))
                                            (_-xkwvar231785232168_
                                             (reverse _-xkwvar231781232047_))
                                            (_key231784232166_
                                             (reverse _key231780232045_))
                                            (_-absent-value231783232164_
                                             (reverse _-absent-value231779232043_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231739231926_))
                                            (let ((_L232173_ _hd231794232033_)
                                                  (_L232174_
                                                   _-absent-value231783232164_)
                                                  (_L232175_ _key231784232166_)
                                                  (_L232176_
                                                   _-xkwvar231785232168_)
                                                  (_L232177_
                                                   _-hash-ref231786232170_)
                                                  (_L232178_ _hd231770232004_)
                                                  (_L232179_ _hd231761231980_)
                                                  (_L232180_ _hd231752231956_)
                                                  (_L232181_ _tl231736231918_)
                                                  (_L232182_ _hd231737231916_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L232182_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L232181_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L232180_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L232182_
                                                          _L232178_))
                                                       (let ((__tmp240796
                                                              (let ((__tmp240797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g232235232238_ _g232236232240_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232235232238_ _g232236232240_)))))
                        (declare (not safe))
                        (foldr1 __tmp240797 '() _L232175_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp240796))
               (let ((__tmp240795
                      (lambda (_g232242232244_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g232242232244_
                           'hash-ref))))
                     (__tmp240793
                      (let ((__tmp240794
                             (lambda (_g232246232249_ _g232247232251_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232246232249_ _g232247232251_)))))
                        (declare (not safe))
                        (foldr1 __tmp240794 '() _L232177_))))
                 (declare (not safe))
                 (andmap1 __tmp240795 __tmp240793))
               (let ((__tmp240792
                      (lambda (_g232253232255_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g232253232255_
                           'absent-value))))
                     (__tmp240790
                      (let ((__tmp240791
                             (lambda (_g232257232260_ _g232258232262_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232257232260_ _g232258232262_)))))
                        (declare (not safe))
                        (foldr1 __tmp240791 '() _L232174_))))
                 (declare (not safe))
                 (andmap1 __tmp240792 __tmp240790))
               (let ((__tmp240789
                      (lambda (_g232264232266_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g232264232266_ _L232182_))))
                     (__tmp240787
                      (let ((__tmp240788
                             (lambda (_g232268232271_ _g232269232273_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232268232271_ _g232269232273_)))))
                        (declare (not safe))
                        (foldr1 __tmp240788 '() _L232176_))))
                 (declare (not safe))
                 (andmap1 __tmp240789 __tmp240787)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239068239069_
                                                   _L232173_
                                                   _L232174_
                                                   _L232175_
                                                   _L232176_
                                                   _L232177_
                                                   _L232178_
                                                   _L232179_
                                                   _L232180_
                                                   _L232181_
                                                   _L232182_)
                                                  (___match239381239382_
                                                   _e231732231897_
                                                   _hd231731231900_
                                                   _tl231730231902_)))
                                            (___match239381239382_
                                             _e231732231897_
                                             _hd231731231900_
                                             _tl231730231902_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop231775232038_
                           _target231772232009_
                           '()
                           '()
                           '()
                           '())))))
                   (___match239247239248_
                    (lambda (_e231732231897_
                             _hd231731231900_
                             _tl231730231902_
                             _e231735231905_
                             _hd231734231908_
                             _tl231733231910_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd231734231908_))
                          (let ((_e231738231913_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd231734231908_))))
                            (let ((_tl231736231918_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231738231913_)))
                                  (_hd231737231916_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231738231913_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231733231910_))
                                  (let ((_e231741231921_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231733231910_))))
                                    (let ((_tl231739231926_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231741231921_)))
                                          (_hd231740231924_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231741231921_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd231740231924_))
                                          (let ((_e231744231929_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd231740231924_))))
                                            (let ((_tl231742231934_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231744231929_)))
                                                  (_hd231743231932_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231744231929_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd231743231932_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd231743231932_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl231742231934_))
                                                          (let ((_e231747231937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl231742231934_))))
                    (let ((_tl231745231942_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231747231937_)))
                          (_hd231746231940_
                           (let ()
                             (declare (not safe))
                             (##car _e231747231937_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd231746231940_))
                          (let ((_e231750231945_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd231746231940_))))
                            (let ((_tl231748231950_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231750231945_)))
                                  (_hd231749231948_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231750231945_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd231749231948_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd231749231948_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl231748231950_))
                                          (let ((_e231753231953_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl231748231950_))))
                                            (let ((_tl231751231958_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231753231953_)))
                                                  (_hd231752231956_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231753231953_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl231751231958_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl231745231942_))
                                                      (let ((_e231756231961_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl231745231942_))))
                (let ((_tl231754231966_
                       (let () (declare (not safe)) (##cdr _e231756231961_)))
                      (_hd231755231964_
                       (let () (declare (not safe)) (##car _e231756231961_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd231755231964_))
                      (let ((_e231759231969_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd231755231964_))))
                        (let ((_tl231757231974_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231759231969_)))
                              (_hd231758231972_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231759231969_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd231758231972_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd231758231972_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231757231974_))
                                      (let ((_e231762231977_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231757231974_))))
                                        (let ((_tl231760231982_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231762231977_)))
                                              (_hd231761231980_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231762231977_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231760231982_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231754231966_))
                                                  (let ((_e231765231985_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231754231966_))))
                                                    (let ((_tl231763231990_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231765231985_)))
                                                          (_hd231764231988_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231765231985_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd231764231988_))
                                                          (let ((_e231768231993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd231764231988_))))
                    (let ((_tl231766231998_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231768231993_)))
                          (_hd231767231996_
                           (let ()
                             (declare (not safe))
                             (##car _e231768231993_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd231767231996_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd231767231996_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231766231998_))
                                  (let ((_e231771232001_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231766231998_))))
                                    (let ((_tl231769232006_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231771232001_)))
                                          (_hd231770232004_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231771232001_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231769232006_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl231763231990_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl231763231990_))
                                                        '1)
                                                  (let ((___splice239070239071_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl231763231990_
                                                            '1))))
                                                    (let ((_tl231774232011_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239070239071_
                                                              '1)))
                                                          (_target231772232009_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239070239071_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl231774232011_))
                                                          (let ((_e231789232014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl231774232011_))))
                    (let ((_tl231787232019_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231789232014_)))
                          (_hd231788232017_
                           (let ()
                             (declare (not safe))
                             (##car _e231789232014_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd231788232017_))
                          (let ((_e231792232022_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd231788232017_))))
                            (let ((_tl231790232027_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231792232022_)))
                                  (_hd231791232025_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231792232022_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd231791232025_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd231791232025_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl231790232027_))
                                          (let ((_e231795232030_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl231790232027_))))
                                            (let ((_tl231793232035_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231795232030_)))
                                                  (_hd231794232033_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231795232030_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl231793232035_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl231787232019_))
                                                      (___match239375239376_
                                                       _e231732231897_
                                                       _hd231731231900_
                                                       _tl231730231902_
                                                       _e231735231905_
                                                       _hd231734231908_
                                                       _tl231733231910_
                                                       _e231738231913_
                                                       _hd231737231916_
                                                       _tl231736231918_
                                                       _e231741231921_
                                                       _hd231740231924_
                                                       _tl231739231926_
                                                       _e231744231929_
                                                       _hd231743231932_
                                                       _tl231742231934_
                                                       _e231747231937_
                                                       _hd231746231940_
                                                       _tl231745231942_
                                                       _e231750231945_
                                                       _hd231749231948_
                                                       _tl231748231950_
                                                       _e231753231953_
                                                       _hd231752231956_
                                                       _tl231751231958_
                                                       _e231756231961_
                                                       _hd231755231964_
                                                       _tl231754231966_
                                                       _e231759231969_
                                                       _hd231758231972_
                                                       _tl231757231974_
                                                       _e231762231977_
                                                       _hd231761231980_
                                                       _tl231760231982_
                                                       _e231765231985_
                                                       _hd231764231988_
                                                       _tl231763231990_
                                                       _e231768231993_
                                                       _hd231767231996_
                                                       _tl231766231998_
                                                       _e231771232001_
                                                       _hd231770232004_
                                                       _tl231769232006_
                                                       ___splice239070239071_
                                                       _target231772232009_
                                                       _tl231774232011_
                                                       _e231789232014_
                                                       _hd231788232017_
                                                       _tl231787232019_
                                                       _e231792232022_
                                                       _hd231791232025_
                                                       _tl231790232027_
                                                       _e231795232030_
                                                       _hd231794232033_
                                                       _tl231793232035_)
                                                      (___match239381239382_
                                                       _e231732231897_
                                                       _hd231731231900_
                                                       _tl231730231902_))
                                                  (___match239381239382_
                                                   _e231732231897_
                                                   _hd231731231900_
                                                   _tl231730231902_))))
                                          (___match239381239382_
                                           _e231732231897_
                                           _hd231731231900_
                                           _tl231730231902_))
                                      (___match239381239382_
                                       _e231732231897_
                                       _hd231731231900_
                                       _tl231730231902_))
                                  (___match239381239382_
                                   _e231732231897_
                                   _hd231731231900_
                                   _tl231730231902_))))
                          (___match239381239382_
                           _e231732231897_
                           _hd231731231900_
                           _tl231730231902_))))
                  (___match239381239382_
                   _e231732231897_
                   _hd231731231900_
                   _tl231730231902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239381239382_
                                                   _e231732231897_
                                                   _hd231731231900_
                                                   _tl231730231902_))
                                              (___match239381239382_
                                               _e231732231897_
                                               _hd231731231900_
                                               _tl231730231902_))
                                          (___match239381239382_
                                           _e231732231897_
                                           _hd231731231900_
                                           _tl231730231902_))))
                                  (___match239381239382_
                                   _e231732231897_
                                   _hd231731231900_
                                   _tl231730231902_))
                              (___match239381239382_
                               _e231732231897_
                               _hd231731231900_
                               _tl231730231902_))
                          (___match239381239382_
                           _e231732231897_
                           _hd231731231900_
                           _tl231730231902_))))
                  (___match239381239382_
                   _e231732231897_
                   _hd231731231900_
                   _tl231730231902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239381239382_
                                                   _e231732231897_
                                                   _hd231731231900_
                                                   _tl231730231902_))
                                              (___match239381239382_
                                               _e231732231897_
                                               _hd231731231900_
                                               _tl231730231902_))))
                                      (___match239381239382_
                                       _e231732231897_
                                       _hd231731231900_
                                       _tl231730231902_))
                                  (___match239381239382_
                                   _e231732231897_
                                   _hd231731231900_
                                   _tl231730231902_))
                              (___match239381239382_
                               _e231732231897_
                               _hd231731231900_
                               _tl231730231902_))))
                      (___match239381239382_
                       _e231732231897_
                       _hd231731231900_
                       _tl231730231902_))))
              (___match239381239382_
               _e231732231897_
               _hd231731231900_
               _tl231730231902_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239381239382_
                                                   _e231732231897_
                                                   _hd231731231900_
                                                   _tl231730231902_))))
                                          (___match239381239382_
                                           _e231732231897_
                                           _hd231731231900_
                                           _tl231730231902_))
                                      (___match239381239382_
                                       _e231732231897_
                                       _hd231731231900_
                                       _tl231730231902_))
                                  (___match239381239382_
                                   _e231732231897_
                                   _hd231731231900_
                                   _tl231730231902_))))
                          (___match239381239382_
                           _e231732231897_
                           _hd231731231900_
                           _tl231730231902_))))
                  (___match239381239382_
                   _e231732231897_
                   _hd231731231900_
                   _tl231730231902_))
              (___match239381239382_
               _e231732231897_
               _hd231731231900_
               _tl231730231902_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239381239382_
                                                   _e231732231897_
                                                   _hd231731231900_
                                                   _tl231730231902_))))
                                          (___match239381239382_
                                           _e231732231897_
                                           _hd231731231900_
                                           _tl231730231902_))))
                                  (___match239381239382_
                                   _e231732231897_
                                   _hd231731231900_
                                   _tl231730231902_))))
                          (___match239381239382_
                           _e231732231897_
                           _hd231731231900_
                           _tl231730231902_))))
                   (___match239235239236_
                    (lambda (_e231665232288_
                             _hd231664232291_
                             _tl231663232293_
                             _e231668232296_
                             _hd231667232299_
                             _tl231666232301_
                             _e231671232304_
                             _hd231670232307_
                             _tl231669232309_
                             _e231674232312_
                             _hd231673232315_
                             _tl231672232317_
                             _e231677232320_
                             _hd231676232323_
                             _tl231675232325_
                             _e231680232328_
                             _hd231679232331_
                             _tl231678232333_
                             _e231683232336_
                             _hd231682232339_
                             _tl231681232341_
                             _e231686232344_
                             _hd231685232347_
                             _tl231684232349_
                             _e231689232352_
                             _hd231688232355_
                             _tl231687232357_
                             _e231692232360_
                             _hd231691232363_
                             _tl231690232365_
                             _e231695232368_
                             _hd231694232371_
                             _tl231693232373_
                             _e231698232376_
                             _hd231697232379_
                             _tl231696232381_
                             _e231701232384_
                             _hd231700232387_
                             _tl231699232389_
                             _e231704232392_
                             _hd231703232395_
                             _tl231702232397_
                             _e231707232400_
                             _hd231706232403_
                             _tl231705232405_
                             _e231710232408_
                             _hd231709232411_
                             _tl231708232413_
                             _e231713232416_
                             _hd231712232419_
                             _tl231711232421_
                             _e231716232424_
                             _hd231715232427_
                             _tl231714232429_
                             _e231719232432_
                             _hd231718232435_
                             _tl231717232437_)
                      (let ((_L232440_ _hd231718232435_)
                            (_L232441_ _hd231709232411_)
                            (_L232442_ _hd231700232387_)
                            (_L232443_ _hd231691232363_)
                            (_L232444_ _hd231682232339_)
                            (_L232445_ _hd231667232299_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L232445_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L232444_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L232443_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L232445_ _L232440_)))
                            (___kont239066239067_
                             _L232440_
                             _L232441_
                             _L232442_
                             _L232443_
                             _L232444_
                             _L232445_)
                            (___match239247239248_
                             _e231665232288_
                             _hd231664232291_
                             _tl231663232293_
                             _e231668232296_
                             _hd231667232299_
                             _tl231666232301_)))))
                   (___match239089239090_
                    (lambda (_e231665232288_ _hd231664232291_ _tl231663232293_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl231663232293_))
                          (let ((_e231668232296_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl231663232293_))))
                            (let ((_tl231666232301_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231668232296_)))
                                  (_hd231667232299_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231668232296_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231666232301_))
                                  (let ((_e231671232304_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231666232301_))))
                                    (let ((_tl231669232309_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231671232304_)))
                                          (_hd231670232307_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231671232304_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd231670232307_))
                                          (let ((_e231674232312_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd231670232307_))))
                                            (let ((_tl231672232317_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231674232312_)))
                                                  (_hd231673232315_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231674232312_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd231673232315_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd231673232315_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl231672232317_))
                                                          (let ((_e231677232320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl231672232317_))))
                    (let ((_tl231675232325_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231677232320_)))
                          (_hd231676232323_
                           (let ()
                             (declare (not safe))
                             (##car _e231677232320_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd231676232323_))
                          (let ((_e231680232328_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd231676232323_))))
                            (let ((_tl231678232333_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231680232328_)))
                                  (_hd231679232331_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231680232328_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd231679232331_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd231679232331_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl231678232333_))
                                          (let ((_e231683232336_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl231678232333_))))
                                            (let ((_tl231681232341_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231683232336_)))
                                                  (_hd231682232339_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231683232336_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl231681232341_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl231675232325_))
                                                      (let ((_e231686232344_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl231675232325_))))
                (let ((_tl231684232349_
                       (let () (declare (not safe)) (##cdr _e231686232344_)))
                      (_hd231685232347_
                       (let () (declare (not safe)) (##car _e231686232344_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd231685232347_))
                      (let ((_e231689232352_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd231685232347_))))
                        (let ((_tl231687232357_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231689232352_)))
                              (_hd231688232355_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231689232352_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd231688232355_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd231688232355_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231687232357_))
                                      (let ((_e231692232360_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231687232357_))))
                                        (let ((_tl231690232365_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231692232360_)))
                                              (_hd231691232363_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231692232360_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231690232365_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231684232349_))
                                                  (let ((_e231695232368_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231684232349_))))
                                                    (let ((_tl231693232373_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231695232368_)))
                                                          (_hd231694232371_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231695232368_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd231694232371_))
                                                          (let ((_e231698232376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd231694232371_))))
                    (let ((_tl231696232381_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231698232376_)))
                          (_hd231697232379_
                           (let ()
                             (declare (not safe))
                             (##car _e231698232376_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd231697232379_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd231697232379_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231696232381_))
                                  (let ((_e231701232384_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231696232381_))))
                                    (let ((_tl231699232389_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231701232384_)))
                                          (_hd231700232387_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231701232384_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231699232389_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl231693232373_))
                                              (let ((_e231704232392_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl231693232373_))))
                                                (let ((_tl231702232397_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e231704232392_)))
                                                      (_hd231703232395_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e231704232392_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd231703232395_))
                                                      (let ((_e231707232400_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd231703232395_))))
                (let ((_tl231705232405_
                       (let () (declare (not safe)) (##cdr _e231707232400_)))
                      (_hd231706232403_
                       (let () (declare (not safe)) (##car _e231707232400_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd231706232403_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd231706232403_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231705232405_))
                              (let ((_e231710232408_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231705232405_))))
                                (let ((_tl231708232413_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231710232408_)))
                                      (_hd231709232411_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231710232408_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231708232413_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl231702232397_))
                                          (let ((_e231713232416_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl231702232397_))))
                                            (let ((_tl231711232421_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231713232416_)))
                                                  (_hd231712232419_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231713232416_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd231712232419_))
                                                  (let ((_e231716232424_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd231712232419_))))
                                                    (let ((_tl231714232429_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231716232424_)))
                                                          (_hd231715232427_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231716232424_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd231715232427_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd231715232427_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl231714232429_))
                          (let ((_e231719232432_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl231714232429_))))
                            (let ((_tl231717232437_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231719232432_)))
                                  (_hd231718232435_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231719232432_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl231717232437_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231711232421_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231669232309_))
                                          (___match239235239236_
                                           _e231665232288_
                                           _hd231664232291_
                                           _tl231663232293_
                                           _e231668232296_
                                           _hd231667232299_
                                           _tl231666232301_
                                           _e231671232304_
                                           _hd231670232307_
                                           _tl231669232309_
                                           _e231674232312_
                                           _hd231673232315_
                                           _tl231672232317_
                                           _e231677232320_
                                           _hd231676232323_
                                           _tl231675232325_
                                           _e231680232328_
                                           _hd231679232331_
                                           _tl231678232333_
                                           _e231683232336_
                                           _hd231682232339_
                                           _tl231681232341_
                                           _e231686232344_
                                           _hd231685232347_
                                           _tl231684232349_
                                           _e231689232352_
                                           _hd231688232355_
                                           _tl231687232357_
                                           _e231692232360_
                                           _hd231691232363_
                                           _tl231690232365_
                                           _e231695232368_
                                           _hd231694232371_
                                           _tl231693232373_
                                           _e231698232376_
                                           _hd231697232379_
                                           _tl231696232381_
                                           _e231701232384_
                                           _hd231700232387_
                                           _tl231699232389_
                                           _e231704232392_
                                           _hd231703232395_
                                           _tl231702232397_
                                           _e231707232400_
                                           _hd231706232403_
                                           _tl231705232405_
                                           _e231710232408_
                                           _hd231709232411_
                                           _tl231708232413_
                                           _e231713232416_
                                           _hd231712232419_
                                           _tl231711232421_
                                           _e231716232424_
                                           _hd231715232427_
                                           _tl231714232429_
                                           _e231719232432_
                                           _hd231718232435_
                                           _tl231717232437_)
                                          (___match239247239248_
                                           _e231665232288_
                                           _hd231664232291_
                                           _tl231663232293_
                                           _e231668232296_
                                           _hd231667232299_
                                           _tl231666232301_))
                                      (___match239247239248_
                                       _e231665232288_
                                       _hd231664232291_
                                       _tl231663232293_
                                       _e231668232296_
                                       _hd231667232299_
                                       _tl231666232301_))
                                  (___match239247239248_
                                   _e231665232288_
                                   _hd231664232291_
                                   _tl231663232293_
                                   _e231668232296_
                                   _hd231667232299_
                                   _tl231666232301_))))
                          (___match239247239248_
                           _e231665232288_
                           _hd231664232291_
                           _tl231663232293_
                           _e231668232296_
                           _hd231667232299_
                           _tl231666232301_))
                      (___match239247239248_
                       _e231665232288_
                       _hd231664232291_
                       _tl231663232293_
                       _e231668232296_
                       _hd231667232299_
                       _tl231666232301_))
                  (___match239247239248_
                   _e231665232288_
                   _hd231664232291_
                   _tl231663232293_
                   _e231668232296_
                   _hd231667232299_
                   _tl231666232301_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239247239248_
                                                   _e231665232288_
                                                   _hd231664232291_
                                                   _tl231663232293_
                                                   _e231668232296_
                                                   _hd231667232299_
                                                   _tl231666232301_))))
                                          (___match239247239248_
                                           _e231665232288_
                                           _hd231664232291_
                                           _tl231663232293_
                                           _e231668232296_
                                           _hd231667232299_
                                           _tl231666232301_))
                                      (___match239247239248_
                                       _e231665232288_
                                       _hd231664232291_
                                       _tl231663232293_
                                       _e231668232296_
                                       _hd231667232299_
                                       _tl231666232301_))))
                              (___match239247239248_
                               _e231665232288_
                               _hd231664232291_
                               _tl231663232293_
                               _e231668232296_
                               _hd231667232299_
                               _tl231666232301_))
                          (___match239247239248_
                           _e231665232288_
                           _hd231664232291_
                           _tl231663232293_
                           _e231668232296_
                           _hd231667232299_
                           _tl231666232301_))
                      (___match239247239248_
                       _e231665232288_
                       _hd231664232291_
                       _tl231663232293_
                       _e231668232296_
                       _hd231667232299_
                       _tl231666232301_))))
              (___match239247239248_
               _e231665232288_
               _hd231664232291_
               _tl231663232293_
               _e231668232296_
               _hd231667232299_
               _tl231666232301_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match239247239248_
                                               _e231665232288_
                                               _hd231664232291_
                                               _tl231663232293_
                                               _e231668232296_
                                               _hd231667232299_
                                               _tl231666232301_))
                                          (___match239247239248_
                                           _e231665232288_
                                           _hd231664232291_
                                           _tl231663232293_
                                           _e231668232296_
                                           _hd231667232299_
                                           _tl231666232301_))))
                                  (___match239247239248_
                                   _e231665232288_
                                   _hd231664232291_
                                   _tl231663232293_
                                   _e231668232296_
                                   _hd231667232299_
                                   _tl231666232301_))
                              (___match239247239248_
                               _e231665232288_
                               _hd231664232291_
                               _tl231663232293_
                               _e231668232296_
                               _hd231667232299_
                               _tl231666232301_))
                          (___match239247239248_
                           _e231665232288_
                           _hd231664232291_
                           _tl231663232293_
                           _e231668232296_
                           _hd231667232299_
                           _tl231666232301_))))
                  (___match239247239248_
                   _e231665232288_
                   _hd231664232291_
                   _tl231663232293_
                   _e231668232296_
                   _hd231667232299_
                   _tl231666232301_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239247239248_
                                                   _e231665232288_
                                                   _hd231664232291_
                                                   _tl231663232293_
                                                   _e231668232296_
                                                   _hd231667232299_
                                                   _tl231666232301_))
                                              (___match239247239248_
                                               _e231665232288_
                                               _hd231664232291_
                                               _tl231663232293_
                                               _e231668232296_
                                               _hd231667232299_
                                               _tl231666232301_))))
                                      (___match239247239248_
                                       _e231665232288_
                                       _hd231664232291_
                                       _tl231663232293_
                                       _e231668232296_
                                       _hd231667232299_
                                       _tl231666232301_))
                                  (___match239247239248_
                                   _e231665232288_
                                   _hd231664232291_
                                   _tl231663232293_
                                   _e231668232296_
                                   _hd231667232299_
                                   _tl231666232301_))
                              (___match239247239248_
                               _e231665232288_
                               _hd231664232291_
                               _tl231663232293_
                               _e231668232296_
                               _hd231667232299_
                               _tl231666232301_))))
                      (___match239247239248_
                       _e231665232288_
                       _hd231664232291_
                       _tl231663232293_
                       _e231668232296_
                       _hd231667232299_
                       _tl231666232301_))))
              (___match239247239248_
               _e231665232288_
               _hd231664232291_
               _tl231663232293_
               _e231668232296_
               _hd231667232299_
               _tl231666232301_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239247239248_
                                                   _e231665232288_
                                                   _hd231664232291_
                                                   _tl231663232293_
                                                   _e231668232296_
                                                   _hd231667232299_
                                                   _tl231666232301_))))
                                          (___match239247239248_
                                           _e231665232288_
                                           _hd231664232291_
                                           _tl231663232293_
                                           _e231668232296_
                                           _hd231667232299_
                                           _tl231666232301_))
                                      (___match239247239248_
                                       _e231665232288_
                                       _hd231664232291_
                                       _tl231663232293_
                                       _e231668232296_
                                       _hd231667232299_
                                       _tl231666232301_))
                                  (___match239247239248_
                                   _e231665232288_
                                   _hd231664232291_
                                   _tl231663232293_
                                   _e231668232296_
                                   _hd231667232299_
                                   _tl231666232301_))))
                          (___match239247239248_
                           _e231665232288_
                           _hd231664232291_
                           _tl231663232293_
                           _e231668232296_
                           _hd231667232299_
                           _tl231666232301_))))
                  (___match239247239248_
                   _e231665232288_
                   _hd231664232291_
                   _tl231663232293_
                   _e231668232296_
                   _hd231667232299_
                   _tl231666232301_))
              (___match239247239248_
               _e231665232288_
               _hd231664232291_
               _tl231663232293_
               _e231668232296_
               _hd231667232299_
               _tl231666232301_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239247239248_
                                                   _e231665232288_
                                                   _hd231664232291_
                                                   _tl231663232293_
                                                   _e231668232296_
                                                   _hd231667232299_
                                                   _tl231666232301_))))
                                          (___match239247239248_
                                           _e231665232288_
                                           _hd231664232291_
                                           _tl231663232293_
                                           _e231668232296_
                                           _hd231667232299_
                                           _tl231666232301_))))
                                  (___match239247239248_
                                   _e231665232288_
                                   _hd231664232291_
                                   _tl231663232293_
                                   _e231668232296_
                                   _hd231667232299_
                                   _tl231666232301_))))
                          (___match239381239382_
                           _e231665232288_
                           _hd231664232291_
                           _tl231663232293_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239062239063_))
                  (let ((_e231656232505_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239062239063_))))
                    (let ((_tl231654232510_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231656232505_)))
                          (_hd231655232508_
                           (let ()
                             (declare (not safe))
                             (##car _e231656232505_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L232513_ _tl231654232510_))
                            (___kont239064239065_ _L232513_))
                          (___match239089239090_
                           _e231656232505_
                           _hd231655232508_
                           _tl231654232510_))))
                  (let () (declare (not safe)) (_g231651231847_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx231600_)
        (letrec ((_clause-e231602_
                  (lambda (_form231643_)
                    (let ((__obj240735
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
                       __obj240735
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form231643_))
                       (if (let ((__tmp240802
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp240802))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form231643_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form231643_))
                               '#f)
                           '#f))
                      __obj240735))))
          (let* ((_g231604231614_
                  (lambda (_g231605231611_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g231605231611_))))
                 (_g231603231640_
                  (lambda (_g231605231617_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g231605231617_))
                        (let ((_e231609231619_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g231605231617_))))
                          (let ((_hd231608231622_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231609231619_)))
                                (_tl231607231624_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231609231619_))))
                            ((lambda (_L231627_)
                               (let ((_clauses231638_
                                      (map _clause-e231602_ _L231627_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses231638_)))
                             _tl231607231624_)))
                        (let ()
                          (declare (not safe))
                          (_g231604231614_ _g231605231617_))))))
            (declare (not safe))
            (_g231603231640_ _stx231600_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx231532_)
        (let* ((_g231534231551_
                (lambda (_g231535231548_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231535231548_))))
               (_g231533231597_
                (lambda (_g231535231554_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231535231554_))
                      (let ((_e231540231556_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231535231554_))))
                        (let ((_hd231539231559_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231540231556_)))
                              (_tl231538231561_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231540231556_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231538231561_))
                              (let ((_e231543231564_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231538231561_))))
                                (let ((_hd231542231567_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231543231564_)))
                                      (_tl231541231569_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231543231564_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231541231569_))
                                      (let ((_e231546231572_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231541231569_))))
                                        (let ((_hd231545231575_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231546231572_)))
                                              (_tl231544231577_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231546231572_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231544231577_))
                                              ((lambda (_L231580_ _L231581_)
                                                 (let ((__tmp240803
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L231580_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp240803
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd231545231575_
                                               _hd231542231567_)
                                              (let ()
                                                (declare (not safe))
                                                (_g231534231551_
                                                 _g231535231554_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231534231551_ _g231535231554_)))))
                              (let ()
                                (declare (not safe))
                                (_g231534231551_ _g231535231554_)))))
                      (let ()
                        (declare (not safe))
                        (_g231534231551_ _g231535231554_))))))
          (declare (not safe))
          (_g231533231597_ _stx231532_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx231437_)
        (let* ((___stx239390239391_ _stx231437_)
               (_g231440231460_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239390239391_)))))
          (let ((___kont239392239393_
                 (lambda (_L231504_ _L231505_)
                   (let ((_type-e231522231524_
                          (let ((__tmp240804
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L231505_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp240804
                             '#f))))
                     (if _type-e231522231524_
                         (let ((_type-e231527_ _type-e231522231524_))
                           (_type-e231527_ _stx231437_ _L231504_))
                         '#f))))
                (___kont239394239395_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239390239391_))
                (let ((_e231446231472_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239390239391_))))
                  (let ((_tl231444231477_
                         (let () (declare (not safe)) (##cdr _e231446231472_)))
                        (_hd231445231475_
                         (let ()
                           (declare (not safe))
                           (##car _e231446231472_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl231444231477_))
                        (let ((_e231449231480_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231444231477_))))
                          (let ((_tl231447231485_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231449231480_)))
                                (_hd231448231483_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231449231480_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231448231483_))
                                (let ((_e231452231488_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231448231483_))))
                                  (let ((_tl231450231493_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231452231488_)))
                                        (_hd231451231491_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231452231488_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231451231491_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd231451231491_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231450231493_))
                                                (let ((_e231455231496_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231450231493_))))
                                                  (let ((_tl231453231501_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231455231496_)))
                                                        (_hd231454231499_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231455231496_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231453231501_))
                                                        (___kont239392239393_
                                                         _tl231447231485_
                                                         _hd231454231499_)
                                                        (___kont239394239395_))))
                                                (___kont239394239395_))
                                            (___kont239394239395_))
                                        (___kont239394239395_))))
                                (___kont239394239395_))))
                        (___kont239394239395_))))
                (___kont239394239395_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx231386_)
        (let* ((_g231388231401_
                (lambda (_g231389231398_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231389231398_))))
               (_g231387231434_
                (lambda (_g231389231404_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231389231404_))
                      (let ((_e231393231406_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231389231404_))))
                        (let ((_hd231392231409_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231393231406_)))
                              (_tl231391231411_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231393231406_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231391231411_))
                              (let ((_e231396231414_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231391231411_))))
                                (let ((_hd231395231417_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231396231414_)))
                                      (_tl231394231419_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231396231414_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231394231419_))
                                      ((lambda (_L231422_)
                                         (let ((__tmp240805
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L231422_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp240805)))
                                       _hd231395231417_)
                                      (let ()
                                        (declare (not safe))
                                        (_g231388231401_ _g231389231404_)))))
                              (let ()
                                (declare (not safe))
                                (_g231388231401_ _g231389231404_)))))
                      (let ()
                        (declare (not safe))
                        (_g231388231401_ _g231389231404_))))))
          (declare (not safe))
          (_g231387231434_ _stx231386_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form230620_)
        (let* ((___stx239428239429_ _form230620_)
               (_g230625230782_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239428239429_)))))
          (let ((___kont239430239431_
                 (lambda (_L231306_ _L231307_ _L231308_) '#t))
                (___kont239436239437_
                 (lambda (_L231094_
                          _L231095_
                          _L231096_
                          _L231097_
                          _L231098_
                          _L231099_)
                   '#t))
                (___kont239442239443_
                 (lambda (_L230890_ _L230891_ _L230892_ _L230893_) '#t))
                (___kont239444239445_ (lambda () '#f)))
            (let* ((___match239569239570_
                    (lambda (_e230744230794_
                             _hd230743230797_
                             _tl230742230799_
                             _e230747230802_
                             _hd230746230805_
                             _tl230745230807_
                             _e230750230810_
                             _hd230749230813_
                             _tl230748230815_
                             _e230753230818_
                             _hd230752230821_
                             _tl230751230823_
                             _e230756230826_
                             _hd230755230829_
                             _tl230754230831_
                             _e230759230834_
                             _hd230758230837_
                             _tl230757230839_
                             _e230762230842_
                             _hd230761230845_
                             _tl230760230847_
                             _e230765230850_
                             _hd230764230853_
                             _tl230763230855_
                             _e230768230858_
                             _hd230767230861_
                             _tl230766230863_
                             _e230771230866_
                             _hd230770230869_
                             _tl230769230871_
                             _e230774230874_
                             _hd230773230877_
                             _tl230772230879_
                             _e230777230882_
                             _hd230776230885_
                             _tl230775230887_)
                      (let ((_L230890_ _hd230776230885_)
                            (_L230891_ _hd230767230861_)
                            (_L230892_ _hd230758230837_)
                            (_L230893_ _hd230743230797_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L230893_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L230892_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L230893_ _L230890_))
                                 (let ((__tmp240806
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L230891_
                                           _L230893_))))
                                   (declare (not safe))
                                   (not __tmp240806)))
                            (___kont239442239443_
                             _L230890_
                             _L230891_
                             _L230892_
                             _L230893_)
                            (___kont239444239445_)))))
                   (___match239541239542_
                    (lambda (_e230744230794_
                             _hd230743230797_
                             _tl230742230799_
                             _e230747230802_
                             _hd230746230805_
                             _tl230745230807_
                             _e230750230810_
                             _hd230749230813_
                             _tl230748230815_
                             _e230753230818_
                             _hd230752230821_
                             _tl230751230823_
                             _e230756230826_
                             _hd230755230829_
                             _tl230754230831_
                             _e230759230834_
                             _hd230758230837_
                             _tl230757230839_
                             _e230762230842_
                             _hd230761230845_
                             _tl230760230847_
                             _e230765230850_
                             _hd230764230853_
                             _tl230763230855_
                             _e230768230858_
                             _hd230767230861_
                             _tl230766230863_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230760230847_))
                          (let ((_e230771230866_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230760230847_))))
                            (let ((_tl230769230871_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230771230866_)))
                                  (_hd230770230869_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230771230866_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230770230869_))
                                  (let ((_e230774230874_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230770230869_))))
                                    (let ((_tl230772230879_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230774230874_)))
                                          (_hd230773230877_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230774230874_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd230773230877_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd230773230877_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230772230879_))
                                                  (let ((_e230777230882_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230772230879_))))
                                                    (let ((_tl230775230887_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230777230882_)))
                                                          (_hd230776230885_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230777230882_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230775230887_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl230769230871_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl230745230807_))
                          (___match239569239570_
                           _e230744230794_
                           _hd230743230797_
                           _tl230742230799_
                           _e230747230802_
                           _hd230746230805_
                           _tl230745230807_
                           _e230750230810_
                           _hd230749230813_
                           _tl230748230815_
                           _e230753230818_
                           _hd230752230821_
                           _tl230751230823_
                           _e230756230826_
                           _hd230755230829_
                           _tl230754230831_
                           _e230759230834_
                           _hd230758230837_
                           _tl230757230839_
                           _e230762230842_
                           _hd230761230845_
                           _tl230760230847_
                           _e230765230850_
                           _hd230764230853_
                           _tl230763230855_
                           _e230768230858_
                           _hd230767230861_
                           _tl230766230863_
                           _e230771230866_
                           _hd230770230869_
                           _tl230769230871_
                           _e230774230874_
                           _hd230773230877_
                           _tl230772230879_
                           _e230777230882_
                           _hd230776230885_
                           _tl230775230887_)
                          (___kont239444239445_))
                      (___kont239444239445_))
                  (___kont239444239445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239444239445_))
                                              (___kont239444239445_))
                                          (___kont239444239445_))))
                                  (___kont239444239445_))))
                          (___kont239444239445_))))
                   (___match239471239472_
                    (lambda (_e230680230934_
                             _hd230679230937_
                             _tl230678230939_
                             ___splice239438239439_
                             _target230681230942_
                             _tl230683230944_)
                      (letrec ((_loop230684230947_
                                (lambda (_hd230682230950_ _arg230688230952_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230682230950_))
                                      (let ((_e230685230955_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230682230950_))))
                                        (let ((_lp-tl230687230960_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230685230955_)))
                                              (_lp-hd230686230958_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230685230955_))))
                                          (let ((__tmp240821
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230686230958_
                                                         _arg230688230952_))))
                                            (declare (not safe))
                                            (_loop230684230947_
                                             _lp-tl230687230960_
                                             __tmp240821))))
                                      (let ((_arg230689230963_
                                             (reverse _arg230688230952_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230678230939_))
                                            (let ((_e230692230966_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230678230939_))))
                                              (let ((_tl230690230971_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230692230966_)))
                                                    (_hd230691230969_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230692230966_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230691230969_))
                                                    (let ((_e230695230974_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230691230969_))))
                                                      (let ((_tl230693230979_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230695230974_)))
                    (_hd230694230977_
                     (let () (declare (not safe)) (##car _e230695230974_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230694230977_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230694230977_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230693230979_))
                            (let ((_e230698230982_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230693230979_))))
                              (let ((_tl230696230987_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230698230982_)))
                                    (_hd230697230985_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230698230982_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230697230985_))
                                    (let ((_e230701230990_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230697230985_))))
                                      (let ((_tl230699230995_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230701230990_)))
                                            (_hd230700230993_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230701230990_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd230700230993_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd230700230993_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230699230995_))
                                                    (let ((_e230704230998_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230699230995_))))
                                                      (let ((_tl230702231003_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230704230998_)))
                    (_hd230703231001_
                     (let () (declare (not safe)) (##car _e230704230998_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl230702231003_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl230696230987_))
                        (let ((_e230707231006_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl230696230987_))))
                          (let ((_tl230705231011_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e230707231006_)))
                                (_hd230706231009_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e230707231006_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd230706231009_))
                                (let ((_e230710231014_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd230706231009_))))
                                  (let ((_tl230708231019_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230710231014_)))
                                        (_hd230709231017_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230710231014_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd230709231017_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd230709231017_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl230708231019_))
                                                (let ((_e230713231022_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl230708231019_))))
                                                  (let ((_tl230711231027_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230713231022_)))
                                                        (_hd230712231025_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230713231022_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl230711231027_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl230705231011_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl230705231011_))
                              '1)
                        (let ((___splice239440239441_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl230705231011_
                                  '1))))
                          (let ((_tl230716231032_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239440239441_ '1)))
                                (_target230714231030_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239440239441_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl230716231032_))
                                (let ((_e230725231035_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl230716231032_))))
                                  (let ((_tl230723231040_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230725231035_)))
                                        (_hd230724231038_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230725231035_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd230724231038_))
                                        (let ((_e230728231043_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd230724231038_))))
                                          (let ((_tl230726231048_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e230728231043_)))
                                                (_hd230727231046_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e230728231043_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd230727231046_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd230727231046_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl230726231048_))
                                                        (let ((_e230731231051_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl230726231048_))))
                  (let ((_tl230729231056_
                         (let () (declare (not safe)) (##cdr _e230731231051_)))
                        (_hd230730231054_
                         (let ()
                           (declare (not safe))
                           (##car _e230731231051_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl230729231056_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl230723231040_))
                            (letrec ((_loop230717231059_
                                      (lambda (_hd230715231062_
                                               _xarg230721231064_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd230715231062_))
                                            (let ((_e230718231067_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd230715231062_))))
                                              (let ((_lp-tl230720231072_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230718231067_)))
                                                    (_lp-hd230719231070_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230718231067_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd230719231070_))
                                                    (let ((_e230734231075_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd230719231070_))))
                                                      (let ((_tl230732231080_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230734231075_)))
                    (_hd230733231078_
                     (let () (declare (not safe)) (##car _e230734231075_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230733231078_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd230733231078_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230732231080_))
                            (let ((_e230737231083_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230732231080_))))
                              (let ((_tl230735231088_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230737231083_)))
                                    (_hd230736231086_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230737231083_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl230735231088_))
                                    (let ((__tmp240820
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd230736231086_
                                                   _xarg230721231064_))))
                                      (declare (not safe))
                                      (_loop230717231059_
                                       _lp-tl230720231072_
                                       __tmp240820))
                                    (___match239541239542_
                                     _e230680230934_
                                     _hd230679230937_
                                     _tl230678230939_
                                     _e230692230966_
                                     _hd230691230969_
                                     _tl230690230971_
                                     _e230695230974_
                                     _hd230694230977_
                                     _tl230693230979_
                                     _e230698230982_
                                     _hd230697230985_
                                     _tl230696230987_
                                     _e230701230990_
                                     _hd230700230993_
                                     _tl230699230995_
                                     _e230704230998_
                                     _hd230703231001_
                                     _tl230702231003_
                                     _e230707231006_
                                     _hd230706231009_
                                     _tl230705231011_
                                     _e230710231014_
                                     _hd230709231017_
                                     _tl230708231019_
                                     _e230713231022_
                                     _hd230712231025_
                                     _tl230711231027_))))
                            (___match239541239542_
                             _e230680230934_
                             _hd230679230937_
                             _tl230678230939_
                             _e230692230966_
                             _hd230691230969_
                             _tl230690230971_
                             _e230695230974_
                             _hd230694230977_
                             _tl230693230979_
                             _e230698230982_
                             _hd230697230985_
                             _tl230696230987_
                             _e230701230990_
                             _hd230700230993_
                             _tl230699230995_
                             _e230704230998_
                             _hd230703231001_
                             _tl230702231003_
                             _e230707231006_
                             _hd230706231009_
                             _tl230705231011_
                             _e230710231014_
                             _hd230709231017_
                             _tl230708231019_
                             _e230713231022_
                             _hd230712231025_
                             _tl230711231027_))
                        (___match239541239542_
                         _e230680230934_
                         _hd230679230937_
                         _tl230678230939_
                         _e230692230966_
                         _hd230691230969_
                         _tl230690230971_
                         _e230695230974_
                         _hd230694230977_
                         _tl230693230979_
                         _e230698230982_
                         _hd230697230985_
                         _tl230696230987_
                         _e230701230990_
                         _hd230700230993_
                         _tl230699230995_
                         _e230704230998_
                         _hd230703231001_
                         _tl230702231003_
                         _e230707231006_
                         _hd230706231009_
                         _tl230705231011_
                         _e230710231014_
                         _hd230709231017_
                         _tl230708231019_
                         _e230713231022_
                         _hd230712231025_
                         _tl230711231027_))
                    (___match239541239542_
                     _e230680230934_
                     _hd230679230937_
                     _tl230678230939_
                     _e230692230966_
                     _hd230691230969_
                     _tl230690230971_
                     _e230695230974_
                     _hd230694230977_
                     _tl230693230979_
                     _e230698230982_
                     _hd230697230985_
                     _tl230696230987_
                     _e230701230990_
                     _hd230700230993_
                     _tl230699230995_
                     _e230704230998_
                     _hd230703231001_
                     _tl230702231003_
                     _e230707231006_
                     _hd230706231009_
                     _tl230705231011_
                     _e230710231014_
                     _hd230709231017_
                     _tl230708231019_
                     _e230713231022_
                     _hd230712231025_
                     _tl230711231027_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239541239542_
                                                     _e230680230934_
                                                     _hd230679230937_
                                                     _tl230678230939_
                                                     _e230692230966_
                                                     _hd230691230969_
                                                     _tl230690230971_
                                                     _e230695230974_
                                                     _hd230694230977_
                                                     _tl230693230979_
                                                     _e230698230982_
                                                     _hd230697230985_
                                                     _tl230696230987_
                                                     _e230701230990_
                                                     _hd230700230993_
                                                     _tl230699230995_
                                                     _e230704230998_
                                                     _hd230703231001_
                                                     _tl230702231003_
                                                     _e230707231006_
                                                     _hd230706231009_
                                                     _tl230705231011_
                                                     _e230710231014_
                                                     _hd230709231017_
                                                     _tl230708231019_
                                                     _e230713231022_
                                                     _hd230712231025_
                                                     _tl230711231027_))))
                                            (let ((_xarg230722231091_
                                                   (reverse _xarg230721231064_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl230690230971_))
                                                  (let ((_L231094_
                                                         _hd230730231054_)
                                                        (_L231095_
                                                         _xarg230722231091_)
                                                        (_L231096_
                                                         _hd230712231025_)
                                                        (_L231097_
                                                         _hd230703231001_)
                                                        (_L231098_
                                                         _tl230683230944_)
                                                        (_L231099_
                                                         _arg230689230963_))
                                                    (if (and (let ((__tmp240818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp240819
                                   (lambda (_g231142231145_ _g231143231147_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g231142231145_
                                             _g231143231147_)))))
                              (declare (not safe))
                              (foldr1 __tmp240819 '() _L231099_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp240818))
                     (let () (declare (not safe)) (gx#identifier? _L231098_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L231097_ 'apply))
                     (fx= (length (let ((__tmp240816
                                         (lambda (_g231149231152_
                                                  _g231150231154_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g231149231152_
                                                   _g231150231154_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp240816 '() _L231099_)))
                          (length (let ((__tmp240817
                                         (lambda (_g231156231159_
                                                  _g231157231161_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g231156231159_
                                                   _g231157231161_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp240817 '() _L231095_))))
                     (let ((__tmp240814
                            (let ((__tmp240815
                                   (lambda (_g231163231166_ _g231164231168_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g231163231166_
                                             _g231164231168_)))))
                              (declare (not safe))
                              (foldr1 __tmp240815 '() _L231099_)))
                           (__tmp240812
                            (let ((__tmp240813
                                   (lambda (_g231170231173_ _g231171231175_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g231170231173_
                                             _g231171231175_)))))
                              (declare (not safe))
                              (foldr1 __tmp240813 '() _L231095_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp240814 __tmp240812))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L231098_ _L231094_))
                     (let ((__tmp240807
                            (let ((__tmp240811
                                   (lambda (_g231177231179_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g231177231179_
                                        _L231096_))))
                                  (__tmp240808
                                   (let ((__tmp240810
                                          (lambda (_g231181231184_
                                                   _g231182231186_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g231181231184_
                                                    _g231182231186_))))
                                         (__tmp240809
                                          (let ()
                                            (declare (not safe))
                                            (cons _L231098_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp240810
                                             __tmp240809
                                             _L231099_))))
                              (declare (not safe))
                              (find __tmp240811 __tmp240808))))
                       (declare (not safe))
                       (not __tmp240807)))
                (___kont239436239437_
                 _L231094_
                 _L231095_
                 _L231096_
                 _L231097_
                 _L231098_
                 _L231099_)
                (___match239541239542_
                 _e230680230934_
                 _hd230679230937_
                 _tl230678230939_
                 _e230692230966_
                 _hd230691230969_
                 _tl230690230971_
                 _e230695230974_
                 _hd230694230977_
                 _tl230693230979_
                 _e230698230982_
                 _hd230697230985_
                 _tl230696230987_
                 _e230701230990_
                 _hd230700230993_
                 _tl230699230995_
                 _e230704230998_
                 _hd230703231001_
                 _tl230702231003_
                 _e230707231006_
                 _hd230706231009_
                 _tl230705231011_
                 _e230710231014_
                 _hd230709231017_
                 _tl230708231019_
                 _e230713231022_
                 _hd230712231025_
                 _tl230711231027_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239541239542_
                                                   _e230680230934_
                                                   _hd230679230937_
                                                   _tl230678230939_
                                                   _e230692230966_
                                                   _hd230691230969_
                                                   _tl230690230971_
                                                   _e230695230974_
                                                   _hd230694230977_
                                                   _tl230693230979_
                                                   _e230698230982_
                                                   _hd230697230985_
                                                   _tl230696230987_
                                                   _e230701230990_
                                                   _hd230700230993_
                                                   _tl230699230995_
                                                   _e230704230998_
                                                   _hd230703231001_
                                                   _tl230702231003_
                                                   _e230707231006_
                                                   _hd230706231009_
                                                   _tl230705231011_
                                                   _e230710231014_
                                                   _hd230709231017_
                                                   _tl230708231019_
                                                   _e230713231022_
                                                   _hd230712231025_
                                                   _tl230711231027_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop230717231059_ _target230714231030_ '())))
                            (___match239541239542_
                             _e230680230934_
                             _hd230679230937_
                             _tl230678230939_
                             _e230692230966_
                             _hd230691230969_
                             _tl230690230971_
                             _e230695230974_
                             _hd230694230977_
                             _tl230693230979_
                             _e230698230982_
                             _hd230697230985_
                             _tl230696230987_
                             _e230701230990_
                             _hd230700230993_
                             _tl230699230995_
                             _e230704230998_
                             _hd230703231001_
                             _tl230702231003_
                             _e230707231006_
                             _hd230706231009_
                             _tl230705231011_
                             _e230710231014_
                             _hd230709231017_
                             _tl230708231019_
                             _e230713231022_
                             _hd230712231025_
                             _tl230711231027_))
                        (___match239541239542_
                         _e230680230934_
                         _hd230679230937_
                         _tl230678230939_
                         _e230692230966_
                         _hd230691230969_
                         _tl230690230971_
                         _e230695230974_
                         _hd230694230977_
                         _tl230693230979_
                         _e230698230982_
                         _hd230697230985_
                         _tl230696230987_
                         _e230701230990_
                         _hd230700230993_
                         _tl230699230995_
                         _e230704230998_
                         _hd230703231001_
                         _tl230702231003_
                         _e230707231006_
                         _hd230706231009_
                         _tl230705231011_
                         _e230710231014_
                         _hd230709231017_
                         _tl230708231019_
                         _e230713231022_
                         _hd230712231025_
                         _tl230711231027_))))
                (___match239541239542_
                 _e230680230934_
                 _hd230679230937_
                 _tl230678230939_
                 _e230692230966_
                 _hd230691230969_
                 _tl230690230971_
                 _e230695230974_
                 _hd230694230977_
                 _tl230693230979_
                 _e230698230982_
                 _hd230697230985_
                 _tl230696230987_
                 _e230701230990_
                 _hd230700230993_
                 _tl230699230995_
                 _e230704230998_
                 _hd230703231001_
                 _tl230702231003_
                 _e230707231006_
                 _hd230706231009_
                 _tl230705231011_
                 _e230710231014_
                 _hd230709231017_
                 _tl230708231019_
                 _e230713231022_
                 _hd230712231025_
                 _tl230711231027_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239541239542_
                                                     _e230680230934_
                                                     _hd230679230937_
                                                     _tl230678230939_
                                                     _e230692230966_
                                                     _hd230691230969_
                                                     _tl230690230971_
                                                     _e230695230974_
                                                     _hd230694230977_
                                                     _tl230693230979_
                                                     _e230698230982_
                                                     _hd230697230985_
                                                     _tl230696230987_
                                                     _e230701230990_
                                                     _hd230700230993_
                                                     _tl230699230995_
                                                     _e230704230998_
                                                     _hd230703231001_
                                                     _tl230702231003_
                                                     _e230707231006_
                                                     _hd230706231009_
                                                     _tl230705231011_
                                                     _e230710231014_
                                                     _hd230709231017_
                                                     _tl230708231019_
                                                     _e230713231022_
                                                     _hd230712231025_
                                                     _tl230711231027_))
                                                (___match239541239542_
                                                 _e230680230934_
                                                 _hd230679230937_
                                                 _tl230678230939_
                                                 _e230692230966_
                                                 _hd230691230969_
                                                 _tl230690230971_
                                                 _e230695230974_
                                                 _hd230694230977_
                                                 _tl230693230979_
                                                 _e230698230982_
                                                 _hd230697230985_
                                                 _tl230696230987_
                                                 _e230701230990_
                                                 _hd230700230993_
                                                 _tl230699230995_
                                                 _e230704230998_
                                                 _hd230703231001_
                                                 _tl230702231003_
                                                 _e230707231006_
                                                 _hd230706231009_
                                                 _tl230705231011_
                                                 _e230710231014_
                                                 _hd230709231017_
                                                 _tl230708231019_
                                                 _e230713231022_
                                                 _hd230712231025_
                                                 _tl230711231027_))))
                                        (___match239541239542_
                                         _e230680230934_
                                         _hd230679230937_
                                         _tl230678230939_
                                         _e230692230966_
                                         _hd230691230969_
                                         _tl230690230971_
                                         _e230695230974_
                                         _hd230694230977_
                                         _tl230693230979_
                                         _e230698230982_
                                         _hd230697230985_
                                         _tl230696230987_
                                         _e230701230990_
                                         _hd230700230993_
                                         _tl230699230995_
                                         _e230704230998_
                                         _hd230703231001_
                                         _tl230702231003_
                                         _e230707231006_
                                         _hd230706231009_
                                         _tl230705231011_
                                         _e230710231014_
                                         _hd230709231017_
                                         _tl230708231019_
                                         _e230713231022_
                                         _hd230712231025_
                                         _tl230711231027_))))
                                (___match239541239542_
                                 _e230680230934_
                                 _hd230679230937_
                                 _tl230678230939_
                                 _e230692230966_
                                 _hd230691230969_
                                 _tl230690230971_
                                 _e230695230974_
                                 _hd230694230977_
                                 _tl230693230979_
                                 _e230698230982_
                                 _hd230697230985_
                                 _tl230696230987_
                                 _e230701230990_
                                 _hd230700230993_
                                 _tl230699230995_
                                 _e230704230998_
                                 _hd230703231001_
                                 _tl230702231003_
                                 _e230707231006_
                                 _hd230706231009_
                                 _tl230705231011_
                                 _e230710231014_
                                 _hd230709231017_
                                 _tl230708231019_
                                 _e230713231022_
                                 _hd230712231025_
                                 _tl230711231027_))))
                        (___match239541239542_
                         _e230680230934_
                         _hd230679230937_
                         _tl230678230939_
                         _e230692230966_
                         _hd230691230969_
                         _tl230690230971_
                         _e230695230974_
                         _hd230694230977_
                         _tl230693230979_
                         _e230698230982_
                         _hd230697230985_
                         _tl230696230987_
                         _e230701230990_
                         _hd230700230993_
                         _tl230699230995_
                         _e230704230998_
                         _hd230703231001_
                         _tl230702231003_
                         _e230707231006_
                         _hd230706231009_
                         _tl230705231011_
                         _e230710231014_
                         _hd230709231017_
                         _tl230708231019_
                         _e230713231022_
                         _hd230712231025_
                         _tl230711231027_))
                    (___match239541239542_
                     _e230680230934_
                     _hd230679230937_
                     _tl230678230939_
                     _e230692230966_
                     _hd230691230969_
                     _tl230690230971_
                     _e230695230974_
                     _hd230694230977_
                     _tl230693230979_
                     _e230698230982_
                     _hd230697230985_
                     _tl230696230987_
                     _e230701230990_
                     _hd230700230993_
                     _tl230699230995_
                     _e230704230998_
                     _hd230703231001_
                     _tl230702231003_
                     _e230707231006_
                     _hd230706231009_
                     _tl230705231011_
                     _e230710231014_
                     _hd230709231017_
                     _tl230708231019_
                     _e230713231022_
                     _hd230712231025_
                     _tl230711231027_))
                (___kont239444239445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont239444239445_))
                                            (___kont239444239445_))
                                        (___kont239444239445_))))
                                (___kont239444239445_))))
                        (___kont239444239445_))
                    (___kont239444239445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239444239445_))
                                                (___kont239444239445_))
                                            (___kont239444239445_))))
                                    (___kont239444239445_))))
                            (___kont239444239445_))
                        (___kont239444239445_))
                    (___kont239444239445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239444239445_))))
                                            (___kont239444239445_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop230684230947_ _target230681230942_ '())))))
                   (___match239459239460_
                    (lambda (_e230632231194_
                             _hd230631231197_
                             _tl230630231199_
                             ___splice239432239433_
                             _target230633231202_
                             _tl230635231204_)
                      (letrec ((_loop230636231207_
                                (lambda (_hd230634231210_ _arg230640231212_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230634231210_))
                                      (let ((_e230637231215_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230634231210_))))
                                        (let ((_lp-tl230639231220_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230637231215_)))
                                              (_lp-hd230638231218_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230637231215_))))
                                          (let ((__tmp240835
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230638231218_
                                                         _arg230640231212_))))
                                            (declare (not safe))
                                            (_loop230636231207_
                                             _lp-tl230639231220_
                                             __tmp240835))))
                                      (let ((_arg230641231223_
                                             (reverse _arg230640231212_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230630231199_))
                                            (let ((_e230644231226_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230630231199_))))
                                              (let ((_tl230642231231_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230644231226_)))
                                                    (_hd230643231229_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230644231226_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230643231229_))
                                                    (let ((_e230647231234_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230643231229_))))
                                                      (let ((_tl230645231239_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230647231234_)))
                    (_hd230646231237_
                     (let () (declare (not safe)) (##car _e230647231234_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230646231237_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230646231237_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230645231239_))
                            (let ((_e230650231242_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230645231239_))))
                              (let ((_tl230648231247_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230650231242_)))
                                    (_hd230649231245_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230650231242_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230649231245_))
                                    (let ((_e230653231250_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230649231245_))))
                                      (let ((_tl230651231255_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230653231250_)))
                                            (_hd230652231253_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230653231250_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd230652231253_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd230652231253_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230651231255_))
                                                    (let ((_e230656231258_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230651231255_))))
                                                      (let ((_tl230654231263_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230656231258_)))
                    (_hd230655231261_
                     (let () (declare (not safe)) (##car _e230656231258_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl230654231263_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl230648231247_))
                        (let ((___splice239434239435_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl230648231247_
                                  '0))))
                          (let ((_tl230659231268_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239434239435_ '1)))
                                (_target230657231266_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239434239435_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl230659231268_))
                                (letrec ((_loop230660231271_
                                          (lambda (_hd230658231274_
                                                   _xarg230664231276_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd230658231274_))
                                                (let ((_e230661231279_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd230658231274_))))
                                                  (let ((_lp-tl230663231284_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230661231279_)))
                                                        (_lp-hd230662231282_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230661231279_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd230662231282_))
                                                        (let ((_e230668231287_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd230662231282_))))
                  (let ((_tl230666231292_
                         (let () (declare (not safe)) (##cdr _e230668231287_)))
                        (_hd230667231290_
                         (let ()
                           (declare (not safe))
                           (##car _e230668231287_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230667231290_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd230667231290_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl230666231292_))
                                (let ((_e230671231295_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl230666231292_))))
                                  (let ((_tl230669231300_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230671231295_)))
                                        (_hd230670231298_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230671231295_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl230669231300_))
                                        (let ((__tmp240834
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd230670231298_
                                                       _xarg230664231276_))))
                                          (declare (not safe))
                                          (_loop230660231271_
                                           _lp-tl230663231284_
                                           __tmp240834))
                                        (___match239471239472_
                                         _e230632231194_
                                         _hd230631231197_
                                         _tl230630231199_
                                         ___splice239432239433_
                                         _target230633231202_
                                         _tl230635231204_))))
                                (___match239471239472_
                                 _e230632231194_
                                 _hd230631231197_
                                 _tl230630231199_
                                 ___splice239432239433_
                                 _target230633231202_
                                 _tl230635231204_))
                            (___match239471239472_
                             _e230632231194_
                             _hd230631231197_
                             _tl230630231199_
                             ___splice239432239433_
                             _target230633231202_
                             _tl230635231204_))
                        (___match239471239472_
                         _e230632231194_
                         _hd230631231197_
                         _tl230630231199_
                         ___splice239432239433_
                         _target230633231202_
                         _tl230635231204_))))
                (___match239471239472_
                 _e230632231194_
                 _hd230631231197_
                 _tl230630231199_
                 ___splice239432239433_
                 _target230633231202_
                 _tl230635231204_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg230665231303_
                                                       (reverse _xarg230664231276_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230642231231_))
                                                      (let ((_L231306_
                                                             _xarg230665231303_)
                                                            (_L231307_
                                                             _hd230655231261_)
                                                            (_L231308_
                                                             _arg230641231223_))
                                                        (if (and (let ((__tmp240832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp240833
                                       (lambda (_g231336231339_
                                                _g231337231341_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g231336231339_
                                                 _g231337231341_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp240833 '() _L231308_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp240832))
                         (fx= (length (let ((__tmp240830
                                             (lambda (_g231343231346_
                                                      _g231344231348_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g231343231346_
                                                       _g231344231348_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp240830 '() _L231308_)))
                              (length (let ((__tmp240831
                                             (lambda (_g231350231353_
                                                      _g231351231355_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g231350231353_
                                                       _g231351231355_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp240831 '() _L231306_))))
                         (let ((__tmp240828
                                (let ((__tmp240829
                                       (lambda (_g231357231360_
                                                _g231358231362_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g231357231360_
                                                 _g231358231362_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp240829 '() _L231308_)))
                               (__tmp240826
                                (let ((__tmp240827
                                       (lambda (_g231364231367_
                                                _g231365231369_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g231364231367_
                                                 _g231365231369_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp240827 '() _L231306_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp240828
                                    __tmp240826))
                         (let ((__tmp240822
                                (let ((__tmp240825
                                       (lambda (_g231371231373_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g231371231373_
                                            _L231307_))))
                                      (__tmp240823
                                       (let ((__tmp240824
                                              (lambda (_g231375231378_
                                                       _g231376231380_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g231375231378_
                                                        _g231376231380_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp240824 '() _L231308_))))
                                  (declare (not safe))
                                  (find __tmp240825 __tmp240823))))
                           (declare (not safe))
                           (not __tmp240822)))
                    (___kont239430239431_ _L231306_ _L231307_ _L231308_)
                    (___match239471239472_
                     _e230632231194_
                     _hd230631231197_
                     _tl230630231199_
                     ___splice239432239433_
                     _target230633231202_
                     _tl230635231204_)))
              (___match239471239472_
               _e230632231194_
               _hd230631231197_
               _tl230630231199_
               ___splice239432239433_
               _target230633231202_
               _tl230635231204_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop230660231271_
                                     _target230657231266_
                                     '())))
                                (___match239471239472_
                                 _e230632231194_
                                 _hd230631231197_
                                 _tl230630231199_
                                 ___splice239432239433_
                                 _target230633231202_
                                 _tl230635231204_))))
                        (___match239471239472_
                         _e230632231194_
                         _hd230631231197_
                         _tl230630231199_
                         ___splice239432239433_
                         _target230633231202_
                         _tl230635231204_))
                    (___match239471239472_
                     _e230632231194_
                     _hd230631231197_
                     _tl230630231199_
                     ___splice239432239433_
                     _target230633231202_
                     _tl230635231204_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239471239472_
                                                     _e230632231194_
                                                     _hd230631231197_
                                                     _tl230630231199_
                                                     ___splice239432239433_
                                                     _target230633231202_
                                                     _tl230635231204_))
                                                (___match239471239472_
                                                 _e230632231194_
                                                 _hd230631231197_
                                                 _tl230630231199_
                                                 ___splice239432239433_
                                                 _target230633231202_
                                                 _tl230635231204_))
                                            (___match239471239472_
                                             _e230632231194_
                                             _hd230631231197_
                                             _tl230630231199_
                                             ___splice239432239433_
                                             _target230633231202_
                                             _tl230635231204_))))
                                    (___match239471239472_
                                     _e230632231194_
                                     _hd230631231197_
                                     _tl230630231199_
                                     ___splice239432239433_
                                     _target230633231202_
                                     _tl230635231204_))))
                            (___match239471239472_
                             _e230632231194_
                             _hd230631231197_
                             _tl230630231199_
                             ___splice239432239433_
                             _target230633231202_
                             _tl230635231204_))
                        (___match239471239472_
                         _e230632231194_
                         _hd230631231197_
                         _tl230630231199_
                         ___splice239432239433_
                         _target230633231202_
                         _tl230635231204_))
                    (___match239471239472_
                     _e230632231194_
                     _hd230631231197_
                     _tl230630231199_
                     ___splice239432239433_
                     _target230633231202_
                     _tl230635231204_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239471239472_
                                                     _e230632231194_
                                                     _hd230631231197_
                                                     _tl230630231199_
                                                     ___splice239432239433_
                                                     _target230633231202_
                                                     _tl230635231204_))))
                                            (___match239471239472_
                                             _e230632231194_
                                             _hd230631231197_
                                             _tl230630231199_
                                             ___splice239432239433_
                                             _target230633231202_
                                             _tl230635231204_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop230636231207_ _target230633231202_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239428239429_))
                  (let ((_e230632231194_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239428239429_))))
                    (let ((_tl230630231199_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230632231194_)))
                          (_hd230631231197_
                           (let ()
                             (declare (not safe))
                             (##car _e230632231194_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd230631231197_))
                          (let ((___splice239432239433_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd230631231197_
                                    '0))))
                            (let ((_tl230635231204_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice239432239433_ '1)))
                                  (_target230633231202_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice239432239433_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230635231204_))
                                  (___match239459239460_
                                   _e230632231194_
                                   _hd230631231197_
                                   _tl230630231199_
                                   ___splice239432239433_
                                   _target230633231202_
                                   _tl230635231204_)
                                  (___match239471239472_
                                   _e230632231194_
                                   _hd230631231197_
                                   _tl230630231199_
                                   ___splice239432239433_
                                   _target230633231202_
                                   _tl230635231204_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230630231199_))
                              (let ((_e230747230802_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230630231199_))))
                                (let ((_tl230745230807_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230747230802_)))
                                      (_hd230746230805_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230747230802_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230746230805_))
                                      (let ((_e230750230810_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230746230805_))))
                                        (let ((_tl230748230815_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230750230810_)))
                                              (_hd230749230813_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230750230810_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd230749230813_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd230749230813_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl230748230815_))
                                                      (let ((_e230753230818_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl230748230815_))))
                (let ((_tl230751230823_
                       (let () (declare (not safe)) (##cdr _e230753230818_)))
                      (_hd230752230821_
                       (let () (declare (not safe)) (##car _e230753230818_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230752230821_))
                      (let ((_e230756230826_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230752230821_))))
                        (let ((_tl230754230831_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230756230826_)))
                              (_hd230755230829_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230756230826_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd230755230829_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd230755230829_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230754230831_))
                                      (let ((_e230759230834_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230754230831_))))
                                        (let ((_tl230757230839_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230759230834_)))
                                              (_hd230758230837_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230759230834_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230757230839_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230751230823_))
                                                  (let ((_e230762230842_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230751230823_))))
                                                    (let ((_tl230760230847_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230762230842_)))
                                                          (_hd230761230845_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230762230842_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd230761230845_))
                                                          (let ((_e230765230850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd230761230845_))))
                    (let ((_tl230763230855_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230765230850_)))
                          (_hd230764230853_
                           (let ()
                             (declare (not safe))
                             (##car _e230765230850_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd230764230853_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd230764230853_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230763230855_))
                                  (let ((_e230768230858_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230763230855_))))
                                    (let ((_tl230766230863_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230768230858_)))
                                          (_hd230767230861_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230768230858_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230766230863_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl230760230847_))
                                              (let ((_e230771230866_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl230760230847_))))
                                                (let ((_tl230769230871_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230771230866_)))
                                                      (_hd230770230869_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230771230866_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd230770230869_))
                                                      (let ((_e230774230874_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd230770230869_))))
                (let ((_tl230772230879_
                       (let () (declare (not safe)) (##cdr _e230774230874_)))
                      (_hd230773230877_
                       (let () (declare (not safe)) (##car _e230774230874_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd230773230877_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd230773230877_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230772230879_))
                              (let ((_e230777230882_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230772230879_))))
                                (let ((_tl230775230887_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230777230882_)))
                                      (_hd230776230885_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230777230882_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230775230887_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230769230871_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230745230807_))
                                              (___match239569239570_
                                               _e230632231194_
                                               _hd230631231197_
                                               _tl230630231199_
                                               _e230747230802_
                                               _hd230746230805_
                                               _tl230745230807_
                                               _e230750230810_
                                               _hd230749230813_
                                               _tl230748230815_
                                               _e230753230818_
                                               _hd230752230821_
                                               _tl230751230823_
                                               _e230756230826_
                                               _hd230755230829_
                                               _tl230754230831_
                                               _e230759230834_
                                               _hd230758230837_
                                               _tl230757230839_
                                               _e230762230842_
                                               _hd230761230845_
                                               _tl230760230847_
                                               _e230765230850_
                                               _hd230764230853_
                                               _tl230763230855_
                                               _e230768230858_
                                               _hd230767230861_
                                               _tl230766230863_
                                               _e230771230866_
                                               _hd230770230869_
                                               _tl230769230871_
                                               _e230774230874_
                                               _hd230773230877_
                                               _tl230772230879_
                                               _e230777230882_
                                               _hd230776230885_
                                               _tl230775230887_)
                                              (___kont239444239445_))
                                          (___kont239444239445_))
                                      (___kont239444239445_))))
                              (___kont239444239445_))
                          (___kont239444239445_))
                      (___kont239444239445_))))
              (___kont239444239445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont239444239445_))
                                          (___kont239444239445_))))
                                  (___kont239444239445_))
                              (___kont239444239445_))
                          (___kont239444239445_))))
                  (___kont239444239445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239444239445_))
                                              (___kont239444239445_))))
                                      (___kont239444239445_))
                                  (___kont239444239445_))
                              (___kont239444239445_))))
                      (___kont239444239445_))))
              (___kont239444239445_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239444239445_))
                                              (___kont239444239445_))))
                                      (___kont239444239445_))))
                              (___kont239444239445_)))))
                  (___kont239444239445_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form230088_)
        (let* ((___stx239572239573_ _form230088_)
               (_g230092230216_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239572239573_)))))
          (let ((___kont239574239575_
                 (lambda (_L230586_ _L230587_ _L230588_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L230587_))))
                (___kont239580239581_
                 (lambda (_L230434_ _L230435_ _L230436_ _L230437_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L230434_))))
                (___kont239584239585_
                 (lambda (_L230301_ _L230302_ _L230303_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L230301_)))))
            (let* ((___match239681239682_
                    (lambda (_e230184230221_
                             _hd230183230224_
                             _tl230182230226_
                             _e230187230229_
                             _hd230186230232_
                             _tl230185230234_
                             _e230190230237_
                             _hd230189230240_
                             _tl230188230242_
                             _e230193230245_
                             _hd230192230248_
                             _tl230191230250_
                             _e230196230253_
                             _hd230195230256_
                             _tl230194230258_
                             _e230199230261_
                             _hd230198230264_
                             _tl230197230266_
                             _e230202230269_
                             _hd230201230272_
                             _tl230200230274_
                             _e230205230277_
                             _hd230204230280_
                             _tl230203230282_
                             _e230208230285_
                             _hd230207230288_
                             _tl230206230290_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230200230274_))
                          (let ((_e230211230293_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230200230274_))))
                            (let ((_tl230209230298_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230211230293_)))
                                  (_hd230210230296_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230211230293_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230209230298_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230185230234_))
                                      (___kont239584239585_
                                       _hd230207230288_
                                       _hd230198230264_
                                       _hd230183230224_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230092230216_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230092230216_)))))
                          (let () (declare (not safe)) (_g230092230216_)))))
                   (___match239611239612_
                    (lambda (_e230145230338_
                             _hd230144230341_
                             _tl230143230343_
                             ___splice239582239583_
                             _target230146230346_
                             _tl230148230348_)
                      (letrec ((_loop230149230351_
                                (lambda (_hd230147230354_ _arg230153230356_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230147230354_))
                                      (let ((_e230150230359_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230147230354_))))
                                        (let ((_lp-tl230152230364_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230150230359_)))
                                              (_lp-hd230151230362_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230150230359_))))
                                          (let ((__tmp240836
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230151230362_
                                                         _arg230153230356_))))
                                            (declare (not safe))
                                            (_loop230149230351_
                                             _lp-tl230152230364_
                                             __tmp240836))))
                                      (let ((_arg230154230367_
                                             (reverse _arg230153230356_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230143230343_))
                                            (let ((_e230157230370_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230143230343_))))
                                              (let ((_tl230155230375_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230157230370_)))
                                                    (_hd230156230373_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230157230370_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230156230373_))
                                                    (let ((_e230160230378_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230156230373_))))
                                                      (let ((_tl230158230383_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230160230378_)))
                    (_hd230159230381_
                     (let () (declare (not safe)) (##car _e230160230378_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230159230381_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230159230381_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230158230383_))
                            (let ((_e230163230386_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230158230383_))))
                              (let ((_tl230161230391_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230163230386_)))
                                    (_hd230162230389_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230163230386_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230162230389_))
                                    (let ((_e230166230394_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230162230389_))))
                                      (let ((_tl230164230399_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230166230394_)))
                                            (_hd230165230397_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230166230394_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd230165230397_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd230165230397_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230164230399_))
                                                    (let ((_e230169230402_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230164230399_))))
                                                      (let ((_tl230167230407_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230169230402_)))
                    (_hd230168230405_
                     (let () (declare (not safe)) (##car _e230169230402_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl230167230407_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl230161230391_))
                        (let ((_e230172230410_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl230161230391_))))
                          (let ((_tl230170230415_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e230172230410_)))
                                (_hd230171230413_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e230172230410_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd230171230413_))
                                (let ((_e230175230418_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd230171230413_))))
                                  (let ((_tl230173230423_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230175230418_)))
                                        (_hd230174230421_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230175230418_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd230174230421_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd230174230421_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl230173230423_))
                                                (let ((_e230178230426_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl230173230423_))))
                                                  (let ((_tl230176230431_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230178230426_)))
                                                        (_hd230177230429_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230178230426_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl230176230431_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl230155230375_))
                                                            (___kont239580239581_
                                                             _hd230177230429_
                                                             _hd230168230405_
                                                             _tl230148230348_
                                                             _arg230154230367_)
                                                            (___match239681239682_
                                                             _e230145230338_
                                                             _hd230144230341_
                                                             _tl230143230343_
                                                             _e230157230370_
                                                             _hd230156230373_
                                                             _tl230155230375_
                                                             _e230160230378_
                                                             _hd230159230381_
                                                             _tl230158230383_
                                                             _e230163230386_
                                                             _hd230162230389_
                                                             _tl230161230391_
                                                             _e230166230394_
                                                             _hd230165230397_
                                                             _tl230164230399_
                                                             _e230169230402_
                                                             _hd230168230405_
                                                             _tl230167230407_
                                                             _e230172230410_
                                                             _hd230171230413_
                                                             _tl230170230415_
                                                             _e230175230418_
                                                             _hd230174230421_
                                                             _tl230173230423_
                                                             _e230178230426_
                                                             _hd230177230429_
                                                             _tl230176230431_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g230092230216_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230092230216_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g230092230216_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g230092230216_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g230092230216_)))))
                        (let () (declare (not safe)) (_g230092230216_)))
                    (let () (declare (not safe)) (_g230092230216_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g230092230216_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230092230216_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g230092230216_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g230092230216_)))))
                            (let () (declare (not safe)) (_g230092230216_)))
                        (let () (declare (not safe)) (_g230092230216_)))
                    (let () (declare (not safe)) (_g230092230216_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g230092230216_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g230092230216_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop230149230351_ _target230146230346_ '())))))
                   (___match239599239600_
                    (lambda (_e230099230474_
                             _hd230098230477_
                             _tl230097230479_
                             ___splice239576239577_
                             _target230100230482_
                             _tl230102230484_)
                      (letrec ((_loop230103230487_
                                (lambda (_hd230101230490_ _arg230107230492_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230101230490_))
                                      (let ((_e230104230495_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230101230490_))))
                                        (let ((_lp-tl230106230500_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230104230495_)))
                                              (_lp-hd230105230498_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230104230495_))))
                                          (let ((__tmp240838
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230105230498_
                                                         _arg230107230492_))))
                                            (declare (not safe))
                                            (_loop230103230487_
                                             _lp-tl230106230500_
                                             __tmp240838))))
                                      (let ((_arg230108230503_
                                             (reverse _arg230107230492_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230097230479_))
                                            (let ((_e230111230506_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230097230479_))))
                                              (let ((_tl230109230511_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230111230506_)))
                                                    (_hd230110230509_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230111230506_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230110230509_))
                                                    (let ((_e230114230514_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230110230509_))))
                                                      (let ((_tl230112230519_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230114230514_)))
                    (_hd230113230517_
                     (let () (declare (not safe)) (##car _e230114230514_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230113230517_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230113230517_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230112230519_))
                            (let ((_e230117230522_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230112230519_))))
                              (let ((_tl230115230527_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230117230522_)))
                                    (_hd230116230525_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230117230522_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230116230525_))
                                    (let ((_e230120230530_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230116230525_))))
                                      (let ((_tl230118230535_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230120230530_)))
                                            (_hd230119230533_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230120230530_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd230119230533_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd230119230533_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230118230535_))
                                                    (let ((_e230123230538_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230118230535_))))
                                                      (let ((_tl230121230543_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230123230538_)))
                    (_hd230122230541_
                     (let () (declare (not safe)) (##car _e230123230538_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl230121230543_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl230115230527_))
                        (let ((___splice239578239579_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl230115230527_
                                  '0))))
                          (let ((_tl230126230548_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239578239579_ '1)))
                                (_target230124230546_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239578239579_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl230126230548_))
                                (letrec ((_loop230127230551_
                                          (lambda (_hd230125230554_
                                                   _xarg230131230556_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd230125230554_))
                                                (let ((_e230128230559_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd230125230554_))))
                                                  (let ((_lp-tl230130230564_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230128230559_)))
                                                        (_lp-hd230129230562_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230128230559_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd230129230562_))
                                                        (let ((_e230135230567_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd230129230562_))))
                  (let ((_tl230133230572_
                         (let () (declare (not safe)) (##cdr _e230135230567_)))
                        (_hd230134230570_
                         (let ()
                           (declare (not safe))
                           (##car _e230135230567_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230134230570_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd230134230570_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl230133230572_))
                                (let ((_e230138230575_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl230133230572_))))
                                  (let ((_tl230136230580_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230138230575_)))
                                        (_hd230137230578_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230138230575_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl230136230580_))
                                        (let ((__tmp240837
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd230137230578_
                                                       _xarg230131230556_))))
                                          (declare (not safe))
                                          (_loop230127230551_
                                           _lp-tl230130230564_
                                           __tmp240837))
                                        (___match239611239612_
                                         _e230099230474_
                                         _hd230098230477_
                                         _tl230097230479_
                                         ___splice239576239577_
                                         _target230100230482_
                                         _tl230102230484_))))
                                (___match239611239612_
                                 _e230099230474_
                                 _hd230098230477_
                                 _tl230097230479_
                                 ___splice239576239577_
                                 _target230100230482_
                                 _tl230102230484_))
                            (___match239611239612_
                             _e230099230474_
                             _hd230098230477_
                             _tl230097230479_
                             ___splice239576239577_
                             _target230100230482_
                             _tl230102230484_))
                        (___match239611239612_
                         _e230099230474_
                         _hd230098230477_
                         _tl230097230479_
                         ___splice239576239577_
                         _target230100230482_
                         _tl230102230484_))))
                (___match239611239612_
                 _e230099230474_
                 _hd230098230477_
                 _tl230097230479_
                 ___splice239576239577_
                 _target230100230482_
                 _tl230102230484_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg230132230583_
                                                       (reverse _xarg230131230556_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230109230511_))
                                                      (___kont239574239575_
                                                       _xarg230132230583_
                                                       _hd230122230541_
                                                       _arg230108230503_)
                                                      (___match239611239612_
                                                       _e230099230474_
                                                       _hd230098230477_
                                                       _tl230097230479_
                                                       ___splice239576239577_
                                                       _target230100230482_
                                                       _tl230102230484_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop230127230551_
                                     _target230124230546_
                                     '())))
                                (___match239611239612_
                                 _e230099230474_
                                 _hd230098230477_
                                 _tl230097230479_
                                 ___splice239576239577_
                                 _target230100230482_
                                 _tl230102230484_))))
                        (___match239611239612_
                         _e230099230474_
                         _hd230098230477_
                         _tl230097230479_
                         ___splice239576239577_
                         _target230100230482_
                         _tl230102230484_))
                    (___match239611239612_
                     _e230099230474_
                     _hd230098230477_
                     _tl230097230479_
                     ___splice239576239577_
                     _target230100230482_
                     _tl230102230484_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239611239612_
                                                     _e230099230474_
                                                     _hd230098230477_
                                                     _tl230097230479_
                                                     ___splice239576239577_
                                                     _target230100230482_
                                                     _tl230102230484_))
                                                (___match239611239612_
                                                 _e230099230474_
                                                 _hd230098230477_
                                                 _tl230097230479_
                                                 ___splice239576239577_
                                                 _target230100230482_
                                                 _tl230102230484_))
                                            (___match239611239612_
                                             _e230099230474_
                                             _hd230098230477_
                                             _tl230097230479_
                                             ___splice239576239577_
                                             _target230100230482_
                                             _tl230102230484_))))
                                    (___match239611239612_
                                     _e230099230474_
                                     _hd230098230477_
                                     _tl230097230479_
                                     ___splice239576239577_
                                     _target230100230482_
                                     _tl230102230484_))))
                            (___match239611239612_
                             _e230099230474_
                             _hd230098230477_
                             _tl230097230479_
                             ___splice239576239577_
                             _target230100230482_
                             _tl230102230484_))
                        (___match239611239612_
                         _e230099230474_
                         _hd230098230477_
                         _tl230097230479_
                         ___splice239576239577_
                         _target230100230482_
                         _tl230102230484_))
                    (___match239611239612_
                     _e230099230474_
                     _hd230098230477_
                     _tl230097230479_
                     ___splice239576239577_
                     _target230100230482_
                     _tl230102230484_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239611239612_
                                                     _e230099230474_
                                                     _hd230098230477_
                                                     _tl230097230479_
                                                     ___splice239576239577_
                                                     _target230100230482_
                                                     _tl230102230484_))))
                                            (___match239611239612_
                                             _e230099230474_
                                             _hd230098230477_
                                             _tl230097230479_
                                             ___splice239576239577_
                                             _target230100230482_
                                             _tl230102230484_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop230103230487_ _target230100230482_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239572239573_))
                  (let ((_e230099230474_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239572239573_))))
                    (let ((_tl230097230479_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230099230474_)))
                          (_hd230098230477_
                           (let ()
                             (declare (not safe))
                             (##car _e230099230474_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd230098230477_))
                          (let ((___splice239576239577_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd230098230477_
                                    '0))))
                            (let ((_tl230102230484_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice239576239577_ '1)))
                                  (_target230100230482_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice239576239577_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230102230484_))
                                  (___match239599239600_
                                   _e230099230474_
                                   _hd230098230477_
                                   _tl230097230479_
                                   ___splice239576239577_
                                   _target230100230482_
                                   _tl230102230484_)
                                  (___match239611239612_
                                   _e230099230474_
                                   _hd230098230477_
                                   _tl230097230479_
                                   ___splice239576239577_
                                   _target230100230482_
                                   _tl230102230484_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230097230479_))
                              (let ((_e230187230229_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230097230479_))))
                                (let ((_tl230185230234_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230187230229_)))
                                      (_hd230186230232_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230187230229_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230186230232_))
                                      (let ((_e230190230237_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230186230232_))))
                                        (let ((_tl230188230242_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230190230237_)))
                                              (_hd230189230240_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230190230237_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd230189230240_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd230189230240_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl230188230242_))
                                                      (let ((_e230193230245_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl230188230242_))))
                (let ((_tl230191230250_
                       (let () (declare (not safe)) (##cdr _e230193230245_)))
                      (_hd230192230248_
                       (let () (declare (not safe)) (##car _e230193230245_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230192230248_))
                      (let ((_e230196230253_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230192230248_))))
                        (let ((_tl230194230258_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230196230253_)))
                              (_hd230195230256_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230196230253_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd230195230256_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd230195230256_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230194230258_))
                                      (let ((_e230199230261_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230194230258_))))
                                        (let ((_tl230197230266_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230199230261_)))
                                              (_hd230198230264_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230199230261_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230197230266_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230191230250_))
                                                  (let ((_e230202230269_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230191230250_))))
                                                    (let ((_tl230200230274_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230202230269_)))
                                                          (_hd230201230272_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230202230269_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd230201230272_))
                                                          (let ((_e230205230277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd230201230272_))))
                    (let ((_tl230203230282_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230205230277_)))
                          (_hd230204230280_
                           (let ()
                             (declare (not safe))
                             (##car _e230205230277_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd230204230280_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd230204230280_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230203230282_))
                                  (let ((_e230208230285_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230203230282_))))
                                    (let ((_tl230206230290_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230208230285_)))
                                          (_hd230207230288_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230208230285_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230206230290_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl230200230274_))
                                              (let ((_e230211230293_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl230200230274_))))
                                                (let ((_tl230209230298_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230211230293_)))
                                                      (_hd230210230296_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230211230293_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230209230298_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230185230234_))
                                                          (___kont239584239585_
                                                           _hd230207230288_
                                                           _hd230198230264_
                                                           _hd230098230477_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g230092230216_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g230092230216_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g230092230216_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g230092230216_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230092230216_)))
                              (let () (declare (not safe)) (_g230092230216_)))
                          (let () (declare (not safe)) (_g230092230216_)))))
                  (let () (declare (not safe)) (_g230092230216_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230092230216_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230092230216_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230092230216_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230092230216_)))
                              (let ()
                                (declare (not safe))
                                (_g230092230216_)))))
                      (let () (declare (not safe)) (_g230092230216_)))))
              (let () (declare (not safe)) (_g230092230216_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230092230216_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230092230216_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230092230216_)))))
                              (let ()
                                (declare (not safe))
                                (_g230092230216_))))))
                  (let () (declare (not safe)) (_g230092230216_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form229892_)
        (let* ((_g229894229908_
                (lambda (_g229895229905_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229895229905_))))
               (_g229893230085_
                (lambda (_g229895229911_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229895229911_))
                      (let ((_e229900229913_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229895229911_))))
                        (let ((_hd229899229916_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229900229913_)))
                              (_tl229898229918_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229900229913_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229898229918_))
                              (let ((_e229903229921_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229898229918_))))
                                (let ((_hd229902229924_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229903229921_)))
                                      (_tl229901229926_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229903229921_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229901229926_))
                                      ((lambda (_L229929_ _L229930_)
                                         (let* ((___stx239694239695_ _L229930_)
                                                (_g229945229973_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx239694239695_)))))
                                           (let ((___kont239696239697_
                                                  (lambda (_L230064_)
                                                    (length (let ((__tmp240839
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g230074230077_ _g230075230079_)
                             (let ()
                               (declare (not safe))
                               (cons _g230074230077_ _g230075230079_)))))
                      (declare (not safe))
                      (foldr1 __tmp240839 '() _L230064_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont239700239701_
                                                  (lambda (_L230015_ _L230016_)
                                                    (let ((__tmp240840
                                                           (length (let ((__tmp240841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g230027230030_ _g230028230032_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g230027230030_
                                            _g230028230032_)))))
                             (declare (not safe))
                             (foldr1 __tmp240841 '() _L230016_)))))
              (declare (not safe))
              (cons __tmp240840 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont239704239705_
                                                  (lambda (_L229978_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match239719239720_
                                                     (lambda (___splice239702239703_
                                                              _target229959229991_
                                                              _tl229961229993_)
                                                       (letrec ((_loop229962229996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd229960229999_ _arg229966230001_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd229960229999_))
                               (let ((_e229963230004_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd229960229999_))))
                                 (let ((_lp-tl229965230009_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e229963230004_)))
                                       (_lp-hd229964230007_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e229963230004_))))
                                   (let ((__tmp240842
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd229964230007_
                                                  _arg229966230001_))))
                                     (declare (not safe))
                                     (_loop229962229996_
                                      _lp-tl229965230009_
                                      __tmp240842))))
                               (let ((_arg229967230012_
                                      (reverse _arg229966230001_)))
                                 (___kont239700239701_
                                  _tl229961229993_
                                  _arg229967230012_))))))
                 (let ()
                   (declare (not safe))
                   (_loop229962229996_ _target229959229991_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239713239714_
                                                     (lambda (___splice239698239699_
                                                              _target229948230040_
                                                              _tl229950230042_)
                                                       (letrec ((_loop229951230045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd229949230048_ _arg229955230050_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd229949230048_))
                               (let ((_e229952230053_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd229949230048_))))
                                 (let ((_lp-tl229954230058_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e229952230053_)))
                                       (_lp-hd229953230056_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e229952230053_))))
                                   (let ((__tmp240843
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd229953230056_
                                                  _arg229955230050_))))
                                     (declare (not safe))
                                     (_loop229951230045_
                                      _lp-tl229954230058_
                                      __tmp240843))))
                               (let ((_arg229956230061_
                                      (reverse _arg229955230050_)))
                                 (___kont239696239697_ _arg229956230061_))))))
                 (let ()
                   (declare (not safe))
                   (_loop229951230045_ _target229948230040_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx239694239695_))
                                                   (let ((___splice239698239699_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx239694239695_
                                                             '0))))
                                                     (let ((_tl229950230042_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice239698239699_
                                                               '1)))
                                                           (_target229948230040_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice239698239699_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl229950230042_))
                                                           (___match239713239714_
                                                            ___splice239698239699_
                                                            _target229948230040_
                                                            _tl229950230042_)
                                                           (___match239719239720_
                                                            ___splice239698239699_
                                                            _target229948230040_
                                                            _tl229950230042_))))
                                                   (___kont239704239705_
                                                    ___stx239694239695_))))))
                                       _hd229902229924_
                                       _hd229899229916_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229894229908_ _g229895229911_)))))
                              (let ()
                                (declare (not safe))
                                (_g229894229908_ _g229895229911_)))))
                      (let ()
                        (declare (not safe))
                        (_g229894229908_ _g229895229911_))))))
          (declare (not safe))
          (_g229893230085_ _form229892_))))
    (define gxc#lambda-expr?
      (lambda (_expr229845_)
        (let* ((___stx239722239723_ _expr229845_)
               (_g229848229858_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239722239723_)))))
          (let ((___kont239724239725_ (lambda (_L229878_) '#t))
                (___kont239726239727_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239722239723_))
                (let ((_e229853229870_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239722239723_))))
                  (let ((_tl229851229875_
                         (let () (declare (not safe)) (##cdr _e229853229870_)))
                        (_hd229852229873_
                         (let ()
                           (declare (not safe))
                           (##car _e229853229870_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229852229873_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd229852229873_))
                            (___kont239724239725_ _tl229851229875_)
                            (___kont239726239727_))
                        (___kont239726239727_))))
                (___kont239726239727_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr229798_)
        (let* ((___stx239740239741_ _expr229798_)
               (_g229801229811_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239740239741_)))))
          (let ((___kont239742239743_ (lambda (_L229831_) '#t))
                (___kont239744239745_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239740239741_))
                (let ((_e229806229823_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239740239741_))))
                  (let ((_tl229804229828_
                         (let () (declare (not safe)) (##cdr _e229806229823_)))
                        (_hd229805229826_
                         (let ()
                           (declare (not safe))
                           (##car _e229806229823_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229805229826_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd229805229826_))
                            (___kont239742239743_ _tl229804229828_)
                            (___kont239744239745_))
                        (___kont239744239745_))))
                (___kont239744239745_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr229667_)
        (let* ((___stx239758239759_ _expr229667_)
               (_g229670229700_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239758239759_)))))
          (let ((___kont239760239761_
                 (lambda (_L229768_ _L229769_ _L229770_)
                   (if (let () (declare (not safe)) (gx#identifier? _L229770_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L229769_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L229768_))
                           '#f)
                       '#f)))
                (___kont239762239763_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239758239759_))
                (let ((_e229677229712_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239758239759_))))
                  (let ((_tl229675229717_
                         (let () (declare (not safe)) (##cdr _e229677229712_)))
                        (_hd229676229715_
                         (let ()
                           (declare (not safe))
                           (##car _e229677229712_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229676229715_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd229676229715_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229675229717_))
                                (let ((_e229680229720_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229675229717_))))
                                  (let ((_tl229678229725_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229680229720_)))
                                        (_hd229679229723_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229680229720_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd229679229723_))
                                        (let ((_e229683229728_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd229679229723_))))
                                          (let ((_tl229681229733_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229683229728_)))
                                                (_hd229682229731_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229683229728_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd229682229731_))
                                                (let ((_e229686229736_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd229682229731_))))
                                                  (let ((_tl229684229741_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229686229736_)))
                                                        (_hd229685229739_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229686229736_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229685229739_))
                                                        (let ((_e229689229744_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229685229739_))))
                  (let ((_tl229687229749_
                         (let () (declare (not safe)) (##cdr _e229689229744_)))
                        (_hd229688229747_
                         (let ()
                           (declare (not safe))
                           (##car _e229689229744_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl229687229749_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229684229741_))
                            (let ((_e229692229752_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229684229741_))))
                              (let ((_tl229690229757_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229692229752_)))
                                    (_hd229691229755_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229692229752_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl229690229757_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229681229733_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229678229725_))
                                            (let ((_e229695229760_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229678229725_))))
                                              (let ((_tl229693229765_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229695229760_)))
                                                    (_hd229694229763_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229695229760_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl229693229765_))
                                                    (___kont239760239761_
                                                     _hd229694229763_
                                                     _hd229691229755_
                                                     _hd229688229747_)
                                                    (___kont239762239763_))))
                                            (___kont239762239763_))
                                        (___kont239762239763_))
                                    (___kont239762239763_))))
                            (___kont239762239763_))
                        (___kont239762239763_))))
                (___kont239762239763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont239762239763_))))
                                        (___kont239762239763_))))
                                (___kont239762239763_))
                            (___kont239762239763_))
                        (___kont239762239763_))))
                (___kont239762239763_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr228992_)
        (let* ((___stx239820239821_ _expr228992_)
               (_g228995229153_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239820239821_)))))
          (let ((___kont239822239823_
                 (lambda (_L229541_
                          _L229542_
                          _L229543_
                          _L229544_
                          _L229545_
                          _L229546_
                          _L229547_
                          _L229548_
                          _L229549_
                          _L229550_
                          _L229551_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L229548_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L229544_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L229543_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L229551_
                                      _L229542_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L229550_
                                          _L229547_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L229545_
                                              _L229541_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L229549_
                                              _L229546_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont239824239825_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239820239821_))
                (let ((_e229010229165_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239820239821_))))
                  (let ((_tl229008229170_
                         (let () (declare (not safe)) (##cdr _e229010229165_)))
                        (_hd229009229168_
                         (let ()
                           (declare (not safe))
                           (##car _e229010229165_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229009229168_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd229009229168_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229008229170_))
                                (let ((_e229013229173_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229008229170_))))
                                  (let ((_tl229011229178_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229013229173_)))
                                        (_hd229012229176_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229013229173_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd229012229176_))
                                        (let ((_e229016229181_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd229012229176_))))
                                          (let ((_tl229014229186_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229016229181_)))
                                                (_hd229015229184_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229016229181_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd229015229184_))
                                                (let ((_e229019229189_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd229015229184_))))
                                                  (let ((_tl229017229194_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229019229189_)))
                                                        (_hd229018229192_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229019229189_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229018229192_))
                                                        (let ((_e229022229197_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229018229192_))))
                  (let ((_tl229020229202_
                         (let () (declare (not safe)) (##cdr _e229022229197_)))
                        (_hd229021229200_
                         (let ()
                           (declare (not safe))
                           (##car _e229022229197_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl229020229202_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229017229194_))
                            (let ((_e229025229205_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229017229194_))))
                              (let ((_tl229023229210_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229025229205_)))
                                    (_hd229024229208_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229025229205_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd229024229208_))
                                    (let ((_e229028229213_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd229024229208_))))
                                      (let ((_tl229026229218_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229028229213_)))
                                            (_hd229027229216_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229028229213_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd229027229216_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd229027229216_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229026229218_))
                                                    (let ((_e229031229221_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229026229218_))))
                                                      (let ((_tl229029229226_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229031229221_)))
                    (_hd229030229224_
                     (let () (declare (not safe)) (##car _e229031229221_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd229030229224_))
                    (let ((_e229034229229_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd229030229224_))))
                      (let ((_tl229032229234_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229034229229_)))
                            (_hd229033229232_
                             (let ()
                               (declare (not safe))
                               (##car _e229034229229_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd229033229232_))
                            (let ((_e229037229237_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd229033229232_))))
                              (let ((_tl229035229242_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229037229237_)))
                                    (_hd229036229240_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229037229237_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd229036229240_))
                                    (let ((_e229040229245_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd229036229240_))))
                                      (let ((_tl229038229250_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229040229245_)))
                                            (_hd229039229248_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229040229245_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229038229250_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229035229242_))
                                                (let ((_e229043229253_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229035229242_))))
                                                  (let ((_tl229041229258_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229043229253_)))
                                                        (_hd229042229256_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229043229253_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl229041229258_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl229032229234_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl229029229226_))
                        (let ((_e229046229261_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229029229226_))))
                          (let ((_tl229044229266_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229046229261_)))
                                (_hd229045229264_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229046229261_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd229045229264_))
                                (let ((_e229049229269_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd229045229264_))))
                                  (let ((_tl229047229274_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229049229269_)))
                                        (_hd229048229272_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229049229269_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd229048229272_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd229048229272_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229047229274_))
                                                (let ((_e229052229277_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229047229274_))))
                                                  (let ((_tl229050229282_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229052229277_)))
                                                        (_hd229051229280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229052229277_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229051229280_))
                                                        (let ((_e229055229285_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229051229280_))))
                  (let ((_tl229053229290_
                         (let () (declare (not safe)) (##cdr _e229055229285_)))
                        (_hd229054229288_
                         (let ()
                           (declare (not safe))
                           (##car _e229055229285_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl229050229282_))
                        (let ((_e229058229293_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229050229282_))))
                          (let ((_tl229056229298_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229058229293_)))
                                (_hd229057229296_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229058229293_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd229057229296_))
                                (let ((_e229061229301_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd229057229296_))))
                                  (let ((_tl229059229306_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229061229301_)))
                                        (_hd229060229304_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229061229301_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd229060229304_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd229060229304_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229059229306_))
                                                (let ((_e229064229309_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229059229306_))))
                                                  (let ((_tl229062229314_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229064229309_)))
                                                        (_hd229063229312_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229064229309_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229063229312_))
                                                        (let ((_e229067229317_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229063229312_))))
                  (let ((_tl229065229322_
                         (let () (declare (not safe)) (##cdr _e229067229317_)))
                        (_hd229066229320_
                         (let ()
                           (declare (not safe))
                           (##car _e229067229317_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229066229320_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd229066229320_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229065229322_))
                                (let ((_e229070229325_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229065229322_))))
                                  (let ((_tl229068229330_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229070229325_)))
                                        (_hd229069229328_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229070229325_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229068229330_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229062229314_))
                                            (let ((_e229073229333_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229062229314_))))
                                              (let ((_tl229071229338_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229073229333_)))
                                                    (_hd229072229336_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229073229333_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd229072229336_))
                                                    (let ((_e229076229341_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd229072229336_))))
                                                      (let ((_tl229074229346_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229076229341_)))
                    (_hd229075229344_
                     (let () (declare (not safe)) (##car _e229076229341_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd229075229344_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd229075229344_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229074229346_))
                            (let ((_e229079229349_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229074229346_))))
                              (let ((_tl229077229354_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229079229349_)))
                                    (_hd229078229352_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229079229349_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl229077229354_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl229071229338_))
                                        (let ((_e229082229357_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl229071229338_))))
                                          (let ((_tl229080229362_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229082229357_)))
                                                (_hd229081229360_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229082229357_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd229081229360_))
                                                (let ((_e229085229365_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd229081229360_))))
                                                  (let ((_tl229083229370_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229085229365_)))
                                                        (_hd229084229368_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229085229365_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd229084229368_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd229084229368_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl229083229370_))
                        (let ((_e229088229373_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229083229370_))))
                          (let ((_tl229086229378_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229088229373_)))
                                (_hd229087229376_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229088229373_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl229086229378_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl229056229298_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229044229266_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229023229210_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229014229186_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229011229178_))
                                                    (let ((_e229091229381_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229011229178_))))
                                                      (let ((_tl229089229386_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229091229381_)))
                    (_hd229090229384_
                     (let () (declare (not safe)) (##car _e229091229381_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd229090229384_))
                    (let ((_e229094229389_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd229090229384_))))
                      (let ((_tl229092229394_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229094229389_)))
                            (_hd229093229392_
                             (let ()
                               (declare (not safe))
                               (##car _e229094229389_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd229093229392_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd229093229392_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl229092229394_))
                                    (let ((_e229097229397_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl229092229394_))))
                                      (let ((_tl229095229402_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229097229397_)))
                                            (_hd229096229400_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229097229397_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229095229402_))
                                            (let ((_e229100229405_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229095229402_))))
                                              (let ((_tl229098229410_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229100229405_)))
                                                    (_hd229099229408_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229100229405_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd229099229408_))
                                                    (let ((_e229103229413_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd229099229408_))))
                                                      (let ((_tl229101229418_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229103229413_)))
                    (_hd229102229416_
                     (let () (declare (not safe)) (##car _e229103229413_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd229102229416_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd229102229416_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229101229418_))
                            (let ((_e229106229421_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229101229418_))))
                              (let ((_tl229104229426_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229106229421_)))
                                    (_hd229105229424_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229106229421_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd229105229424_))
                                    (let ((_e229109229429_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd229105229424_))))
                                      (let ((_tl229107229434_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229109229429_)))
                                            (_hd229108229432_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229109229429_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd229108229432_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd229108229432_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229107229434_))
                                                    (let ((_e229112229437_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229107229434_))))
                                                      (let ((_tl229110229442_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229112229437_)))
                    (_hd229111229440_
                     (let () (declare (not safe)) (##car _e229112229437_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl229110229442_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl229104229426_))
                        (let ((_e229115229445_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229104229426_))))
                          (let ((_tl229113229450_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229115229445_)))
                                (_hd229114229448_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229115229445_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd229114229448_))
                                (let ((_e229118229453_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd229114229448_))))
                                  (let ((_tl229116229458_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229118229453_)))
                                        (_hd229117229456_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229118229453_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd229117229456_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd229117229456_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229116229458_))
                                                (let ((_e229121229461_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229116229458_))))
                                                  (let ((_tl229119229466_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229121229461_)))
                                                        (_hd229120229464_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229121229461_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl229119229466_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl229113229450_))
                                                            (let ((_e229124229469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl229113229450_))))
                      (let ((_tl229122229474_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229124229469_)))
                            (_hd229123229472_
                             (let ()
                               (declare (not safe))
                               (##car _e229124229469_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd229123229472_))
                            (let ((_e229127229477_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd229123229472_))))
                              (let ((_tl229125229482_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229127229477_)))
                                    (_hd229126229480_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229127229477_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd229126229480_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd229126229480_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229125229482_))
                                            (let ((_e229130229485_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229125229482_))))
                                              (let ((_tl229128229490_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229130229485_)))
                                                    (_hd229129229488_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229130229485_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl229128229490_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl229122229474_))
                                                        (let ((_e229133229493_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl229122229474_))))
                  (let ((_tl229131229498_
                         (let () (declare (not safe)) (##cdr _e229133229493_)))
                        (_hd229132229496_
                         (let ()
                           (declare (not safe))
                           (##car _e229133229493_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd229132229496_))
                        (let ((_e229136229501_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd229132229496_))))
                          (let ((_tl229134229506_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229136229501_)))
                                (_hd229135229504_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229136229501_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd229135229504_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd229135229504_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl229134229506_))
                                        (let ((_e229139229509_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl229134229506_))))
                                          (let ((_tl229137229514_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229139229509_)))
                                                (_hd229138229512_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229139229509_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229137229514_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229131229498_))
                                                    (let ((_e229142229517_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229131229498_))))
                                                      (let ((_tl229140229522_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229142229517_)))
                    (_hd229141229520_
                     (let () (declare (not safe)) (##car _e229142229517_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd229141229520_))
                    (let ((_e229145229525_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd229141229520_))))
                      (let ((_tl229143229530_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229145229525_)))
                            (_hd229144229528_
                             (let ()
                               (declare (not safe))
                               (##car _e229145229525_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd229144229528_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd229144229528_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl229143229530_))
                                    (let ((_e229148229533_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl229143229530_))))
                                      (let ((_tl229146229538_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229148229533_)))
                                            (_hd229147229536_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229148229533_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229146229538_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229140229522_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl229098229410_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl229089229386_))
                                                        (___kont239822239823_
                                                         _hd229147229536_
                                                         _hd229138229512_
                                                         _hd229120229464_
                                                         _hd229111229440_
                                                         _hd229096229400_
                                                         _hd229087229376_
                                                         _hd229078229352_
                                                         _hd229069229328_
                                                         _hd229054229288_
                                                         _hd229039229248_
                                                         _hd229021229200_)
                                                        (___kont239824239825_))
                                                    (___kont239824239825_))
                                                (___kont239824239825_))
                                            (___kont239824239825_))))
                                    (___kont239824239825_))
                                (___kont239824239825_))
                            (___kont239824239825_))))
                    (___kont239824239825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239824239825_))
                                                (___kont239824239825_))))
                                        (___kont239824239825_))
                                    (___kont239824239825_))
                                (___kont239824239825_))))
                        (___kont239824239825_))))
                (___kont239824239825_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239824239825_))))
                                            (___kont239824239825_))
                                        (___kont239824239825_))
                                    (___kont239824239825_))))
                            (___kont239824239825_))))
                    (___kont239824239825_))
                (___kont239824239825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont239824239825_))
                                            (___kont239824239825_))
                                        (___kont239824239825_))))
                                (___kont239824239825_))))
                        (___kont239824239825_))
                    (___kont239824239825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239824239825_))
                                                (___kont239824239825_))
                                            (___kont239824239825_))))
                                    (___kont239824239825_))))
                            (___kont239824239825_))
                        (___kont239824239825_))
                    (___kont239824239825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239824239825_))))
                                            (___kont239824239825_))))
                                    (___kont239824239825_))
                                (___kont239824239825_))
                            (___kont239824239825_))))
                    (___kont239824239825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239824239825_))
                                                (___kont239824239825_))
                                            (___kont239824239825_))
                                        (___kont239824239825_))
                                    (___kont239824239825_))
                                (___kont239824239825_))))
                        (___kont239824239825_))
                    (___kont239824239825_))
                (___kont239824239825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont239824239825_))))
                                        (___kont239824239825_))
                                    (___kont239824239825_))))
                            (___kont239824239825_))
                        (___kont239824239825_))
                    (___kont239824239825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239824239825_))))
                                            (___kont239824239825_))
                                        (___kont239824239825_))))
                                (___kont239824239825_))
                            (___kont239824239825_))
                        (___kont239824239825_))))
                (___kont239824239825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont239824239825_))
                                            (___kont239824239825_))
                                        (___kont239824239825_))))
                                (___kont239824239825_))))
                        (___kont239824239825_))))
                (___kont239824239825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont239824239825_))
                                            (___kont239824239825_))
                                        (___kont239824239825_))))
                                (___kont239824239825_))))
                        (___kont239824239825_))
                    (___kont239824239825_))
                (___kont239824239825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont239824239825_))
                                            (___kont239824239825_))))
                                    (___kont239824239825_))))
                            (___kont239824239825_))))
                    (___kont239824239825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239824239825_))
                                                (___kont239824239825_))
                                            (___kont239824239825_))))
                                    (___kont239824239825_))))
                            (___kont239824239825_))
                        (___kont239824239825_))))
                (___kont239824239825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont239824239825_))))
                                        (___kont239824239825_))))
                                (___kont239824239825_))
                            (___kont239824239825_))
                        (___kont239824239825_))))
                (___kont239824239825_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx228734_ _id228735_ _clauses228736_ _gensym?228737_)
        (let _lp228739_ ((_rest228741_ _clauses228736_)
                         (_ids228742_ '())
                         (_impls228743_ '())
                         (_clauses228744_ '()))
          (let* ((_rest228745228753_ _rest228741_)
                 (_else228747228761_
                  (lambda ()
                    (values (reverse _ids228742_)
                            (reverse _impls228743_)
                            (reverse _clauses228744_))))
                 (_K228749228966_
                  (lambda (_rest228764_ _clause228765_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause228765_))
                        (let ((__tmp240899
                               (let ()
                                 (declare (not safe))
                                 (cons _clause228765_ _clauses228744_))))
                          (declare (not safe))
                          (_lp228739_
                           _rest228764_
                           _ids228742_
                           _impls228743_
                           __tmp240899))
                        (let* ((_g228767228778_
                                (lambda (_g228768228775_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g228768228775_))))
                               (_g228766228963_
                                (lambda (_g228768228781_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g228768228781_))
                                      (let ((_e228773228783_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g228768228781_))))
                                        (let ((_hd228772228786_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228773228783_)))
                                              (_tl228771228788_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228773228783_))))
                                          ((lambda (_L228791_ _L228792_)
                                             (let* ((_id228809_
                                                     (let ((__tmp240846
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id228735_)))
                                                           (__tmp240845
                                                            (length _clauses228744_))
                                                           (__tmp240844
                                                            (if _gensym?228737_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp240846
                                                        '"__"
                                                        __tmp240845
                                                        __tmp240844)))
                                                    (_id228811_
                                                     (let ((__tmp240847
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx228734_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id228809_
                                                        __tmp240847)))
                                                    (_impl228813_
                                                     (let ((__tmp240848
                                                            (let ((__tmp240850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp240849
                           (let ()
                             (declare (not safe))
                             (cons _L228792_ _L228791_))))
                      (declare (not safe))
                      (cons __tmp240850 __tmp240849))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp240848 _stx228734_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause228960_
                                                     (let* ((___stx240204240205_
                                                             _L228792_)
                                                            (_g228817228845_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx240204240205_)))))
               (let ((___kont240206240207_
                      (lambda (_L228939_)
                        (let ((__tmp240851
                               (let ((__tmp240852
                                      (let ((__tmp240853
                                             (let ((__tmp240854
                                                    (let ((__tmp240860
                                                           (let ((__tmp240861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id228811_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp240861)))
                  (__tmp240855
                   (let ((__tmp240856
                          (lambda (_g228949228952_ _g228950228954_)
                            (let ((__tmp240857
                                   (let ((__tmp240859
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp240858
                                          (let ()
                                            (declare (not safe))
                                            (cons _g228949228952_ '()))))
                                     (declare (not safe))
                                     (cons __tmp240859 __tmp240858))))
                              (declare (not safe))
                              (cons __tmp240857 _g228950228954_)))))
                     (declare (not safe))
                     (foldr1 __tmp240856 '() _L228939_))))
              (declare (not safe))
              (cons __tmp240860 __tmp240855))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp240854))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp240853
                                         _stx228734_))))
                                 (declare (not safe))
                                 (cons __tmp240852 '()))))
                          (declare (not safe))
                          (cons _L228792_ __tmp240851))))
                     (___kont240210240211_
                      (lambda (_L228890_ _L228891_)
                        (let ((__tmp240862
                               (let ((__tmp240863
                                      (let ((__tmp240864
                                             (let ((__tmp240865
                                                    (let ((__tmp240879
                                                           (let ((__tmp240880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp240880)))
                  (__tmp240866
                   (let ((__tmp240877
                          (let ((__tmp240878
                                 (let ()
                                   (declare (not safe))
                                   (cons _id228811_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp240878)))
                         (__tmp240867
                          (let ((__tmp240873
                                 (let ((__tmp240874
                                        (let ((__tmp240876
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp240875
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L228890_ '()))))
                                          (declare (not safe))
                                          (cons __tmp240876 __tmp240875))))
                                   (declare (not safe))
                                   (cons __tmp240874 '())))
                                (__tmp240868
                                 (let ((__tmp240869
                                        (lambda (_g228902228905_
                                                 _g228903228907_)
                                          (let ((__tmp240870
                                                 (let ((__tmp240872
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp240871
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g228902228905_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp240872
                                                         __tmp240871))))
                                            (declare (not safe))
                                            (cons __tmp240870
                                                  _g228903228907_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp240869 '() _L228891_))))
                            (declare (not safe))
                            (foldr1 cons __tmp240873 __tmp240868))))
                     (declare (not safe))
                     (cons __tmp240877 __tmp240867))))
              (declare (not safe))
              (cons __tmp240879 __tmp240866))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp240865))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp240864
                                         _stx228734_))))
                                 (declare (not safe))
                                 (cons __tmp240863 '()))))
                          (declare (not safe))
                          (cons _L228792_ __tmp240862))))
                     (___kont240214240215_
                      (lambda (_L228850_)
                        (let ((__tmp240881
                               (let ((__tmp240882
                                      (let ((__tmp240883
                                             (let ((__tmp240884
                                                    (let ((__tmp240892
                                                           (let ((__tmp240893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp240893)))
                  (__tmp240885
                   (let ((__tmp240890
                          (let ((__tmp240891
                                 (let ()
                                   (declare (not safe))
                                   (cons _id228811_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp240891)))
                         (__tmp240886
                          (let ((__tmp240887
                                 (let ((__tmp240889
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp240888
                                        (let ()
                                          (declare (not safe))
                                          (cons _L228850_ '()))))
                                   (declare (not safe))
                                   (cons __tmp240889 __tmp240888))))
                            (declare (not safe))
                            (cons __tmp240887 '()))))
                     (declare (not safe))
                     (cons __tmp240890 __tmp240886))))
              (declare (not safe))
              (cons __tmp240892 __tmp240885))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp240884))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp240883
                                         _stx228734_))))
                                 (declare (not safe))
                                 (cons __tmp240882 '()))))
                          (declare (not safe))
                          (cons _L228792_ __tmp240881)))))
                 (let* ((___match240229240230_
                         (lambda (___splice240212240213_
                                  _target228831228866_
                                  _tl228833228868_)
                           (letrec ((_loop228834228871_
                                     (lambda (_hd228832228874_
                                              _arg228838228876_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd228832228874_))
                                           (let ((_e228835228879_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd228832228874_))))
                                             (let ((_lp-tl228837228884_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228835228879_)))
                                                   (_lp-hd228836228882_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228835228879_))))
                                               (let ((__tmp240894
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd228836228882_
                                                              _arg228838228876_))))
                                                 (declare (not safe))
                                                 (_loop228834228871_
                                                  _lp-tl228837228884_
                                                  __tmp240894))))
                                           (let ((_arg228839228887_
                                                  (reverse _arg228838228876_)))
                                             (___kont240210240211_
                                              _tl228833228868_
                                              _arg228839228887_))))))
                             (let ()
                               (declare (not safe))
                               (_loop228834228871_
                                _target228831228866_
                                '())))))
                        (___match240223240224_
                         (lambda (___splice240208240209_
                                  _target228820228915_
                                  _tl228822228917_)
                           (letrec ((_loop228823228920_
                                     (lambda (_hd228821228923_
                                              _arg228827228925_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd228821228923_))
                                           (let ((_e228824228928_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd228821228923_))))
                                             (let ((_lp-tl228826228933_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228824228928_)))
                                                   (_lp-hd228825228931_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228824228928_))))
                                               (let ((__tmp240895
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd228825228931_
                                                              _arg228827228925_))))
                                                 (declare (not safe))
                                                 (_loop228823228920_
                                                  _lp-tl228826228933_
                                                  __tmp240895))))
                                           (let ((_arg228828228936_
                                                  (reverse _arg228827228925_)))
                                             (___kont240206240207_
                                              _arg228828228936_))))))
                             (let ()
                               (declare (not safe))
                               (_loop228823228920_
                                _target228820228915_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx240204240205_))
                       (let ((___splice240208240209_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx240204240205_
                                 '0))))
                         (let ((_tl228822228917_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice240208240209_ '1)))
                               (_target228820228915_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice240208240209_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl228822228917_))
                               (___match240223240224_
                                ___splice240208240209_
                                _target228820228915_
                                _tl228822228917_)
                               (___match240229240230_
                                ___splice240208240209_
                                _target228820228915_
                                _tl228822228917_))))
                       (___kont240214240215_ ___stx240204240205_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp240898
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id228811_
                                                              _ids228742_)))
                                                     (__tmp240897
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl228813_
                                                              _impls228743_)))
                                                     (__tmp240896
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause228960_
                                                              _clauses228744_))))
                                                 (declare (not safe))
                                                 (_lp228739_
                                                  _rest228764_
                                                  __tmp240898
                                                  __tmp240897
                                                  __tmp240896))))
                                           _tl228771228788_
                                           _hd228772228786_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g228767228778_ _g228768228781_))))))
                          (declare (not safe))
                          (_g228766228963_ _clause228765_))))))
            (if (let () (declare (not safe)) (##pair? _rest228745228753_))
                (let ((_hd228750228969_
                       (let ()
                         (declare (not safe))
                         (##car _rest228745228753_)))
                      (_tl228751228971_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest228745228753_))))
                  (let* ((_clause228974_ _hd228750228969_)
                         (_rest228976_ _tl228751228971_))
                    (declare (not safe))
                    (_K228749228966_ _rest228976_ _clause228974_)))
                (let () (declare (not safe)) (_else228747228761_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx228981_ _id228982_ _clauses228983_)
        (let ((_gensym?228985_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx228981_
           _id228982_
           _clauses228983_
           _gensym?228985_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g240901_
        (let ((_g240900_ (let () (declare (not safe)) (##length _g240901_))))
          (cond ((let () (declare (not safe)) (##fx= _g240900_ 3))
                 (apply (lambda (_stx228981_ _id228982_ _clauses228983_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx228981_
                             _id228982_
                             _clauses228983_)))
                        _g240901_))
                ((let () (declare (not safe)) (##fx= _g240900_ 4))
                 (apply (lambda (_stx228987_
                                 _id228988_
                                 _clauses228989_
                                 _gensym?228990_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx228987_
                             _id228988_
                             _clauses228989_
                             _gensym?228990_)))
                        _g240901_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g240901_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx228011_)
        (letrec ((_case-lambda-clause-def228013_
                  (lambda (_id228730_ _impl228731_)
                    (let ((__tmp240902
                           (let ((__tmp240903
                                  (let ((__tmp240906
                                         (let ()
                                           (declare (not safe))
                                           (cons _id228730_ '())))
                                        (__tmp240904
                                         (let ((__tmp240905
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl228731_))))
                                           (declare (not safe))
                                           (cons __tmp240905 '()))))
                                    (declare (not safe))
                                    (cons __tmp240906 __tmp240904))))
                             (declare (not safe))
                             (cons '%#define-values __tmp240903))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp240902 _stx228011_))))
                 (_opt-lambda-dispatch-name228014_
                  (lambda (_id228726_)
                    (if (uninterned-symbol? _id228726_)
                        (let ((_str228728_ (symbol->string _id228726_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str228728_))
                              '"%"
                              _id228726_))
                        _id228726_)))
                 (_kw-lambda-dispatch-name228015_
                  (lambda (_id228721_ _name228722_)
                    (if (uninterned-symbol? _id228721_)
                        (let ((_str228724_ (symbol->string _id228721_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str228724_))
                              _name228722_
                              _id228721_))
                        _id228721_))))
          (let* ((___stx240252240253_ _stx228011_)
                 (_g228020228079_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx240252240253_)))))
            (let ((___kont240254240255_
                   (lambda (_L228630_ _L228631_)
                     (let* ((___stx240232240233_ _L228630_)
                            (_g228648228662_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx240232240233_)))))
                       (let ((___kont240234240235_
                              (lambda (_L228706_) _stx228011_))
                             (___kont240236240237_
                              (lambda (_L228675_)
                                (let ((_g240907_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx228011_
                                          _L228631_
                                          _L228675_))))
                                  (begin
                                    (let ((_g240908_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g240907_)
                                                 (##vector-length _g240907_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g240908_ 3)))
                                          (error "Context expects 3 values"
                                                 _g240908_)))
                                    (let ((_ids228685_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g240907_ 0)))
                                          (_impls228686_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g240907_ 1)))
                                          (_clauses228687_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g240907_ 2))))
                                      (let* ((_g240909_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids228685_))
                                             (_defs228690_
                                              (map _case-lambda-clause-def228013_
                                                   _ids228685_
                                                   _impls228686_)))
                                        (let ((__tmp240911
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L228631_)))
                                              (__tmp240910
                                               (map gxc#identifier-symbol
                                                    _ids228685_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp240911
                                           '" => "
                                           __tmp240910))
                                        (let ((__tmp240912
                                               (let ((__tmp240913
                                                      (let ((__tmp240914
                                                             (let ((__tmp240915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp240916
                                   (let ((__tmp240917
                                          (let ((__tmp240922
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L228631_ '())))
                                                (__tmp240918
                                                 (let ((__tmp240919
                                                        (let ((__tmp240921
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses228687_)))
                      (__tmp240920
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp240921 __tmp240920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp240919 '()))))
                                            (declare (not safe))
                                            (cons __tmp240922 __tmp240918))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp240917))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp240916
                               _stx228011_))))
                       (declare (not safe))
                       (cons __tmp240915 '()))))
                (declare (not safe))
                (foldr1 cons __tmp240914 _defs228690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp240913))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp240912
                                           _stx228011_)))))))))
                         (let ((___match240243240244_
                                (lambda (_e228653228698_
                                         _hd228652228701_
                                         _tl228651228703_)
                                  (let ((_L228706_ _tl228651228703_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L228706_))
                                        (___kont240234240235_ _L228706_)
                                        (___kont240236240237_
                                         _tl228651228703_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx240232240233_))
                               (let ((_e228653228698_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx240232240233_))))
                                 (let ((_tl228651228703_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e228653228698_)))
                                       (_hd228652228701_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e228653228698_))))
                                   (___match240243240244_
                                    _e228653228698_
                                    _hd228652228701_
                                    _tl228651228703_)))
                               (let ()
                                 (declare (not safe))
                                 (_g228648228662_))))))))
                  (___kont240256240257_
                   (lambda (_L228448_ _L228449_)
                     (let* ((_g228465228495_
                             (lambda (_g228466228492_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g228466228492_))))
                            (_g228464228590_
                             (lambda (_g228466228498_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g228466228498_))
                                   (let ((_e228472228500_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g228466228498_))))
                                     (let ((_hd228471228503_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e228472228500_)))
                                           (_tl228470228505_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e228472228500_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl228470228505_))
                                           (let ((_e228475228508_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl228470228505_))))
                                             (let ((_hd228474228511_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228475228508_)))
                                                   (_tl228473228513_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228475228508_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd228474228511_))
                                                   (let ((_e228478228516_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd228474228511_))))
                                                     (let ((_hd228477228519_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228478228516_)))
                                                           (_tl228476228521_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228478228516_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd228477228519_))
                                                           (let ((_e228481228524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd228477228519_))))
                     (let ((_hd228480228527_
                            (let ()
                              (declare (not safe))
                              (##car _e228481228524_)))
                           (_tl228479228529_
                            (let ()
                              (declare (not safe))
                              (##cdr _e228481228524_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd228480228527_))
                           (let ((_e228484228532_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd228480228527_))))
                             (let ((_hd228483228535_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e228484228532_)))
                                   (_tl228482228537_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e228484228532_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl228482228537_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl228479228529_))
                                       (let ((_e228487228540_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl228479228529_))))
                                         (let ((_hd228486228543_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228487228540_)))
                                               (_tl228485228545_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228487228540_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl228485228545_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl228476228521_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl228473228513_))
                                                       (let ((_e228490228548_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl228473228513_))))
                 (let ((_hd228489228551_
                        (let () (declare (not safe)) (##car _e228490228548_)))
                       (_tl228488228553_
                        (let () (declare (not safe)) (##cdr _e228490228548_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl228488228553_))
                       ((lambda (_L228556_ _L228557_ _L228558_)
                          (let* ((_lambda-id228582_
                                  (let ((__tmp240925
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L228449_)))
                                        (__tmp240923
                                         (let ((__tmp240924
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L228558_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name228014_
                                            __tmp240924))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp240925
                                     '"__"
                                     __tmp240923)))
                                 (_lambda-id228584_
                                  (let ((__tmp240926
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx228011_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id228582_
                                     __tmp240926)))
                                 (_g240927_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id228584_)))
                                 (_new-case-lambda-expr228587_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L228556_
                                     _L228558_
                                     _lambda-id228584_))))
                            (let ((__tmp240929
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L228449_)))
                                  (__tmp240928
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id228584_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp240929
                               '" => "
                               __tmp240928))
                            (let ((__tmp240930
                                   (let ((__tmp240931
                                          (let ((__tmp240939
                                                 (let ((__tmp240940
                                                        (let ((__tmp240941
                                                               (let ((__tmp240944
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id228584_ '())))
                             (__tmp240942
                              (let ((__tmp240943
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L228557_))))
                                (declare (not safe))
                                (cons __tmp240943 '()))))
                         (declare (not safe))
                         (cons __tmp240944 __tmp240942))))
                  (declare (not safe))
                  (cons '%#define-values __tmp240941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp240940
                                                    _stx228011_)))
                                                (__tmp240932
                                                 (let ((__tmp240933
                                                        (let ((__tmp240934
                                                               (let ((__tmp240935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp240936
                                     (let ((__tmp240938
                                            (let ()
                                              (declare (not safe))
                                              (cons _L228449_ '())))
                                           (__tmp240937
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr228587_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp240938 __tmp240937))))
                                (declare (not safe))
                                (cons '%#define-values __tmp240936))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp240935 _stx228011_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp240934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp240933 '()))))
                                            (declare (not safe))
                                            (cons __tmp240939 __tmp240932))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp240931))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp240930
                               _stx228011_))))
                        _hd228489228551_
                        _hd228486228543_
                        _hd228483228535_)
                       (let ()
                         (declare (not safe))
                         (_g228465228495_ _g228466228498_)))))
               (let () (declare (not safe)) (_g228465228495_ _g228466228498_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228465228495_
                                                      _g228466228498_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228465228495_
                                                  _g228466228498_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g228465228495_ _g228466228498_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g228465228495_ _g228466228498_)))))
                           (let ()
                             (declare (not safe))
                             (_g228465228495_ _g228466228498_)))))
                   (let ()
                     (declare (not safe))
                     (_g228465228495_ _g228466228498_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228465228495_
                                                      _g228466228498_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g228465228495_
                                              _g228466228498_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g228465228495_ _g228466228498_))))))
                       (declare (not safe))
                       (_g228464228590_ _L228448_))))
                  (___kont240258240259_
                   (lambda (_L228162_ _L228163_)
                     (let* ((_g228179228232_
                             (lambda (_g228180228229_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g228180228229_))))
                            (_g228178228408_
                             (lambda (_g228180228235_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g228180228235_))
                                   (let ((_e228188228237_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g228180228235_))))
                                     (let ((_hd228187228240_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e228188228237_)))
                                           (_tl228186228242_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e228188228237_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl228186228242_))
                                           (let ((_e228191228245_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl228186228242_))))
                                             (let ((_hd228190228248_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228191228245_)))
                                                   (_tl228189228250_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228191228245_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd228190228248_))
                                                   (let ((_e228194228253_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd228190228248_))))
                                                     (let ((_hd228193228256_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228194228253_)))
                                                           (_tl228192228258_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228194228253_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd228193228256_))
                                                           (let ((_e228197228261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd228193228256_))))
                     (let ((_hd228196228264_
                            (let ()
                              (declare (not safe))
                              (##car _e228197228261_)))
                           (_tl228195228266_
                            (let ()
                              (declare (not safe))
                              (##cdr _e228197228261_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd228196228264_))
                           (let ((_e228200228269_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd228196228264_))))
                             (let ((_hd228199228272_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e228200228269_)))
                                   (_tl228198228274_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e228200228269_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl228198228274_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl228195228266_))
                                       (let ((_e228203228277_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl228195228266_))))
                                         (let ((_hd228202228280_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228203228277_)))
                                               (_tl228201228282_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228203228277_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd228202228280_))
                                               (let ((_e228206228285_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd228202228280_))))
                                                 (let ((_hd228205228288_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e228206228285_)))
                                                       (_tl228204228290_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e228206228285_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl228204228290_))
                                                       (let ((_e228209228293_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl228204228290_))))
                 (let ((_hd228208228296_
                        (let () (declare (not safe)) (##car _e228209228293_)))
                       (_tl228207228298_
                        (let () (declare (not safe)) (##cdr _e228209228293_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd228208228296_))
                       (let ((_e228212228301_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd228208228296_))))
                         (let ((_hd228211228304_
                                (let ()
                                  (declare (not safe))
                                  (##car _e228212228301_)))
                               (_tl228210228306_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e228212228301_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd228211228304_))
                               (let ((_e228215228309_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd228211228304_))))
                                 (let ((_hd228214228312_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e228215228309_)))
                                       (_tl228213228314_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e228215228309_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd228214228312_))
                                       (let ((_e228218228317_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd228214228312_))))
                                         (let ((_hd228217228320_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228218228317_)))
                                               (_tl228216228322_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228218228317_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl228216228322_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl228213228314_))
                                                   (let ((_e228221228325_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl228213228314_))))
                                                     (let ((_hd228220228328_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228221228325_)))
                                                           (_tl228219228330_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228221228325_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl228219228330_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl228210228306_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl228207228298_))
                           (let ((_e228224228333_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl228207228298_))))
                             (let ((_hd228223228336_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e228224228333_)))
                                   (_tl228222228338_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e228224228333_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl228222228338_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl228201228282_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl228192228258_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl228189228250_))
                                               (let ((_e228227228341_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl228189228250_))))
                                                 (let ((_hd228226228344_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e228227228341_)))
                                                       (_tl228225228346_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e228227228341_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl228225228346_))
                                                       ((lambda (_L228349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L228350_
                         _L228351_
                         _L228352_
                         _L228353_)
                  (let* ((_get-kws-id228393_
                          (let ((__tmp240947
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L228163_)))
                                (__tmp240945
                                 (let ((__tmp240946
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L228353_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name228015_
                                    __tmp240946
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp240947 '"__" __tmp240945)))
                         (_get-kws-id228395_
                          (let ((__tmp240948
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx228011_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id228393_
                             __tmp240948)))
                         (_main-id228397_
                          (let ((__tmp240951
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L228163_)))
                                (__tmp240949
                                 (let ((__tmp240950
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L228352_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name228015_
                                    __tmp240950
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp240951 '"__" __tmp240949)))
                         (_main-id228399_
                          (let ((__tmp240952
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx228011_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id228397_
                             __tmp240952)))
                         (_g240953_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id228395_)))
                         (_g240954_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id228399_)))
                         (_new-kw-dispatch228403_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L228349_
                             _L228353_
                             _get-kws-id228395_)))
                         (_new-get-kws228405_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L228350_
                             _L228352_
                             _main-id228399_))))
                    (let ((__tmp240957
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L228163_)))
                          (__tmp240956
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id228395_)))
                          (__tmp240955
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id228399_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp240957
                       '" => "
                       __tmp240956
                       '" => "
                       __tmp240955))
                    (let ((__tmp240958
                           (let ((__tmp240959
                                  (let ((__tmp240972
                                         (let ((__tmp240973
                                                (let ((__tmp240974
                                                       (let ((__tmp240975
                                                              (let ((__tmp240977
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id228399_ '())))
                            (__tmp240976
                             (let ()
                               (declare (not safe))
                               (cons _L228351_ '()))))
                        (declare (not safe))
                        (cons __tmp240977 __tmp240976))))
                 (declare (not safe))
                 (cons '%#define-values __tmp240975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp240974
                                                   _stx228011_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp240973)))
                                        (__tmp240960
                                         (let ((__tmp240967
                                                (let ((__tmp240968
                                                       (let ((__tmp240969
                                                              (let ((__tmp240971
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id228395_ '())))
                            (__tmp240970
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws228405_ '()))))
                        (declare (not safe))
                        (cons __tmp240971 __tmp240970))))
                 (declare (not safe))
                 (cons '%#define-values __tmp240969))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp240968
                                                   _stx228011_)))
                                               (__tmp240961
                                                (let ((__tmp240962
                                                       (let ((__tmp240963
                                                              (let ((__tmp240964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp240966
                                    (let ()
                                      (declare (not safe))
                                      (cons _L228163_ '())))
                                   (__tmp240965
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch228403_ '()))))
                               (declare (not safe))
                               (cons __tmp240966 __tmp240965))))
                        (declare (not safe))
                        (cons '%#define-values __tmp240964))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp240963 _stx228011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp240962 '()))))
                                           (declare (not safe))
                                           (cons __tmp240967 __tmp240961))))
                                    (declare (not safe))
                                    (cons __tmp240972 __tmp240960))))
                             (declare (not safe))
                             (cons '%#begin __tmp240959))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp240958 _stx228011_))))
                _hd228226228344_
                _hd228223228336_
                _hd228220228328_
                _hd228217228320_
                _hd228199228272_)
               (let ()
                 (declare (not safe))
                 (_g228179228232_ _g228180228235_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228179228232_
                                                  _g228180228235_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g228179228232_
                                              _g228180228235_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g228179228232_ _g228180228235_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g228179228232_ _g228180228235_)))))
                           (let ()
                             (declare (not safe))
                             (_g228179228232_ _g228180228235_)))
                       (let ()
                         (declare (not safe))
                         (_g228179228232_ _g228180228235_)))
                   (let ()
                     (declare (not safe))
                     (_g228179228232_ _g228180228235_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228179228232_
                                                      _g228180228235_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228179228232_
                                                  _g228180228235_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g228179228232_ _g228180228235_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g228179228232_ _g228180228235_)))))
                       (let ()
                         (declare (not safe))
                         (_g228179228232_ _g228180228235_)))))
               (let ()
                 (declare (not safe))
                 (_g228179228232_ _g228180228235_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228179228232_
                                                  _g228180228235_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g228179228232_ _g228180228235_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g228179228232_ _g228180228235_)))))
                           (let ()
                             (declare (not safe))
                             (_g228179228232_ _g228180228235_)))))
                   (let ()
                     (declare (not safe))
                     (_g228179228232_ _g228180228235_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228179228232_
                                                      _g228180228235_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g228179228232_
                                              _g228180228235_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g228179228232_ _g228180228235_))))))
                       (declare (not safe))
                       (_g228178228408_ _L228162_))))
                  (___kont240260240261_
                   (lambda (_L228108_ _L228109_)
                     (let ((__tmp240978
                            (let ((__tmp240979
                                   (let ((__tmp240980
                                          (let ((__tmp240981
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L228108_))))
                                            (declare (not safe))
                                            (cons __tmp240981 '()))))
                                     (declare (not safe))
                                     (cons _L228109_ __tmp240980))))
                              (declare (not safe))
                              (cons '%#define-values __tmp240979))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp240978 _stx228011_)))))
              (let* ((___match240345240346_
                      (lambda (_e228054228130_
                               _hd228053228133_
                               _tl228052228135_
                               _e228057228138_
                               _hd228056228141_
                               _tl228055228143_
                               _e228060228146_
                               _hd228059228149_
                               _tl228058228151_
                               _e228063228154_
                               _hd228062228157_
                               _tl228061228159_)
                        (let ((_L228162_ _hd228062228157_)
                              (_L228163_ _hd228059228149_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L228163_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L228162_)))
                              (___kont240258240259_ _L228162_ _L228163_)
                              (___kont240260240261_
                               _hd228062228157_
                               _hd228056228141_)))))
                     (___match240317240318_
                      (lambda (_e228040228416_
                               _hd228039228419_
                               _tl228038228421_
                               _e228043228424_
                               _hd228042228427_
                               _tl228041228429_
                               _e228046228432_
                               _hd228045228435_
                               _tl228044228437_
                               _e228049228440_
                               _hd228048228443_
                               _tl228047228445_)
                        (let ((_L228448_ _hd228048228443_)
                              (_L228449_ _hd228045228435_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L228449_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L228448_)))
                              (___kont240256240257_ _L228448_ _L228449_)
                              (___match240345240346_
                               _e228040228416_
                               _hd228039228419_
                               _tl228038228421_
                               _e228043228424_
                               _hd228042228427_
                               _tl228041228429_
                               _e228046228432_
                               _hd228045228435_
                               _tl228044228437_
                               _e228049228440_
                               _hd228048228443_
                               _tl228047228445_)))))
                     (___match240289240290_
                      (lambda (_e228026228598_
                               _hd228025228601_
                               _tl228024228603_
                               _e228029228606_
                               _hd228028228609_
                               _tl228027228611_
                               _e228032228614_
                               _hd228031228617_
                               _tl228030228619_
                               _e228035228622_
                               _hd228034228625_
                               _tl228033228627_)
                        (let ((_L228630_ _hd228034228625_)
                              (_L228631_ _hd228031228617_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L228631_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L228630_)))
                              (___kont240254240255_ _L228630_ _L228631_)
                              (___match240317240318_
                               _e228026228598_
                               _hd228025228601_
                               _tl228024228603_
                               _e228029228606_
                               _hd228028228609_
                               _tl228027228611_
                               _e228032228614_
                               _hd228031228617_
                               _tl228030228619_
                               _e228035228622_
                               _hd228034228625_
                               _tl228033228627_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx240252240253_))
                    (let ((_e228026228598_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx240252240253_))))
                      (let ((_tl228024228603_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228026228598_)))
                            (_hd228025228601_
                             (let ()
                               (declare (not safe))
                               (##car _e228026228598_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl228024228603_))
                            (let ((_e228029228606_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl228024228603_))))
                              (let ((_tl228027228611_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e228029228606_)))
                                    (_hd228028228609_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e228029228606_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd228028228609_))
                                    (let ((_e228032228614_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd228028228609_))))
                                      (let ((_tl228030228619_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e228032228614_)))
                                            (_hd228031228617_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e228032228614_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl228030228619_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl228027228611_))
                                                (let ((_e228035228622_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl228027228611_))))
                                                  (let ((_tl228033228627_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e228035228622_)))
                                                        (_hd228034228625_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e228035228622_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl228033228627_))
                                                        (___match240289240290_
                                                         _e228026228598_
                                                         _hd228025228601_
                                                         _tl228024228603_
                                                         _e228029228606_
                                                         _hd228028228609_
                                                         _tl228027228611_
                                                         _e228032228614_
                                                         _hd228031228617_
                                                         _tl228030228619_
                                                         _e228035228622_
                                                         _hd228034228625_
                                                         _tl228033228627_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g228020228079_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228020228079_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl228027228611_))
                                                (let ((_e228074228100_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl228027228611_))))
                                                  (let ((_tl228072228105_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e228074228100_)))
                                                        (_hd228073228103_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e228074228100_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl228072228105_))
                                                        (___kont240260240261_
                                                         _hd228073228103_
                                                         _hd228028228609_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g228020228079_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228020228079_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl228027228611_))
                                        (let ((_e228074228100_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl228027228611_))))
                                          (let ((_tl228072228105_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e228074228100_)))
                                                (_hd228073228103_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e228074228100_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl228072228105_))
                                                (___kont240260240261_
                                                 _hd228073228103_
                                                 _hd228028228609_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228020228079_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g228020228079_))))))
                            (let () (declare (not safe)) (_g228020228079_)))))
                    (let () (declare (not safe)) (_g228020228079_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx226943_)
        (letrec* ((_bind-e__238648238649_
                   (lambda (_id227995_ _expr227996_ _compile?227997_)
                     (let ((__tmp240984
                            (let ()
                              (declare (not safe))
                              (cons _id227995_ '())))
                           (__tmp240982
                            (let ((__tmp240983
                                   (if _compile?227997_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr227996_))
                                       _expr227996_)))
                              (declare (not safe))
                              (cons __tmp240983 '()))))
                       (declare (not safe))
                       (cons __tmp240984 __tmp240982))))
                  (_bind-e__0__238650238651_
                   (lambda (_id228002_ _expr228003_)
                     (let ((_compile?228005_ '#t))
                       (declare (not safe))
                       (_bind-e__238648238649_
                        _id228002_
                        _expr228003_
                        _compile?228005_))))
                  (_bind-e226945_
                   (lambda _g240986_
                     (let ((_g240985_
                            (let ()
                              (declare (not safe))
                              (##length _g240986_))))
                       (cond ((let () (declare (not safe)) (##fx= _g240985_ 2))
                              (apply (lambda (_id228002_ _expr228003_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__238650238651_
                                          _id228002_
                                          _expr228003_)))
                                     _g240986_))
                             ((let () (declare (not safe)) (##fx= _g240985_ 3))
                              (apply (lambda (_id228007_
                                              _expr228008_
                                              _compile?228009_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__238648238649_
                                          _id228007_
                                          _expr228008_
                                          _compile?228009_)))
                                     _g240986_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g240986_))))))
                  (_compile-bindings226946_
                   (lambda (_bindings227579_)
                     (let _lp227581_ ((_rest227583_ _bindings227579_)
                                      (_lift1227584_ '())
                                      (_lift2227585_ '())
                                      (_bind227586_ '()))
                       (let* ((_rest227587227595_ _rest227583_)
                              (_else227589227603_
                               (lambda ()
                                 (values (reverse _lift1227584_)
                                         (reverse _lift2227585_)
                                         (reverse _bind227586_))))
                              (_K227591227982_
                               (lambda (_rest227606_ _hd227607_)
                                 (let* ((___stx240388240389_ _hd227607_)
                                        (_g227611227647_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx240388240389_)))))
                                   (let ((___kont240390240391_
                                          (lambda (_L227889_ _L227890_)
                                            (let* ((___stx240368240369_
                                                    _L227889_)
                                                   (_g227905227919_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx240368240369_)))))
                                              (let ((___kont240370240371_
                                                     (lambda (_L227967_)
                                                       (let ((__tmp240987
                                                              (let ((__tmp240988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__238648238649_
                                _L227890_
                                _L227889_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp240988 _bind227586_))))
                 (declare (not safe))
                 (_lp227581_
                  _rest227606_
                  _lift1227584_
                  _lift2227585_
                  __tmp240987))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240372240373_
                                                     (lambda (_L227932_)
                                                       (let ((_g240989_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx226943_
                         _L227890_
                         _L227932_
                         '#t))))
                 (begin
                   (let ((_g240990_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g240989_)
                                (##vector-length _g240989_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g240990_ 3)))
                         (error "Context expects 3 values" _g240990_)))
                   (let ((_ids227942_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g240989_ 0)))
                         (_impls227943_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g240989_ 1)))
                         (_clauses227944_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g240989_ 2))))
                     (let* ((_g240991_
                             (for-each gx#core-bind-runtime! _ids227942_))
                            (_xbind227947_
                             (map _bind-e226945_ _ids227942_ _impls227943_))
                            (_expr*227949_
                             (let ((__tmp240993
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses227944_)))
                                   (__tmp240992
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp240993
                                __tmp240992)))
                            (_bind*227951_
                             (let ()
                               (declare (not safe))
                               (_bind-e__238648238649_
                                _L227890_
                                _expr*227949_
                                '#f))))
                       (let ((__tmp240995
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L227890_)))
                             (__tmp240994
                              (map gxc#identifier-symbol _ids227942_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp240995
                          '" => "
                          __tmp240994))
                       (let ((__tmp240997
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2227585_ _xbind227947_)))
                             (__tmp240996
                              (let ()
                                (declare (not safe))
                                (cons _bind*227951_ _bind227586_))))
                         (declare (not safe))
                         (_lp227581_
                          _rest227606_
                          _lift1227584_
                          __tmp240997
                          __tmp240996)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match240379240380_
                                                       (lambda (_e227910227959_
                                                                _hd227909227962_
                                                                _tl227908227964_)
                                                         (let ((_L227967_
                                                                _tl227908227964_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L227967_))
                       (___kont240370240371_ _L227967_)
                       (___kont240372240373_ _tl227908227964_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx240368240369_))
                                                      (let ((_e227910227959_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx240368240369_))))
                (let ((_tl227908227964_
                       (let () (declare (not safe)) (##cdr _e227910227959_)))
                      (_hd227909227962_
                       (let () (declare (not safe)) (##car _e227910227959_))))
                  (___match240379240380_
                   _e227910227959_
                   _hd227909227962_
                   _tl227908227964_)))
              (let () (declare (not safe)) (_g227905227919_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont240392240393_
                                          (lambda (_L227717_ _L227718_)
                                            (let* ((_g227732227762_
                                                    (lambda (_g227733227759_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g227733227759_))))
                                                   (_g227731227857_
                                                    (lambda (_g227733227765_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g227733227765_))
                                                          (let ((_e227739227767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g227733227765_))))
                    (let ((_hd227738227770_
                           (let ()
                             (declare (not safe))
                             (##car _e227739227767_)))
                          (_tl227737227772_
                           (let ()
                             (declare (not safe))
                             (##cdr _e227739227767_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl227737227772_))
                          (let ((_e227742227775_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl227737227772_))))
                            (let ((_hd227741227778_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e227742227775_)))
                                  (_tl227740227780_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e227742227775_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd227741227778_))
                                  (let ((_e227745227783_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd227741227778_))))
                                    (let ((_hd227744227786_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227745227783_)))
                                          (_tl227743227788_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227745227783_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd227744227786_))
                                          (let ((_e227748227791_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd227744227786_))))
                                            (let ((_hd227747227794_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e227748227791_)))
                                                  (_tl227746227796_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e227748227791_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd227747227794_))
                                                  (let ((_e227751227799_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd227747227794_))))
                                                    (let ((_hd227750227802_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227751227799_)))
                                                          (_tl227749227804_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227751227799_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227749227804_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl227746227796_))
                      (let ((_e227754227807_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl227746227796_))))
                        (let ((_hd227753227810_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227754227807_)))
                              (_tl227752227812_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227754227807_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl227752227812_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl227743227788_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227740227780_))
                                      (let ((_e227757227815_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227740227780_))))
                                        (let ((_hd227756227818_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227757227815_)))
                                              (_tl227755227820_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227757227815_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227755227820_))
                                              ((lambda (_L227823_
                                                        _L227824_
                                                        _L227825_)
                                                 (let* ((_lambda-id227849_
                                                         (let ((__tmp240999
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L227718_)))
                       (__tmp240998 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp240999 __tmp240998)))
                (_lambda-id227851_
                 (let ((__tmp241000
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx226943_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id227849_ __tmp241000)))
                (_g241001_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id227851_)))
                (_new-case-lambda-expr227854_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L227823_
                    _L227825_
                    _lambda-id227851_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp241003
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L227718_)))
                                                         (__tmp241002
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id227851_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp241003
                                                      '" => "
                                                      __tmp241002))
                                                   (let ((__tmp241006
                                                          (let ((__tmp241007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__238648238649_
                            _L227718_
                            _new-case-lambda-expr227854_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp241007 _rest227606_)))
                 (__tmp241004
                  (let ((__tmp241005
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__238650238651_
                            _lambda-id227851_
                            _L227824_))))
                    (declare (not safe))
                    (cons __tmp241005 _lift1227584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp227581_
                                                      __tmp241006
                                                      __tmp241004
                                                      _lift2227585_
                                                      _bind227586_))))
                                               _hd227756227818_
                                               _hd227753227810_
                                               _hd227750227802_)
                                              (let ()
                                                (declare (not safe))
                                                (_g227732227762_
                                                 _g227733227765_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227732227762_ _g227733227765_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g227732227762_ _g227733227765_)))
                              (let ()
                                (declare (not safe))
                                (_g227732227762_ _g227733227765_)))))
                      (let ()
                        (declare (not safe))
                        (_g227732227762_ _g227733227765_)))
                  (let ()
                    (declare (not safe))
                    (_g227732227762_ _g227733227765_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g227732227762_
                                                     _g227733227765_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g227732227762_
                                             _g227733227765_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g227732227762_ _g227733227765_)))))
                          (let ()
                            (declare (not safe))
                            (_g227732227762_ _g227733227765_)))))
                  (let ()
                    (declare (not safe))
                    (_g227732227762_ _g227733227765_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g227731227857_ _L227717_))))
                                         (___kont240394240395_
                                          (lambda (_L227668_ _L227669_)
                                            (let ((__tmp241008
                                                   (let ((__tmp241009
                                                          (let ((__tmp241010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241011
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L227668_))))
                           (declare (not safe))
                           (cons __tmp241011 '()))))
                    (declare (not safe))
                    (cons _L227669_ __tmp241010))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241009
                                                           _bind227586_))))
                                              (declare (not safe))
                                              (_lp227581_
                                               _rest227606_
                                               _lift1227584_
                                               _lift2227585_
                                               __tmp241008)))))
                                     (let* ((___match240439240440_
                                             (lambda (_e227628227693_
                                                      _hd227627227696_
                                                      _tl227626227698_
                                                      _e227631227701_
                                                      _hd227630227704_
                                                      _tl227629227706_
                                                      _e227634227709_
                                                      _hd227633227712_
                                                      _tl227632227714_)
                                               (let ((_L227717_
                                                      _hd227633227712_)
                                                     (_L227718_
                                                      _hd227630227704_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L227718_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L227717_)))
                                                     (___kont240392240393_
                                                      _L227717_
                                                      _L227718_)
                                                     (___kont240394240395_
                                                      _hd227633227712_
                                                      _hd227627227696_)))))
                                            (___match240417240418_
                                             (lambda (_e227617227865_
                                                      _hd227616227868_
                                                      _tl227615227870_
                                                      _e227620227873_
                                                      _hd227619227876_
                                                      _tl227618227878_
                                                      _e227623227881_
                                                      _hd227622227884_
                                                      _tl227621227886_)
                                               (let ((_L227889_
                                                      _hd227622227884_)
                                                     (_L227890_
                                                      _hd227619227876_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L227890_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L227889_)))
                                                     (___kont240390240391_
                                                      _L227889_
                                                      _L227890_)
                                                     (___match240439240440_
                                                      _e227617227865_
                                                      _hd227616227868_
                                                      _tl227615227870_
                                                      _e227620227873_
                                                      _hd227619227876_
                                                      _tl227618227878_
                                                      _e227623227881_
                                                      _hd227622227884_
                                                      _tl227621227886_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx240388240389_))
                                           (let ((_e227617227865_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx240388240389_))))
                                             (let ((_tl227615227870_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e227617227865_)))
                                                   (_hd227616227868_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e227617227865_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd227616227868_))
                                                   (let ((_e227620227873_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd227616227868_))))
                                                     (let ((_tl227618227878_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e227620227873_)))
                                                           (_hd227619227876_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e227620227873_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl227618227878_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl227615227870_))
                       (let ((_e227623227881_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227615227870_))))
                         (let ((_tl227621227886_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227623227881_)))
                               (_hd227622227884_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227623227881_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227621227886_))
                               (___match240417240418_
                                _e227617227865_
                                _hd227616227868_
                                _tl227615227870_
                                _e227620227873_
                                _hd227619227876_
                                _tl227618227878_
                                _e227623227881_
                                _hd227622227884_
                                _tl227621227886_)
                               (let ()
                                 (declare (not safe))
                                 (_g227611227647_)))))
                       (let () (declare (not safe)) (_g227611227647_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl227615227870_))
                       (let ((_e227642227660_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227615227870_))))
                         (let ((_tl227640227665_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227642227660_)))
                               (_hd227641227663_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227642227660_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227640227665_))
                               (___kont240394240395_
                                _hd227641227663_
                                _hd227616227868_)
                               (let ()
                                 (declare (not safe))
                                 (_g227611227647_)))))
                       (let () (declare (not safe)) (_g227611227647_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl227615227870_))
                                                       (let ((_e227642227660_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl227615227870_))))
                 (let ((_tl227640227665_
                        (let () (declare (not safe)) (##cdr _e227642227660_)))
                       (_hd227641227663_
                        (let () (declare (not safe)) (##car _e227642227660_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl227640227665_))
                       (___kont240394240395_ _hd227641227663_ _hd227616227868_)
                       (let () (declare (not safe)) (_g227611227647_)))))
               (let () (declare (not safe)) (_g227611227647_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g227611227647_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest227587227595_))
                             (let ((_hd227592227985_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest227587227595_)))
                                   (_tl227593227987_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest227587227595_))))
                               (let* ((_hd227990_ _hd227592227985_)
                                      (_rest227992_ _tl227593227987_))
                                 (declare (not safe))
                                 (_K227591227982_ _rest227992_ _hd227990_)))
                             (let ()
                               (declare (not safe))
                               (_else227589227603_)))))))
                  (_lift-kw-lambda?226947_
                   (lambda (_bind227503_)
                     (let* ((___stx240456240457_ _bind227503_)
                            (_g227506227523_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx240456240457_)))))
                       (let ((___kont240458240459_
                              (lambda (_L227559_ _L227560_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L227560_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L227559_))
                                    '#f)))
                             (___kont240460240461_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx240456240457_))
                             (let ((_e227512227535_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx240456240457_))))
                               (let ((_tl227510227540_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e227512227535_)))
                                     (_hd227511227538_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e227512227535_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd227511227538_))
                                     (let ((_e227515227543_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd227511227538_))))
                                       (let ((_tl227513227548_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e227515227543_)))
                                             (_hd227514227546_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e227515227543_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl227513227548_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl227510227540_))
                                                 (let ((_e227518227551_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl227510227540_))))
                                                   (let ((_tl227516227556_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e227518227551_)))
                                                         (_hd227517227554_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e227518227551_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl227516227556_))
                                                         (___kont240458240459_
                                                          _hd227517227554_
                                                          _hd227514227546_)
                                                         (___kont240460240461_))))
                                                 (___kont240460240461_))
                                             (___kont240460240461_))))
                                     (___kont240460240461_))))
                             (___kont240460240461_))))))
                  (_lift-kw-lambda-bindings226948_
                   (lambda (_bindings227115_)
                     (let _lp227117_ ((_rest227119_ _bindings227115_)
                                      (_lift1227120_ '())
                                      (_lift2227121_ '())
                                      (_bind227122_ '()))
                       (let* ((_rest227123227131_ _rest227119_)
                              (_else227125227139_
                               (lambda ()
                                 (values (reverse _lift1227120_)
                                         (reverse _lift2227121_)
                                         (reverse _bind227122_))))
                              (_K227127227491_
                               (lambda (_rest227142_ _hd227143_)
                                 (let* ((___stx240486240487_ _hd227143_)
                                        (_g227146227171_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx240486240487_)))))
                                   (let ((___kont240488240489_
                                          (lambda (_L227241_ _L227242_)
                                            (let* ((_g227256227309_
                                                    (lambda (_g227257227306_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g227257227306_))))
                                                   (_g227255227485_
                                                    (lambda (_g227257227312_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g227257227312_))
                                                          (let ((_e227265227314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g227257227312_))))
                    (let ((_hd227264227317_
                           (let ()
                             (declare (not safe))
                             (##car _e227265227314_)))
                          (_tl227263227319_
                           (let ()
                             (declare (not safe))
                             (##cdr _e227265227314_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl227263227319_))
                          (let ((_e227268227322_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl227263227319_))))
                            (let ((_hd227267227325_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e227268227322_)))
                                  (_tl227266227327_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e227268227322_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd227267227325_))
                                  (let ((_e227271227330_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd227267227325_))))
                                    (let ((_hd227270227333_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227271227330_)))
                                          (_tl227269227335_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227271227330_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd227270227333_))
                                          (let ((_e227274227338_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd227270227333_))))
                                            (let ((_hd227273227341_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e227274227338_)))
                                                  (_tl227272227343_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e227274227338_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd227273227341_))
                                                  (let ((_e227277227346_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd227273227341_))))
                                                    (let ((_hd227276227349_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227277227346_)))
                                                          (_tl227275227351_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227277227346_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227275227351_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl227272227343_))
                      (let ((_e227280227354_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl227272227343_))))
                        (let ((_hd227279227357_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227280227354_)))
                              (_tl227278227359_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227280227354_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd227279227357_))
                              (let ((_e227283227362_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd227279227357_))))
                                (let ((_hd227282227365_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227283227362_)))
                                      (_tl227281227367_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227283227362_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227281227367_))
                                      (let ((_e227286227370_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227281227367_))))
                                        (let ((_hd227285227373_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227286227370_)))
                                              (_tl227284227375_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227286227370_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd227285227373_))
                                              (let ((_e227289227378_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd227285227373_))))
                                                (let ((_hd227288227381_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e227289227378_)))
                                                      (_tl227287227383_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e227289227378_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd227288227381_))
                                                      (let ((_e227292227386_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd227288227381_))))
                (let ((_hd227291227389_
                       (let () (declare (not safe)) (##car _e227292227386_)))
                      (_tl227290227391_
                       (let () (declare (not safe)) (##cdr _e227292227386_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd227291227389_))
                      (let ((_e227295227394_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd227291227389_))))
                        (let ((_hd227294227397_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227295227394_)))
                              (_tl227293227399_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227295227394_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl227293227399_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl227290227391_))
                                  (let ((_e227298227402_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl227290227391_))))
                                    (let ((_hd227297227405_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227298227402_)))
                                          (_tl227296227407_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227298227402_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl227296227407_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227287227383_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl227284227375_))
                                                  (let ((_e227301227410_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl227284227375_))))
                                                    (let ((_hd227300227413_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227301227410_)))
                                                          (_tl227299227415_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227301227410_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227299227415_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl227278227359_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl227269227335_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227266227327_))
                              (let ((_e227304227418_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227266227327_))))
                                (let ((_hd227303227421_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227304227418_)))
                                      (_tl227302227423_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227304227418_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl227302227423_))
                                      ((lambda (_L227426_
                                                _L227427_
                                                _L227428_
                                                _L227429_
                                                _L227430_)
                                         (let* ((_get-kws-id227470_
                                                 (let ((__tmp241013
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L227242_)))
                                                       (__tmp241012
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241013
                                                    __tmp241012)))
                                                (_get-kws-id227472_
                                                 (let ((__tmp241014
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx226943_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id227470_
                                                    __tmp241014)))
                                                (_main-id227474_
                                                 (let ((__tmp241016
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L227242_)))
                                                       (__tmp241015
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241016
                                                    __tmp241015)))
                                                (_main-id227476_
                                                 (let ((__tmp241017
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx226943_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id227474_
                                                    __tmp241017)))
                                                (_g241018_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id227472_)))
                                                (_g241019_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id227476_)))
                                                (_new-kw-dispatch227480_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L227426_
                                                    _L227430_
                                                    _get-kws-id227472_)))
                                                (_new-get-kws227482_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L227427_
                                                    _L227429_
                                                    _main-id227476_))))
                                           (let ((__tmp241022
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L227242_)))
                                                 (__tmp241021
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id227472_)))
                                                 (__tmp241020
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id227476_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp241022
                                              '" => "
                                              __tmp241021
                                              '" => "
                                              __tmp241020))
                                           (let ((__tmp241027
                                                  (let ((__tmp241028
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__238648238649_
                                                            _main-id227476_
                                                            _L227428_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp241028
                                                          _lift1227120_)))
                                                 (__tmp241025
                                                  (let ((__tmp241026
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__238648238649_
                                                            _get-kws-id227472_
                                                            _new-get-kws227482_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp241026
                                                          _lift2227121_)))
                                                 (__tmp241023
                                                  (let ((__tmp241024
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__238648238649_
                                                            _L227242_
                                                            _new-kw-dispatch227480_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp241024
                                                          _bind227122_))))
                                             (declare (not safe))
                                             (_lp227117_
                                              _rest227142_
                                              __tmp241027
                                              __tmp241025
                                              __tmp241023))))
                                       _hd227303227421_
                                       _hd227300227413_
                                       _hd227297227405_
                                       _hd227294227397_
                                       _hd227276227349_)
                                      (let ()
                                        (declare (not safe))
                                        (_g227256227309_ _g227257227312_)))))
                              (let ()
                                (declare (not safe))
                                (_g227256227309_ _g227257227312_)))
                          (let ()
                            (declare (not safe))
                            (_g227256227309_ _g227257227312_)))
                      (let ()
                        (declare (not safe))
                        (_g227256227309_ _g227257227312_)))
                  (let ()
                    (declare (not safe))
                    (_g227256227309_ _g227257227312_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g227256227309_
                                                     _g227257227312_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g227256227309_
                                                 _g227257227312_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g227256227309_
                                             _g227257227312_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g227256227309_ _g227257227312_)))
                              (let ()
                                (declare (not safe))
                                (_g227256227309_ _g227257227312_)))))
                      (let ()
                        (declare (not safe))
                        (_g227256227309_ _g227257227312_)))))
              (let ()
                (declare (not safe))
                (_g227256227309_ _g227257227312_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g227256227309_
                                                 _g227257227312_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227256227309_ _g227257227312_)))))
                              (let ()
                                (declare (not safe))
                                (_g227256227309_ _g227257227312_)))))
                      (let ()
                        (declare (not safe))
                        (_g227256227309_ _g227257227312_)))
                  (let ()
                    (declare (not safe))
                    (_g227256227309_ _g227257227312_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g227256227309_
                                                     _g227257227312_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g227256227309_
                                             _g227257227312_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g227256227309_ _g227257227312_)))))
                          (let ()
                            (declare (not safe))
                            (_g227256227309_ _g227257227312_)))))
                  (let ()
                    (declare (not safe))
                    (_g227256227309_ _g227257227312_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g227255227485_ _L227241_))))
                                         (___kont240490240491_
                                          (lambda (_L227192_ _L227193_)
                                            (let ((__tmp241029
                                                   (let ((__tmp241030
                                                          (let ((__tmp241031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L227192_ '()))))
                    (declare (not safe))
                    (cons _L227193_ __tmp241031))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241030
                                                           _bind227122_))))
                                              (declare (not safe))
                                              (_lp227117_
                                               _rest227142_
                                               _lift1227120_
                                               _lift2227121_
                                               __tmp241029)))))
                                     (let ((___match240513240514_
                                            (lambda (_e227152227217_
                                                     _hd227151227220_
                                                     _tl227150227222_
                                                     _e227155227225_
                                                     _hd227154227228_
                                                     _tl227153227230_
                                                     _e227158227233_
                                                     _hd227157227236_
                                                     _tl227156227238_)
                                              (let ((_L227241_
                                                     _hd227157227236_)
                                                    (_L227242_
                                                     _hd227154227228_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L227242_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L227241_)))
                                                    (___kont240488240489_
                                                     _L227241_
                                                     _L227242_)
                                                    (___kont240490240491_
                                                     _hd227157227236_
                                                     _hd227151227220_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx240486240487_))
                                           (let ((_e227152227217_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx240486240487_))))
                                             (let ((_tl227150227222_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e227152227217_)))
                                                   (_hd227151227220_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e227152227217_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd227151227220_))
                                                   (let ((_e227155227225_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd227151227220_))))
                                                     (let ((_tl227153227230_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e227155227225_)))
                                                           (_hd227154227228_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e227155227225_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl227153227230_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl227150227222_))
                       (let ((_e227158227233_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227150227222_))))
                         (let ((_tl227156227238_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227158227233_)))
                               (_hd227157227236_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227158227233_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227156227238_))
                               (___match240513240514_
                                _e227152227217_
                                _hd227151227220_
                                _tl227150227222_
                                _e227155227225_
                                _hd227154227228_
                                _tl227153227230_
                                _e227158227233_
                                _hd227157227236_
                                _tl227156227238_)
                               (let ()
                                 (declare (not safe))
                                 (_g227146227171_)))))
                       (let () (declare (not safe)) (_g227146227171_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl227150227222_))
                       (let ((_e227166227184_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227150227222_))))
                         (let ((_tl227164227189_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227166227184_)))
                               (_hd227165227187_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227166227184_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227164227189_))
                               (___kont240490240491_
                                _hd227165227187_
                                _hd227151227220_)
                               (let ()
                                 (declare (not safe))
                                 (_g227146227171_)))))
                       (let () (declare (not safe)) (_g227146227171_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl227150227222_))
                                                       (let ((_e227166227184_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl227150227222_))))
                 (let ((_tl227164227189_
                        (let () (declare (not safe)) (##cdr _e227166227184_)))
                       (_hd227165227187_
                        (let () (declare (not safe)) (##car _e227166227184_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl227164227189_))
                       (___kont240490240491_ _hd227165227187_ _hd227151227220_)
                       (let () (declare (not safe)) (_g227146227171_)))))
               (let () (declare (not safe)) (_g227146227171_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g227146227171_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest227123227131_))
                             (let ((_hd227128227494_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest227123227131_)))
                                   (_tl227129227496_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest227123227131_))))
                               (let* ((_hd227499_ _hd227128227494_)
                                      (_rest227501_ _tl227129227496_))
                                 (declare (not safe))
                                 (_K227127227491_ _rest227501_ _hd227499_)))
                             (let ()
                               (declare (not safe))
                               (_else227125227139_))))))))
          (let* ((___stx240530240531_ _stx226943_)
                 (_g226951226977_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx240530240531_)))))
            (let ((___kont240532240533_
                   (lambda (_L227037_ _L227038_)
                     (let ((__tmp241033
                            (lambda ()
                              (if (let ((__tmp241060
                                         (let ((__tmp241061
                                                (lambda (_g227066227069_
                                                         _g227067227071_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g227066227069_
                                                          _g227067227071_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp241061
                                                   '()
                                                   _L227038_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?226947_
                                            __tmp241060))
                                  (let ((_g241047_
                                         (let ((__tmp241049
                                                (let ((__tmp241050
                                                       (lambda (_g227073227076_
                                                                _g227074227078_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g227073227076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g227074227078_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp241050
                                                          '()
                                                          _L227038_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings226948_
                                            __tmp241049))))
                                    (begin
                                      (let ((_g241048_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g241047_)
                                                   (##vector-length _g241047_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g241048_ 3)))
                                            (error "Context expects 3 values"
                                                   _g241048_)))
                                      (let ((_lift1227081_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241047_ 0)))
                                            (_lift2227082_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241047_ 1)))
                                            (_hd227083_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241047_ 2))))
                                        (let* ((_expr227085_
                                                (let ((__tmp241051
                                                       (let ((__tmp241052
                                                              (let ((__tmp241053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L227037_ '()))))
                        (declare (not safe))
                        (cons _hd227083_ __tmp241053))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241051
                                                   _stx226943_)))
                                               (_expr227087_
                                                (let ((__tmp241054
                                                       (let ((__tmp241055
                                                              (let ((__tmp241056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr227085_ '()))))
                        (declare (not safe))
                        (cons _lift2227082_ __tmp241056))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241055))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241054
                                                   _stx226943_)))
                                               (_expr227089_
                                                (let ((__tmp241057
                                                       (let ((__tmp241058
                                                              (let ((__tmp241059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr227087_ '()))))
                        (declare (not safe))
                        (cons _lift1227081_ __tmp241059))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241058))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241057
                                                   _stx226943_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr227089_))))))
                                  (let ((_g241034_
                                         (let ((__tmp241036
                                                (let ((__tmp241037
                                                       (lambda (_g227091227094_
                                                                _g227092227096_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g227091227094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g227092227096_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp241037
                                                          '()
                                                          _L227038_))))
                                           (declare (not safe))
                                           (_compile-bindings226946_
                                            __tmp241036))))
                                    (begin
                                      (let ((_g241035_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g241034_)
                                                   (##vector-length _g241034_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g241035_ 3)))
                                            (error "Context expects 3 values"
                                                   _g241035_)))
                                      (let ((_lift1227099_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241034_ 0)))
                                            (_lift2227100_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241034_ 1)))
                                            (_hd227101_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241034_ 2))))
                                        (let* ((_body227103_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L227037_)))
                                               (_expr227105_
                                                (let ((__tmp241038
                                                       (let ((__tmp241039
                                                              (let ((__tmp241040
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body227103_ '()))))
                        (declare (not safe))
                        (cons _hd227101_ __tmp241040))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241038
                                                   _stx226943_)))
                                               (_expr227107_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2227100_))
                                                    _expr227105_
                                                    (let ((__tmp241041
                                                           (let ((__tmp241042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241043
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr227105_ '()))))
                            (declare (not safe))
                            (cons _lift2227100_ __tmp241043))))
                     (declare (not safe))
                     (cons '%#let-values __tmp241042))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp241041 _stx226943_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr227109_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1227099_))
                                                    _expr227107_
                                                    (let ((__tmp241044
                                                           (let ((__tmp241045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241046
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr227107_ '()))))
                            (declare (not safe))
                            (cons _lift1227099_ __tmp241046))))
                     (declare (not safe))
                     (cons '%#let-values __tmp241045))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp241044 _stx226943_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr227109_)))))))
                           (__tmp241032
                            (let ((__obj240736
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj240736)
                              __obj240736)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp241033
                        gx#current-expander-context
                        __tmp241032))))
                  (___kont240536240537_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx226943_)))))
              (let ((___match240557240558_
                     (lambda (_e226957226989_
                              _hd226956226992_
                              _tl226955226994_
                              _e226960226997_
                              _hd226959227000_
                              _tl226958227002_
                              ___splice240534240535_
                              _target226961227005_
                              _tl226963227007_)
                       (letrec ((_loop226964227010_
                                 (lambda (_hd226962227013_ _bind226968227015_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd226962227013_))
                                       (let ((_e226965227018_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd226962227013_))))
                                         (let ((_lp-tl226967227023_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e226965227018_)))
                                               (_lp-hd226966227021_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e226965227018_))))
                                           (let ((__tmp241064
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd226966227021_
                                                          _bind226968227015_))))
                                             (declare (not safe))
                                             (_loop226964227010_
                                              _lp-tl226967227023_
                                              __tmp241064))))
                                       (let ((_bind226969227026_
                                              (reverse _bind226968227015_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl226958227002_))
                                             (let ((_e226972227029_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl226958227002_))))
                                               (let ((_tl226970227034_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e226972227029_)))
                                                     (_hd226971227032_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e226972227029_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl226970227034_))
                                                     (let ((_L227037_
                                                            _hd226971227032_)
                                                           (_L227038_
                                                            _bind226969227026_))
                                                       (if (let ((__tmp241062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241063
                                 (lambda (_g227058227061_ _g227059227063_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g227058227061_ _g227059227063_)))))
                            (declare (not safe))
                            (foldr1 __tmp241063 '() _L227038_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp241062))
                   (___kont240532240533_ _L227037_ _L227038_)
                   (___kont240536240537_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont240536240537_))))
                                             (___kont240536240537_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop226964227010_ _target226961227005_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx240530240531_))
                    (let ((_e226957226989_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx240530240531_))))
                      (let ((_tl226955226994_
                             (let ()
                               (declare (not safe))
                               (##cdr _e226957226989_)))
                            (_hd226956226992_
                             (let ()
                               (declare (not safe))
                               (##car _e226957226989_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl226955226994_))
                            (let ((_e226960226997_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl226955226994_))))
                              (let ((_tl226958227002_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e226960226997_)))
                                    (_hd226959227000_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e226960226997_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd226959227000_))
                                    (let ((___splice240534240535_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd226959227000_
                                              '0))))
                                      (let ((_tl226963227007_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice240534240535_
                                                '1)))
                                            (_target226961227005_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice240534240535_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl226963227007_))
                                            (___match240557240558_
                                             _e226957226989_
                                             _hd226956226992_
                                             _tl226955226994_
                                             _e226960226997_
                                             _hd226959227000_
                                             _tl226958227002_
                                             ___splice240534240535_
                                             _target226961227005_
                                             _tl226963227007_)
                                            (___kont240536240537_))))
                                    (___kont240536240537_))))
                            (___kont240536240537_))))
                    (___kont240536240537_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx226087_)
        (letrec* ((_bind-e__238653238654_
                   (lambda (_id226927_ _expr226928_ _compile?226929_)
                     (let ((__tmp241067
                            (let ()
                              (declare (not safe))
                              (cons _id226927_ '())))
                           (__tmp241065
                            (let ((__tmp241066
                                   (if _compile?226929_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr226928_))
                                       _expr226928_)))
                              (declare (not safe))
                              (cons __tmp241066 '()))))
                       (declare (not safe))
                       (cons __tmp241067 __tmp241065))))
                  (_bind-e__0__238655238656_
                   (lambda (_id226934_ _expr226935_)
                     (let ((_compile?226937_ '#t))
                       (declare (not safe))
                       (_bind-e__238653238654_
                        _id226934_
                        _expr226935_
                        _compile?226937_))))
                  (_bind-e226089_
                   (lambda _g241069_
                     (let ((_g241068_
                            (let ()
                              (declare (not safe))
                              (##length _g241069_))))
                       (cond ((let () (declare (not safe)) (##fx= _g241068_ 2))
                              (apply (lambda (_id226934_ _expr226935_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__238655238656_
                                          _id226934_
                                          _expr226935_)))
                                     _g241069_))
                             ((let () (declare (not safe)) (##fx= _g241068_ 3))
                              (apply (lambda (_id226939_
                                              _expr226940_
                                              _compile?226941_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__238653238654_
                                          _id226939_
                                          _expr226940_
                                          _compile?226941_)))
                                     _g241069_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g241069_))))))
                  (_compile-bindings226090_
                   (lambda (_rest226225_)
                     (let _lp226227_ ((_rest226229_ _rest226225_)
                                      (_bind226230_ '()))
                       (let* ((_rest226231226239_ _rest226229_)
                              (_else226233226247_
                               (lambda () (reverse _bind226230_)))
                              (_K226235226914_
                               (lambda (_rest226250_ _hd226251_)
                                 (let* ((___stx240580240581_ _hd226251_)
                                        (_g226256226303_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx240580240581_)))))
                                   (let ((___kont240582240583_
                                          (lambda (_L226821_ _L226822_)
                                            (let* ((___stx240560240561_
                                                    _L226821_)
                                                   (_g226837226851_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx240560240561_)))))
                                              (let ((___kont240562240563_
                                                     (lambda (_L226899_)
                                                       (let ((__tmp241070
                                                              (let ((__tmp241071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__238653238654_
                                _L226822_
                                _L226821_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp241071 _bind226230_))))
                 (declare (not safe))
                 (_lp226227_ _rest226250_ __tmp241070))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240564240565_
                                                     (lambda (_L226864_)
                                                       (let ((_g241072_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx226087_
                         _L226822_
                         _L226864_
                         '#t))))
                 (begin
                   (let ((_g241073_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g241072_)
                                (##vector-length _g241072_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g241073_ 3)))
                         (error "Context expects 3 values" _g241073_)))
                   (let ((_ids226874_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241072_ 0)))
                         (_impls226875_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241072_ 1)))
                         (_clauses226876_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241072_ 2))))
                     (let* ((_g241074_
                             (for-each gx#core-bind-runtime! _ids226874_))
                            (_xbind226879_
                             (map _bind-e226089_ _ids226874_ _impls226875_))
                            (_expr*226881_
                             (let ((__tmp241076
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses226876_)))
                                   (__tmp241075
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp241076
                                __tmp241075)))
                            (_bind*226883_
                             (let ()
                               (declare (not safe))
                               (_bind-e__238653238654_
                                _L226822_
                                _expr*226881_
                                '#f))))
                       (let ((__tmp241078
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L226822_)))
                             (__tmp241077
                              (map gxc#identifier-symbol _ids226874_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp241078
                          '" => "
                          __tmp241077))
                       (let ((__tmp241079
                              (let ((__tmp241080
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind226230_
                                               _xbind226879_))))
                                (declare (not safe))
                                (cons _bind*226883_ __tmp241080))))
                         (declare (not safe))
                         (_lp226227_ _rest226250_ __tmp241079)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match240571240572_
                                                       (lambda (_e226842226891_
                                                                _hd226841226894_
                                                                _tl226840226896_)
                                                         (let ((_L226899_
                                                                _tl226840226896_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L226899_))
                       (___kont240562240563_ _L226899_)
                       (___kont240564240565_ _tl226840226896_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx240560240561_))
                                                      (let ((_e226842226891_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx240560240561_))))
                (let ((_tl226840226896_
                       (let () (declare (not safe)) (##cdr _e226842226891_)))
                      (_hd226841226894_
                       (let () (declare (not safe)) (##car _e226842226891_))))
                  (___match240571240572_
                   _e226842226891_
                   _hd226841226894_
                   _tl226840226896_)))
              (let () (declare (not safe)) (_g226837226851_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont240584240585_
                                          (lambda (_L226649_ _L226650_)
                                            (let* ((_g226664226694_
                                                    (lambda (_g226665226691_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g226665226691_))))
                                                   (_g226663226789_
                                                    (lambda (_g226665226697_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g226665226697_))
                                                          (let ((_e226671226699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g226665226697_))))
                    (let ((_hd226670226702_
                           (let ()
                             (declare (not safe))
                             (##car _e226671226699_)))
                          (_tl226669226704_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226671226699_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl226669226704_))
                          (let ((_e226674226707_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl226669226704_))))
                            (let ((_hd226673226710_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226674226707_)))
                                  (_tl226672226712_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226674226707_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd226673226710_))
                                  (let ((_e226677226715_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd226673226710_))))
                                    (let ((_hd226676226718_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226677226715_)))
                                          (_tl226675226720_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226677226715_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd226676226718_))
                                          (let ((_e226680226723_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd226676226718_))))
                                            (let ((_hd226679226726_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e226680226723_)))
                                                  (_tl226678226728_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e226680226723_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd226679226726_))
                                                  (let ((_e226683226731_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd226679226726_))))
                                                    (let ((_hd226682226734_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e226683226731_)))
                                                          (_tl226681226736_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e226683226731_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl226681226736_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl226678226728_))
                      (let ((_e226686226739_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl226678226728_))))
                        (let ((_hd226685226742_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226686226739_)))
                              (_tl226684226744_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226686226739_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl226684226744_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl226675226720_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl226672226712_))
                                      (let ((_e226689226747_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl226672226712_))))
                                        (let ((_hd226688226750_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226689226747_)))
                                              (_tl226687226752_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226689226747_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl226687226752_))
                                              ((lambda (_L226755_
                                                        _L226756_
                                                        _L226757_)
                                                 (let* ((_lambda-id226781_
                                                         (let ((__tmp241082
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L226650_)))
                       (__tmp241081 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp241082 __tmp241081)))
                (_lambda-id226783_
                 (let ((__tmp241083
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx226087_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id226781_ __tmp241083)))
                (_g241084_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id226783_)))
                (_new-case-lambda-expr226786_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L226755_
                    _L226757_
                    _lambda-id226783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp241086
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L226650_)))
                                                         (__tmp241085
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id226783_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp241086
                                                      '" => "
                                                      __tmp241085))
                                                   (let ((__tmp241089
                                                          (let ((__tmp241090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__238653238654_
                            _L226650_
                            _new-case-lambda-expr226786_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp241090 _rest226250_)))
                 (__tmp241087
                  (let ((__tmp241088
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__238655238656_
                            _lambda-id226783_
                            _L226756_))))
                    (declare (not safe))
                    (cons __tmp241088 _bind226230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp226227_
                                                      __tmp241089
                                                      __tmp241087))))
                                               _hd226688226750_
                                               _hd226685226742_
                                               _hd226682226734_)
                                              (let ()
                                                (declare (not safe))
                                                (_g226664226694_
                                                 _g226665226697_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g226664226694_ _g226665226697_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g226664226694_ _g226665226697_)))
                              (let ()
                                (declare (not safe))
                                (_g226664226694_ _g226665226697_)))))
                      (let ()
                        (declare (not safe))
                        (_g226664226694_ _g226665226697_)))
                  (let ()
                    (declare (not safe))
                    (_g226664226694_ _g226665226697_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226664226694_
                                                     _g226665226697_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g226664226694_
                                             _g226665226697_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226664226694_ _g226665226697_)))))
                          (let ()
                            (declare (not safe))
                            (_g226664226694_ _g226665226697_)))))
                  (let ()
                    (declare (not safe))
                    (_g226664226694_ _g226665226697_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g226663226789_ _L226649_))))
                                         (___kont240586240587_
                                          (lambda (_L226373_ _L226374_)
                                            (let* ((_g226388226441_
                                                    (lambda (_g226389226438_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g226389226438_))))
                                                   (_g226387226617_
                                                    (lambda (_g226389226444_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g226389226444_))
                                                          (let ((_e226397226446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g226389226444_))))
                    (let ((_hd226396226449_
                           (let ()
                             (declare (not safe))
                             (##car _e226397226446_)))
                          (_tl226395226451_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226397226446_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl226395226451_))
                          (let ((_e226400226454_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl226395226451_))))
                            (let ((_hd226399226457_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226400226454_)))
                                  (_tl226398226459_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226400226454_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd226399226457_))
                                  (let ((_e226403226462_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd226399226457_))))
                                    (let ((_hd226402226465_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226403226462_)))
                                          (_tl226401226467_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226403226462_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd226402226465_))
                                          (let ((_e226406226470_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd226402226465_))))
                                            (let ((_hd226405226473_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e226406226470_)))
                                                  (_tl226404226475_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e226406226470_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd226405226473_))
                                                  (let ((_e226409226478_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd226405226473_))))
                                                    (let ((_hd226408226481_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e226409226478_)))
                                                          (_tl226407226483_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e226409226478_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl226407226483_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl226404226475_))
                      (let ((_e226412226486_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl226404226475_))))
                        (let ((_hd226411226489_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226412226486_)))
                              (_tl226410226491_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226412226486_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd226411226489_))
                              (let ((_e226415226494_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd226411226489_))))
                                (let ((_hd226414226497_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226415226494_)))
                                      (_tl226413226499_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226415226494_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl226413226499_))
                                      (let ((_e226418226502_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl226413226499_))))
                                        (let ((_hd226417226505_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226418226502_)))
                                              (_tl226416226507_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226418226502_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd226417226505_))
                                              (let ((_e226421226510_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd226417226505_))))
                                                (let ((_hd226420226513_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e226421226510_)))
                                                      (_tl226419226515_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e226421226510_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd226420226513_))
                                                      (let ((_e226424226518_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd226420226513_))))
                (let ((_hd226423226521_
                       (let () (declare (not safe)) (##car _e226424226518_)))
                      (_tl226422226523_
                       (let () (declare (not safe)) (##cdr _e226424226518_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd226423226521_))
                      (let ((_e226427226526_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd226423226521_))))
                        (let ((_hd226426226529_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226427226526_)))
                              (_tl226425226531_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226427226526_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl226425226531_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl226422226523_))
                                  (let ((_e226430226534_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl226422226523_))))
                                    (let ((_hd226429226537_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226430226534_)))
                                          (_tl226428226539_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226430226534_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl226428226539_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl226419226515_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl226416226507_))
                                                  (let ((_e226433226542_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl226416226507_))))
                                                    (let ((_hd226432226545_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e226433226542_)))
                                                          (_tl226431226547_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e226433226542_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl226431226547_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl226410226491_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl226401226467_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226398226459_))
                              (let ((_e226436226550_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl226398226459_))))
                                (let ((_hd226435226553_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226436226550_)))
                                      (_tl226434226555_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226436226550_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226434226555_))
                                      ((lambda (_L226558_
                                                _L226559_
                                                _L226560_
                                                _L226561_
                                                _L226562_)
                                         (let* ((_get-kws-id226602_
                                                 (let ((__tmp241092
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L226374_)))
                                                       (__tmp241091
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241092
                                                    __tmp241091)))
                                                (_get-kws-id226604_
                                                 (let ((__tmp241093
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx226087_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id226602_
                                                    __tmp241093)))
                                                (_main-id226606_
                                                 (let ((__tmp241095
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L226374_)))
                                                       (__tmp241094
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241095
                                                    __tmp241094)))
                                                (_main-id226608_
                                                 (let ((__tmp241096
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx226087_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id226606_
                                                    __tmp241096)))
                                                (_g241097_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id226604_)))
                                                (_g241098_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id226608_)))
                                                (_new-kw-dispatch226612_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L226558_
                                                    _L226562_
                                                    _get-kws-id226604_)))
                                                (_new-get-kws226614_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L226559_
                                                    _L226561_
                                                    _main-id226608_))))
                                           (let ((__tmp241101
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L226374_)))
                                                 (__tmp241100
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id226604_)))
                                                 (__tmp241099
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id226608_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp241101
                                              '" => "
                                              __tmp241100
                                              '" => "
                                              __tmp241099))
                                           (let ((__tmp241102
                                                  (let ((__tmp241107
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__238653238654_
                                                            _main-id226608_
                                                            _L226560_
                                                            '#f)))
                                                        (__tmp241103
                                                         (let ((__tmp241106
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__238653238654_
                           _get-kws-id226604_
                           _new-get-kws226614_
                           '#f)))
                       (__tmp241104
                        (let ((__tmp241105
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__238653238654_
                                  _L226374_
                                  _new-kw-dispatch226612_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp241105 _rest226250_))))
                   (declare (not safe))
                   (cons __tmp241106 __tmp241104))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp241107
                                                          __tmp241103))))
                                             (declare (not safe))
                                             (_lp226227_
                                              __tmp241102
                                              _bind226230_))))
                                       _hd226435226553_
                                       _hd226432226545_
                                       _hd226429226537_
                                       _hd226426226529_
                                       _hd226408226481_)
                                      (let ()
                                        (declare (not safe))
                                        (_g226388226441_ _g226389226444_)))))
                              (let ()
                                (declare (not safe))
                                (_g226388226441_ _g226389226444_)))
                          (let ()
                            (declare (not safe))
                            (_g226388226441_ _g226389226444_)))
                      (let ()
                        (declare (not safe))
                        (_g226388226441_ _g226389226444_)))
                  (let ()
                    (declare (not safe))
                    (_g226388226441_ _g226389226444_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226388226441_
                                                     _g226389226444_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g226388226441_
                                                 _g226389226444_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g226388226441_
                                             _g226389226444_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226388226441_ _g226389226444_)))
                              (let ()
                                (declare (not safe))
                                (_g226388226441_ _g226389226444_)))))
                      (let ()
                        (declare (not safe))
                        (_g226388226441_ _g226389226444_)))))
              (let ()
                (declare (not safe))
                (_g226388226441_ _g226389226444_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g226388226441_
                                                 _g226389226444_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g226388226441_ _g226389226444_)))))
                              (let ()
                                (declare (not safe))
                                (_g226388226441_ _g226389226444_)))))
                      (let ()
                        (declare (not safe))
                        (_g226388226441_ _g226389226444_)))
                  (let ()
                    (declare (not safe))
                    (_g226388226441_ _g226389226444_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226388226441_
                                                     _g226389226444_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g226388226441_
                                             _g226389226444_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226388226441_ _g226389226444_)))))
                          (let ()
                            (declare (not safe))
                            (_g226388226441_ _g226389226444_)))))
                  (let ()
                    (declare (not safe))
                    (_g226388226441_ _g226389226444_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g226387226617_ _L226373_))))
                                         (___kont240588240589_
                                          (lambda (_L226324_ _L226325_)
                                            (let ((__tmp241108
                                                   (let ((__tmp241109
                                                          (let ((__tmp241110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241111
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L226324_))))
                           (declare (not safe))
                           (cons __tmp241111 '()))))
                    (declare (not safe))
                    (cons _L226325_ __tmp241110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241109
                                                           _bind226230_))))
                                              (declare (not safe))
                                              (_lp226227_
                                               _rest226250_
                                               __tmp241108)))))
                                     (let* ((___match240655240656_
                                             (lambda (_e226284226349_
                                                      _hd226283226352_
                                                      _tl226282226354_
                                                      _e226287226357_
                                                      _hd226286226360_
                                                      _tl226285226362_
                                                      _e226290226365_
                                                      _hd226289226368_
                                                      _tl226288226370_)
                                               (let ((_L226373_
                                                      _hd226289226368_)
                                                     (_L226374_
                                                      _hd226286226360_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L226374_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L226373_)))
                                                     (___kont240586240587_
                                                      _L226373_
                                                      _L226374_)
                                                     (___kont240588240589_
                                                      _hd226289226368_
                                                      _hd226283226352_)))))
                                            (___match240633240634_
                                             (lambda (_e226273226625_
                                                      _hd226272226628_
                                                      _tl226271226630_
                                                      _e226276226633_
                                                      _hd226275226636_
                                                      _tl226274226638_
                                                      _e226279226641_
                                                      _hd226278226644_
                                                      _tl226277226646_)
                                               (let ((_L226649_
                                                      _hd226278226644_)
                                                     (_L226650_
                                                      _hd226275226636_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L226650_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L226649_)))
                                                     (___kont240584240585_
                                                      _L226649_
                                                      _L226650_)
                                                     (___match240655240656_
                                                      _e226273226625_
                                                      _hd226272226628_
                                                      _tl226271226630_
                                                      _e226276226633_
                                                      _hd226275226636_
                                                      _tl226274226638_
                                                      _e226279226641_
                                                      _hd226278226644_
                                                      _tl226277226646_)))))
                                            (___match240611240612_
                                             (lambda (_e226262226797_
                                                      _hd226261226800_
                                                      _tl226260226802_
                                                      _e226265226805_
                                                      _hd226264226808_
                                                      _tl226263226810_
                                                      _e226268226813_
                                                      _hd226267226816_
                                                      _tl226266226818_)
                                               (let ((_L226821_
                                                      _hd226267226816_)
                                                     (_L226822_
                                                      _hd226264226808_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L226822_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L226821_)))
                                                     (___kont240582240583_
                                                      _L226821_
                                                      _L226822_)
                                                     (___match240633240634_
                                                      _e226262226797_
                                                      _hd226261226800_
                                                      _tl226260226802_
                                                      _e226265226805_
                                                      _hd226264226808_
                                                      _tl226263226810_
                                                      _e226268226813_
                                                      _hd226267226816_
                                                      _tl226266226818_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx240580240581_))
                                           (let ((_e226262226797_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx240580240581_))))
                                             (let ((_tl226260226802_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e226262226797_)))
                                                   (_hd226261226800_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e226262226797_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd226261226800_))
                                                   (let ((_e226265226805_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd226261226800_))))
                                                     (let ((_tl226263226810_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e226265226805_)))
                                                           (_hd226264226808_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e226265226805_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl226263226810_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl226260226802_))
                       (let ((_e226268226813_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl226260226802_))))
                         (let ((_tl226266226818_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e226268226813_)))
                               (_hd226267226816_
                                (let ()
                                  (declare (not safe))
                                  (##car _e226268226813_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl226266226818_))
                               (___match240611240612_
                                _e226262226797_
                                _hd226261226800_
                                _tl226260226802_
                                _e226265226805_
                                _hd226264226808_
                                _tl226263226810_
                                _e226268226813_
                                _hd226267226816_
                                _tl226266226818_)
                               (let ()
                                 (declare (not safe))
                                 (_g226256226303_)))))
                       (let () (declare (not safe)) (_g226256226303_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl226260226802_))
                       (let ((_e226298226316_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl226260226802_))))
                         (let ((_tl226296226321_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e226298226316_)))
                               (_hd226297226319_
                                (let ()
                                  (declare (not safe))
                                  (##car _e226298226316_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl226296226321_))
                               (___kont240588240589_
                                _hd226297226319_
                                _hd226261226800_)
                               (let ()
                                 (declare (not safe))
                                 (_g226256226303_)))))
                       (let () (declare (not safe)) (_g226256226303_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl226260226802_))
                                                       (let ((_e226298226316_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl226260226802_))))
                 (let ((_tl226296226321_
                        (let () (declare (not safe)) (##cdr _e226298226316_)))
                       (_hd226297226319_
                        (let () (declare (not safe)) (##car _e226298226316_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl226296226321_))
                       (___kont240588240589_ _hd226297226319_ _hd226261226800_)
                       (let () (declare (not safe)) (_g226256226303_)))))
               (let () (declare (not safe)) (_g226256226303_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g226256226303_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest226231226239_))
                             (let ((_hd226236226917_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest226231226239_)))
                                   (_tl226237226919_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest226231226239_))))
                               (let* ((_hd226922_ _hd226236226917_)
                                      (_rest226924_ _tl226237226919_))
                                 (declare (not safe))
                                 (_K226235226914_ _rest226924_ _hd226922_)))
                             (let ()
                               (declare (not safe))
                               (_else226233226247_))))))))
          (let* ((___stx240672240673_ _stx226087_)
                 (_g226093226120_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx240672240673_)))))
            (let ((___kont240674240675_
                   (lambda (_L226180_ _L226181_ _L226182_)
                     (let ((__tmp241113
                            (lambda ()
                              (let ((_hd226219_
                                     (let ((__tmp241114
                                            (let ((__tmp241115
                                                   (lambda (_g226211226214_
                                                            _g226212226216_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g226211226214_
                                                             _g226212226216_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241115
                                                      '()
                                                      _L226181_))))
                                       (declare (not safe))
                                       (_compile-bindings226090_ __tmp241114)))
                                    (_body226220_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L226180_))))
                                (let ((__tmp241116
                                       (let ((__tmp241117
                                              (let ((__tmp241118
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body226220_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd226219_
                                                      __tmp241118))))
                                         (declare (not safe))
                                         (cons _L226182_ __tmp241117))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp241116
                                   _stx226087_)))))
                           (__tmp241112
                            (let ((__obj240737
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj240737)
                              __obj240737)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp241113
                        gx#current-expander-context
                        __tmp241112))))
                  (___kont240678240679_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx226087_)))))
              (let ((___match240699240700_
                     (lambda (_e226100226132_
                              _hd226099226135_
                              _tl226098226137_
                              _e226103226140_
                              _hd226102226143_
                              _tl226101226145_
                              ___splice240676240677_
                              _target226104226148_
                              _tl226106226150_)
                       (letrec ((_loop226107226153_
                                 (lambda (_hd226105226156_ _bind226111226158_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd226105226156_))
                                       (let ((_e226108226161_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd226105226156_))))
                                         (let ((_lp-tl226110226166_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e226108226161_)))
                                               (_lp-hd226109226164_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e226108226161_))))
                                           (let ((__tmp241121
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd226109226164_
                                                          _bind226111226158_))))
                                             (declare (not safe))
                                             (_loop226107226153_
                                              _lp-tl226110226166_
                                              __tmp241121))))
                                       (let ((_bind226112226169_
                                              (reverse _bind226111226158_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl226101226145_))
                                             (let ((_e226115226172_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl226101226145_))))
                                               (let ((_tl226113226177_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e226115226172_)))
                                                     (_hd226114226175_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e226115226172_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl226113226177_))
                                                     (let ((_L226180_
                                                            _hd226114226175_)
                                                           (_L226181_
                                                            _bind226112226169_)
                                                           (_L226182_
                                                            _hd226099226135_))
                                                       (if (let ((__tmp241119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241120
                                 (lambda (_g226203226206_ _g226204226208_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g226203226206_ _g226204226208_)))))
                            (declare (not safe))
                            (foldr1 __tmp241120 '() _L226181_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp241119))
                   (___kont240674240675_ _L226180_ _L226181_ _L226182_)
                   (___kont240678240679_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont240678240679_))))
                                             (___kont240678240679_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop226107226153_ _target226104226148_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx240672240673_))
                    (let ((_e226100226132_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx240672240673_))))
                      (let ((_tl226098226137_
                             (let ()
                               (declare (not safe))
                               (##cdr _e226100226132_)))
                            (_hd226099226135_
                             (let ()
                               (declare (not safe))
                               (##car _e226100226132_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl226098226137_))
                            (let ((_e226103226140_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl226098226137_))))
                              (let ((_tl226101226145_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e226103226140_)))
                                    (_hd226102226143_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e226103226140_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd226102226143_))
                                    (let ((___splice240676240677_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd226102226143_
                                              '0))))
                                      (let ((_tl226106226150_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice240676240677_
                                                '1)))
                                            (_target226104226148_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice240676240677_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl226106226150_))
                                            (___match240699240700_
                                             _e226100226132_
                                             _hd226099226135_
                                             _tl226098226137_
                                             _e226103226140_
                                             _hd226102226143_
                                             _tl226101226145_
                                             ___splice240676240677_
                                             _target226104226148_
                                             _tl226106226150_)
                                            (___kont240678240679_))))
                                    (___kont240678240679_))))
                            (___kont240678240679_))))
                    (___kont240678240679_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind226005_)
        (let* ((___stx240702240703_ _bind226005_)
               (_g226008226025_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240702240703_)))))
          (let ((___kont240704240705_
                 (lambda (_L226061_ _L226062_)
                   (if (let () (declare (not safe)) (gx#identifier? _L226062_))
                       (let ((_$e226078_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L226061_))))
                         (if _$e226078_
                             _$e226078_
                             (let ((_$e226081_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L226061_))))
                               (if _$e226081_
                                   _$e226081_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L226061_))))))
                       '#f)))
                (___kont240706240707_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240702240703_))
                (let ((_e226014226037_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240702240703_))))
                  (let ((_tl226012226042_
                         (let () (declare (not safe)) (##cdr _e226014226037_)))
                        (_hd226013226040_
                         (let ()
                           (declare (not safe))
                           (##car _e226014226037_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd226013226040_))
                        (let ((_e226017226045_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd226013226040_))))
                          (let ((_tl226015226050_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e226017226045_)))
                                (_hd226016226048_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e226017226045_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl226015226050_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl226012226042_))
                                    (let ((_e226020226053_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl226012226042_))))
                                      (let ((_tl226018226058_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e226020226053_)))
                                            (_hd226019226056_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e226020226053_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl226018226058_))
                                            (___kont240704240705_
                                             _hd226019226056_
                                             _hd226016226048_)
                                            (___kont240706240707_))))
                                    (___kont240706240707_))
                                (___kont240706240707_))))
                        (___kont240706240707_))))
                (___kont240706240707_))))))))
