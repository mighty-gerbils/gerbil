(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1710238839)
  (begin
    (define gxc#::collect-top-level-type-info::t
      (let ((__tmp128792 (list gxc#::void::t))
            (__tmp128790
             (let ((__tmp128791
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp128791 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-top-level-type-info::t
         '::collect-top-level-type-info
         __tmp128792
         '()
         __tmp128790
         '#f)))
    (define gxc#::collect-top-level-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-top-level-type-info::t)))
    (define gxc#make-::collect-top-level-type-info
      (lambda _$args126687_
        (apply make-instance
               gxc#::collect-top-level-type-info::t
               _$args126687_)))
    (define gxc#::collect-top-level-type-info-bind-methods!
      (let ((__tmp128793
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-top-level-type-info::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-top-level-type-info::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-top-level-type-info::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-top-level-type-info::t
                  '%#define-values
                  gxc#collect-top-level-type-define-values%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::collect-top-level-type-info::t)))))
        (declare (not safe))
        (make-promise __tmp128793)))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx126679_)
        (force gxc#::collect-top-level-type-info-bind-methods!)
        (let* ((_self126682_
                (let ((__obj128774
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-top-level-type-info::t))))
                  __obj128774))
               (__tmp128794
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self126682_ _stx126679_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp128794
           gxc#current-compile-method
           _self126682_))))
    (define gxc#::basic-expression-top-level-type::t
      (let ((__tmp128797 (list gxc#::false::t))
            (__tmp128795
             (let ((__tmp128796
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp128796 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-top-level-type::t
         '::basic-expression-top-level-type
         __tmp128797
         '()
         __tmp128795
         '#f)))
    (define gxc#::basic-expression-top-level-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-top-level-type::t)))
    (define gxc#make-::basic-expression-top-level-type
      (lambda _$args126676_
        (apply make-instance
               gxc#::basic-expression-top-level-type::t
               _$args126676_)))
    (define gxc#::basic-expression-top-level-type-bind-methods!
      (let ((__tmp128798
             (lambda ()
               (force gxc#::false-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-top-level-type::t
                  '%#begin-annotation
                  gxc#basic-expression-type-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-top-level-type::t
                  '%#call
                  gxc#basic-expression-type-call%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::basic-expression-top-level-type::t)))))
        (declare (not safe))
        (make-promise __tmp128798)))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx126668_)
        (force gxc#::basic-expression-top-level-type-bind-methods!)
        (let* ((_self126671_
                (let ((__obj128776
                       (let ()
                         (declare (not safe))
                         (##structure
                          gxc#::basic-expression-top-level-type::t))))
                  __obj128776))
               (__tmp128799
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self126671_ _stx126668_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp128799
           gxc#current-compile-method
           _self126671_))))
    (define gxc#::collect-type-info::t
      (let ((__tmp128802 (list gxc#::void::t))
            (__tmp128800
             (let ((__tmp128801
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp128801 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-type-info::t
         '::collect-type-info
         __tmp128802
         '()
         __tmp128800
         '#f)))
    (define gxc#::collect-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-type-info::t)))
    (define gxc#make-::collect-type-info
      (lambda _$args126665_
        (apply make-instance gxc#::collect-type-info::t _$args126665_)))
    (define gxc#::collect-type-info-bind-methods!
      (let ((__tmp128803
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#define-values
                  gxc#collect-type-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#let-values
                  gxc#collect-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#letrec-values
                  gxc#collect-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#letrec*-values
                  gxc#collect-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#call
                  gxc#collect-type-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#if
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#set!
                  gxc#apply-body-setq%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::collect-type-info::t)))))
        (declare (not safe))
        (make-promise __tmp128803)))
    (define gxc#apply-collect-type-info
      (lambda (_stx126657_)
        (force gxc#::collect-type-info-bind-methods!)
        (let* ((_self126660_
                (let ((__obj128778
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-type-info::t))))
                  __obj128778))
               (__tmp128804
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self126660_ _stx126657_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp128804
           gxc#current-compile-method
           _self126660_))))
    (define gxc#::basic-expression-type::t
      (let ((__tmp128807 (list gxc#::false::t))
            (__tmp128805
             (let ((__tmp128806
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp128806 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-type::t
         '::basic-expression-type
         __tmp128807
         '()
         __tmp128805
         '#f)))
    (define gxc#::basic-expression-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-type::t)))
    (define gxc#make-::basic-expression-type
      (lambda _$args126654_
        (apply make-instance gxc#::basic-expression-type::t _$args126654_)))
    (define gxc#::basic-expression-type-bind-methods!
      (let ((__tmp128808
             (lambda ()
               (force gxc#::false-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#begin
                  gxc#basic-expression-type-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#begin-annotation
                  gxc#basic-expression-type-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#lambda
                  gxc#basic-expression-type-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#case-lambda
                  gxc#basic-expression-type-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#let-values
                  gxc#basic-expression-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#letrec-values
                  gxc#basic-expression-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#letrec*-values
                  gxc#basic-expression-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#call
                  gxc#basic-expression-type-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#ref
                  gxc#basic-expression-type-ref%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::basic-expression-type::t)))))
        (declare (not safe))
        (make-promise __tmp128808)))
    (define gxc#apply-basic-expression-type
      (lambda (_stx126646_)
        (force gxc#::basic-expression-type-bind-methods!)
        (let* ((_self126649_
                (let ((__obj128780
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::basic-expression-type::t))))
                  __obj128780))
               (__tmp128809
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self126649_ _stx126646_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp128809
           gxc#current-compile-method
           _self126649_))))
    (define gxc#::lift-top-lambdas::t
      (let ((__tmp128812 (list gxc#::basic-xform::t))
            (__tmp128810
             (let ((__tmp128811
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp128811 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-top-lambdas::t
         '::lift-top-lambdas
         __tmp128812
         '()
         __tmp128810
         '#f)))
    (define gxc#::lift-top-lambdas?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-top-lambdas::t)))
    (define gxc#make-::lift-top-lambdas
      (lambda _$args126643_
        (apply make-instance gxc#::lift-top-lambdas::t _$args126643_)))
    (define gxc#::lift-top-lambdas-bind-methods!
      (let ((__tmp128813
             (lambda ()
               (force gxc#::basic-xform-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::lift-top-lambdas::t
                  '%#define-values
                  gxc#lift-top-lambda-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::lift-top-lambdas::t
                  '%#let-values
                  gxc#lift-top-lambda-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::lift-top-lambdas::t
                  '%#letrec-values
                  gxc#lift-top-lambda-letrec-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::lift-top-lambdas::t
                  '%#letrec*-values
                  gxc#lift-top-lambda-letrec-values%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::lift-top-lambdas::t)))))
        (declare (not safe))
        (make-promise __tmp128813)))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx126635_)
        (force gxc#::lift-top-lambdas-bind-methods!)
        (let* ((_self126638_
                (let ((__obj128782
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::lift-top-lambdas::t))))
                  __obj128782))
               (__tmp128814
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self126638_ _stx126635_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp128814
           gxc#current-compile-method
           _self126638_))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_self126537_ _stx126538_)
        (let* ((___stx126700126701_ _stx126538_)
               (_g126541126561_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126700126701_)))))
          (let ((___kont126702126703_
                 (lambda (_L126605_ _L126606_)
                   (let ((_sym126624_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126606_))))
                     (if (let ((__tmp128815 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128815 _sym126624_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126624_))
                         (let ((_type126625126627_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L126605_))))
                           (if _type126625126627_
                               (let ((_type126630_ _type126625126627_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym126624_
                                  _type126630_))
                               '#f))))))
                (___kont126704126705_ (lambda () '#!void)))
            (let ((___match126733126734_
                   (lambda (_e126547126573_
                            _hd126546126576_
                            _tl126545126578_
                            _e126550126581_
                            _hd126549126584_
                            _tl126548126586_
                            _e126553126589_
                            _hd126552126592_
                            _tl126551126594_
                            _e126556126597_
                            _hd126555126600_
                            _tl126554126602_)
                     (let ((_L126605_ _hd126555126600_)
                           (_L126606_ _hd126552126592_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126606_))
                           (___kont126702126703_ _L126605_ _L126606_)
                           (___kont126704126705_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126700126701_))
                  (let ((_e126547126573_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126700126701_))))
                    (let ((_tl126545126578_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126547126573_)))
                          (_hd126546126576_
                           (let ()
                             (declare (not safe))
                             (##car _e126547126573_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126545126578_))
                          (let ((_e126550126581_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126545126578_))))
                            (let ((_tl126548126586_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126550126581_)))
                                  (_hd126549126584_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126550126581_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126549126584_))
                                  (let ((_e126553126589_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126549126584_))))
                                    (let ((_tl126551126594_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126553126589_)))
                                          (_hd126552126592_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126553126589_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126551126594_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126548126586_))
                                              (let ((_e126556126597_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126548126586_))))
                                                (let ((_tl126554126602_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126556126597_)))
                                                      (_hd126555126600_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126556126597_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126554126602_))
                                                      (___match126733126734_
                                                       _e126547126573_
                                                       _hd126546126576_
                                                       _tl126545126578_
                                                       _e126550126581_
                                                       _hd126549126584_
                                                       _tl126548126586_
                                                       _e126553126589_
                                                       _hd126552126592_
                                                       _tl126551126594_
                                                       _e126556126597_
                                                       _hd126555126600_
                                                       _tl126554126602_)
                                                      (___kont126704126705_))))
                                              (___kont126704126705_))
                                          (___kont126704126705_))))
                                  (___kont126704126705_))))
                          (___kont126704126705_))))
                  (___kont126704126705_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_self126392_ _stx126393_)
        (let* ((___stx126736126737_ _stx126393_)
               (_g126396126427_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126736126737_)))))
          (let ((___kont126738126739_
                 (lambda (_L126509_ _L126510_)
                   (let ((_sym126526_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126510_))))
                     (if (let ((__tmp128816 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128816 _sym126526_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126526_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym126526_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym126526_))
                             (let ((_type126527126529_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L126509_))))
                               (if _type126527126529_
                                   (let ((_type126532_ _type126527126529_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym126526_
                                      _type126532_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self126392_ _L126509_)))))
                (___kont126740126741_
                 (lambda (_L126456_ _L126457_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self126392_ _L126456_)))))
            (let ((___match126769126770_
                   (lambda (_e126402126477_
                            _hd126401126480_
                            _tl126400126482_
                            _e126405126485_
                            _hd126404126488_
                            _tl126403126490_
                            _e126408126493_
                            _hd126407126496_
                            _tl126406126498_
                            _e126411126501_
                            _hd126410126504_
                            _tl126409126506_)
                     (let ((_L126509_ _hd126410126504_)
                           (_L126510_ _hd126407126496_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126510_))
                           (___kont126738126739_ _L126509_ _L126510_)
                           (___kont126740126741_
                            _hd126410126504_
                            _hd126404126488_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126736126737_))
                  (let ((_e126402126477_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126736126737_))))
                    (let ((_tl126400126482_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126402126477_)))
                          (_hd126401126480_
                           (let ()
                             (declare (not safe))
                             (##car _e126402126477_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126400126482_))
                          (let ((_e126405126485_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126400126482_))))
                            (let ((_tl126403126490_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126405126485_)))
                                  (_hd126404126488_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126405126485_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126404126488_))
                                  (let ((_e126408126493_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126404126488_))))
                                    (let ((_tl126406126498_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126408126493_)))
                                          (_hd126407126496_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126408126493_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126406126498_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126403126490_))
                                              (let ((_e126411126501_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126403126490_))))
                                                (let ((_tl126409126506_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126411126501_)))
                                                      (_hd126410126504_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126411126501_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126409126506_))
                                                      (___match126769126770_
                                                       _e126402126477_
                                                       _hd126401126480_
                                                       _tl126400126482_
                                                       _e126405126485_
                                                       _hd126404126488_
                                                       _tl126403126490_
                                                       _e126408126493_
                                                       _hd126407126496_
                                                       _tl126406126498_
                                                       _e126411126501_
                                                       _hd126410126504_
                                                       _tl126409126506_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126396126427_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126396126427_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126403126490_))
                                              (let ((_e126422126448_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126403126490_))))
                                                (let ((_tl126420126453_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126422126448_)))
                                                      (_hd126421126451_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126422126448_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126420126453_))
                                                      (___kont126740126741_
                                                       _hd126421126451_
                                                       _hd126404126488_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126396126427_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126396126427_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126403126490_))
                                      (let ((_e126422126448_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126403126490_))))
                                        (let ((_tl126420126453_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126422126448_)))
                                              (_hd126421126451_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126422126448_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126420126453_))
                                              (___kont126740126741_
                                               _hd126421126451_
                                               _hd126404126488_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126396126427_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126396126427_))))))
                          (let () (declare (not safe)) (_g126396126427_)))))
                  (let () (declare (not safe)) (_g126396126427_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_self126172_ _stx126173_)
        (letrec ((_collect-e126175_
                  (lambda (_hd126336_ _expr126337_)
                    (let* ((___stx126792126793_ _hd126336_)
                           (_g126340126350_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx126792126793_)))))
                      (let ((___kont126794126795_
                             (lambda (_L126370_)
                               (let ((_sym126381_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L126370_))))
                                 (if (let ((__tmp128817
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp128817 _sym126381_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym126381_))
                                     (let ((_type126382126384_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr126337_))))
                                       (if _type126382126384_
                                           (let ((_type126387_
                                                  _type126382126384_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym126381_
                                              _type126387_
                                              '#t))
                                           '#f))))))
                            (___kont126796126797_ (lambda () '#!void)))
                        (let ((___match126805126806_
                               (lambda (_e126345126362_
                                        _hd126344126365_
                                        _tl126343126367_)
                                 (let ((_L126370_ _hd126344126365_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L126370_))
                                       (___kont126794126795_ _L126370_)
                                       (___kont126796126797_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx126792126793_))
                              (let ((_e126345126362_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx126792126793_))))
                                (let ((_tl126343126367_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126345126362_)))
                                      (_hd126344126365_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126345126362_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126343126367_))
                                      (___match126805126806_
                                       _e126345126362_
                                       _hd126344126365_
                                       _tl126343126367_)
                                      (___kont126796126797_))))
                              (___kont126796126797_))))))))
          (let* ((_g126177126212_
                  (lambda (_g126178126209_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g126178126209_))))
                 (_g126176126333_
                  (lambda (_g126178126215_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g126178126215_))
                        (let ((_e126184126217_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g126178126215_))))
                          (let ((_hd126183126220_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e126184126217_)))
                                (_tl126182126222_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e126184126217_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126182126222_))
                                (let ((_e126187126225_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126182126222_))))
                                  (let ((_hd126186126228_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126187126225_)))
                                        (_tl126185126230_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126187126225_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd126186126228_))
                                        (let ((_g128818_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd126186126228_
                                                  '0))))
                                          (begin
                                            (let ((_g128819_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g128818_)
                                                         (##vector-length
                                                          _g128818_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g128819_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g128819_)))
                                            (let ((_target126188126233_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128818_
                                                      0)))
                                                  (_tl126190126235_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128818_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126190126235_))
                                                  (letrec ((_loop126191126238_
                                                            (lambda (_hd126189126241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr126195126243_
                             _hd126196126245_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126189126241_))
                          (let ((_e126192126248_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126189126241_))))
                            (let ((_lp-hd126193126251_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126192126248_)))
                                  (_lp-tl126194126253_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126192126248_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd126193126251_))
                                  (let ((_e126201126256_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd126193126251_))))
                                    (let ((_hd126200126259_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126201126256_)))
                                          (_tl126199126261_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126201126256_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126199126261_))
                                          (let ((_e126204126264_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126199126261_))))
                                            (let ((_hd126203126267_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126204126264_)))
                                                  (_tl126202126269_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126204126264_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126202126269_))
                                                  (let ((__tmp128824
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd126203126267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr126195126243_)))
                (__tmp128823
                 (let ()
                   (declare (not safe))
                   (cons _hd126200126259_ _hd126196126245_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop126191126238_
                                                     _lp-tl126194126253_
                                                     __tmp128824
                                                     __tmp128823))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126177126212_
                                                     _g126178126215_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g126177126212_
                                             _g126178126215_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g126177126212_ _g126178126215_)))))
                          (let ((_expr126197126272_
                                 (reverse _expr126195126243_))
                                (_hd126198126274_ (reverse _hd126196126245_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126185126230_))
                                (let ((_e126207126277_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126185126230_))))
                                  (let ((_hd126206126280_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126207126277_)))
                                        (_tl126205126282_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126207126277_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl126205126282_))
                                        ((lambda (_L126285_
                                                  _L126286_
                                                  _L126287_)
                                           (for-each
                                            _collect-e126175_
                                            (let ((__tmp128820
                                                   (lambda (_g126307126310_
                                                            _g126308126312_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126307126310_
                                                             _g126308126312_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128820
                                                      '()
                                                      _L126287_))
                                            (let ((__tmp128821
                                                   (lambda (_g126314126317_
                                                            _g126315126319_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126314126317_
                                                             _g126315126319_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128821
                                                      '()
                                                      _L126286_)))
                                           (for-each
                                            (lambda (_g126321126323_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self126172_
                                                 _g126321126323_)))
                                            (let ((__tmp128822
                                                   (lambda (_g126325126328_
                                                            _g126326126330_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126325126328_
                                                             _g126326126330_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128822
                                                      '()
                                                      _L126286_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self126172_
                                              _L126285_)))
                                         _hd126206126280_
                                         _expr126197126272_
                                         _hd126198126274_)
                                        (let ()
                                          (declare (not safe))
                                          (_g126177126212_ _g126178126215_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126177126212_ _g126178126215_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop126191126238_
                                                       _target126188126233_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126177126212_
                                                     _g126178126215_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g126177126212_ _g126178126215_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126177126212_ _g126178126215_)))))
                        (let ()
                          (declare (not safe))
                          (_g126177126212_ _g126178126215_))))))
            (declare (not safe))
            (_g126176126333_ _stx126173_)))))
    (define gxc#collect-type-call%
      (lambda (_self125659_ _stx125660_)
        (let* ((___stx126808126809_ _stx125660_)
               (_g125664125779_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126808126809_)))))
          (let ((___kont126810126811_
                 (lambda (_L126122_ _L126123_ _L126124_ _L126125_ _L126126_)
                   (let ((__tmp128828
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126125_)))
                         (__tmp128827
                          (let () (declare (not safe)) (gx#stx-e _L126124_)))
                         (__tmp128826
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126123_)))
                         (__tmp128825
                          (let () (declare (not safe)) (gx#stx-e _L126122_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128828
                      __tmp128827
                      __tmp128826
                      __tmp128825))))
                (___kont126812126813_
                 (lambda (_L125950_ _L125951_ _L125952_ _L125953_)
                   (let ((__tmp128831
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125952_)))
                         (__tmp128830
                          (let () (declare (not safe)) (gx#stx-e _L125951_)))
                         (__tmp128829
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125950_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128831
                      __tmp128830
                      __tmp128829
                      '#f))))
                (___kont126814126815_
                 (lambda (_L125816_)
                   (for-each
                    (lambda (_g125829125831_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self125659_ _g125829125831_)))
                    (let ((__tmp128832
                           (lambda (_g125833125836_ _g125834125838_)
                             (let ()
                               (declare (not safe))
                               (cons _g125833125836_ _g125834125838_)))))
                      (declare (not safe))
                      (foldr1 __tmp128832 '() _L125816_))))))
            (let* ((___match127065127066_
                    (lambda (_e125765125784_
                             _hd125764125787_
                             _tl125763125789_
                             ___splice126816126817_
                             _target125766125792_
                             _tl125768125794_)
                      (letrec ((_loop125769125797_
                                (lambda (_hd125767125800_ _expr125773125802_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd125767125800_))
                                      (let ((_e125770125805_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd125767125800_))))
                                        (let ((_lp-tl125772125810_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125770125805_)))
                                              (_lp-hd125771125808_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125770125805_))))
                                          (let ((__tmp128833
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd125771125808_
                                                         _expr125773125802_))))
                                            (declare (not safe))
                                            (_loop125769125797_
                                             _lp-tl125772125810_
                                             __tmp128833))))
                                      (let ((_expr125774125813_
                                             (reverse _expr125773125802_)))
                                        (___kont126814126815_
                                         _expr125774125813_))))))
                        (let ()
                          (declare (not safe))
                          (_loop125769125797_ _target125766125792_ '())))))
                   (___match126945126946_
                    (lambda (_e125673125994_
                             _hd125672125997_
                             _tl125671125999_
                             _e125676126002_
                             _hd125675126005_
                             _tl125674126007_
                             _e125679126010_
                             _hd125678126013_
                             _tl125677126015_
                             _e125682126018_
                             _hd125681126021_
                             _tl125680126023_
                             _e125685126026_
                             _hd125684126029_
                             _tl125683126031_
                             _e125688126034_
                             _hd125687126037_
                             _tl125686126039_
                             _e125691126042_
                             _hd125690126045_
                             _tl125689126047_
                             _e125694126050_
                             _hd125693126053_
                             _tl125692126055_
                             _e125697126058_
                             _hd125696126061_
                             _tl125695126063_
                             _e125700126066_
                             _hd125699126069_
                             _tl125698126071_
                             _e125703126074_
                             _hd125702126077_
                             _tl125701126079_
                             _e125706126082_
                             _hd125705126085_
                             _tl125704126087_
                             _e125709126090_
                             _hd125708126093_
                             _tl125707126095_
                             _e125712126098_
                             _hd125711126101_
                             _tl125710126103_
                             _e125715126106_
                             _hd125714126109_
                             _tl125713126111_
                             _e125718126114_
                             _hd125717126117_
                             _tl125716126119_)
                      (let ((_L126122_ _hd125717126117_)
                            (_L126123_ _hd125708126093_)
                            (_L126124_ _hd125699126069_)
                            (_L126125_ _hd125690126045_)
                            (_L126126_ _hd125681126021_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L126126_
                               'bind-method!))
                            (___kont126810126811_
                             _L126122_
                             _L126123_
                             _L126124_
                             _L126125_
                             _L126126_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl125671125999_))
                                (let ((___splice126816126817_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl125671125999_
                                          '0))))
                                  (let ((_tl125768125794_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126816126817_
                                            '1)))
                                        (_target125766125792_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126816126817_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125768125794_))
                                        (___match127065127066_
                                         _e125673125994_
                                         _hd125672125997_
                                         _tl125671125999_
                                         ___splice126816126817_
                                         _target125766125792_
                                         _tl125768125794_)
                                        (let ()
                                          (declare (not safe))
                                          (_g125664125779_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125664125779_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126808126809_))
                  (let ((_e125673125994_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126808126809_))))
                    (let ((_tl125671125999_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125673125994_)))
                          (_hd125672125997_
                           (let ()
                             (declare (not safe))
                             (##car _e125673125994_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125671125999_))
                          (let ((_e125676126002_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125671125999_))))
                            (let ((_tl125674126007_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125676126002_)))
                                  (_hd125675126005_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125676126002_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125675126005_))
                                  (let ((_e125679126010_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125675126005_))))
                                    (let ((_tl125677126015_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125679126010_)))
                                          (_hd125678126013_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125679126010_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd125678126013_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd125678126013_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125677126015_))
                                                  (let ((_e125682126018_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125677126015_))))
                                                    (let ((_tl125680126023_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125682126018_)))
                                                          (_hd125681126021_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125682126018_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125680126023_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl125674126007_))
                      (let ((_e125685126026_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125674126007_))))
                        (let ((_tl125683126031_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125685126026_)))
                              (_hd125684126029_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125685126026_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd125684126029_))
                              (let ((_e125688126034_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd125684126029_))))
                                (let ((_tl125686126039_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125688126034_)))
                                      (_hd125687126037_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125688126034_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd125687126037_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd125687126037_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125686126039_))
                                              (let ((_e125691126042_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125686126039_))))
                                                (let ((_tl125689126047_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125691126042_)))
                                                      (_hd125690126045_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125691126042_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125689126047_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125683126031_))
                                                          (let ((_e125694126050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125683126031_))))
                    (let ((_tl125692126055_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125694126050_)))
                          (_hd125693126053_
                           (let ()
                             (declare (not safe))
                             (##car _e125694126050_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125693126053_))
                          (let ((_e125697126058_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125693126053_))))
                            (let ((_tl125695126063_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125697126058_)))
                                  (_hd125696126061_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125697126058_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125696126061_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd125696126061_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125695126063_))
                                          (let ((_e125700126066_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125695126063_))))
                                            (let ((_tl125698126071_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125700126066_)))
                                                  (_hd125699126069_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125700126066_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125698126071_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125692126055_))
                                                      (let ((_e125703126074_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125692126055_))))
                (let ((_tl125701126079_
                       (let () (declare (not safe)) (##cdr _e125703126074_)))
                      (_hd125702126077_
                       (let () (declare (not safe)) (##car _e125703126074_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125702126077_))
                      (let ((_e125706126082_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125702126077_))))
                        (let ((_tl125704126087_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125706126082_)))
                              (_hd125705126085_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125706126082_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125705126085_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125705126085_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125704126087_))
                                      (let ((_e125709126090_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125704126087_))))
                                        (let ((_tl125707126095_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125709126090_)))
                                              (_hd125708126093_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125709126090_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125707126095_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125701126079_))
                                                  (let ((_e125712126098_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125701126079_))))
                                                    (let ((_tl125710126103_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125712126098_)))
                                                          (_hd125711126101_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125712126098_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125711126101_))
                                                          (let ((_e125715126106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125711126101_))))
                    (let ((_tl125713126111_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125715126106_)))
                          (_hd125714126109_
                           (let ()
                             (declare (not safe))
                             (##car _e125715126106_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125714126109_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd125714126109_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125713126111_))
                                  (let ((_e125718126114_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125713126111_))))
                                    (let ((_tl125716126119_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125718126114_)))
                                          (_hd125717126117_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125718126114_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125716126119_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125710126103_))
                                              (___match126945126946_
                                               _e125673125994_
                                               _hd125672125997_
                                               _tl125671125999_
                                               _e125676126002_
                                               _hd125675126005_
                                               _tl125674126007_
                                               _e125679126010_
                                               _hd125678126013_
                                               _tl125677126015_
                                               _e125682126018_
                                               _hd125681126021_
                                               _tl125680126023_
                                               _e125685126026_
                                               _hd125684126029_
                                               _tl125683126031_
                                               _e125688126034_
                                               _hd125687126037_
                                               _tl125686126039_
                                               _e125691126042_
                                               _hd125690126045_
                                               _tl125689126047_
                                               _e125694126050_
                                               _hd125693126053_
                                               _tl125692126055_
                                               _e125697126058_
                                               _hd125696126061_
                                               _tl125695126063_
                                               _e125700126066_
                                               _hd125699126069_
                                               _tl125698126071_
                                               _e125703126074_
                                               _hd125702126077_
                                               _tl125701126079_
                                               _e125706126082_
                                               _hd125705126085_
                                               _tl125704126087_
                                               _e125709126090_
                                               _hd125708126093_
                                               _tl125707126095_
                                               _e125712126098_
                                               _hd125711126101_
                                               _tl125710126103_
                                               _e125715126106_
                                               _hd125714126109_
                                               _tl125713126111_
                                               _e125718126114_
                                               _hd125717126117_
                                               _tl125716126119_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125671125999_))
                                                  (let ((___splice126816126817_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125671125999_
                                                            '0))))
                                                    (let ((_tl125768125794_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126816126817_
                                                              '1)))
                                                          (_target125766125792_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126816126817_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125768125794_))
                                                          (___match127065127066_
                                                           _e125673125994_
                                                           _hd125672125997_
                                                           _tl125671125999_
                                                           ___splice126816126817_
                                                           _target125766125792_
                                                           _tl125768125794_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125664125779_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125664125779_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125671125999_))
                                              (let ((___splice126816126817_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125671125999_
                                                        '0))))
                                                (let ((_tl125768125794_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126816126817_
                                                          '1)))
                                                      (_target125766125792_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126816126817_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125768125794_))
                                                      (___match127065127066_
                                                       _e125673125994_
                                                       _hd125672125997_
                                                       _tl125671125999_
                                                       ___splice126816126817_
                                                       _target125766125792_
                                                       _tl125768125794_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125664125779_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125664125779_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125671125999_))
                                      (let ((___splice126816126817_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125671125999_
                                                '0))))
                                        (let ((_tl125768125794_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126816126817_
                                                  '1)))
                                              (_target125766125792_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126816126817_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125768125794_))
                                              (___match127065127066_
                                               _e125673125994_
                                               _hd125672125997_
                                               _tl125671125999_
                                               ___splice126816126817_
                                               _target125766125792_
                                               _tl125768125794_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125664125779_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125664125779_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125671125999_))
                                  (let ((___splice126816126817_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125671125999_
                                            '0))))
                                    (let ((_tl125768125794_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126816126817_
                                              '1)))
                                          (_target125766125792_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126816126817_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125768125794_))
                                          (___match127065127066_
                                           _e125673125994_
                                           _hd125672125997_
                                           _tl125671125999_
                                           ___splice126816126817_
                                           _target125766125792_
                                           _tl125768125794_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125664125779_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125664125779_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125671125999_))
                              (let ((___splice126816126817_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125671125999_
                                        '0))))
                                (let ((_tl125768125794_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126816126817_
                                          '1)))
                                      (_target125766125792_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126816126817_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125768125794_))
                                      (___match127065127066_
                                       _e125673125994_
                                       _hd125672125997_
                                       _tl125671125999_
                                       ___splice126816126817_
                                       _target125766125792_
                                       _tl125768125794_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125664125779_)))))
                              (let ()
                                (declare (not safe))
                                (_g125664125779_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125671125999_))
                      (let ((___splice126816126817_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125671125999_ '0))))
                        (let ((_tl125768125794_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126816126817_ '1)))
                              (_target125766125792_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126816126817_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125768125794_))
                              (___match127065127066_
                               _e125673125994_
                               _hd125672125997_
                               _tl125671125999_
                               ___splice126816126817_
                               _target125766125792_
                               _tl125768125794_)
                              (let ()
                                (declare (not safe))
                                (_g125664125779_)))))
                      (let () (declare (not safe)) (_g125664125779_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125701126079_))
                                                      (if (let ((__tmp128834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp128834 'bind-method!))
                  (let ((_L125950_ _hd125708126093_)
                        (_L125951_ _hd125699126069_)
                        (_L125952_ _hd125690126045_)
                        (_L125953_ _hd125681126021_))
                    (___kont126812126813_
                     _L125950_
                     _L125951_
                     _L125952_
                     _L125953_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125671125999_))
                      (let ((___splice126816126817_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125671125999_ '0))))
                        (let ((_tl125768125794_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126816126817_ '1)))
                              (_target125766125792_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126816126817_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125768125794_))
                              (___match127065127066_
                               _e125673125994_
                               _hd125672125997_
                               _tl125671125999_
                               ___splice126816126817_
                               _target125766125792_
                               _tl125768125794_)
                              (let ()
                                (declare (not safe))
                                (_g125664125779_)))))
                      (let () (declare (not safe)) (_g125664125779_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125671125999_))
                  (let ((___splice126816126817_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125671125999_ '0))))
                    (let ((_tl125768125794_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126816126817_ '1)))
                          (_target125766125792_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126816126817_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125768125794_))
                          (___match127065127066_
                           _e125673125994_
                           _hd125672125997_
                           _tl125671125999_
                           ___splice126816126817_
                           _target125766125792_
                           _tl125768125794_)
                          (let () (declare (not safe)) (_g125664125779_)))))
                  (let () (declare (not safe)) (_g125664125779_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125671125999_))
                                                  (let ((___splice126816126817_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125671125999_
                                                            '0))))
                                                    (let ((_tl125768125794_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126816126817_
                                                              '1)))
                                                          (_target125766125792_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126816126817_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125768125794_))
                                                          (___match127065127066_
                                                           _e125673125994_
                                                           _hd125672125997_
                                                           _tl125671125999_
                                                           ___splice126816126817_
                                                           _target125766125792_
                                                           _tl125768125794_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125664125779_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125664125779_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125671125999_))
                                          (let ((___splice126816126817_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125671125999_
                                                    '0))))
                                            (let ((_tl125768125794_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126816126817_
                                                      '1)))
                                                  (_target125766125792_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126816126817_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125768125794_))
                                                  (___match127065127066_
                                                   _e125673125994_
                                                   _hd125672125997_
                                                   _tl125671125999_
                                                   ___splice126816126817_
                                                   _target125766125792_
                                                   _tl125768125794_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125664125779_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125664125779_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125671125999_))
                                      (let ((___splice126816126817_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125671125999_
                                                '0))))
                                        (let ((_tl125768125794_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126816126817_
                                                  '1)))
                                              (_target125766125792_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126816126817_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125768125794_))
                                              (___match127065127066_
                                               _e125673125994_
                                               _hd125672125997_
                                               _tl125671125999_
                                               ___splice126816126817_
                                               _target125766125792_
                                               _tl125768125794_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125664125779_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125664125779_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125671125999_))
                                  (let ((___splice126816126817_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125671125999_
                                            '0))))
                                    (let ((_tl125768125794_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126816126817_
                                              '1)))
                                          (_target125766125792_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126816126817_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125768125794_))
                                          (___match127065127066_
                                           _e125673125994_
                                           _hd125672125997_
                                           _tl125671125999_
                                           ___splice126816126817_
                                           _target125766125792_
                                           _tl125768125794_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125664125779_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125664125779_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125671125999_))
                          (let ((___splice126816126817_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125671125999_
                                    '0))))
                            (let ((_tl125768125794_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126816126817_ '1)))
                                  (_target125766125792_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126816126817_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125768125794_))
                                  (___match127065127066_
                                   _e125673125994_
                                   _hd125672125997_
                                   _tl125671125999_
                                   ___splice126816126817_
                                   _target125766125792_
                                   _tl125768125794_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125664125779_)))))
                          (let () (declare (not safe)) (_g125664125779_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125671125999_))
                  (let ((___splice126816126817_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125671125999_ '0))))
                    (let ((_tl125768125794_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126816126817_ '1)))
                          (_target125766125792_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126816126817_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125768125794_))
                          (___match127065127066_
                           _e125673125994_
                           _hd125672125997_
                           _tl125671125999_
                           ___splice126816126817_
                           _target125766125792_
                           _tl125768125794_)
                          (let () (declare (not safe)) (_g125664125779_)))))
                  (let () (declare (not safe)) (_g125664125779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125671125999_))
                                                      (let ((___splice126816126817_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125671125999_ '0))))
                (let ((_tl125768125794_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126816126817_ '1)))
                      (_target125766125792_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126816126817_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125768125794_))
                      (___match127065127066_
                       _e125673125994_
                       _hd125672125997_
                       _tl125671125999_
                       ___splice126816126817_
                       _target125766125792_
                       _tl125768125794_)
                      (let () (declare (not safe)) (_g125664125779_)))))
              (let () (declare (not safe)) (_g125664125779_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125671125999_))
                                              (let ((___splice126816126817_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125671125999_
                                                        '0))))
                                                (let ((_tl125768125794_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126816126817_
                                                          '1)))
                                                      (_target125766125792_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126816126817_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125768125794_))
                                                      (___match127065127066_
                                                       _e125673125994_
                                                       _hd125672125997_
                                                       _tl125671125999_
                                                       ___splice126816126817_
                                                       _target125766125792_
                                                       _tl125768125794_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125664125779_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125664125779_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125671125999_))
                                          (let ((___splice126816126817_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125671125999_
                                                    '0))))
                                            (let ((_tl125768125794_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126816126817_
                                                      '1)))
                                                  (_target125766125792_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126816126817_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125768125794_))
                                                  (___match127065127066_
                                                   _e125673125994_
                                                   _hd125672125997_
                                                   _tl125671125999_
                                                   ___splice126816126817_
                                                   _target125766125792_
                                                   _tl125768125794_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125664125779_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125664125779_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125671125999_))
                                      (let ((___splice126816126817_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125671125999_
                                                '0))))
                                        (let ((_tl125768125794_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126816126817_
                                                  '1)))
                                              (_target125766125792_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126816126817_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125768125794_))
                                              (___match127065127066_
                                               _e125673125994_
                                               _hd125672125997_
                                               _tl125671125999_
                                               ___splice126816126817_
                                               _target125766125792_
                                               _tl125768125794_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125664125779_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125664125779_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125671125999_))
                              (let ((___splice126816126817_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125671125999_
                                        '0))))
                                (let ((_tl125768125794_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126816126817_
                                          '1)))
                                      (_target125766125792_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126816126817_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125768125794_))
                                      (___match127065127066_
                                       _e125673125994_
                                       _hd125672125997_
                                       _tl125671125999_
                                       ___splice126816126817_
                                       _target125766125792_
                                       _tl125768125794_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125664125779_)))))
                              (let ()
                                (declare (not safe))
                                (_g125664125779_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125671125999_))
                      (let ((___splice126816126817_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125671125999_ '0))))
                        (let ((_tl125768125794_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126816126817_ '1)))
                              (_target125766125792_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126816126817_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125768125794_))
                              (___match127065127066_
                               _e125673125994_
                               _hd125672125997_
                               _tl125671125999_
                               ___splice126816126817_
                               _target125766125792_
                               _tl125768125794_)
                              (let ()
                                (declare (not safe))
                                (_g125664125779_)))))
                      (let () (declare (not safe)) (_g125664125779_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125671125999_))
                  (let ((___splice126816126817_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125671125999_ '0))))
                    (let ((_tl125768125794_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126816126817_ '1)))
                          (_target125766125792_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126816126817_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125768125794_))
                          (___match127065127066_
                           _e125673125994_
                           _hd125672125997_
                           _tl125671125999_
                           ___splice126816126817_
                           _target125766125792_
                           _tl125768125794_)
                          (let () (declare (not safe)) (_g125664125779_)))))
                  (let () (declare (not safe)) (_g125664125779_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125671125999_))
                                                  (let ((___splice126816126817_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125671125999_
                                                            '0))))
                                                    (let ((_tl125768125794_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126816126817_
                                                              '1)))
                                                          (_target125766125792_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126816126817_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125768125794_))
                                                          (___match127065127066_
                                                           _e125673125994_
                                                           _hd125672125997_
                                                           _tl125671125999_
                                                           ___splice126816126817_
                                                           _target125766125792_
                                                           _tl125768125794_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125664125779_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125664125779_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125671125999_))
                                              (let ((___splice126816126817_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125671125999_
                                                        '0))))
                                                (let ((_tl125768125794_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126816126817_
                                                          '1)))
                                                      (_target125766125792_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126816126817_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125768125794_))
                                                      (___match127065127066_
                                                       _e125673125994_
                                                       _hd125672125997_
                                                       _tl125671125999_
                                                       ___splice126816126817_
                                                       _target125766125792_
                                                       _tl125768125794_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125664125779_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125664125779_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125671125999_))
                                          (let ((___splice126816126817_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125671125999_
                                                    '0))))
                                            (let ((_tl125768125794_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126816126817_
                                                      '1)))
                                                  (_target125766125792_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126816126817_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125768125794_))
                                                  (___match127065127066_
                                                   _e125673125994_
                                                   _hd125672125997_
                                                   _tl125671125999_
                                                   ___splice126816126817_
                                                   _target125766125792_
                                                   _tl125768125794_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125664125779_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125664125779_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125671125999_))
                                  (let ((___splice126816126817_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125671125999_
                                            '0))))
                                    (let ((_tl125768125794_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126816126817_
                                              '1)))
                                          (_target125766125792_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126816126817_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125768125794_))
                                          (___match127065127066_
                                           _e125673125994_
                                           _hd125672125997_
                                           _tl125671125999_
                                           ___splice126816126817_
                                           _target125766125792_
                                           _tl125768125794_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125664125779_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125664125779_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125671125999_))
                          (let ((___splice126816126817_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125671125999_
                                    '0))))
                            (let ((_tl125768125794_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126816126817_ '1)))
                                  (_target125766125792_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126816126817_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125768125794_))
                                  (___match127065127066_
                                   _e125673125994_
                                   _hd125672125997_
                                   _tl125671125999_
                                   ___splice126816126817_
                                   _target125766125792_
                                   _tl125768125794_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125664125779_)))))
                          (let () (declare (not safe)) (_g125664125779_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125671125999_))
                      (let ((___splice126816126817_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125671125999_ '0))))
                        (let ((_tl125768125794_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126816126817_ '1)))
                              (_target125766125792_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126816126817_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125768125794_))
                              (___match127065127066_
                               _e125673125994_
                               _hd125672125997_
                               _tl125671125999_
                               ___splice126816126817_
                               _target125766125792_
                               _tl125768125794_)
                              (let ()
                                (declare (not safe))
                                (_g125664125779_)))))
                      (let () (declare (not safe)) (_g125664125779_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125671125999_))
                                                      (let ((___splice126816126817_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125671125999_ '0))))
                (let ((_tl125768125794_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126816126817_ '1)))
                      (_target125766125792_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126816126817_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125768125794_))
                      (___match127065127066_
                       _e125673125994_
                       _hd125672125997_
                       _tl125671125999_
                       ___splice126816126817_
                       _target125766125792_
                       _tl125768125794_)
                      (let () (declare (not safe)) (_g125664125779_)))))
              (let () (declare (not safe)) (_g125664125779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125671125999_))
                                                  (let ((___splice126816126817_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125671125999_
                                                            '0))))
                                                    (let ((_tl125768125794_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126816126817_
                                                              '1)))
                                                          (_target125766125792_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126816126817_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125768125794_))
                                                          (___match127065127066_
                                                           _e125673125994_
                                                           _hd125672125997_
                                                           _tl125671125999_
                                                           ___splice126816126817_
                                                           _target125766125792_
                                                           _tl125768125794_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125664125779_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125664125779_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125671125999_))
                                              (let ((___splice126816126817_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125671125999_
                                                        '0))))
                                                (let ((_tl125768125794_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126816126817_
                                                          '1)))
                                                      (_target125766125792_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126816126817_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125768125794_))
                                                      (___match127065127066_
                                                       _e125673125994_
                                                       _hd125672125997_
                                                       _tl125671125999_
                                                       ___splice126816126817_
                                                       _target125766125792_
                                                       _tl125768125794_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125664125779_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125664125779_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125671125999_))
                                      (let ((___splice126816126817_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125671125999_
                                                '0))))
                                        (let ((_tl125768125794_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126816126817_
                                                  '1)))
                                              (_target125766125792_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126816126817_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125768125794_))
                                              (___match127065127066_
                                               _e125673125994_
                                               _hd125672125997_
                                               _tl125671125999_
                                               ___splice126816126817_
                                               _target125766125792_
                                               _tl125768125794_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125664125779_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125664125779_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125671125999_))
                              (let ((___splice126816126817_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125671125999_
                                        '0))))
                                (let ((_tl125768125794_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126816126817_
                                          '1)))
                                      (_target125766125792_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126816126817_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125768125794_))
                                      (___match127065127066_
                                       _e125673125994_
                                       _hd125672125997_
                                       _tl125671125999_
                                       ___splice126816126817_
                                       _target125766125792_
                                       _tl125768125794_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125664125779_)))))
                              (let ()
                                (declare (not safe))
                                (_g125664125779_))))))
                  (let () (declare (not safe)) (_g125664125779_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_self125598_ _stx125599_)
        (let* ((___stx127068127069_ _stx125599_)
               (_g125602125615_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127068127069_)))))
          (let ((___kont127070127071_
                 (lambda (_L125643_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self125598_ _L125643_))))
                (___kont127072127073_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127068127069_))
                (let ((_e125607125627_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127068127069_))))
                  (let ((_tl125605125632_
                         (let () (declare (not safe)) (##cdr _e125607125627_)))
                        (_hd125606125630_
                         (let ()
                           (declare (not safe))
                           (##car _e125607125627_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125605125632_))
                        (let ((_e125610125635_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125605125632_))))
                          (let ((_tl125608125640_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125610125635_)))
                                (_hd125609125638_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125610125635_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl125608125640_))
                                (___kont127070127071_ _hd125609125638_)
                                (___kont127072127073_))))
                        (___kont127072127073_))))
                (___kont127072127073_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_self125477_ _stx125478_)
        (let* ((_g125480125497_
                (lambda (_g125481125494_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125481125494_))))
               (_g125479125595_
                (lambda (_g125481125500_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125481125500_))
                      (let ((_e125486125502_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125481125500_))))
                        (let ((_hd125485125505_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125486125502_)))
                              (_tl125484125507_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125486125502_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125484125507_))
                              (let ((_e125489125510_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125484125507_))))
                                (let ((_hd125488125513_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125489125510_)))
                                      (_tl125487125515_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125489125510_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125487125515_))
                                      (let ((_e125492125518_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125487125515_))))
                                        (let ((_hd125491125521_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125492125518_)))
                                              (_tl125490125523_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125492125518_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125490125523_))
                                              ((lambda (_L125526_ _L125527_)
                                                 (let* ((___stx127090127091_
                                                         _L125527_)
                                                        (_g125543125554_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx127090127091_)))))
                                                   (let ((___kont127092127093_
                                                          (lambda (_L125574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L125575_)
                    (let ((_$e125587_
                           (let ((__tmp128835
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L125575_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp128835))))
                      (if _$e125587_
                          ((lambda (_type-e125590_)
                             (_type-e125590_ _stx125478_ _L125527_))
                           _$e125587_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self125477_ _L125526_))))))
                 (___kont127094127095_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self125477_ _L125526_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match127101127102_
                                                            (lambda (_e125549125566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd125548125569_
                             _tl125547125571_)
                      (let ((_L125574_ _tl125547125571_)
                            (_L125575_ _hd125548125569_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L125575_))
                            (___kont127092127093_ _L125574_ _L125575_)
                            (___kont127094127095_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx127090127091_))
                   (let ((_e125549125566_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx127090127091_))))
                     (let ((_tl125547125571_
                            (let ()
                              (declare (not safe))
                              (##cdr _e125549125566_)))
                           (_hd125548125569_
                            (let ()
                              (declare (not safe))
                              (##car _e125549125566_))))
                       (___match127101127102_
                        _e125549125566_
                        _hd125548125569_
                        _tl125547125571_)))
                   (___kont127094127095_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd125491125521_
                                               _hd125488125513_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125480125497_
                                                 _g125481125500_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125480125497_ _g125481125500_)))))
                              (let ()
                                (declare (not safe))
                                (_g125480125497_ _g125481125500_)))))
                      (let ()
                        (declare (not safe))
                        (_g125480125497_ _g125481125500_))))))
          (declare (not safe))
          (_g125479125595_ _stx125478_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx125321_ _ann125322_)
        (let* ((_g125324125361_
                (lambda (_g125325125358_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125325125358_))))
               (_g125323125474_
                (lambda (_g125325125364_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125325125364_))
                      (let ((_e125335125366_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125325125364_))))
                        (let ((_hd125334125369_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125335125366_)))
                              (_tl125333125371_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125335125366_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125333125371_))
                              (let ((_e125338125374_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125333125371_))))
                                (let ((_hd125337125377_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125338125374_)))
                                      (_tl125336125379_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125338125374_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125336125379_))
                                      (let ((_e125341125382_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125336125379_))))
                                        (let ((_hd125340125385_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125341125382_)))
                                              (_tl125339125387_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125341125382_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125339125387_))
                                              (let ((_e125344125390_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125339125387_))))
                                                (let ((_hd125343125393_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125344125390_)))
                                                      (_tl125342125395_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125344125390_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125342125395_))
                                                      (let ((_e125347125398_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125342125395_))))
                (let ((_hd125346125401_
                       (let () (declare (not safe)) (##car _e125347125398_)))
                      (_tl125345125403_
                       (let () (declare (not safe)) (##cdr _e125347125398_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl125345125403_))
                      (let ((_e125350125406_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125345125403_))))
                        (let ((_hd125349125409_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125350125406_)))
                              (_tl125348125411_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125350125406_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125348125411_))
                              (let ((_e125353125414_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125348125411_))))
                                (let ((_hd125352125417_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125353125414_)))
                                      (_tl125351125419_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125353125414_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125351125419_))
                                      (let ((_e125356125422_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125351125419_))))
                                        (let ((_hd125355125425_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125356125422_)))
                                              (_tl125354125427_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125356125422_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125354125427_))
                                              ((lambda (_L125430_
                                                        _L125431_
                                                        _L125432_
                                                        _L125433_
                                                        _L125434_
                                                        _L125435_
                                                        _L125436_)
                                                 (let ((_type-id125466_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125436_)))
                                                       (_super125467_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L125435_)))
                                                       (_slots125468_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L125434_)))
                                                       (_ctor-method125469_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125433_)))
                                                       (_struct?125470_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125432_)))
                                                       (_final?125471_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125431_)))
                                                       (_metaclass125472_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L125430_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L125430_))
                                                            '#f)))
                                                   (let ((__obj128783
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
                                                      __obj128783
                                                      _type-id125466_
                                                      _super125467_
                                                      _slots125468_
                                                      _ctor-method125469_
                                                      _struct?125470_
                                                      _final?125471_
                                                      _metaclass125472_)
                                                     __obj128783)))
                                               _hd125355125425_
                                               _hd125352125417_
                                               _hd125349125409_
                                               _hd125346125401_
                                               _hd125343125393_
                                               _hd125340125385_
                                               _hd125337125377_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125324125361_
                                                 _g125325125364_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125324125361_ _g125325125364_)))))
                              (let ()
                                (declare (not safe))
                                (_g125324125361_ _g125325125364_)))))
                      (let ()
                        (declare (not safe))
                        (_g125324125361_ _g125325125364_)))))
              (let ()
                (declare (not safe))
                (_g125324125361_ _g125325125364_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125324125361_
                                                 _g125325125364_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125324125361_ _g125325125364_)))))
                              (let ()
                                (declare (not safe))
                                (_g125324125361_ _g125325125364_)))))
                      (let ()
                        (declare (not safe))
                        (_g125324125361_ _g125325125364_))))))
          (declare (not safe))
          (_g125323125474_ _ann125322_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx125269_ _ann125270_)
        (let* ((_g125272125285_
                (lambda (_g125273125282_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125273125282_))))
               (_g125271125318_
                (lambda (_g125273125288_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125273125288_))
                      (let ((_e125277125290_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125273125288_))))
                        (let ((_hd125276125293_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125277125290_)))
                              (_tl125275125295_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125277125290_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125275125295_))
                              (let ((_e125280125298_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125275125295_))))
                                (let ((_hd125279125301_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125280125298_)))
                                      (_tl125278125303_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125280125298_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125278125303_))
                                      ((lambda (_L125306_)
                                         (let ((__tmp128836
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125306_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp128836)))
                                       _hd125279125301_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125272125285_ _g125273125288_)))))
                              (let ()
                                (declare (not safe))
                                (_g125272125285_ _g125273125288_)))))
                      (let ()
                        (declare (not safe))
                        (_g125272125285_ _g125273125288_))))))
          (declare (not safe))
          (_g125271125318_ _ann125270_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx125217_ _ann125218_)
        (let* ((_g125220125233_
                (lambda (_g125221125230_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125221125230_))))
               (_g125219125266_
                (lambda (_g125221125236_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125221125236_))
                      (let ((_e125225125238_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125221125236_))))
                        (let ((_hd125224125241_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125225125238_)))
                              (_tl125223125243_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125225125238_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125223125243_))
                              (let ((_e125228125246_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125223125243_))))
                                (let ((_hd125227125249_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125228125246_)))
                                      (_tl125226125251_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125228125246_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125226125251_))
                                      ((lambda (_L125254_)
                                         (let ((__tmp128837
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125254_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp128837)))
                                       _hd125227125249_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125220125233_ _g125221125236_)))))
                              (let ()
                                (declare (not safe))
                                (_g125220125233_ _g125221125236_)))))
                      (let ()
                        (declare (not safe))
                        (_g125220125233_ _g125221125236_))))))
          (declare (not safe))
          (_g125219125266_ _ann125218_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx125133_ _ann125134_)
        (let* ((_g125136125157_
                (lambda (_g125137125154_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125137125154_))))
               (_g125135125214_
                (lambda (_g125137125160_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125137125160_))
                      (let ((_e125143125162_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125137125160_))))
                        (let ((_hd125142125165_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125143125162_)))
                              (_tl125141125167_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125143125162_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125141125167_))
                              (let ((_e125146125170_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125141125167_))))
                                (let ((_hd125145125173_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125146125170_)))
                                      (_tl125144125175_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125146125170_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125144125175_))
                                      (let ((_e125149125178_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125144125175_))))
                                        (let ((_hd125148125181_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125149125178_)))
                                              (_tl125147125183_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125149125178_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125147125183_))
                                              (let ((_e125152125186_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125147125183_))))
                                                (let ((_hd125151125189_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125152125186_)))
                                                      (_tl125150125191_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125152125186_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125150125191_))
                                                      ((lambda (_L125194_
                                                                _L125195_
                                                                _L125196_)
                                                         (let ((__tmp128840
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125196_)))
                       (__tmp128839
                        (let () (declare (not safe)) (gx#stx-e _L125195_)))
                       (__tmp128838
                        (let () (declare (not safe)) (gx#stx-e _L125194_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp128840
                    __tmp128839
                    __tmp128838)))
               _hd125151125189_
               _hd125148125181_
               _hd125145125173_)
              (let ()
                (declare (not safe))
                (_g125136125157_ _g125137125160_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125136125157_
                                                 _g125137125160_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125136125157_ _g125137125160_)))))
                              (let ()
                                (declare (not safe))
                                (_g125136125157_ _g125137125160_)))))
                      (let ()
                        (declare (not safe))
                        (_g125136125157_ _g125137125160_))))))
          (declare (not safe))
          (_g125135125214_ _ann125134_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx125049_ _ann125050_)
        (let* ((_g125052125073_
                (lambda (_g125053125070_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125053125070_))))
               (_g125051125130_
                (lambda (_g125053125076_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125053125076_))
                      (let ((_e125059125078_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125053125076_))))
                        (let ((_hd125058125081_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125059125078_)))
                              (_tl125057125083_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125059125078_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125057125083_))
                              (let ((_e125062125086_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125057125083_))))
                                (let ((_hd125061125089_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125062125086_)))
                                      (_tl125060125091_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125062125086_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125060125091_))
                                      (let ((_e125065125094_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125060125091_))))
                                        (let ((_hd125064125097_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125065125094_)))
                                              (_tl125063125099_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125065125094_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125063125099_))
                                              (let ((_e125068125102_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125063125099_))))
                                                (let ((_hd125067125105_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125068125102_)))
                                                      (_tl125066125107_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125068125102_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125066125107_))
                                                      ((lambda (_L125110_
                                                                _L125111_
                                                                _L125112_)
                                                         (let ((__tmp128843
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125112_)))
                       (__tmp128842
                        (let () (declare (not safe)) (gx#stx-e _L125111_)))
                       (__tmp128841
                        (let () (declare (not safe)) (gx#stx-e _L125110_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp128843
                    __tmp128842
                    __tmp128841)))
               _hd125067125105_
               _hd125064125097_
               _hd125061125089_)
              (let ()
                (declare (not safe))
                (_g125052125073_ _g125053125076_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125052125073_
                                                 _g125053125076_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125052125073_ _g125053125076_)))))
                              (let ()
                                (declare (not safe))
                                (_g125052125073_ _g125053125076_)))))
                      (let ()
                        (declare (not safe))
                        (_g125052125073_ _g125053125076_))))))
          (declare (not safe))
          (_g125051125130_ _ann125050_))))
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
      (lambda (_self124168_ _stx124169_)
        (let* ((___stx127104127105_ _stx124169_)
               (_g124175124371_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127104127105_)))))
          (let ((___kont127106127107_
                 (lambda (_L125037_)
                   (let ((__obj128784
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128784
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125037_))
                      '#f)
                     __obj128784)))
                (___kont127108127109_
                 (lambda (_L124964_
                          _L124965_
                          _L124966_
                          _L124967_
                          _L124968_
                          _L124969_)
                   (let* ((_tab125019_
                           (let () (declare (not safe)) (gx#stx-e _L124966_)))
                          (_keys125021_
                           (if _tab125019_
                               (filter values (vector->list _tab125019_))
                               '#f)))
                     (let ((__tmp128844
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L124965_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys125021_
                        __tmp128844)))))
                (___kont127110127111_
                 (lambda (_L124697_
                          _L124698_
                          _L124699_
                          _L124700_
                          _L124701_
                          _L124702_
                          _L124703_
                          _L124704_
                          _L124705_
                          _L124706_)
                   (let ((__tmp128846
                          (map gx#stx-e
                               (let ((__tmp128847
                                      (lambda (_g124799124802_ _g124800124804_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g124799124802_
                                                _g124800124804_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp128847 '() _L124699_))))
                         (__tmp128845
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124703_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp128846
                      __tmp128845))))
                (___kont127114127115_
                 (lambda (_L124407_)
                   (let ((__obj128785
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128785
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124407_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L124407_)))
                     __obj128785)))
                (___kont127116127117_
                 (lambda (_L124384_)
                   (let ((__obj128786
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128786
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124384_))
                      '#f)
                     __obj128786))))
            (let* ((___match127423127424_
                    (lambda (_e124362124399_ _hd124361124402_ _tl124360124404_)
                      (let ((_L124407_ _tl124360124404_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L124407_))
                            (___kont127114127115_ _L124407_)
                            (___kont127116127117_ _tl124360124404_)))))
                   (___match127417127418_
                    (lambda (_e124256124421_
                             _hd124255124424_
                             _tl124254124426_
                             _e124259124429_
                             _hd124258124432_
                             _tl124257124434_
                             _e124262124437_
                             _hd124261124440_
                             _tl124260124442_
                             _e124265124445_
                             _hd124264124448_
                             _tl124263124450_
                             _e124268124453_
                             _hd124267124456_
                             _tl124266124458_
                             _e124271124461_
                             _hd124270124464_
                             _tl124269124466_
                             _e124274124469_
                             _hd124273124472_
                             _tl124272124474_
                             _e124277124477_
                             _hd124276124480_
                             _tl124275124482_
                             _e124280124485_
                             _hd124279124488_
                             _tl124278124490_
                             _e124283124493_
                             _hd124282124496_
                             _tl124281124498_
                             _e124286124501_
                             _hd124285124504_
                             _tl124284124506_
                             _e124289124509_
                             _hd124288124512_
                             _tl124287124514_
                             _e124292124517_
                             _hd124291124520_
                             _tl124290124522_
                             _e124295124525_
                             _hd124294124528_
                             _tl124293124530_
                             ___splice127112127113_
                             _target124296124533_
                             _tl124298124535_
                             _e124313124538_
                             _hd124312124541_
                             _tl124311124543_
                             _e124316124546_
                             _hd124315124549_
                             _tl124314124551_
                             _e124319124554_
                             _hd124318124557_
                             _tl124317124559_)
                      (letrec ((_loop124299124562_
                                (lambda (_hd124297124565_
                                         _-absent-value124303124567_
                                         _key124304124569_
                                         _-xkwvar124305124571_
                                         _-hash-ref124306124573_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124297124565_))
                                      (let ((_e124300124576_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124297124565_))))
                                        (let ((_lp-tl124302124581_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124300124576_)))
                                              (_lp-hd124301124579_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124300124576_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd124301124579_))
                                              (let ((_e124322124584_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd124301124579_))))
                                                (let ((_tl124320124589_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124322124584_)))
                                                      (_hd124321124587_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124322124584_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd124321124587_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd124321124587_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl124320124589_))
                      (let ((_e124325124592_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124320124589_))))
                        (let ((_tl124323124597_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124325124592_)))
                              (_hd124324124595_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124325124592_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd124324124595_))
                              (let ((_e124328124600_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd124324124595_))))
                                (let ((_tl124326124605_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124328124600_)))
                                      (_hd124327124603_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124328124600_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd124327124603_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd124327124603_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124326124605_))
                                              (let ((_e124331124608_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124326124605_))))
                                                (let ((_tl124329124613_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124331124608_)))
                                                      (_hd124330124611_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124331124608_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124329124613_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124323124597_))
                                                          (let ((_e124334124616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124323124597_))))
                    (let ((_tl124332124621_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124334124616_)))
                          (_hd124333124619_
                           (let ()
                             (declare (not safe))
                             (##car _e124334124616_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124333124619_))
                          (let ((_e124337124624_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124333124619_))))
                            (let ((_tl124335124629_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124337124624_)))
                                  (_hd124336124627_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124337124624_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124336124627_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124336124627_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124335124629_))
                                          (let ((_e124340124632_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124335124629_))))
                                            (let ((_tl124338124637_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124340124632_)))
                                                  (_hd124339124635_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124340124632_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124338124637_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124332124621_))
                                                      (let ((_e124343124640_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124332124621_))))
                (let ((_tl124341124645_
                       (let () (declare (not safe)) (##cdr _e124343124640_)))
                      (_hd124342124643_
                       (let () (declare (not safe)) (##car _e124343124640_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124342124643_))
                      (let ((_e124346124648_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124342124643_))))
                        (let ((_tl124344124653_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124346124648_)))
                              (_hd124345124651_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124346124648_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124345124651_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd124345124651_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124344124653_))
                                      (let ((_e124349124656_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124344124653_))))
                                        (let ((_tl124347124661_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124349124656_)))
                                              (_hd124348124659_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124349124656_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124347124661_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124341124645_))
                                                  (let ((_e124352124664_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124341124645_))))
                                                    (let ((_tl124350124669_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124352124664_)))
                                                          (_hd124351124667_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124352124664_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124351124667_))
                                                          (let ((_e124355124672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124351124667_))))
                    (let ((_tl124353124677_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124355124672_)))
                          (_hd124354124675_
                           (let ()
                             (declare (not safe))
                             (##car _e124355124672_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124354124675_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124354124675_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124353124677_))
                                  (let ((_e124358124680_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124353124677_))))
                                    (let ((_tl124356124685_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124358124680_)))
                                          (_hd124357124683_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124358124680_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124356124685_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124350124669_))
                                              (let ((__tmp128862
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124357124683_
                                                             _-absent-value124303124567_)))
                                                    (__tmp128861
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124348124659_
                                                             _key124304124569_)))
                                                    (__tmp128860
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124339124635_
                                                             _-xkwvar124305124571_)))
                                                    (__tmp128859
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124330124611_
                                                             _-hash-ref124306124573_))))
                                                (declare (not safe))
                                                (_loop124299124562_
                                                 _lp-tl124302124581_
                                                 __tmp128862
                                                 __tmp128861
                                                 __tmp128860
                                                 __tmp128859))
                                              (___match127423127424_
                                               _e124256124421_
                                               _hd124255124424_
                                               _tl124254124426_))
                                          (___match127423127424_
                                           _e124256124421_
                                           _hd124255124424_
                                           _tl124254124426_))))
                                  (___match127423127424_
                                   _e124256124421_
                                   _hd124255124424_
                                   _tl124254124426_))
                              (___match127423127424_
                               _e124256124421_
                               _hd124255124424_
                               _tl124254124426_))
                          (___match127423127424_
                           _e124256124421_
                           _hd124255124424_
                           _tl124254124426_))))
                  (___match127423127424_
                   _e124256124421_
                   _hd124255124424_
                   _tl124254124426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127423127424_
                                                   _e124256124421_
                                                   _hd124255124424_
                                                   _tl124254124426_))
                                              (___match127423127424_
                                               _e124256124421_
                                               _hd124255124424_
                                               _tl124254124426_))))
                                      (___match127423127424_
                                       _e124256124421_
                                       _hd124255124424_
                                       _tl124254124426_))
                                  (___match127423127424_
                                   _e124256124421_
                                   _hd124255124424_
                                   _tl124254124426_))
                              (___match127423127424_
                               _e124256124421_
                               _hd124255124424_
                               _tl124254124426_))))
                      (___match127423127424_
                       _e124256124421_
                       _hd124255124424_
                       _tl124254124426_))))
              (___match127423127424_
               _e124256124421_
               _hd124255124424_
               _tl124254124426_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127423127424_
                                                   _e124256124421_
                                                   _hd124255124424_
                                                   _tl124254124426_))))
                                          (___match127423127424_
                                           _e124256124421_
                                           _hd124255124424_
                                           _tl124254124426_))
                                      (___match127423127424_
                                       _e124256124421_
                                       _hd124255124424_
                                       _tl124254124426_))
                                  (___match127423127424_
                                   _e124256124421_
                                   _hd124255124424_
                                   _tl124254124426_))))
                          (___match127423127424_
                           _e124256124421_
                           _hd124255124424_
                           _tl124254124426_))))
                  (___match127423127424_
                   _e124256124421_
                   _hd124255124424_
                   _tl124254124426_))
              (___match127423127424_
               _e124256124421_
               _hd124255124424_
               _tl124254124426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127423127424_
                                               _e124256124421_
                                               _hd124255124424_
                                               _tl124254124426_))
                                          (___match127423127424_
                                           _e124256124421_
                                           _hd124255124424_
                                           _tl124254124426_))
                                      (___match127423127424_
                                       _e124256124421_
                                       _hd124255124424_
                                       _tl124254124426_))))
                              (___match127423127424_
                               _e124256124421_
                               _hd124255124424_
                               _tl124254124426_))))
                      (___match127423127424_
                       _e124256124421_
                       _hd124255124424_
                       _tl124254124426_))
                  (___match127423127424_
                   _e124256124421_
                   _hd124255124424_
                   _tl124254124426_))
              (___match127423127424_
               _e124256124421_
               _hd124255124424_
               _tl124254124426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127423127424_
                                               _e124256124421_
                                               _hd124255124424_
                                               _tl124254124426_))))
                                      (let ((_-hash-ref124310124694_
                                             (reverse _-hash-ref124306124573_))
                                            (_-xkwvar124309124692_
                                             (reverse _-xkwvar124305124571_))
                                            (_key124308124690_
                                             (reverse _key124304124569_))
                                            (_-absent-value124307124688_
                                             (reverse _-absent-value124303124567_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl124263124450_))
                                            (let ((_L124697_ _hd124318124557_)
                                                  (_L124698_
                                                   _-absent-value124307124688_)
                                                  (_L124699_ _key124308124690_)
                                                  (_L124700_
                                                   _-xkwvar124309124692_)
                                                  (_L124701_
                                                   _-hash-ref124310124694_)
                                                  (_L124702_ _hd124294124528_)
                                                  (_L124703_ _hd124285124504_)
                                                  (_L124704_ _hd124276124480_)
                                                  (_L124705_ _tl124260124442_)
                                                  (_L124706_ _hd124261124440_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124706_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124705_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L124704_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L124706_
                                                          _L124702_))
                                                       (let ((__tmp128857
                                                              (let ((__tmp128858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g124759124762_ _g124760124764_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124759124762_ _g124760124764_)))))
                        (declare (not safe))
                        (foldr1 __tmp128858 '() _L124699_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp128857))
               (let ((__tmp128856
                      (lambda (_g124766124768_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124766124768_
                           'hash-ref))))
                     (__tmp128854
                      (let ((__tmp128855
                             (lambda (_g124770124773_ _g124771124775_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124770124773_ _g124771124775_)))))
                        (declare (not safe))
                        (foldr1 __tmp128855 '() _L124701_))))
                 (declare (not safe))
                 (andmap1 __tmp128856 __tmp128854))
               (let ((__tmp128853
                      (lambda (_g124777124779_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124777124779_
                           'absent-value))))
                     (__tmp128851
                      (let ((__tmp128852
                             (lambda (_g124781124784_ _g124782124786_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124781124784_ _g124782124786_)))))
                        (declare (not safe))
                        (foldr1 __tmp128852 '() _L124698_))))
                 (declare (not safe))
                 (andmap1 __tmp128853 __tmp128851))
               (let ((__tmp128850
                      (lambda (_g124788124790_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g124788124790_ _L124706_))))
                     (__tmp128848
                      (let ((__tmp128849
                             (lambda (_g124792124795_ _g124793124797_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124792124795_ _g124793124797_)))))
                        (declare (not safe))
                        (foldr1 __tmp128849 '() _L124700_))))
                 (declare (not safe))
                 (andmap1 __tmp128850 __tmp128848)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127110127111_
                                                   _L124697_
                                                   _L124698_
                                                   _L124699_
                                                   _L124700_
                                                   _L124701_
                                                   _L124702_
                                                   _L124703_
                                                   _L124704_
                                                   _L124705_
                                                   _L124706_)
                                                  (___match127423127424_
                                                   _e124256124421_
                                                   _hd124255124424_
                                                   _tl124254124426_)))
                                            (___match127423127424_
                                             _e124256124421_
                                             _hd124255124424_
                                             _tl124254124426_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124299124562_
                           _target124296124533_
                           '()
                           '()
                           '()
                           '())))))
                   (___match127289127290_
                    (lambda (_e124256124421_
                             _hd124255124424_
                             _tl124254124426_
                             _e124259124429_
                             _hd124258124432_
                             _tl124257124434_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124258124432_))
                          (let ((_e124262124437_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124258124432_))))
                            (let ((_tl124260124442_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124262124437_)))
                                  (_hd124261124440_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124262124437_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124257124434_))
                                  (let ((_e124265124445_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124257124434_))))
                                    (let ((_tl124263124450_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124265124445_)))
                                          (_hd124264124448_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124265124445_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124264124448_))
                                          (let ((_e124268124453_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124264124448_))))
                                            (let ((_tl124266124458_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124268124453_)))
                                                  (_hd124267124456_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124268124453_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124267124456_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124267124456_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124266124458_))
                                                          (let ((_e124271124461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124266124458_))))
                    (let ((_tl124269124466_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124271124461_)))
                          (_hd124270124464_
                           (let ()
                             (declare (not safe))
                             (##car _e124271124461_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124270124464_))
                          (let ((_e124274124469_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124270124464_))))
                            (let ((_tl124272124474_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124274124469_)))
                                  (_hd124273124472_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124274124469_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124273124472_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124273124472_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124272124474_))
                                          (let ((_e124277124477_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124272124474_))))
                                            (let ((_tl124275124482_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124277124477_)))
                                                  (_hd124276124480_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124277124477_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124275124482_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124269124466_))
                                                      (let ((_e124280124485_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124269124466_))))
                (let ((_tl124278124490_
                       (let () (declare (not safe)) (##cdr _e124280124485_)))
                      (_hd124279124488_
                       (let () (declare (not safe)) (##car _e124280124485_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124279124488_))
                      (let ((_e124283124493_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124279124488_))))
                        (let ((_tl124281124498_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124283124493_)))
                              (_hd124282124496_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124283124493_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124282124496_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124282124496_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124281124498_))
                                      (let ((_e124286124501_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124281124498_))))
                                        (let ((_tl124284124506_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124286124501_)))
                                              (_hd124285124504_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124286124501_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124284124506_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124278124490_))
                                                  (let ((_e124289124509_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124278124490_))))
                                                    (let ((_tl124287124514_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124289124509_)))
                                                          (_hd124288124512_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124289124509_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124288124512_))
                                                          (let ((_e124292124517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124288124512_))))
                    (let ((_tl124290124522_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124292124517_)))
                          (_hd124291124520_
                           (let ()
                             (declare (not safe))
                             (##car _e124292124517_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124291124520_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124291124520_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124290124522_))
                                  (let ((_e124295124525_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124290124522_))))
                                    (let ((_tl124293124530_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124295124525_)))
                                          (_hd124294124528_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124295124525_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124293124530_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124287124514_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl124287124514_))
                                                        '1)
                                                  (let ((___splice127112127113_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124287124514_
                                                            '1))))
                                                    (let ((_tl124298124535_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127112127113_
                                                              '1)))
                                                          (_target124296124533_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127112127113_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124298124535_))
                                                          (let ((_e124313124538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124298124535_))))
                    (let ((_tl124311124543_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124313124538_)))
                          (_hd124312124541_
                           (let ()
                             (declare (not safe))
                             (##car _e124313124538_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124312124541_))
                          (let ((_e124316124546_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124312124541_))))
                            (let ((_tl124314124551_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124316124546_)))
                                  (_hd124315124549_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124316124546_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124315124549_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124315124549_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124314124551_))
                                          (let ((_e124319124554_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124314124551_))))
                                            (let ((_tl124317124559_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124319124554_)))
                                                  (_hd124318124557_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124319124554_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124317124559_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124311124543_))
                                                      (___match127417127418_
                                                       _e124256124421_
                                                       _hd124255124424_
                                                       _tl124254124426_
                                                       _e124259124429_
                                                       _hd124258124432_
                                                       _tl124257124434_
                                                       _e124262124437_
                                                       _hd124261124440_
                                                       _tl124260124442_
                                                       _e124265124445_
                                                       _hd124264124448_
                                                       _tl124263124450_
                                                       _e124268124453_
                                                       _hd124267124456_
                                                       _tl124266124458_
                                                       _e124271124461_
                                                       _hd124270124464_
                                                       _tl124269124466_
                                                       _e124274124469_
                                                       _hd124273124472_
                                                       _tl124272124474_
                                                       _e124277124477_
                                                       _hd124276124480_
                                                       _tl124275124482_
                                                       _e124280124485_
                                                       _hd124279124488_
                                                       _tl124278124490_
                                                       _e124283124493_
                                                       _hd124282124496_
                                                       _tl124281124498_
                                                       _e124286124501_
                                                       _hd124285124504_
                                                       _tl124284124506_
                                                       _e124289124509_
                                                       _hd124288124512_
                                                       _tl124287124514_
                                                       _e124292124517_
                                                       _hd124291124520_
                                                       _tl124290124522_
                                                       _e124295124525_
                                                       _hd124294124528_
                                                       _tl124293124530_
                                                       ___splice127112127113_
                                                       _target124296124533_
                                                       _tl124298124535_
                                                       _e124313124538_
                                                       _hd124312124541_
                                                       _tl124311124543_
                                                       _e124316124546_
                                                       _hd124315124549_
                                                       _tl124314124551_
                                                       _e124319124554_
                                                       _hd124318124557_
                                                       _tl124317124559_)
                                                      (___match127423127424_
                                                       _e124256124421_
                                                       _hd124255124424_
                                                       _tl124254124426_))
                                                  (___match127423127424_
                                                   _e124256124421_
                                                   _hd124255124424_
                                                   _tl124254124426_))))
                                          (___match127423127424_
                                           _e124256124421_
                                           _hd124255124424_
                                           _tl124254124426_))
                                      (___match127423127424_
                                       _e124256124421_
                                       _hd124255124424_
                                       _tl124254124426_))
                                  (___match127423127424_
                                   _e124256124421_
                                   _hd124255124424_
                                   _tl124254124426_))))
                          (___match127423127424_
                           _e124256124421_
                           _hd124255124424_
                           _tl124254124426_))))
                  (___match127423127424_
                   _e124256124421_
                   _hd124255124424_
                   _tl124254124426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127423127424_
                                                   _e124256124421_
                                                   _hd124255124424_
                                                   _tl124254124426_))
                                              (___match127423127424_
                                               _e124256124421_
                                               _hd124255124424_
                                               _tl124254124426_))
                                          (___match127423127424_
                                           _e124256124421_
                                           _hd124255124424_
                                           _tl124254124426_))))
                                  (___match127423127424_
                                   _e124256124421_
                                   _hd124255124424_
                                   _tl124254124426_))
                              (___match127423127424_
                               _e124256124421_
                               _hd124255124424_
                               _tl124254124426_))
                          (___match127423127424_
                           _e124256124421_
                           _hd124255124424_
                           _tl124254124426_))))
                  (___match127423127424_
                   _e124256124421_
                   _hd124255124424_
                   _tl124254124426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127423127424_
                                                   _e124256124421_
                                                   _hd124255124424_
                                                   _tl124254124426_))
                                              (___match127423127424_
                                               _e124256124421_
                                               _hd124255124424_
                                               _tl124254124426_))))
                                      (___match127423127424_
                                       _e124256124421_
                                       _hd124255124424_
                                       _tl124254124426_))
                                  (___match127423127424_
                                   _e124256124421_
                                   _hd124255124424_
                                   _tl124254124426_))
                              (___match127423127424_
                               _e124256124421_
                               _hd124255124424_
                               _tl124254124426_))))
                      (___match127423127424_
                       _e124256124421_
                       _hd124255124424_
                       _tl124254124426_))))
              (___match127423127424_
               _e124256124421_
               _hd124255124424_
               _tl124254124426_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127423127424_
                                                   _e124256124421_
                                                   _hd124255124424_
                                                   _tl124254124426_))))
                                          (___match127423127424_
                                           _e124256124421_
                                           _hd124255124424_
                                           _tl124254124426_))
                                      (___match127423127424_
                                       _e124256124421_
                                       _hd124255124424_
                                       _tl124254124426_))
                                  (___match127423127424_
                                   _e124256124421_
                                   _hd124255124424_
                                   _tl124254124426_))))
                          (___match127423127424_
                           _e124256124421_
                           _hd124255124424_
                           _tl124254124426_))))
                  (___match127423127424_
                   _e124256124421_
                   _hd124255124424_
                   _tl124254124426_))
              (___match127423127424_
               _e124256124421_
               _hd124255124424_
               _tl124254124426_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127423127424_
                                                   _e124256124421_
                                                   _hd124255124424_
                                                   _tl124254124426_))))
                                          (___match127423127424_
                                           _e124256124421_
                                           _hd124255124424_
                                           _tl124254124426_))))
                                  (___match127423127424_
                                   _e124256124421_
                                   _hd124255124424_
                                   _tl124254124426_))))
                          (___match127423127424_
                           _e124256124421_
                           _hd124255124424_
                           _tl124254124426_))))
                   (___match127277127278_
                    (lambda (_e124189124812_
                             _hd124188124815_
                             _tl124187124817_
                             _e124192124820_
                             _hd124191124823_
                             _tl124190124825_
                             _e124195124828_
                             _hd124194124831_
                             _tl124193124833_
                             _e124198124836_
                             _hd124197124839_
                             _tl124196124841_
                             _e124201124844_
                             _hd124200124847_
                             _tl124199124849_
                             _e124204124852_
                             _hd124203124855_
                             _tl124202124857_
                             _e124207124860_
                             _hd124206124863_
                             _tl124205124865_
                             _e124210124868_
                             _hd124209124871_
                             _tl124208124873_
                             _e124213124876_
                             _hd124212124879_
                             _tl124211124881_
                             _e124216124884_
                             _hd124215124887_
                             _tl124214124889_
                             _e124219124892_
                             _hd124218124895_
                             _tl124217124897_
                             _e124222124900_
                             _hd124221124903_
                             _tl124220124905_
                             _e124225124908_
                             _hd124224124911_
                             _tl124223124913_
                             _e124228124916_
                             _hd124227124919_
                             _tl124226124921_
                             _e124231124924_
                             _hd124230124927_
                             _tl124229124929_
                             _e124234124932_
                             _hd124233124935_
                             _tl124232124937_
                             _e124237124940_
                             _hd124236124943_
                             _tl124235124945_
                             _e124240124948_
                             _hd124239124951_
                             _tl124238124953_
                             _e124243124956_
                             _hd124242124959_
                             _tl124241124961_)
                      (let ((_L124964_ _hd124242124959_)
                            (_L124965_ _hd124233124935_)
                            (_L124966_ _hd124224124911_)
                            (_L124967_ _hd124215124887_)
                            (_L124968_ _hd124206124863_)
                            (_L124969_ _hd124191124823_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L124969_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L124968_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L124967_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L124969_ _L124964_)))
                            (___kont127108127109_
                             _L124964_
                             _L124965_
                             _L124966_
                             _L124967_
                             _L124968_
                             _L124969_)
                            (___match127289127290_
                             _e124189124812_
                             _hd124188124815_
                             _tl124187124817_
                             _e124192124820_
                             _hd124191124823_
                             _tl124190124825_)))))
                   (___match127131127132_
                    (lambda (_e124189124812_ _hd124188124815_ _tl124187124817_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124187124817_))
                          (let ((_e124192124820_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124187124817_))))
                            (let ((_tl124190124825_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124192124820_)))
                                  (_hd124191124823_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124192124820_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124190124825_))
                                  (let ((_e124195124828_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124190124825_))))
                                    (let ((_tl124193124833_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124195124828_)))
                                          (_hd124194124831_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124195124828_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124194124831_))
                                          (let ((_e124198124836_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124194124831_))))
                                            (let ((_tl124196124841_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124198124836_)))
                                                  (_hd124197124839_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124198124836_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124197124839_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124197124839_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124196124841_))
                                                          (let ((_e124201124844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124196124841_))))
                    (let ((_tl124199124849_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124201124844_)))
                          (_hd124200124847_
                           (let ()
                             (declare (not safe))
                             (##car _e124201124844_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124200124847_))
                          (let ((_e124204124852_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124200124847_))))
                            (let ((_tl124202124857_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124204124852_)))
                                  (_hd124203124855_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124204124852_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124203124855_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124203124855_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124202124857_))
                                          (let ((_e124207124860_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124202124857_))))
                                            (let ((_tl124205124865_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124207124860_)))
                                                  (_hd124206124863_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124207124860_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124205124865_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124199124849_))
                                                      (let ((_e124210124868_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124199124849_))))
                (let ((_tl124208124873_
                       (let () (declare (not safe)) (##cdr _e124210124868_)))
                      (_hd124209124871_
                       (let () (declare (not safe)) (##car _e124210124868_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124209124871_))
                      (let ((_e124213124876_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124209124871_))))
                        (let ((_tl124211124881_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124213124876_)))
                              (_hd124212124879_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124213124876_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124212124879_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124212124879_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124211124881_))
                                      (let ((_e124216124884_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124211124881_))))
                                        (let ((_tl124214124889_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124216124884_)))
                                              (_hd124215124887_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124216124884_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124214124889_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124208124873_))
                                                  (let ((_e124219124892_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124208124873_))))
                                                    (let ((_tl124217124897_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124219124892_)))
                                                          (_hd124218124895_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124219124892_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124218124895_))
                                                          (let ((_e124222124900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124218124895_))))
                    (let ((_tl124220124905_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124222124900_)))
                          (_hd124221124903_
                           (let ()
                             (declare (not safe))
                             (##car _e124222124900_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124221124903_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd124221124903_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124220124905_))
                                  (let ((_e124225124908_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124220124905_))))
                                    (let ((_tl124223124913_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124225124908_)))
                                          (_hd124224124911_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124225124908_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124223124913_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124217124897_))
                                              (let ((_e124228124916_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124217124897_))))
                                                (let ((_tl124226124921_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124228124916_)))
                                                      (_hd124227124919_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124228124916_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd124227124919_))
                                                      (let ((_e124231124924_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd124227124919_))))
                (let ((_tl124229124929_
                       (let () (declare (not safe)) (##cdr _e124231124924_)))
                      (_hd124230124927_
                       (let () (declare (not safe)) (##car _e124231124924_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd124230124927_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd124230124927_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124229124929_))
                              (let ((_e124234124932_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124229124929_))))
                                (let ((_tl124232124937_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124234124932_)))
                                      (_hd124233124935_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124234124932_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124232124937_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124226124921_))
                                          (let ((_e124237124940_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124226124921_))))
                                            (let ((_tl124235124945_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124237124940_)))
                                                  (_hd124236124943_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124237124940_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd124236124943_))
                                                  (let ((_e124240124948_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd124236124943_))))
                                                    (let ((_tl124238124953_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124240124948_)))
                                                          (_hd124239124951_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124240124948_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd124239124951_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd124239124951_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124238124953_))
                          (let ((_e124243124956_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124238124953_))))
                            (let ((_tl124241124961_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124243124956_)))
                                  (_hd124242124959_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124243124956_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124241124961_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124235124945_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124193124833_))
                                          (___match127277127278_
                                           _e124189124812_
                                           _hd124188124815_
                                           _tl124187124817_
                                           _e124192124820_
                                           _hd124191124823_
                                           _tl124190124825_
                                           _e124195124828_
                                           _hd124194124831_
                                           _tl124193124833_
                                           _e124198124836_
                                           _hd124197124839_
                                           _tl124196124841_
                                           _e124201124844_
                                           _hd124200124847_
                                           _tl124199124849_
                                           _e124204124852_
                                           _hd124203124855_
                                           _tl124202124857_
                                           _e124207124860_
                                           _hd124206124863_
                                           _tl124205124865_
                                           _e124210124868_
                                           _hd124209124871_
                                           _tl124208124873_
                                           _e124213124876_
                                           _hd124212124879_
                                           _tl124211124881_
                                           _e124216124884_
                                           _hd124215124887_
                                           _tl124214124889_
                                           _e124219124892_
                                           _hd124218124895_
                                           _tl124217124897_
                                           _e124222124900_
                                           _hd124221124903_
                                           _tl124220124905_
                                           _e124225124908_
                                           _hd124224124911_
                                           _tl124223124913_
                                           _e124228124916_
                                           _hd124227124919_
                                           _tl124226124921_
                                           _e124231124924_
                                           _hd124230124927_
                                           _tl124229124929_
                                           _e124234124932_
                                           _hd124233124935_
                                           _tl124232124937_
                                           _e124237124940_
                                           _hd124236124943_
                                           _tl124235124945_
                                           _e124240124948_
                                           _hd124239124951_
                                           _tl124238124953_
                                           _e124243124956_
                                           _hd124242124959_
                                           _tl124241124961_)
                                          (___match127289127290_
                                           _e124189124812_
                                           _hd124188124815_
                                           _tl124187124817_
                                           _e124192124820_
                                           _hd124191124823_
                                           _tl124190124825_))
                                      (___match127289127290_
                                       _e124189124812_
                                       _hd124188124815_
                                       _tl124187124817_
                                       _e124192124820_
                                       _hd124191124823_
                                       _tl124190124825_))
                                  (___match127289127290_
                                   _e124189124812_
                                   _hd124188124815_
                                   _tl124187124817_
                                   _e124192124820_
                                   _hd124191124823_
                                   _tl124190124825_))))
                          (___match127289127290_
                           _e124189124812_
                           _hd124188124815_
                           _tl124187124817_
                           _e124192124820_
                           _hd124191124823_
                           _tl124190124825_))
                      (___match127289127290_
                       _e124189124812_
                       _hd124188124815_
                       _tl124187124817_
                       _e124192124820_
                       _hd124191124823_
                       _tl124190124825_))
                  (___match127289127290_
                   _e124189124812_
                   _hd124188124815_
                   _tl124187124817_
                   _e124192124820_
                   _hd124191124823_
                   _tl124190124825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127289127290_
                                                   _e124189124812_
                                                   _hd124188124815_
                                                   _tl124187124817_
                                                   _e124192124820_
                                                   _hd124191124823_
                                                   _tl124190124825_))))
                                          (___match127289127290_
                                           _e124189124812_
                                           _hd124188124815_
                                           _tl124187124817_
                                           _e124192124820_
                                           _hd124191124823_
                                           _tl124190124825_))
                                      (___match127289127290_
                                       _e124189124812_
                                       _hd124188124815_
                                       _tl124187124817_
                                       _e124192124820_
                                       _hd124191124823_
                                       _tl124190124825_))))
                              (___match127289127290_
                               _e124189124812_
                               _hd124188124815_
                               _tl124187124817_
                               _e124192124820_
                               _hd124191124823_
                               _tl124190124825_))
                          (___match127289127290_
                           _e124189124812_
                           _hd124188124815_
                           _tl124187124817_
                           _e124192124820_
                           _hd124191124823_
                           _tl124190124825_))
                      (___match127289127290_
                       _e124189124812_
                       _hd124188124815_
                       _tl124187124817_
                       _e124192124820_
                       _hd124191124823_
                       _tl124190124825_))))
              (___match127289127290_
               _e124189124812_
               _hd124188124815_
               _tl124187124817_
               _e124192124820_
               _hd124191124823_
               _tl124190124825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127289127290_
                                               _e124189124812_
                                               _hd124188124815_
                                               _tl124187124817_
                                               _e124192124820_
                                               _hd124191124823_
                                               _tl124190124825_))
                                          (___match127289127290_
                                           _e124189124812_
                                           _hd124188124815_
                                           _tl124187124817_
                                           _e124192124820_
                                           _hd124191124823_
                                           _tl124190124825_))))
                                  (___match127289127290_
                                   _e124189124812_
                                   _hd124188124815_
                                   _tl124187124817_
                                   _e124192124820_
                                   _hd124191124823_
                                   _tl124190124825_))
                              (___match127289127290_
                               _e124189124812_
                               _hd124188124815_
                               _tl124187124817_
                               _e124192124820_
                               _hd124191124823_
                               _tl124190124825_))
                          (___match127289127290_
                           _e124189124812_
                           _hd124188124815_
                           _tl124187124817_
                           _e124192124820_
                           _hd124191124823_
                           _tl124190124825_))))
                  (___match127289127290_
                   _e124189124812_
                   _hd124188124815_
                   _tl124187124817_
                   _e124192124820_
                   _hd124191124823_
                   _tl124190124825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127289127290_
                                                   _e124189124812_
                                                   _hd124188124815_
                                                   _tl124187124817_
                                                   _e124192124820_
                                                   _hd124191124823_
                                                   _tl124190124825_))
                                              (___match127289127290_
                                               _e124189124812_
                                               _hd124188124815_
                                               _tl124187124817_
                                               _e124192124820_
                                               _hd124191124823_
                                               _tl124190124825_))))
                                      (___match127289127290_
                                       _e124189124812_
                                       _hd124188124815_
                                       _tl124187124817_
                                       _e124192124820_
                                       _hd124191124823_
                                       _tl124190124825_))
                                  (___match127289127290_
                                   _e124189124812_
                                   _hd124188124815_
                                   _tl124187124817_
                                   _e124192124820_
                                   _hd124191124823_
                                   _tl124190124825_))
                              (___match127289127290_
                               _e124189124812_
                               _hd124188124815_
                               _tl124187124817_
                               _e124192124820_
                               _hd124191124823_
                               _tl124190124825_))))
                      (___match127289127290_
                       _e124189124812_
                       _hd124188124815_
                       _tl124187124817_
                       _e124192124820_
                       _hd124191124823_
                       _tl124190124825_))))
              (___match127289127290_
               _e124189124812_
               _hd124188124815_
               _tl124187124817_
               _e124192124820_
               _hd124191124823_
               _tl124190124825_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127289127290_
                                                   _e124189124812_
                                                   _hd124188124815_
                                                   _tl124187124817_
                                                   _e124192124820_
                                                   _hd124191124823_
                                                   _tl124190124825_))))
                                          (___match127289127290_
                                           _e124189124812_
                                           _hd124188124815_
                                           _tl124187124817_
                                           _e124192124820_
                                           _hd124191124823_
                                           _tl124190124825_))
                                      (___match127289127290_
                                       _e124189124812_
                                       _hd124188124815_
                                       _tl124187124817_
                                       _e124192124820_
                                       _hd124191124823_
                                       _tl124190124825_))
                                  (___match127289127290_
                                   _e124189124812_
                                   _hd124188124815_
                                   _tl124187124817_
                                   _e124192124820_
                                   _hd124191124823_
                                   _tl124190124825_))))
                          (___match127289127290_
                           _e124189124812_
                           _hd124188124815_
                           _tl124187124817_
                           _e124192124820_
                           _hd124191124823_
                           _tl124190124825_))))
                  (___match127289127290_
                   _e124189124812_
                   _hd124188124815_
                   _tl124187124817_
                   _e124192124820_
                   _hd124191124823_
                   _tl124190124825_))
              (___match127289127290_
               _e124189124812_
               _hd124188124815_
               _tl124187124817_
               _e124192124820_
               _hd124191124823_
               _tl124190124825_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127289127290_
                                                   _e124189124812_
                                                   _hd124188124815_
                                                   _tl124187124817_
                                                   _e124192124820_
                                                   _hd124191124823_
                                                   _tl124190124825_))))
                                          (___match127289127290_
                                           _e124189124812_
                                           _hd124188124815_
                                           _tl124187124817_
                                           _e124192124820_
                                           _hd124191124823_
                                           _tl124190124825_))))
                                  (___match127289127290_
                                   _e124189124812_
                                   _hd124188124815_
                                   _tl124187124817_
                                   _e124192124820_
                                   _hd124191124823_
                                   _tl124190124825_))))
                          (___match127423127424_
                           _e124189124812_
                           _hd124188124815_
                           _tl124187124817_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127104127105_))
                  (let ((_e124180125029_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127104127105_))))
                    (let ((_tl124178125034_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124180125029_)))
                          (_hd124179125032_
                           (let ()
                             (declare (not safe))
                             (##car _e124180125029_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L125037_ _tl124178125034_))
                            (___kont127106127107_ _L125037_))
                          (___match127131127132_
                           _e124180125029_
                           _hd124179125032_
                           _tl124178125034_))))
                  (let () (declare (not safe)) (_g124175124371_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_self124122_ _stx124123_)
        (letrec ((_clause-e124125_
                  (lambda (_form124166_)
                    (let ((__obj128787
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
                       __obj128787
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form124166_))
                       (if (let ((__tmp128863
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp128863))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form124166_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form124166_))
                               '#f)
                           '#f))
                      __obj128787))))
          (let* ((_g124127124137_
                  (lambda (_g124128124134_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g124128124134_))))
                 (_g124126124163_
                  (lambda (_g124128124140_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g124128124140_))
                        (let ((_e124132124142_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g124128124140_))))
                          (let ((_hd124131124145_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124132124142_)))
                                (_tl124130124147_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124132124142_))))
                            ((lambda (_L124150_)
                               (let ((_clauses124161_
                                      (map _clause-e124125_ _L124150_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses124161_)))
                             _tl124130124147_)))
                        (let ()
                          (declare (not safe))
                          (_g124127124137_ _g124128124140_))))))
            (declare (not safe))
            (_g124126124163_ _stx124123_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_self124053_ _stx124054_)
        (let* ((_g124056124073_
                (lambda (_g124057124070_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124057124070_))))
               (_g124055124119_
                (lambda (_g124057124076_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124057124076_))
                      (let ((_e124062124078_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124057124076_))))
                        (let ((_hd124061124081_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124062124078_)))
                              (_tl124060124083_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124062124078_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124060124083_))
                              (let ((_e124065124086_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124060124083_))))
                                (let ((_hd124064124089_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124065124086_)))
                                      (_tl124063124091_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124065124086_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124063124091_))
                                      (let ((_e124068124094_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124063124091_))))
                                        (let ((_hd124067124097_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124068124094_)))
                                              (_tl124066124099_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124068124094_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124066124099_))
                                              ((lambda (_L124102_ _L124103_)
                                                 (let ((__tmp128864
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self124053_
                                                             _L124102_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp128864
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd124067124097_
                                               _hd124064124089_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124056124073_
                                                 _g124057124076_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124056124073_ _g124057124076_)))))
                              (let ()
                                (declare (not safe))
                                (_g124056124073_ _g124057124076_)))))
                      (let ()
                        (declare (not safe))
                        (_g124056124073_ _g124057124076_))))))
          (declare (not safe))
          (_g124055124119_ _stx124054_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_self123957_ _stx123958_)
        (let* ((___stx127432127433_ _stx123958_)
               (_g123961123981_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127432127433_)))))
          (let ((___kont127434127435_
                 (lambda (_L124025_ _L124026_)
                   (let ((_type-e124043124045_
                          (let ((__tmp128865
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L124026_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp128865))))
                     (if _type-e124043124045_
                         (let ((_type-e124048_ _type-e124043124045_))
                           (_type-e124048_ _stx123958_ _L124025_))
                         '#f))))
                (___kont127436127437_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127432127433_))
                (let ((_e123967123993_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127432127433_))))
                  (let ((_tl123965123998_
                         (let () (declare (not safe)) (##cdr _e123967123993_)))
                        (_hd123966123996_
                         (let ()
                           (declare (not safe))
                           (##car _e123967123993_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123965123998_))
                        (let ((_e123970124001_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123965123998_))))
                          (let ((_tl123968124006_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123970124001_)))
                                (_hd123969124004_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123970124001_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123969124004_))
                                (let ((_e123973124009_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123969124004_))))
                                  (let ((_tl123971124014_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123973124009_)))
                                        (_hd123972124012_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123973124009_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123972124012_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123972124012_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123971124014_))
                                                (let ((_e123976124017_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123971124014_))))
                                                  (let ((_tl123974124022_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123976124017_)))
                                                        (_hd123975124020_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123976124017_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123974124022_))
                                                        (___kont127434127435_
                                                         _tl123968124006_
                                                         _hd123975124020_)
                                                        (___kont127436127437_))))
                                                (___kont127436127437_))
                                            (___kont127436127437_))
                                        (___kont127436127437_))))
                                (___kont127436127437_))))
                        (___kont127436127437_))))
                (___kont127436127437_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_self123905_ _stx123906_)
        (let* ((_g123908123921_
                (lambda (_g123909123918_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123909123918_))))
               (_g123907123954_
                (lambda (_g123909123924_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123909123924_))
                      (let ((_e123913123926_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123909123924_))))
                        (let ((_hd123912123929_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123913123926_)))
                              (_tl123911123931_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123913123926_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123911123931_))
                              (let ((_e123916123934_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123911123931_))))
                                (let ((_hd123915123937_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123916123934_)))
                                      (_tl123914123939_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123916123934_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123914123939_))
                                      ((lambda (_L123942_)
                                         (let ((__tmp128866
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L123942_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp128866)))
                                       _hd123915123937_)
                                      (let ()
                                        (declare (not safe))
                                        (_g123908123921_ _g123909123924_)))))
                              (let ()
                                (declare (not safe))
                                (_g123908123921_ _g123909123924_)))))
                      (let ()
                        (declare (not safe))
                        (_g123908123921_ _g123909123924_))))))
          (declare (not safe))
          (_g123907123954_ _stx123906_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form123139_)
        (let* ((___stx127470127471_ _form123139_)
               (_g123144123301_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127470127471_)))))
          (let ((___kont127472127473_
                 (lambda (_L123825_ _L123826_ _L123827_) '#t))
                (___kont127478127479_
                 (lambda (_L123613_
                          _L123614_
                          _L123615_
                          _L123616_
                          _L123617_
                          _L123618_)
                   '#t))
                (___kont127484127485_
                 (lambda (_L123409_ _L123410_ _L123411_ _L123412_) '#t))
                (___kont127486127487_ (lambda () '#f)))
            (let* ((___match127611127612_
                    (lambda (_e123263123313_
                             _hd123262123316_
                             _tl123261123318_
                             _e123266123321_
                             _hd123265123324_
                             _tl123264123326_
                             _e123269123329_
                             _hd123268123332_
                             _tl123267123334_
                             _e123272123337_
                             _hd123271123340_
                             _tl123270123342_
                             _e123275123345_
                             _hd123274123348_
                             _tl123273123350_
                             _e123278123353_
                             _hd123277123356_
                             _tl123276123358_
                             _e123281123361_
                             _hd123280123364_
                             _tl123279123366_
                             _e123284123369_
                             _hd123283123372_
                             _tl123282123374_
                             _e123287123377_
                             _hd123286123380_
                             _tl123285123382_
                             _e123290123385_
                             _hd123289123388_
                             _tl123288123390_
                             _e123293123393_
                             _hd123292123396_
                             _tl123291123398_
                             _e123296123401_
                             _hd123295123404_
                             _tl123294123406_)
                      (let ((_L123409_ _hd123295123404_)
                            (_L123410_ _hd123286123380_)
                            (_L123411_ _hd123277123356_)
                            (_L123412_ _hd123262123316_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L123412_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L123411_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L123412_ _L123409_))
                                 (let ((__tmp128867
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L123410_
                                           _L123412_))))
                                   (declare (not safe))
                                   (not __tmp128867)))
                            (___kont127484127485_
                             _L123409_
                             _L123410_
                             _L123411_
                             _L123412_)
                            (___kont127486127487_)))))
                   (___match127583127584_
                    (lambda (_e123263123313_
                             _hd123262123316_
                             _tl123261123318_
                             _e123266123321_
                             _hd123265123324_
                             _tl123264123326_
                             _e123269123329_
                             _hd123268123332_
                             _tl123267123334_
                             _e123272123337_
                             _hd123271123340_
                             _tl123270123342_
                             _e123275123345_
                             _hd123274123348_
                             _tl123273123350_
                             _e123278123353_
                             _hd123277123356_
                             _tl123276123358_
                             _e123281123361_
                             _hd123280123364_
                             _tl123279123366_
                             _e123284123369_
                             _hd123283123372_
                             _tl123282123374_
                             _e123287123377_
                             _hd123286123380_
                             _tl123285123382_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123279123366_))
                          (let ((_e123290123385_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123279123366_))))
                            (let ((_tl123288123390_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123290123385_)))
                                  (_hd123289123388_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123290123385_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd123289123388_))
                                  (let ((_e123293123393_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd123289123388_))))
                                    (let ((_tl123291123398_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123293123393_)))
                                          (_hd123292123396_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123293123393_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd123292123396_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd123292123396_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123291123398_))
                                                  (let ((_e123296123401_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123291123398_))))
                                                    (let ((_tl123294123406_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123296123401_)))
                                                          (_hd123295123404_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123296123401_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl123294123406_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl123288123390_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl123264123326_))
                          (___match127611127612_
                           _e123263123313_
                           _hd123262123316_
                           _tl123261123318_
                           _e123266123321_
                           _hd123265123324_
                           _tl123264123326_
                           _e123269123329_
                           _hd123268123332_
                           _tl123267123334_
                           _e123272123337_
                           _hd123271123340_
                           _tl123270123342_
                           _e123275123345_
                           _hd123274123348_
                           _tl123273123350_
                           _e123278123353_
                           _hd123277123356_
                           _tl123276123358_
                           _e123281123361_
                           _hd123280123364_
                           _tl123279123366_
                           _e123284123369_
                           _hd123283123372_
                           _tl123282123374_
                           _e123287123377_
                           _hd123286123380_
                           _tl123285123382_
                           _e123290123385_
                           _hd123289123388_
                           _tl123288123390_
                           _e123293123393_
                           _hd123292123396_
                           _tl123291123398_
                           _e123296123401_
                           _hd123295123404_
                           _tl123294123406_)
                          (___kont127486127487_))
                      (___kont127486127487_))
                  (___kont127486127487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127486127487_))
                                              (___kont127486127487_))
                                          (___kont127486127487_))))
                                  (___kont127486127487_))))
                          (___kont127486127487_))))
                   (___match127513127514_
                    (lambda (_e123199123453_
                             _hd123198123456_
                             _tl123197123458_
                             ___splice127480127481_
                             _target123200123461_
                             _tl123202123463_)
                      (letrec ((_loop123203123466_
                                (lambda (_hd123201123469_ _arg123207123471_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123201123469_))
                                      (let ((_e123204123474_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123201123469_))))
                                        (let ((_lp-tl123206123479_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123204123474_)))
                                              (_lp-hd123205123477_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123204123474_))))
                                          (let ((__tmp128882
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123205123477_
                                                         _arg123207123471_))))
                                            (declare (not safe))
                                            (_loop123203123466_
                                             _lp-tl123206123479_
                                             __tmp128882))))
                                      (let ((_arg123208123482_
                                             (reverse _arg123207123471_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123197123458_))
                                            (let ((_e123211123485_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123197123458_))))
                                              (let ((_tl123209123490_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123211123485_)))
                                                    (_hd123210123488_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123211123485_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123210123488_))
                                                    (let ((_e123214123493_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123210123488_))))
                                                      (let ((_tl123212123498_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123214123493_)))
                    (_hd123213123496_
                     (let () (declare (not safe)) (##car _e123214123493_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123213123496_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123213123496_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123212123498_))
                            (let ((_e123217123501_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123212123498_))))
                              (let ((_tl123215123506_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123217123501_)))
                                    (_hd123216123504_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123217123501_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123216123504_))
                                    (let ((_e123220123509_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123216123504_))))
                                      (let ((_tl123218123514_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123220123509_)))
                                            (_hd123219123512_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123220123509_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123219123512_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123219123512_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123218123514_))
                                                    (let ((_e123223123517_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123218123514_))))
                                                      (let ((_tl123221123522_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123223123517_)))
                    (_hd123222123520_
                     (let () (declare (not safe)) (##car _e123223123517_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123221123522_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123215123506_))
                        (let ((_e123226123525_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123215123506_))))
                          (let ((_tl123224123530_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123226123525_)))
                                (_hd123225123528_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123226123525_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123225123528_))
                                (let ((_e123229123533_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123225123528_))))
                                  (let ((_tl123227123538_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123229123533_)))
                                        (_hd123228123536_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123229123533_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123228123536_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123228123536_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123227123538_))
                                                (let ((_e123232123541_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123227123538_))))
                                                  (let ((_tl123230123546_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123232123541_)))
                                                        (_hd123231123544_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123232123541_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123230123546_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl123224123530_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl123224123530_))
                              '1)
                        (let ((___splice127482127483_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123224123530_
                                  '1))))
                          (let ((_tl123235123551_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127482127483_ '1)))
                                (_target123233123549_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127482127483_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123235123551_))
                                (let ((_e123244123554_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123235123551_))))
                                  (let ((_tl123242123559_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123244123554_)))
                                        (_hd123243123557_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123244123554_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123243123557_))
                                        (let ((_e123247123562_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123243123557_))))
                                          (let ((_tl123245123567_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123247123562_)))
                                                (_hd123246123565_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123247123562_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd123246123565_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd123246123565_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl123245123567_))
                                                        (let ((_e123250123570_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl123245123567_))))
                  (let ((_tl123248123575_
                         (let () (declare (not safe)) (##cdr _e123250123570_)))
                        (_hd123249123573_
                         (let ()
                           (declare (not safe))
                           (##car _e123250123570_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123248123575_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl123242123559_))
                            (letrec ((_loop123236123578_
                                      (lambda (_hd123234123581_
                                               _xarg123240123583_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd123234123581_))
                                            (let ((_e123237123586_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd123234123581_))))
                                              (let ((_lp-tl123239123591_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123237123586_)))
                                                    (_lp-hd123238123589_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123237123586_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd123238123589_))
                                                    (let ((_e123253123594_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd123238123589_))))
                                                      (let ((_tl123251123599_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123253123594_)))
                    (_hd123252123597_
                     (let () (declare (not safe)) (##car _e123253123594_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123252123597_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd123252123597_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123251123599_))
                            (let ((_e123256123602_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123251123599_))))
                              (let ((_tl123254123607_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123256123602_)))
                                    (_hd123255123605_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123256123602_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123254123607_))
                                    (let ((__tmp128881
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd123255123605_
                                                   _xarg123240123583_))))
                                      (declare (not safe))
                                      (_loop123236123578_
                                       _lp-tl123239123591_
                                       __tmp128881))
                                    (___match127583127584_
                                     _e123199123453_
                                     _hd123198123456_
                                     _tl123197123458_
                                     _e123211123485_
                                     _hd123210123488_
                                     _tl123209123490_
                                     _e123214123493_
                                     _hd123213123496_
                                     _tl123212123498_
                                     _e123217123501_
                                     _hd123216123504_
                                     _tl123215123506_
                                     _e123220123509_
                                     _hd123219123512_
                                     _tl123218123514_
                                     _e123223123517_
                                     _hd123222123520_
                                     _tl123221123522_
                                     _e123226123525_
                                     _hd123225123528_
                                     _tl123224123530_
                                     _e123229123533_
                                     _hd123228123536_
                                     _tl123227123538_
                                     _e123232123541_
                                     _hd123231123544_
                                     _tl123230123546_))))
                            (___match127583127584_
                             _e123199123453_
                             _hd123198123456_
                             _tl123197123458_
                             _e123211123485_
                             _hd123210123488_
                             _tl123209123490_
                             _e123214123493_
                             _hd123213123496_
                             _tl123212123498_
                             _e123217123501_
                             _hd123216123504_
                             _tl123215123506_
                             _e123220123509_
                             _hd123219123512_
                             _tl123218123514_
                             _e123223123517_
                             _hd123222123520_
                             _tl123221123522_
                             _e123226123525_
                             _hd123225123528_
                             _tl123224123530_
                             _e123229123533_
                             _hd123228123536_
                             _tl123227123538_
                             _e123232123541_
                             _hd123231123544_
                             _tl123230123546_))
                        (___match127583127584_
                         _e123199123453_
                         _hd123198123456_
                         _tl123197123458_
                         _e123211123485_
                         _hd123210123488_
                         _tl123209123490_
                         _e123214123493_
                         _hd123213123496_
                         _tl123212123498_
                         _e123217123501_
                         _hd123216123504_
                         _tl123215123506_
                         _e123220123509_
                         _hd123219123512_
                         _tl123218123514_
                         _e123223123517_
                         _hd123222123520_
                         _tl123221123522_
                         _e123226123525_
                         _hd123225123528_
                         _tl123224123530_
                         _e123229123533_
                         _hd123228123536_
                         _tl123227123538_
                         _e123232123541_
                         _hd123231123544_
                         _tl123230123546_))
                    (___match127583127584_
                     _e123199123453_
                     _hd123198123456_
                     _tl123197123458_
                     _e123211123485_
                     _hd123210123488_
                     _tl123209123490_
                     _e123214123493_
                     _hd123213123496_
                     _tl123212123498_
                     _e123217123501_
                     _hd123216123504_
                     _tl123215123506_
                     _e123220123509_
                     _hd123219123512_
                     _tl123218123514_
                     _e123223123517_
                     _hd123222123520_
                     _tl123221123522_
                     _e123226123525_
                     _hd123225123528_
                     _tl123224123530_
                     _e123229123533_
                     _hd123228123536_
                     _tl123227123538_
                     _e123232123541_
                     _hd123231123544_
                     _tl123230123546_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127583127584_
                                                     _e123199123453_
                                                     _hd123198123456_
                                                     _tl123197123458_
                                                     _e123211123485_
                                                     _hd123210123488_
                                                     _tl123209123490_
                                                     _e123214123493_
                                                     _hd123213123496_
                                                     _tl123212123498_
                                                     _e123217123501_
                                                     _hd123216123504_
                                                     _tl123215123506_
                                                     _e123220123509_
                                                     _hd123219123512_
                                                     _tl123218123514_
                                                     _e123223123517_
                                                     _hd123222123520_
                                                     _tl123221123522_
                                                     _e123226123525_
                                                     _hd123225123528_
                                                     _tl123224123530_
                                                     _e123229123533_
                                                     _hd123228123536_
                                                     _tl123227123538_
                                                     _e123232123541_
                                                     _hd123231123544_
                                                     _tl123230123546_))))
                                            (let ((_xarg123241123610_
                                                   (reverse _xarg123240123583_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123209123490_))
                                                  (let ((_L123613_
                                                         _hd123249123573_)
                                                        (_L123614_
                                                         _xarg123241123610_)
                                                        (_L123615_
                                                         _hd123231123544_)
                                                        (_L123616_
                                                         _hd123222123520_)
                                                        (_L123617_
                                                         _tl123202123463_)
                                                        (_L123618_
                                                         _arg123208123482_))
                                                    (if (and (let ((__tmp128879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp128880
                                   (lambda (_g123661123664_ _g123662123666_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123661123664_
                                             _g123662123666_)))))
                              (declare (not safe))
                              (foldr1 __tmp128880 '() _L123618_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp128879))
                     (let () (declare (not safe)) (gx#identifier? _L123617_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L123616_ 'apply))
                     (fx= (length (let ((__tmp128877
                                         (lambda (_g123668123671_
                                                  _g123669123673_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123668123671_
                                                   _g123669123673_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp128877 '() _L123618_)))
                          (length (let ((__tmp128878
                                         (lambda (_g123675123678_
                                                  _g123676123680_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123675123678_
                                                   _g123676123680_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp128878 '() _L123614_))))
                     (let ((__tmp128875
                            (let ((__tmp128876
                                   (lambda (_g123682123685_ _g123683123687_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123682123685_
                                             _g123683123687_)))))
                              (declare (not safe))
                              (foldr1 __tmp128876 '() _L123618_)))
                           (__tmp128873
                            (let ((__tmp128874
                                   (lambda (_g123689123692_ _g123690123694_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123689123692_
                                             _g123690123694_)))))
                              (declare (not safe))
                              (foldr1 __tmp128874 '() _L123614_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp128875 __tmp128873))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L123617_ _L123613_))
                     (let ((__tmp128868
                            (let ((__tmp128872
                                   (lambda (_g123696123698_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g123696123698_
                                        _L123615_))))
                                  (__tmp128869
                                   (let ((__tmp128871
                                          (lambda (_g123700123703_
                                                   _g123701123705_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g123700123703_
                                                    _g123701123705_))))
                                         (__tmp128870
                                          (let ()
                                            (declare (not safe))
                                            (cons _L123617_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp128871
                                             __tmp128870
                                             _L123618_))))
                              (declare (not safe))
                              (find __tmp128872 __tmp128869))))
                       (declare (not safe))
                       (not __tmp128868)))
                (___kont127478127479_
                 _L123613_
                 _L123614_
                 _L123615_
                 _L123616_
                 _L123617_
                 _L123618_)
                (___match127583127584_
                 _e123199123453_
                 _hd123198123456_
                 _tl123197123458_
                 _e123211123485_
                 _hd123210123488_
                 _tl123209123490_
                 _e123214123493_
                 _hd123213123496_
                 _tl123212123498_
                 _e123217123501_
                 _hd123216123504_
                 _tl123215123506_
                 _e123220123509_
                 _hd123219123512_
                 _tl123218123514_
                 _e123223123517_
                 _hd123222123520_
                 _tl123221123522_
                 _e123226123525_
                 _hd123225123528_
                 _tl123224123530_
                 _e123229123533_
                 _hd123228123536_
                 _tl123227123538_
                 _e123232123541_
                 _hd123231123544_
                 _tl123230123546_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127583127584_
                                                   _e123199123453_
                                                   _hd123198123456_
                                                   _tl123197123458_
                                                   _e123211123485_
                                                   _hd123210123488_
                                                   _tl123209123490_
                                                   _e123214123493_
                                                   _hd123213123496_
                                                   _tl123212123498_
                                                   _e123217123501_
                                                   _hd123216123504_
                                                   _tl123215123506_
                                                   _e123220123509_
                                                   _hd123219123512_
                                                   _tl123218123514_
                                                   _e123223123517_
                                                   _hd123222123520_
                                                   _tl123221123522_
                                                   _e123226123525_
                                                   _hd123225123528_
                                                   _tl123224123530_
                                                   _e123229123533_
                                                   _hd123228123536_
                                                   _tl123227123538_
                                                   _e123232123541_
                                                   _hd123231123544_
                                                   _tl123230123546_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop123236123578_ _target123233123549_ '())))
                            (___match127583127584_
                             _e123199123453_
                             _hd123198123456_
                             _tl123197123458_
                             _e123211123485_
                             _hd123210123488_
                             _tl123209123490_
                             _e123214123493_
                             _hd123213123496_
                             _tl123212123498_
                             _e123217123501_
                             _hd123216123504_
                             _tl123215123506_
                             _e123220123509_
                             _hd123219123512_
                             _tl123218123514_
                             _e123223123517_
                             _hd123222123520_
                             _tl123221123522_
                             _e123226123525_
                             _hd123225123528_
                             _tl123224123530_
                             _e123229123533_
                             _hd123228123536_
                             _tl123227123538_
                             _e123232123541_
                             _hd123231123544_
                             _tl123230123546_))
                        (___match127583127584_
                         _e123199123453_
                         _hd123198123456_
                         _tl123197123458_
                         _e123211123485_
                         _hd123210123488_
                         _tl123209123490_
                         _e123214123493_
                         _hd123213123496_
                         _tl123212123498_
                         _e123217123501_
                         _hd123216123504_
                         _tl123215123506_
                         _e123220123509_
                         _hd123219123512_
                         _tl123218123514_
                         _e123223123517_
                         _hd123222123520_
                         _tl123221123522_
                         _e123226123525_
                         _hd123225123528_
                         _tl123224123530_
                         _e123229123533_
                         _hd123228123536_
                         _tl123227123538_
                         _e123232123541_
                         _hd123231123544_
                         _tl123230123546_))))
                (___match127583127584_
                 _e123199123453_
                 _hd123198123456_
                 _tl123197123458_
                 _e123211123485_
                 _hd123210123488_
                 _tl123209123490_
                 _e123214123493_
                 _hd123213123496_
                 _tl123212123498_
                 _e123217123501_
                 _hd123216123504_
                 _tl123215123506_
                 _e123220123509_
                 _hd123219123512_
                 _tl123218123514_
                 _e123223123517_
                 _hd123222123520_
                 _tl123221123522_
                 _e123226123525_
                 _hd123225123528_
                 _tl123224123530_
                 _e123229123533_
                 _hd123228123536_
                 _tl123227123538_
                 _e123232123541_
                 _hd123231123544_
                 _tl123230123546_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127583127584_
                                                     _e123199123453_
                                                     _hd123198123456_
                                                     _tl123197123458_
                                                     _e123211123485_
                                                     _hd123210123488_
                                                     _tl123209123490_
                                                     _e123214123493_
                                                     _hd123213123496_
                                                     _tl123212123498_
                                                     _e123217123501_
                                                     _hd123216123504_
                                                     _tl123215123506_
                                                     _e123220123509_
                                                     _hd123219123512_
                                                     _tl123218123514_
                                                     _e123223123517_
                                                     _hd123222123520_
                                                     _tl123221123522_
                                                     _e123226123525_
                                                     _hd123225123528_
                                                     _tl123224123530_
                                                     _e123229123533_
                                                     _hd123228123536_
                                                     _tl123227123538_
                                                     _e123232123541_
                                                     _hd123231123544_
                                                     _tl123230123546_))
                                                (___match127583127584_
                                                 _e123199123453_
                                                 _hd123198123456_
                                                 _tl123197123458_
                                                 _e123211123485_
                                                 _hd123210123488_
                                                 _tl123209123490_
                                                 _e123214123493_
                                                 _hd123213123496_
                                                 _tl123212123498_
                                                 _e123217123501_
                                                 _hd123216123504_
                                                 _tl123215123506_
                                                 _e123220123509_
                                                 _hd123219123512_
                                                 _tl123218123514_
                                                 _e123223123517_
                                                 _hd123222123520_
                                                 _tl123221123522_
                                                 _e123226123525_
                                                 _hd123225123528_
                                                 _tl123224123530_
                                                 _e123229123533_
                                                 _hd123228123536_
                                                 _tl123227123538_
                                                 _e123232123541_
                                                 _hd123231123544_
                                                 _tl123230123546_))))
                                        (___match127583127584_
                                         _e123199123453_
                                         _hd123198123456_
                                         _tl123197123458_
                                         _e123211123485_
                                         _hd123210123488_
                                         _tl123209123490_
                                         _e123214123493_
                                         _hd123213123496_
                                         _tl123212123498_
                                         _e123217123501_
                                         _hd123216123504_
                                         _tl123215123506_
                                         _e123220123509_
                                         _hd123219123512_
                                         _tl123218123514_
                                         _e123223123517_
                                         _hd123222123520_
                                         _tl123221123522_
                                         _e123226123525_
                                         _hd123225123528_
                                         _tl123224123530_
                                         _e123229123533_
                                         _hd123228123536_
                                         _tl123227123538_
                                         _e123232123541_
                                         _hd123231123544_
                                         _tl123230123546_))))
                                (___match127583127584_
                                 _e123199123453_
                                 _hd123198123456_
                                 _tl123197123458_
                                 _e123211123485_
                                 _hd123210123488_
                                 _tl123209123490_
                                 _e123214123493_
                                 _hd123213123496_
                                 _tl123212123498_
                                 _e123217123501_
                                 _hd123216123504_
                                 _tl123215123506_
                                 _e123220123509_
                                 _hd123219123512_
                                 _tl123218123514_
                                 _e123223123517_
                                 _hd123222123520_
                                 _tl123221123522_
                                 _e123226123525_
                                 _hd123225123528_
                                 _tl123224123530_
                                 _e123229123533_
                                 _hd123228123536_
                                 _tl123227123538_
                                 _e123232123541_
                                 _hd123231123544_
                                 _tl123230123546_))))
                        (___match127583127584_
                         _e123199123453_
                         _hd123198123456_
                         _tl123197123458_
                         _e123211123485_
                         _hd123210123488_
                         _tl123209123490_
                         _e123214123493_
                         _hd123213123496_
                         _tl123212123498_
                         _e123217123501_
                         _hd123216123504_
                         _tl123215123506_
                         _e123220123509_
                         _hd123219123512_
                         _tl123218123514_
                         _e123223123517_
                         _hd123222123520_
                         _tl123221123522_
                         _e123226123525_
                         _hd123225123528_
                         _tl123224123530_
                         _e123229123533_
                         _hd123228123536_
                         _tl123227123538_
                         _e123232123541_
                         _hd123231123544_
                         _tl123230123546_))
                    (___match127583127584_
                     _e123199123453_
                     _hd123198123456_
                     _tl123197123458_
                     _e123211123485_
                     _hd123210123488_
                     _tl123209123490_
                     _e123214123493_
                     _hd123213123496_
                     _tl123212123498_
                     _e123217123501_
                     _hd123216123504_
                     _tl123215123506_
                     _e123220123509_
                     _hd123219123512_
                     _tl123218123514_
                     _e123223123517_
                     _hd123222123520_
                     _tl123221123522_
                     _e123226123525_
                     _hd123225123528_
                     _tl123224123530_
                     _e123229123533_
                     _hd123228123536_
                     _tl123227123538_
                     _e123232123541_
                     _hd123231123544_
                     _tl123230123546_))
                (___kont127486127487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127486127487_))
                                            (___kont127486127487_))
                                        (___kont127486127487_))))
                                (___kont127486127487_))))
                        (___kont127486127487_))
                    (___kont127486127487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127486127487_))
                                                (___kont127486127487_))
                                            (___kont127486127487_))))
                                    (___kont127486127487_))))
                            (___kont127486127487_))
                        (___kont127486127487_))
                    (___kont127486127487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127486127487_))))
                                            (___kont127486127487_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123203123466_ _target123200123461_ '())))))
                   (___match127501127502_
                    (lambda (_e123151123713_
                             _hd123150123716_
                             _tl123149123718_
                             ___splice127474127475_
                             _target123152123721_
                             _tl123154123723_)
                      (letrec ((_loop123155123726_
                                (lambda (_hd123153123729_ _arg123159123731_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123153123729_))
                                      (let ((_e123156123734_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123153123729_))))
                                        (let ((_lp-tl123158123739_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123156123734_)))
                                              (_lp-hd123157123737_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123156123734_))))
                                          (let ((__tmp128896
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123157123737_
                                                         _arg123159123731_))))
                                            (declare (not safe))
                                            (_loop123155123726_
                                             _lp-tl123158123739_
                                             __tmp128896))))
                                      (let ((_arg123160123742_
                                             (reverse _arg123159123731_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123149123718_))
                                            (let ((_e123163123745_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123149123718_))))
                                              (let ((_tl123161123750_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123163123745_)))
                                                    (_hd123162123748_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123163123745_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123162123748_))
                                                    (let ((_e123166123753_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123162123748_))))
                                                      (let ((_tl123164123758_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123166123753_)))
                    (_hd123165123756_
                     (let () (declare (not safe)) (##car _e123166123753_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123165123756_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123165123756_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123164123758_))
                            (let ((_e123169123761_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123164123758_))))
                              (let ((_tl123167123766_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123169123761_)))
                                    (_hd123168123764_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123169123761_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123168123764_))
                                    (let ((_e123172123769_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123168123764_))))
                                      (let ((_tl123170123774_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123172123769_)))
                                            (_hd123171123772_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123172123769_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123171123772_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123171123772_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123170123774_))
                                                    (let ((_e123175123777_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123170123774_))))
                                                      (let ((_tl123173123782_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123175123777_)))
                    (_hd123174123780_
                     (let () (declare (not safe)) (##car _e123175123777_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123173123782_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl123167123766_))
                        (let ((___splice127476127477_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123167123766_
                                  '0))))
                          (let ((_tl123178123787_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127476127477_ '1)))
                                (_target123176123785_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127476127477_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123178123787_))
                                (letrec ((_loop123179123790_
                                          (lambda (_hd123177123793_
                                                   _xarg123183123795_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123177123793_))
                                                (let ((_e123180123798_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123177123793_))))
                                                  (let ((_lp-tl123182123803_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123180123798_)))
                                                        (_lp-hd123181123801_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123180123798_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd123181123801_))
                                                        (let ((_e123187123806_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd123181123801_))))
                  (let ((_tl123185123811_
                         (let () (declare (not safe)) (##cdr _e123187123806_)))
                        (_hd123186123809_
                         (let ()
                           (declare (not safe))
                           (##car _e123187123806_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123186123809_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123186123809_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123185123811_))
                                (let ((_e123190123814_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123185123811_))))
                                  (let ((_tl123188123819_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123190123814_)))
                                        (_hd123189123817_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123190123814_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123188123819_))
                                        (let ((__tmp128895
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd123189123817_
                                                       _xarg123183123795_))))
                                          (declare (not safe))
                                          (_loop123179123790_
                                           _lp-tl123182123803_
                                           __tmp128895))
                                        (___match127513127514_
                                         _e123151123713_
                                         _hd123150123716_
                                         _tl123149123718_
                                         ___splice127474127475_
                                         _target123152123721_
                                         _tl123154123723_))))
                                (___match127513127514_
                                 _e123151123713_
                                 _hd123150123716_
                                 _tl123149123718_
                                 ___splice127474127475_
                                 _target123152123721_
                                 _tl123154123723_))
                            (___match127513127514_
                             _e123151123713_
                             _hd123150123716_
                             _tl123149123718_
                             ___splice127474127475_
                             _target123152123721_
                             _tl123154123723_))
                        (___match127513127514_
                         _e123151123713_
                         _hd123150123716_
                         _tl123149123718_
                         ___splice127474127475_
                         _target123152123721_
                         _tl123154123723_))))
                (___match127513127514_
                 _e123151123713_
                 _hd123150123716_
                 _tl123149123718_
                 ___splice127474127475_
                 _target123152123721_
                 _tl123154123723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg123184123822_
                                                       (reverse _xarg123183123795_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123161123750_))
                                                      (let ((_L123825_
                                                             _xarg123184123822_)
                                                            (_L123826_
                                                             _hd123174123780_)
                                                            (_L123827_
                                                             _arg123160123742_))
                                                        (if (and (let ((__tmp128893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp128894
                                       (lambda (_g123855123858_
                                                _g123856123860_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123855123858_
                                                 _g123856123860_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128894 '() _L123827_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp128893))
                         (fx= (length (let ((__tmp128891
                                             (lambda (_g123862123865_
                                                      _g123863123867_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g123862123865_
                                                       _g123863123867_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp128891 '() _L123827_)))
                              (length (let ((__tmp128892
                                             (lambda (_g123869123872_
                                                      _g123870123874_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g123869123872_
                                                       _g123870123874_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp128892 '() _L123825_))))
                         (let ((__tmp128889
                                (let ((__tmp128890
                                       (lambda (_g123876123879_
                                                _g123877123881_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123876123879_
                                                 _g123877123881_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128890 '() _L123827_)))
                               (__tmp128887
                                (let ((__tmp128888
                                       (lambda (_g123883123886_
                                                _g123884123888_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123883123886_
                                                 _g123884123888_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128888 '() _L123825_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp128889
                                    __tmp128887))
                         (let ((__tmp128883
                                (let ((__tmp128886
                                       (lambda (_g123890123892_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g123890123892_
                                            _L123826_))))
                                      (__tmp128884
                                       (let ((__tmp128885
                                              (lambda (_g123894123897_
                                                       _g123895123899_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g123894123897_
                                                        _g123895123899_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp128885 '() _L123827_))))
                                  (declare (not safe))
                                  (find __tmp128886 __tmp128884))))
                           (declare (not safe))
                           (not __tmp128883)))
                    (___kont127472127473_ _L123825_ _L123826_ _L123827_)
                    (___match127513127514_
                     _e123151123713_
                     _hd123150123716_
                     _tl123149123718_
                     ___splice127474127475_
                     _target123152123721_
                     _tl123154123723_)))
              (___match127513127514_
               _e123151123713_
               _hd123150123716_
               _tl123149123718_
               ___splice127474127475_
               _target123152123721_
               _tl123154123723_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop123179123790_
                                     _target123176123785_
                                     '())))
                                (___match127513127514_
                                 _e123151123713_
                                 _hd123150123716_
                                 _tl123149123718_
                                 ___splice127474127475_
                                 _target123152123721_
                                 _tl123154123723_))))
                        (___match127513127514_
                         _e123151123713_
                         _hd123150123716_
                         _tl123149123718_
                         ___splice127474127475_
                         _target123152123721_
                         _tl123154123723_))
                    (___match127513127514_
                     _e123151123713_
                     _hd123150123716_
                     _tl123149123718_
                     ___splice127474127475_
                     _target123152123721_
                     _tl123154123723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127513127514_
                                                     _e123151123713_
                                                     _hd123150123716_
                                                     _tl123149123718_
                                                     ___splice127474127475_
                                                     _target123152123721_
                                                     _tl123154123723_))
                                                (___match127513127514_
                                                 _e123151123713_
                                                 _hd123150123716_
                                                 _tl123149123718_
                                                 ___splice127474127475_
                                                 _target123152123721_
                                                 _tl123154123723_))
                                            (___match127513127514_
                                             _e123151123713_
                                             _hd123150123716_
                                             _tl123149123718_
                                             ___splice127474127475_
                                             _target123152123721_
                                             _tl123154123723_))))
                                    (___match127513127514_
                                     _e123151123713_
                                     _hd123150123716_
                                     _tl123149123718_
                                     ___splice127474127475_
                                     _target123152123721_
                                     _tl123154123723_))))
                            (___match127513127514_
                             _e123151123713_
                             _hd123150123716_
                             _tl123149123718_
                             ___splice127474127475_
                             _target123152123721_
                             _tl123154123723_))
                        (___match127513127514_
                         _e123151123713_
                         _hd123150123716_
                         _tl123149123718_
                         ___splice127474127475_
                         _target123152123721_
                         _tl123154123723_))
                    (___match127513127514_
                     _e123151123713_
                     _hd123150123716_
                     _tl123149123718_
                     ___splice127474127475_
                     _target123152123721_
                     _tl123154123723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127513127514_
                                                     _e123151123713_
                                                     _hd123150123716_
                                                     _tl123149123718_
                                                     ___splice127474127475_
                                                     _target123152123721_
                                                     _tl123154123723_))))
                                            (___match127513127514_
                                             _e123151123713_
                                             _hd123150123716_
                                             _tl123149123718_
                                             ___splice127474127475_
                                             _target123152123721_
                                             _tl123154123723_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123155123726_ _target123152123721_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127470127471_))
                  (let ((_e123151123713_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127470127471_))))
                    (let ((_tl123149123718_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123151123713_)))
                          (_hd123150123716_
                           (let ()
                             (declare (not safe))
                             (##car _e123151123713_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd123150123716_))
                          (let ((___splice127474127475_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd123150123716_
                                    '0))))
                            (let ((_tl123154123723_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127474127475_ '1)))
                                  (_target123152123721_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127474127475_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123154123723_))
                                  (___match127501127502_
                                   _e123151123713_
                                   _hd123150123716_
                                   _tl123149123718_
                                   ___splice127474127475_
                                   _target123152123721_
                                   _tl123154123723_)
                                  (___match127513127514_
                                   _e123151123713_
                                   _hd123150123716_
                                   _tl123149123718_
                                   ___splice127474127475_
                                   _target123152123721_
                                   _tl123154123723_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123149123718_))
                              (let ((_e123266123321_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123149123718_))))
                                (let ((_tl123264123326_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123266123321_)))
                                      (_hd123265123324_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123266123321_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123265123324_))
                                      (let ((_e123269123329_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123265123324_))))
                                        (let ((_tl123267123334_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123269123329_)))
                                              (_hd123268123332_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123269123329_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd123268123332_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd123268123332_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123267123334_))
                                                      (let ((_e123272123337_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123267123334_))))
                (let ((_tl123270123342_
                       (let () (declare (not safe)) (##cdr _e123272123337_)))
                      (_hd123271123340_
                       (let () (declare (not safe)) (##car _e123272123337_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123271123340_))
                      (let ((_e123275123345_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123271123340_))))
                        (let ((_tl123273123350_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123275123345_)))
                              (_hd123274123348_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123275123345_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123274123348_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123274123348_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123273123350_))
                                      (let ((_e123278123353_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123273123350_))))
                                        (let ((_tl123276123358_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123278123353_)))
                                              (_hd123277123356_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123278123353_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123276123358_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123270123342_))
                                                  (let ((_e123281123361_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123270123342_))))
                                                    (let ((_tl123279123366_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123281123361_)))
                                                          (_hd123280123364_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123281123361_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123280123364_))
                                                          (let ((_e123284123369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123280123364_))))
                    (let ((_tl123282123374_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123284123369_)))
                          (_hd123283123372_
                           (let ()
                             (declare (not safe))
                             (##car _e123284123369_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123283123372_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123283123372_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123282123374_))
                                  (let ((_e123287123377_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123282123374_))))
                                    (let ((_tl123285123382_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123287123377_)))
                                          (_hd123286123380_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123287123377_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123285123382_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123279123366_))
                                              (let ((_e123290123385_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123279123366_))))
                                                (let ((_tl123288123390_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123290123385_)))
                                                      (_hd123289123388_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123290123385_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd123289123388_))
                                                      (let ((_e123293123393_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd123289123388_))))
                (let ((_tl123291123398_
                       (let () (declare (not safe)) (##cdr _e123293123393_)))
                      (_hd123292123396_
                       (let () (declare (not safe)) (##car _e123293123393_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd123292123396_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd123292123396_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123291123398_))
                              (let ((_e123296123401_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123291123398_))))
                                (let ((_tl123294123406_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123296123401_)))
                                      (_hd123295123404_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123296123401_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123294123406_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123288123390_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123264123326_))
                                              (___match127611127612_
                                               _e123151123713_
                                               _hd123150123716_
                                               _tl123149123718_
                                               _e123266123321_
                                               _hd123265123324_
                                               _tl123264123326_
                                               _e123269123329_
                                               _hd123268123332_
                                               _tl123267123334_
                                               _e123272123337_
                                               _hd123271123340_
                                               _tl123270123342_
                                               _e123275123345_
                                               _hd123274123348_
                                               _tl123273123350_
                                               _e123278123353_
                                               _hd123277123356_
                                               _tl123276123358_
                                               _e123281123361_
                                               _hd123280123364_
                                               _tl123279123366_
                                               _e123284123369_
                                               _hd123283123372_
                                               _tl123282123374_
                                               _e123287123377_
                                               _hd123286123380_
                                               _tl123285123382_
                                               _e123290123385_
                                               _hd123289123388_
                                               _tl123288123390_
                                               _e123293123393_
                                               _hd123292123396_
                                               _tl123291123398_
                                               _e123296123401_
                                               _hd123295123404_
                                               _tl123294123406_)
                                              (___kont127486127487_))
                                          (___kont127486127487_))
                                      (___kont127486127487_))))
                              (___kont127486127487_))
                          (___kont127486127487_))
                      (___kont127486127487_))))
              (___kont127486127487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont127486127487_))
                                          (___kont127486127487_))))
                                  (___kont127486127487_))
                              (___kont127486127487_))
                          (___kont127486127487_))))
                  (___kont127486127487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127486127487_))
                                              (___kont127486127487_))))
                                      (___kont127486127487_))
                                  (___kont127486127487_))
                              (___kont127486127487_))))
                      (___kont127486127487_))))
              (___kont127486127487_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127486127487_))
                                              (___kont127486127487_))))
                                      (___kont127486127487_))))
                              (___kont127486127487_)))))
                  (___kont127486127487_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form122607_)
        (let* ((___stx127614127615_ _form122607_)
               (_g122611122735_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127614127615_)))))
          (let ((___kont127616127617_
                 (lambda (_L123105_ _L123106_ _L123107_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123106_))))
                (___kont127622127623_
                 (lambda (_L122953_ _L122954_ _L122955_ _L122956_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122953_))))
                (___kont127626127627_
                 (lambda (_L122820_ _L122821_ _L122822_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122820_)))))
            (let* ((___match127723127724_
                    (lambda (_e122703122740_
                             _hd122702122743_
                             _tl122701122745_
                             _e122706122748_
                             _hd122705122751_
                             _tl122704122753_
                             _e122709122756_
                             _hd122708122759_
                             _tl122707122761_
                             _e122712122764_
                             _hd122711122767_
                             _tl122710122769_
                             _e122715122772_
                             _hd122714122775_
                             _tl122713122777_
                             _e122718122780_
                             _hd122717122783_
                             _tl122716122785_
                             _e122721122788_
                             _hd122720122791_
                             _tl122719122793_
                             _e122724122796_
                             _hd122723122799_
                             _tl122722122801_
                             _e122727122804_
                             _hd122726122807_
                             _tl122725122809_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122719122793_))
                          (let ((_e122730122812_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122719122793_))))
                            (let ((_tl122728122817_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122730122812_)))
                                  (_hd122729122815_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122730122812_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122728122817_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122704122753_))
                                      (___kont127626127627_
                                       _hd122726122807_
                                       _hd122717122783_
                                       _hd122702122743_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122611122735_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122611122735_)))))
                          (let () (declare (not safe)) (_g122611122735_)))))
                   (___match127653127654_
                    (lambda (_e122664122857_
                             _hd122663122860_
                             _tl122662122862_
                             ___splice127624127625_
                             _target122665122865_
                             _tl122667122867_)
                      (letrec ((_loop122668122870_
                                (lambda (_hd122666122873_ _arg122672122875_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122666122873_))
                                      (let ((_e122669122878_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122666122873_))))
                                        (let ((_lp-tl122671122883_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122669122878_)))
                                              (_lp-hd122670122881_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122669122878_))))
                                          (let ((__tmp128897
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122670122881_
                                                         _arg122672122875_))))
                                            (declare (not safe))
                                            (_loop122668122870_
                                             _lp-tl122671122883_
                                             __tmp128897))))
                                      (let ((_arg122673122886_
                                             (reverse _arg122672122875_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122662122862_))
                                            (let ((_e122676122889_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122662122862_))))
                                              (let ((_tl122674122894_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122676122889_)))
                                                    (_hd122675122892_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122676122889_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122675122892_))
                                                    (let ((_e122679122897_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122675122892_))))
                                                      (let ((_tl122677122902_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122679122897_)))
                    (_hd122678122900_
                     (let () (declare (not safe)) (##car _e122679122897_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122678122900_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122678122900_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122677122902_))
                            (let ((_e122682122905_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122677122902_))))
                              (let ((_tl122680122910_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122682122905_)))
                                    (_hd122681122908_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122682122905_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122681122908_))
                                    (let ((_e122685122913_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122681122908_))))
                                      (let ((_tl122683122918_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122685122913_)))
                                            (_hd122684122916_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122685122913_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122684122916_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122684122916_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122683122918_))
                                                    (let ((_e122688122921_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122683122918_))))
                                                      (let ((_tl122686122926_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122688122921_)))
                    (_hd122687122924_
                     (let () (declare (not safe)) (##car _e122688122921_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122686122926_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122680122910_))
                        (let ((_e122691122929_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122680122910_))))
                          (let ((_tl122689122934_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122691122929_)))
                                (_hd122690122932_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122691122929_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122690122932_))
                                (let ((_e122694122937_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122690122932_))))
                                  (let ((_tl122692122942_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122694122937_)))
                                        (_hd122693122940_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122694122937_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122693122940_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122693122940_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122692122942_))
                                                (let ((_e122697122945_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122692122942_))))
                                                  (let ((_tl122695122950_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122697122945_)))
                                                        (_hd122696122948_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122697122945_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122695122950_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl122674122894_))
                                                            (___kont127622127623_
                                                             _hd122696122948_
                                                             _hd122687122924_
                                                             _tl122667122867_
                                                             _arg122673122886_)
                                                            (___match127723127724_
                                                             _e122664122857_
                                                             _hd122663122860_
                                                             _tl122662122862_
                                                             _e122676122889_
                                                             _hd122675122892_
                                                             _tl122674122894_
                                                             _e122679122897_
                                                             _hd122678122900_
                                                             _tl122677122902_
                                                             _e122682122905_
                                                             _hd122681122908_
                                                             _tl122680122910_
                                                             _e122685122913_
                                                             _hd122684122916_
                                                             _tl122683122918_
                                                             _e122688122921_
                                                             _hd122687122924_
                                                             _tl122686122926_
                                                             _e122691122929_
                                                             _hd122690122932_
                                                             _tl122689122934_
                                                             _e122694122937_
                                                             _hd122693122940_
                                                             _tl122692122942_
                                                             _e122697122945_
                                                             _hd122696122948_
                                                             _tl122695122950_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122611122735_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122611122735_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122611122735_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g122611122735_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g122611122735_)))))
                        (let () (declare (not safe)) (_g122611122735_)))
                    (let () (declare (not safe)) (_g122611122735_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122611122735_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122611122735_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122611122735_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g122611122735_)))))
                            (let () (declare (not safe)) (_g122611122735_)))
                        (let () (declare (not safe)) (_g122611122735_)))
                    (let () (declare (not safe)) (_g122611122735_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122611122735_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g122611122735_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop122668122870_ _target122665122865_ '())))))
                   (___match127641127642_
                    (lambda (_e122618122993_
                             _hd122617122996_
                             _tl122616122998_
                             ___splice127618127619_
                             _target122619123001_
                             _tl122621123003_)
                      (letrec ((_loop122622123006_
                                (lambda (_hd122620123009_ _arg122626123011_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122620123009_))
                                      (let ((_e122623123014_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122620123009_))))
                                        (let ((_lp-tl122625123019_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122623123014_)))
                                              (_lp-hd122624123017_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122623123014_))))
                                          (let ((__tmp128899
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122624123017_
                                                         _arg122626123011_))))
                                            (declare (not safe))
                                            (_loop122622123006_
                                             _lp-tl122625123019_
                                             __tmp128899))))
                                      (let ((_arg122627123022_
                                             (reverse _arg122626123011_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122616122998_))
                                            (let ((_e122630123025_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122616122998_))))
                                              (let ((_tl122628123030_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122630123025_)))
                                                    (_hd122629123028_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122630123025_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122629123028_))
                                                    (let ((_e122633123033_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122629123028_))))
                                                      (let ((_tl122631123038_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122633123033_)))
                    (_hd122632123036_
                     (let () (declare (not safe)) (##car _e122633123033_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122632123036_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122632123036_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122631123038_))
                            (let ((_e122636123041_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122631123038_))))
                              (let ((_tl122634123046_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122636123041_)))
                                    (_hd122635123044_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122636123041_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122635123044_))
                                    (let ((_e122639123049_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122635123044_))))
                                      (let ((_tl122637123054_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122639123049_)))
                                            (_hd122638123052_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122639123049_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122638123052_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122638123052_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122637123054_))
                                                    (let ((_e122642123057_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122637123054_))))
                                                      (let ((_tl122640123062_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122642123057_)))
                    (_hd122641123060_
                     (let () (declare (not safe)) (##car _e122642123057_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122640123062_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl122634123046_))
                        (let ((___splice127620127621_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122634123046_
                                  '0))))
                          (let ((_tl122645123067_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127620127621_ '1)))
                                (_target122643123065_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127620127621_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122645123067_))
                                (letrec ((_loop122646123070_
                                          (lambda (_hd122644123073_
                                                   _xarg122650123075_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122644123073_))
                                                (let ((_e122647123078_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122644123073_))))
                                                  (let ((_lp-tl122649123083_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122647123078_)))
                                                        (_lp-hd122648123081_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122647123078_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd122648123081_))
                                                        (let ((_e122654123086_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd122648123081_))))
                  (let ((_tl122652123091_
                         (let () (declare (not safe)) (##cdr _e122654123086_)))
                        (_hd122653123089_
                         (let ()
                           (declare (not safe))
                           (##car _e122654123086_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122653123089_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122653123089_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122652123091_))
                                (let ((_e122657123094_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122652123091_))))
                                  (let ((_tl122655123099_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122657123094_)))
                                        (_hd122656123097_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122657123094_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122655123099_))
                                        (let ((__tmp128898
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd122656123097_
                                                       _xarg122650123075_))))
                                          (declare (not safe))
                                          (_loop122646123070_
                                           _lp-tl122649123083_
                                           __tmp128898))
                                        (___match127653127654_
                                         _e122618122993_
                                         _hd122617122996_
                                         _tl122616122998_
                                         ___splice127618127619_
                                         _target122619123001_
                                         _tl122621123003_))))
                                (___match127653127654_
                                 _e122618122993_
                                 _hd122617122996_
                                 _tl122616122998_
                                 ___splice127618127619_
                                 _target122619123001_
                                 _tl122621123003_))
                            (___match127653127654_
                             _e122618122993_
                             _hd122617122996_
                             _tl122616122998_
                             ___splice127618127619_
                             _target122619123001_
                             _tl122621123003_))
                        (___match127653127654_
                         _e122618122993_
                         _hd122617122996_
                         _tl122616122998_
                         ___splice127618127619_
                         _target122619123001_
                         _tl122621123003_))))
                (___match127653127654_
                 _e122618122993_
                 _hd122617122996_
                 _tl122616122998_
                 ___splice127618127619_
                 _target122619123001_
                 _tl122621123003_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg122651123102_
                                                       (reverse _xarg122650123075_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122628123030_))
                                                      (___kont127616127617_
                                                       _xarg122651123102_
                                                       _hd122641123060_
                                                       _arg122627123022_)
                                                      (___match127653127654_
                                                       _e122618122993_
                                                       _hd122617122996_
                                                       _tl122616122998_
                                                       ___splice127618127619_
                                                       _target122619123001_
                                                       _tl122621123003_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop122646123070_
                                     _target122643123065_
                                     '())))
                                (___match127653127654_
                                 _e122618122993_
                                 _hd122617122996_
                                 _tl122616122998_
                                 ___splice127618127619_
                                 _target122619123001_
                                 _tl122621123003_))))
                        (___match127653127654_
                         _e122618122993_
                         _hd122617122996_
                         _tl122616122998_
                         ___splice127618127619_
                         _target122619123001_
                         _tl122621123003_))
                    (___match127653127654_
                     _e122618122993_
                     _hd122617122996_
                     _tl122616122998_
                     ___splice127618127619_
                     _target122619123001_
                     _tl122621123003_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127653127654_
                                                     _e122618122993_
                                                     _hd122617122996_
                                                     _tl122616122998_
                                                     ___splice127618127619_
                                                     _target122619123001_
                                                     _tl122621123003_))
                                                (___match127653127654_
                                                 _e122618122993_
                                                 _hd122617122996_
                                                 _tl122616122998_
                                                 ___splice127618127619_
                                                 _target122619123001_
                                                 _tl122621123003_))
                                            (___match127653127654_
                                             _e122618122993_
                                             _hd122617122996_
                                             _tl122616122998_
                                             ___splice127618127619_
                                             _target122619123001_
                                             _tl122621123003_))))
                                    (___match127653127654_
                                     _e122618122993_
                                     _hd122617122996_
                                     _tl122616122998_
                                     ___splice127618127619_
                                     _target122619123001_
                                     _tl122621123003_))))
                            (___match127653127654_
                             _e122618122993_
                             _hd122617122996_
                             _tl122616122998_
                             ___splice127618127619_
                             _target122619123001_
                             _tl122621123003_))
                        (___match127653127654_
                         _e122618122993_
                         _hd122617122996_
                         _tl122616122998_
                         ___splice127618127619_
                         _target122619123001_
                         _tl122621123003_))
                    (___match127653127654_
                     _e122618122993_
                     _hd122617122996_
                     _tl122616122998_
                     ___splice127618127619_
                     _target122619123001_
                     _tl122621123003_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127653127654_
                                                     _e122618122993_
                                                     _hd122617122996_
                                                     _tl122616122998_
                                                     ___splice127618127619_
                                                     _target122619123001_
                                                     _tl122621123003_))))
                                            (___match127653127654_
                                             _e122618122993_
                                             _hd122617122996_
                                             _tl122616122998_
                                             ___splice127618127619_
                                             _target122619123001_
                                             _tl122621123003_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122622123006_ _target122619123001_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127614127615_))
                  (let ((_e122618122993_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127614127615_))))
                    (let ((_tl122616122998_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122618122993_)))
                          (_hd122617122996_
                           (let ()
                             (declare (not safe))
                             (##car _e122618122993_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd122617122996_))
                          (let ((___splice127618127619_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd122617122996_
                                    '0))))
                            (let ((_tl122621123003_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127618127619_ '1)))
                                  (_target122619123001_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127618127619_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122621123003_))
                                  (___match127641127642_
                                   _e122618122993_
                                   _hd122617122996_
                                   _tl122616122998_
                                   ___splice127618127619_
                                   _target122619123001_
                                   _tl122621123003_)
                                  (___match127653127654_
                                   _e122618122993_
                                   _hd122617122996_
                                   _tl122616122998_
                                   ___splice127618127619_
                                   _target122619123001_
                                   _tl122621123003_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122616122998_))
                              (let ((_e122706122748_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122616122998_))))
                                (let ((_tl122704122753_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122706122748_)))
                                      (_hd122705122751_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122706122748_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122705122751_))
                                      (let ((_e122709122756_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122705122751_))))
                                        (let ((_tl122707122761_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122709122756_)))
                                              (_hd122708122759_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122709122756_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd122708122759_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd122708122759_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122707122761_))
                                                      (let ((_e122712122764_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122707122761_))))
                (let ((_tl122710122769_
                       (let () (declare (not safe)) (##cdr _e122712122764_)))
                      (_hd122711122767_
                       (let () (declare (not safe)) (##car _e122712122764_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122711122767_))
                      (let ((_e122715122772_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122711122767_))))
                        (let ((_tl122713122777_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122715122772_)))
                              (_hd122714122775_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122715122772_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122714122775_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122714122775_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122713122777_))
                                      (let ((_e122718122780_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122713122777_))))
                                        (let ((_tl122716122785_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122718122780_)))
                                              (_hd122717122783_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122718122780_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122716122785_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122710122769_))
                                                  (let ((_e122721122788_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122710122769_))))
                                                    (let ((_tl122719122793_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122721122788_)))
                                                          (_hd122720122791_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122721122788_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122720122791_))
                                                          (let ((_e122724122796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122720122791_))))
                    (let ((_tl122722122801_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122724122796_)))
                          (_hd122723122799_
                           (let ()
                             (declare (not safe))
                             (##car _e122724122796_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122723122799_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd122723122799_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122722122801_))
                                  (let ((_e122727122804_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122722122801_))))
                                    (let ((_tl122725122809_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122727122804_)))
                                          (_hd122726122807_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122727122804_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122725122809_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122719122793_))
                                              (let ((_e122730122812_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122719122793_))))
                                                (let ((_tl122728122817_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122730122812_)))
                                                      (_hd122729122815_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122730122812_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122728122817_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122704122753_))
                                                          (___kont127626127627_
                                                           _hd122726122807_
                                                           _hd122717122783_
                                                           _hd122617122996_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g122611122735_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g122611122735_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g122611122735_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g122611122735_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122611122735_)))
                              (let () (declare (not safe)) (_g122611122735_)))
                          (let () (declare (not safe)) (_g122611122735_)))))
                  (let () (declare (not safe)) (_g122611122735_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122611122735_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122611122735_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122611122735_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122611122735_)))
                              (let ()
                                (declare (not safe))
                                (_g122611122735_)))))
                      (let () (declare (not safe)) (_g122611122735_)))))
              (let () (declare (not safe)) (_g122611122735_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122611122735_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122611122735_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122611122735_)))))
                              (let ()
                                (declare (not safe))
                                (_g122611122735_))))))
                  (let () (declare (not safe)) (_g122611122735_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form122411_)
        (let* ((_g122413122427_
                (lambda (_g122414122424_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122414122424_))))
               (_g122412122604_
                (lambda (_g122414122430_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122414122430_))
                      (let ((_e122419122432_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122414122430_))))
                        (let ((_hd122418122435_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122419122432_)))
                              (_tl122417122437_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122419122432_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122417122437_))
                              (let ((_e122422122440_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122417122437_))))
                                (let ((_hd122421122443_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122422122440_)))
                                      (_tl122420122445_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122422122440_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122420122445_))
                                      ((lambda (_L122448_ _L122449_)
                                         (let* ((___stx127736127737_ _L122449_)
                                                (_g122464122492_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx127736127737_)))))
                                           (let ((___kont127738127739_
                                                  (lambda (_L122583_)
                                                    (length (let ((__tmp128900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g122593122596_ _g122594122598_)
                             (let ()
                               (declare (not safe))
                               (cons _g122593122596_ _g122594122598_)))))
                      (declare (not safe))
                      (foldr1 __tmp128900 '() _L122583_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127742127743_
                                                  (lambda (_L122534_ _L122535_)
                                                    (let ((__tmp128901
                                                           (length (let ((__tmp128902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g122546122549_ _g122547122551_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g122546122549_
                                            _g122547122551_)))))
                             (declare (not safe))
                             (foldr1 __tmp128902 '() _L122535_)))))
              (declare (not safe))
              (cons __tmp128901 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127746127747_
                                                  (lambda (_L122497_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match127761127762_
                                                     (lambda (___splice127744127745_
                                                              _target122478122510_
                                                              _tl122480122512_)
                                                       (letrec ((_loop122481122515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122479122518_ _arg122485122520_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122479122518_))
                               (let ((_e122482122523_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122479122518_))))
                                 (let ((_lp-tl122484122528_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122482122523_)))
                                       (_lp-hd122483122526_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122482122523_))))
                                   (let ((__tmp128903
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122483122526_
                                                  _arg122485122520_))))
                                     (declare (not safe))
                                     (_loop122481122515_
                                      _lp-tl122484122528_
                                      __tmp128903))))
                               (let ((_arg122486122531_
                                      (reverse _arg122485122520_)))
                                 (___kont127742127743_
                                  _tl122480122512_
                                  _arg122486122531_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122481122515_ _target122478122510_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127755127756_
                                                     (lambda (___splice127740127741_
                                                              _target122467122559_
                                                              _tl122469122561_)
                                                       (letrec ((_loop122470122564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122468122567_ _arg122474122569_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122468122567_))
                               (let ((_e122471122572_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122468122567_))))
                                 (let ((_lp-tl122473122577_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122471122572_)))
                                       (_lp-hd122472122575_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122471122572_))))
                                   (let ((__tmp128904
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122472122575_
                                                  _arg122474122569_))))
                                     (declare (not safe))
                                     (_loop122470122564_
                                      _lp-tl122473122577_
                                      __tmp128904))))
                               (let ((_arg122475122580_
                                      (reverse _arg122474122569_)))
                                 (___kont127738127739_ _arg122475122580_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122470122564_ _target122467122559_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx127736127737_))
                                                   (let ((___splice127740127741_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx127736127737_
                                                             '0))))
                                                     (let ((_tl122469122561_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127740127741_
                                                               '1)))
                                                           (_target122467122559_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127740127741_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl122469122561_))
                                                           (___match127755127756_
                                                            ___splice127740127741_
                                                            _target122467122559_
                                                            _tl122469122561_)
                                                           (___match127761127762_
                                                            ___splice127740127741_
                                                            _target122467122559_
                                                            _tl122469122561_))))
                                                   (___kont127746127747_
                                                    ___stx127736127737_))))))
                                       _hd122421122443_
                                       _hd122418122435_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122413122427_ _g122414122430_)))))
                              (let ()
                                (declare (not safe))
                                (_g122413122427_ _g122414122430_)))))
                      (let ()
                        (declare (not safe))
                        (_g122413122427_ _g122414122430_))))))
          (declare (not safe))
          (_g122412122604_ _form122411_))))
    (define gxc#lambda-expr?
      (lambda (_expr122364_)
        (let* ((___stx127764127765_ _expr122364_)
               (_g122367122377_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127764127765_)))))
          (let ((___kont127766127767_ (lambda (_L122397_) '#t))
                (___kont127768127769_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127764127765_))
                (let ((_e122372122389_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127764127765_))))
                  (let ((_tl122370122394_
                         (let () (declare (not safe)) (##cdr _e122372122389_)))
                        (_hd122371122392_
                         (let ()
                           (declare (not safe))
                           (##car _e122372122389_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122371122392_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd122371122392_))
                            (___kont127766127767_ _tl122370122394_)
                            (___kont127768127769_))
                        (___kont127768127769_))))
                (___kont127768127769_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr122317_)
        (let* ((___stx127782127783_ _expr122317_)
               (_g122320122330_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127782127783_)))))
          (let ((___kont127784127785_ (lambda (_L122350_) '#t))
                (___kont127786127787_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127782127783_))
                (let ((_e122325122342_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127782127783_))))
                  (let ((_tl122323122347_
                         (let () (declare (not safe)) (##cdr _e122325122342_)))
                        (_hd122324122345_
                         (let ()
                           (declare (not safe))
                           (##car _e122325122342_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122324122345_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd122324122345_))
                            (___kont127784127785_ _tl122323122347_)
                            (___kont127786127787_))
                        (___kont127786127787_))))
                (___kont127786127787_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr122186_)
        (let* ((___stx127800127801_ _expr122186_)
               (_g122189122219_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127800127801_)))))
          (let ((___kont127802127803_
                 (lambda (_L122287_ _L122288_ _L122289_)
                   (if (let () (declare (not safe)) (gx#identifier? _L122289_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L122288_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L122287_))
                           '#f)
                       '#f)))
                (___kont127804127805_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127800127801_))
                (let ((_e122196122231_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127800127801_))))
                  (let ((_tl122194122236_
                         (let () (declare (not safe)) (##cdr _e122196122231_)))
                        (_hd122195122234_
                         (let ()
                           (declare (not safe))
                           (##car _e122196122231_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122195122234_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd122195122234_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122194122236_))
                                (let ((_e122199122239_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122194122236_))))
                                  (let ((_tl122197122244_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122199122239_)))
                                        (_hd122198122242_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122199122239_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122198122242_))
                                        (let ((_e122202122247_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122198122242_))))
                                          (let ((_tl122200122252_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122202122247_)))
                                                (_hd122201122250_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122202122247_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122201122250_))
                                                (let ((_e122205122255_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122201122250_))))
                                                  (let ((_tl122203122260_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122205122255_)))
                                                        (_hd122204122258_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122205122255_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122204122258_))
                                                        (let ((_e122208122263_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122204122258_))))
                  (let ((_tl122206122268_
                         (let () (declare (not safe)) (##cdr _e122208122263_)))
                        (_hd122207122266_
                         (let ()
                           (declare (not safe))
                           (##car _e122208122263_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122206122268_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122203122260_))
                            (let ((_e122211122271_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122203122260_))))
                              (let ((_tl122209122276_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122211122271_)))
                                    (_hd122210122274_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122211122271_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122209122276_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122200122252_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122197122244_))
                                            (let ((_e122214122279_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122197122244_))))
                                              (let ((_tl122212122284_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122214122279_)))
                                                    (_hd122213122282_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122214122279_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl122212122284_))
                                                    (___kont127802127803_
                                                     _hd122213122282_
                                                     _hd122210122274_
                                                     _hd122207122266_)
                                                    (___kont127804127805_))))
                                            (___kont127804127805_))
                                        (___kont127804127805_))
                                    (___kont127804127805_))))
                            (___kont127804127805_))
                        (___kont127804127805_))))
                (___kont127804127805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127804127805_))))
                                        (___kont127804127805_))))
                                (___kont127804127805_))
                            (___kont127804127805_))
                        (___kont127804127805_))))
                (___kont127804127805_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr121511_)
        (let* ((___stx127862127863_ _expr121511_)
               (_g121514121672_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127862127863_)))))
          (let ((___kont127864127865_
                 (lambda (_L122060_
                          _L122061_
                          _L122062_
                          _L122063_
                          _L122064_
                          _L122065_
                          _L122066_
                          _L122067_
                          _L122068_
                          _L122069_
                          _L122070_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L122067_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L122063_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L122062_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L122070_
                                      _L122061_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L122069_
                                          _L122066_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122064_
                                              _L122060_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122068_
                                              _L122065_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont127866127867_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127862127863_))
                (let ((_e121529121684_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127862127863_))))
                  (let ((_tl121527121689_
                         (let () (declare (not safe)) (##cdr _e121529121684_)))
                        (_hd121528121687_
                         (let ()
                           (declare (not safe))
                           (##car _e121529121684_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121528121687_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd121528121687_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121527121689_))
                                (let ((_e121532121692_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121527121689_))))
                                  (let ((_tl121530121697_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121532121692_)))
                                        (_hd121531121695_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121532121692_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd121531121695_))
                                        (let ((_e121535121700_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd121531121695_))))
                                          (let ((_tl121533121705_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121535121700_)))
                                                (_hd121534121703_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121535121700_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121534121703_))
                                                (let ((_e121538121708_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121534121703_))))
                                                  (let ((_tl121536121713_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121538121708_)))
                                                        (_hd121537121711_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121538121708_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121537121711_))
                                                        (let ((_e121541121716_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121537121711_))))
                  (let ((_tl121539121721_
                         (let () (declare (not safe)) (##cdr _e121541121716_)))
                        (_hd121540121719_
                         (let ()
                           (declare (not safe))
                           (##car _e121541121716_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl121539121721_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121536121713_))
                            (let ((_e121544121724_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121536121713_))))
                              (let ((_tl121542121729_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121544121724_)))
                                    (_hd121543121727_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121544121724_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121543121727_))
                                    (let ((_e121547121732_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121543121727_))))
                                      (let ((_tl121545121737_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121547121732_)))
                                            (_hd121546121735_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121547121732_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121546121735_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd121546121735_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121545121737_))
                                                    (let ((_e121550121740_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121545121737_))))
                                                      (let ((_tl121548121745_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121550121740_)))
                    (_hd121549121743_
                     (let () (declare (not safe)) (##car _e121550121740_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121549121743_))
                    (let ((_e121553121748_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121549121743_))))
                      (let ((_tl121551121753_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121553121748_)))
                            (_hd121552121751_
                             (let ()
                               (declare (not safe))
                               (##car _e121553121748_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121552121751_))
                            (let ((_e121556121756_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121552121751_))))
                              (let ((_tl121554121761_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121556121756_)))
                                    (_hd121555121759_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121556121756_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121555121759_))
                                    (let ((_e121559121764_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121555121759_))))
                                      (let ((_tl121557121769_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121559121764_)))
                                            (_hd121558121767_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121559121764_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121557121769_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121554121761_))
                                                (let ((_e121562121772_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121554121761_))))
                                                  (let ((_tl121560121777_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121562121772_)))
                                                        (_hd121561121775_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121562121772_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121560121777_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl121551121753_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121548121745_))
                        (let ((_e121565121780_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121548121745_))))
                          (let ((_tl121563121785_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121565121780_)))
                                (_hd121564121783_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121565121780_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121564121783_))
                                (let ((_e121568121788_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121564121783_))))
                                  (let ((_tl121566121793_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121568121788_)))
                                        (_hd121567121791_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121568121788_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121567121791_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd121567121791_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121566121793_))
                                                (let ((_e121571121796_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121566121793_))))
                                                  (let ((_tl121569121801_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121571121796_)))
                                                        (_hd121570121799_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121571121796_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121570121799_))
                                                        (let ((_e121574121804_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121570121799_))))
                  (let ((_tl121572121809_
                         (let () (declare (not safe)) (##cdr _e121574121804_)))
                        (_hd121573121807_
                         (let ()
                           (declare (not safe))
                           (##car _e121574121804_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121569121801_))
                        (let ((_e121577121812_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121569121801_))))
                          (let ((_tl121575121817_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121577121812_)))
                                (_hd121576121815_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121577121812_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121576121815_))
                                (let ((_e121580121820_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121576121815_))))
                                  (let ((_tl121578121825_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121580121820_)))
                                        (_hd121579121823_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121580121820_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121579121823_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd121579121823_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121578121825_))
                                                (let ((_e121583121828_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121578121825_))))
                                                  (let ((_tl121581121833_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121583121828_)))
                                                        (_hd121582121831_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121583121828_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121582121831_))
                                                        (let ((_e121586121836_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121582121831_))))
                  (let ((_tl121584121841_
                         (let () (declare (not safe)) (##cdr _e121586121836_)))
                        (_hd121585121839_
                         (let ()
                           (declare (not safe))
                           (##car _e121586121836_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121585121839_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd121585121839_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121584121841_))
                                (let ((_e121589121844_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121584121841_))))
                                  (let ((_tl121587121849_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121589121844_)))
                                        (_hd121588121847_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121589121844_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121587121849_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121581121833_))
                                            (let ((_e121592121852_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121581121833_))))
                                              (let ((_tl121590121857_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121592121852_)))
                                                    (_hd121591121855_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121592121852_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121591121855_))
                                                    (let ((_e121595121860_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121591121855_))))
                                                      (let ((_tl121593121865_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121595121860_)))
                    (_hd121594121863_
                     (let () (declare (not safe)) (##car _e121595121860_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121594121863_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd121594121863_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121593121865_))
                            (let ((_e121598121868_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121593121865_))))
                              (let ((_tl121596121873_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121598121868_)))
                                    (_hd121597121871_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121598121868_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121596121873_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121590121857_))
                                        (let ((_e121601121876_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121590121857_))))
                                          (let ((_tl121599121881_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121601121876_)))
                                                (_hd121600121879_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121601121876_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121600121879_))
                                                (let ((_e121604121884_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121600121879_))))
                                                  (let ((_tl121602121889_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121604121884_)))
                                                        (_hd121603121887_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121604121884_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd121603121887_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd121603121887_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121602121889_))
                        (let ((_e121607121892_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121602121889_))))
                          (let ((_tl121605121897_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121607121892_)))
                                (_hd121606121895_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121607121892_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl121605121897_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121575121817_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121563121785_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121542121729_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121533121705_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121530121697_))
                                                    (let ((_e121610121900_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121530121697_))))
                                                      (let ((_tl121608121905_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121610121900_)))
                    (_hd121609121903_
                     (let () (declare (not safe)) (##car _e121610121900_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121609121903_))
                    (let ((_e121613121908_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121609121903_))))
                      (let ((_tl121611121913_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121613121908_)))
                            (_hd121612121911_
                             (let ()
                               (declare (not safe))
                               (##car _e121613121908_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121612121911_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd121612121911_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121611121913_))
                                    (let ((_e121616121916_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121611121913_))))
                                      (let ((_tl121614121921_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121616121916_)))
                                            (_hd121615121919_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121616121916_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121614121921_))
                                            (let ((_e121619121924_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121614121921_))))
                                              (let ((_tl121617121929_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121619121924_)))
                                                    (_hd121618121927_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121619121924_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121618121927_))
                                                    (let ((_e121622121932_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121618121927_))))
                                                      (let ((_tl121620121937_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121622121932_)))
                    (_hd121621121935_
                     (let () (declare (not safe)) (##car _e121622121932_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121621121935_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121621121935_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121620121937_))
                            (let ((_e121625121940_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121620121937_))))
                              (let ((_tl121623121945_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121625121940_)))
                                    (_hd121624121943_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121625121940_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121624121943_))
                                    (let ((_e121628121948_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121624121943_))))
                                      (let ((_tl121626121953_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121628121948_)))
                                            (_hd121627121951_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121628121948_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121627121951_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121627121951_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121626121953_))
                                                    (let ((_e121631121956_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121626121953_))))
                                                      (let ((_tl121629121961_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121631121956_)))
                    (_hd121630121959_
                     (let () (declare (not safe)) (##car _e121631121956_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121629121961_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121623121945_))
                        (let ((_e121634121964_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121623121945_))))
                          (let ((_tl121632121969_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121634121964_)))
                                (_hd121633121967_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121634121964_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121633121967_))
                                (let ((_e121637121972_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121633121967_))))
                                  (let ((_tl121635121977_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121637121972_)))
                                        (_hd121636121975_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121637121972_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121636121975_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd121636121975_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121635121977_))
                                                (let ((_e121640121980_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121635121977_))))
                                                  (let ((_tl121638121985_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121640121980_)))
                                                        (_hd121639121983_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121640121980_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121638121985_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl121632121969_))
                                                            (let ((_e121643121988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl121632121969_))))
                      (let ((_tl121641121993_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121643121988_)))
                            (_hd121642121991_
                             (let ()
                               (declare (not safe))
                               (##car _e121643121988_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121642121991_))
                            (let ((_e121646121996_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121642121991_))))
                              (let ((_tl121644122001_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121646121996_)))
                                    (_hd121645121999_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121646121996_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd121645121999_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd121645121999_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121644122001_))
                                            (let ((_e121649122004_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121644122001_))))
                                              (let ((_tl121647122009_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121649122004_)))
                                                    (_hd121648122007_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121649122004_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121647122009_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl121641121993_))
                                                        (let ((_e121652122012_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl121641121993_))))
                  (let ((_tl121650122017_
                         (let () (declare (not safe)) (##cdr _e121652122012_)))
                        (_hd121651122015_
                         (let ()
                           (declare (not safe))
                           (##car _e121652122012_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd121651122015_))
                        (let ((_e121655122020_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd121651122015_))))
                          (let ((_tl121653122025_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121655122020_)))
                                (_hd121654122023_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121655122020_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd121654122023_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd121654122023_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121653122025_))
                                        (let ((_e121658122028_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121653122025_))))
                                          (let ((_tl121656122033_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121658122028_)))
                                                (_hd121657122031_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121658122028_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121656122033_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121650122017_))
                                                    (let ((_e121661122036_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121650122017_))))
                                                      (let ((_tl121659122041_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121661122036_)))
                    (_hd121660122039_
                     (let () (declare (not safe)) (##car _e121661122036_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121660122039_))
                    (let ((_e121664122044_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121660122039_))))
                      (let ((_tl121662122049_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121664122044_)))
                            (_hd121663122047_
                             (let ()
                               (declare (not safe))
                               (##car _e121664122044_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121663122047_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd121663122047_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121662122049_))
                                    (let ((_e121667122052_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121662122049_))))
                                      (let ((_tl121665122057_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121667122052_)))
                                            (_hd121666122055_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121667122052_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121665122057_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121659122041_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121617121929_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121608121905_))
                                                        (___kont127864127865_
                                                         _hd121666122055_
                                                         _hd121657122031_
                                                         _hd121639121983_
                                                         _hd121630121959_
                                                         _hd121615121919_
                                                         _hd121606121895_
                                                         _hd121597121871_
                                                         _hd121588121847_
                                                         _hd121573121807_
                                                         _hd121558121767_
                                                         _hd121540121719_)
                                                        (___kont127866127867_))
                                                    (___kont127866127867_))
                                                (___kont127866127867_))
                                            (___kont127866127867_))))
                                    (___kont127866127867_))
                                (___kont127866127867_))
                            (___kont127866127867_))))
                    (___kont127866127867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127866127867_))
                                                (___kont127866127867_))))
                                        (___kont127866127867_))
                                    (___kont127866127867_))
                                (___kont127866127867_))))
                        (___kont127866127867_))))
                (___kont127866127867_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127866127867_))))
                                            (___kont127866127867_))
                                        (___kont127866127867_))
                                    (___kont127866127867_))))
                            (___kont127866127867_))))
                    (___kont127866127867_))
                (___kont127866127867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127866127867_))
                                            (___kont127866127867_))
                                        (___kont127866127867_))))
                                (___kont127866127867_))))
                        (___kont127866127867_))
                    (___kont127866127867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127866127867_))
                                                (___kont127866127867_))
                                            (___kont127866127867_))))
                                    (___kont127866127867_))))
                            (___kont127866127867_))
                        (___kont127866127867_))
                    (___kont127866127867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127866127867_))))
                                            (___kont127866127867_))))
                                    (___kont127866127867_))
                                (___kont127866127867_))
                            (___kont127866127867_))))
                    (___kont127866127867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127866127867_))
                                                (___kont127866127867_))
                                            (___kont127866127867_))
                                        (___kont127866127867_))
                                    (___kont127866127867_))
                                (___kont127866127867_))))
                        (___kont127866127867_))
                    (___kont127866127867_))
                (___kont127866127867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127866127867_))))
                                        (___kont127866127867_))
                                    (___kont127866127867_))))
                            (___kont127866127867_))
                        (___kont127866127867_))
                    (___kont127866127867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127866127867_))))
                                            (___kont127866127867_))
                                        (___kont127866127867_))))
                                (___kont127866127867_))
                            (___kont127866127867_))
                        (___kont127866127867_))))
                (___kont127866127867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127866127867_))
                                            (___kont127866127867_))
                                        (___kont127866127867_))))
                                (___kont127866127867_))))
                        (___kont127866127867_))))
                (___kont127866127867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127866127867_))
                                            (___kont127866127867_))
                                        (___kont127866127867_))))
                                (___kont127866127867_))))
                        (___kont127866127867_))
                    (___kont127866127867_))
                (___kont127866127867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127866127867_))
                                            (___kont127866127867_))))
                                    (___kont127866127867_))))
                            (___kont127866127867_))))
                    (___kont127866127867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127866127867_))
                                                (___kont127866127867_))
                                            (___kont127866127867_))))
                                    (___kont127866127867_))))
                            (___kont127866127867_))
                        (___kont127866127867_))))
                (___kont127866127867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127866127867_))))
                                        (___kont127866127867_))))
                                (___kont127866127867_))
                            (___kont127866127867_))
                        (___kont127866127867_))))
                (___kont127866127867_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx121253_ _id121254_ _clauses121255_ _gensym?121256_)
        (let _lp121258_ ((_rest121260_ _clauses121255_)
                         (_ids121261_ '())
                         (_impls121262_ '())
                         (_clauses121263_ '()))
          (let* ((_rest121264121272_ _rest121260_)
                 (_else121266121280_
                  (lambda ()
                    (values (reverse _ids121261_)
                            (reverse _impls121262_)
                            (reverse _clauses121263_))))
                 (_K121268121485_
                  (lambda (_rest121283_ _clause121284_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause121284_))
                        (let ((__tmp128960
                               (let ()
                                 (declare (not safe))
                                 (cons _clause121284_ _clauses121263_))))
                          (declare (not safe))
                          (_lp121258_
                           _rest121283_
                           _ids121261_
                           _impls121262_
                           __tmp128960))
                        (let* ((_g121286121297_
                                (lambda (_g121287121294_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g121287121294_))))
                               (_g121285121482_
                                (lambda (_g121287121300_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g121287121300_))
                                      (let ((_e121292121302_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g121287121300_))))
                                        (let ((_hd121291121305_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121292121302_)))
                                              (_tl121290121307_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121292121302_))))
                                          ((lambda (_L121310_ _L121311_)
                                             (let* ((_id121328_
                                                     (let ((__tmp128907
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id121254_)))
                                                           (__tmp128906
                                                            (length _clauses121263_))
                                                           (__tmp128905
                                                            (if _gensym?121256_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp128907
                                                        '"__"
                                                        __tmp128906
                                                        __tmp128905)))
                                                    (_id121330_
                                                     (let ((__tmp128908
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx121253_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id121328_
                                                        __tmp128908)))
                                                    (_impl121332_
                                                     (let ((__tmp128909
                                                            (let ((__tmp128911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp128910
                           (let ()
                             (declare (not safe))
                             (cons _L121311_ _L121310_))))
                      (declare (not safe))
                      (cons __tmp128911 __tmp128910))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp128909 _stx121253_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause121479_
                                                     (let* ((___stx128246128247_
                                                             _L121311_)
                                                            (_g121336121364_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx128246128247_)))))
               (let ((___kont128248128249_
                      (lambda (_L121458_)
                        (let ((__tmp128912
                               (let ((__tmp128913
                                      (let ((__tmp128914
                                             (let ((__tmp128915
                                                    (let ((__tmp128921
                                                           (let ((__tmp128922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id121330_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128922)))
                  (__tmp128916
                   (let ((__tmp128917
                          (lambda (_g121468121471_ _g121469121473_)
                            (let ((__tmp128918
                                   (let ((__tmp128920
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp128919
                                          (let ()
                                            (declare (not safe))
                                            (cons _g121468121471_ '()))))
                                     (declare (not safe))
                                     (cons __tmp128920 __tmp128919))))
                              (declare (not safe))
                              (cons __tmp128918 _g121469121473_)))))
                     (declare (not safe))
                     (foldr1 __tmp128917 '() _L121458_))))
              (declare (not safe))
              (cons __tmp128921 __tmp128916))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128915))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128914
                                         _stx121253_))))
                                 (declare (not safe))
                                 (cons __tmp128913 '()))))
                          (declare (not safe))
                          (cons _L121311_ __tmp128912))))
                     (___kont128252128253_
                      (lambda (_L121409_ _L121410_)
                        (let ((__tmp128923
                               (let ((__tmp128924
                                      (let ((__tmp128925
                                             (let ((__tmp128926
                                                    (let ((__tmp128940
                                                           (let ((__tmp128941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128941)))
                  (__tmp128927
                   (let ((__tmp128938
                          (let ((__tmp128939
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121330_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp128939)))
                         (__tmp128928
                          (let ((__tmp128934
                                 (let ((__tmp128935
                                        (let ((__tmp128937
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp128936
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L121409_ '()))))
                                          (declare (not safe))
                                          (cons __tmp128937 __tmp128936))))
                                   (declare (not safe))
                                   (cons __tmp128935 '())))
                                (__tmp128929
                                 (let ((__tmp128930
                                        (lambda (_g121421121424_
                                                 _g121422121426_)
                                          (let ((__tmp128931
                                                 (let ((__tmp128933
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp128932
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g121421121424_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp128933
                                                         __tmp128932))))
                                            (declare (not safe))
                                            (cons __tmp128931
                                                  _g121422121426_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp128930 '() _L121410_))))
                            (declare (not safe))
                            (foldr1 cons __tmp128934 __tmp128929))))
                     (declare (not safe))
                     (cons __tmp128938 __tmp128928))))
              (declare (not safe))
              (cons __tmp128940 __tmp128927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128926))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128925
                                         _stx121253_))))
                                 (declare (not safe))
                                 (cons __tmp128924 '()))))
                          (declare (not safe))
                          (cons _L121311_ __tmp128923))))
                     (___kont128256128257_
                      (lambda (_L121369_)
                        (let ((__tmp128942
                               (let ((__tmp128943
                                      (let ((__tmp128944
                                             (let ((__tmp128945
                                                    (let ((__tmp128953
                                                           (let ((__tmp128954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128954)))
                  (__tmp128946
                   (let ((__tmp128951
                          (let ((__tmp128952
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121330_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp128952)))
                         (__tmp128947
                          (let ((__tmp128948
                                 (let ((__tmp128950
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp128949
                                        (let ()
                                          (declare (not safe))
                                          (cons _L121369_ '()))))
                                   (declare (not safe))
                                   (cons __tmp128950 __tmp128949))))
                            (declare (not safe))
                            (cons __tmp128948 '()))))
                     (declare (not safe))
                     (cons __tmp128951 __tmp128947))))
              (declare (not safe))
              (cons __tmp128953 __tmp128946))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128945))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128944
                                         _stx121253_))))
                                 (declare (not safe))
                                 (cons __tmp128943 '()))))
                          (declare (not safe))
                          (cons _L121311_ __tmp128942)))))
                 (let* ((___match128271128272_
                         (lambda (___splice128254128255_
                                  _target121350121385_
                                  _tl121352121387_)
                           (letrec ((_loop121353121390_
                                     (lambda (_hd121351121393_
                                              _arg121357121395_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121351121393_))
                                           (let ((_e121354121398_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121351121393_))))
                                             (let ((_lp-tl121356121403_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121354121398_)))
                                                   (_lp-hd121355121401_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121354121398_))))
                                               (let ((__tmp128955
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121355121401_
                                                              _arg121357121395_))))
                                                 (declare (not safe))
                                                 (_loop121353121390_
                                                  _lp-tl121356121403_
                                                  __tmp128955))))
                                           (let ((_arg121358121406_
                                                  (reverse _arg121357121395_)))
                                             (___kont128252128253_
                                              _tl121352121387_
                                              _arg121358121406_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121353121390_
                                _target121350121385_
                                '())))))
                        (___match128265128266_
                         (lambda (___splice128250128251_
                                  _target121339121434_
                                  _tl121341121436_)
                           (letrec ((_loop121342121439_
                                     (lambda (_hd121340121442_
                                              _arg121346121444_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121340121442_))
                                           (let ((_e121343121447_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121340121442_))))
                                             (let ((_lp-tl121345121452_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121343121447_)))
                                                   (_lp-hd121344121450_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121343121447_))))
                                               (let ((__tmp128956
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121344121450_
                                                              _arg121346121444_))))
                                                 (declare (not safe))
                                                 (_loop121342121439_
                                                  _lp-tl121345121452_
                                                  __tmp128956))))
                                           (let ((_arg121347121455_
                                                  (reverse _arg121346121444_)))
                                             (___kont128248128249_
                                              _arg121347121455_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121342121439_
                                _target121339121434_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx128246128247_))
                       (let ((___splice128250128251_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx128246128247_
                                 '0))))
                         (let ((_tl121341121436_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128250128251_ '1)))
                               (_target121339121434_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128250128251_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121341121436_))
                               (___match128265128266_
                                ___splice128250128251_
                                _target121339121434_
                                _tl121341121436_)
                               (___match128271128272_
                                ___splice128250128251_
                                _target121339121434_
                                _tl121341121436_))))
                       (___kont128256128257_ ___stx128246128247_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp128959
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id121330_
                                                              _ids121261_)))
                                                     (__tmp128958
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl121332_
                                                              _impls121262_)))
                                                     (__tmp128957
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause121479_
                                                              _clauses121263_))))
                                                 (declare (not safe))
                                                 (_lp121258_
                                                  _rest121283_
                                                  __tmp128959
                                                  __tmp128958
                                                  __tmp128957))))
                                           _tl121290121307_
                                           _hd121291121305_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g121286121297_ _g121287121300_))))))
                          (declare (not safe))
                          (_g121285121482_ _clause121284_))))))
            (if (let () (declare (not safe)) (##pair? _rest121264121272_))
                (let ((_hd121269121488_
                       (let ()
                         (declare (not safe))
                         (##car _rest121264121272_)))
                      (_tl121270121490_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest121264121272_))))
                  (let* ((_clause121493_ _hd121269121488_)
                         (_rest121495_ _tl121270121490_))
                    (declare (not safe))
                    (_K121268121485_ _rest121495_ _clause121493_)))
                (let () (declare (not safe)) (_else121266121280_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx121500_ _id121501_ _clauses121502_)
        (let ((_gensym?121504_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx121500_
           _id121501_
           _clauses121502_
           _gensym?121504_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g128962_
        (let ((_g128961_ (let () (declare (not safe)) (##length _g128962_))))
          (cond ((let () (declare (not safe)) (##fx= _g128961_ 3))
                 (apply (lambda (_stx121500_ _id121501_ _clauses121502_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx121500_
                             _id121501_
                             _clauses121502_)))
                        _g128962_))
                ((let () (declare (not safe)) (##fx= _g128961_ 4))
                 (apply (lambda (_stx121506_
                                 _id121507_
                                 _clauses121508_
                                 _gensym?121509_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx121506_
                             _id121507_
                             _clauses121508_
                             _gensym?121509_)))
                        _g128962_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g128962_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_self120529_ _stx120530_)
        (letrec ((_case-lambda-clause-def120532_
                  (lambda (_id121249_ _impl121250_)
                    (let ((__tmp128963
                           (let ((__tmp128964
                                  (let ((__tmp128967
                                         (let ()
                                           (declare (not safe))
                                           (cons _id121249_ '())))
                                        (__tmp128965
                                         (let ((__tmp128966
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self120529_
                                                   _impl121250_))))
                                           (declare (not safe))
                                           (cons __tmp128966 '()))))
                                    (declare (not safe))
                                    (cons __tmp128967 __tmp128965))))
                             (declare (not safe))
                             (cons '%#define-values __tmp128964))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp128963 _stx120530_))))
                 (_opt-lambda-dispatch-name120533_
                  (lambda (_id121245_)
                    (if (uninterned-symbol? _id121245_)
                        (let ((_str121247_ (symbol->string _id121245_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str121247_))
                              '"%"
                              _id121245_))
                        _id121245_)))
                 (_kw-lambda-dispatch-name120534_
                  (lambda (_id121240_ _name121241_)
                    (if (uninterned-symbol? _id121240_)
                        (let ((_str121243_ (symbol->string _id121240_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str121243_))
                              _name121241_
                              _id121240_))
                        _id121240_))))
          (let* ((___stx128294128295_ _stx120530_)
                 (_g120539120598_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128294128295_)))))
            (let ((___kont128296128297_
                   (lambda (_L121149_ _L121150_)
                     (let* ((___stx128274128275_ _L121149_)
                            (_g121167121181_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128274128275_)))))
                       (let ((___kont128276128277_
                              (lambda (_L121225_) _stx120530_))
                             (___kont128278128279_
                              (lambda (_L121194_)
                                (let ((_g128968_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx120530_
                                          _L121150_
                                          _L121194_))))
                                  (begin
                                    (let ((_g128969_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128968_)
                                                 (##vector-length _g128968_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128969_ 3)))
                                          (error "Context expects 3 values"
                                                 _g128969_)))
                                    (let ((_ids121204_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128968_ 0)))
                                          (_impls121205_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128968_ 1)))
                                          (_clauses121206_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128968_ 2))))
                                      (let* ((_g128970_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids121204_))
                                             (_defs121209_
                                              (map _case-lambda-clause-def120532_
                                                   _ids121204_
                                                   _impls121205_)))
                                        (let ((__tmp128972
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L121150_)))
                                              (__tmp128971
                                               (map gxc#identifier-symbol
                                                    _ids121204_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp128972
                                           '" => "
                                           __tmp128971))
                                        (let ((__tmp128973
                                               (let ((__tmp128974
                                                      (let ((__tmp128975
                                                             (let ((__tmp128976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp128977
                                   (let ((__tmp128978
                                          (let ((__tmp128983
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L121150_ '())))
                                                (__tmp128979
                                                 (let ((__tmp128980
                                                        (let ((__tmp128982
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses121206_)))
                      (__tmp128981
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp128982 __tmp128981))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp128980 '()))))
                                            (declare (not safe))
                                            (cons __tmp128983 __tmp128979))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp128978))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp128977
                               _stx120530_))))
                       (declare (not safe))
                       (cons __tmp128976 '()))))
                (declare (not safe))
                (foldr1 cons __tmp128975 _defs121209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp128974))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp128973
                                           _stx120530_)))))))))
                         (let ((___match128285128286_
                                (lambda (_e121172121217_
                                         _hd121171121220_
                                         _tl121170121222_)
                                  (let ((_L121225_ _tl121170121222_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L121225_))
                                        (___kont128276128277_ _L121225_)
                                        (___kont128278128279_
                                         _tl121170121222_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx128274128275_))
                               (let ((_e121172121217_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx128274128275_))))
                                 (let ((_tl121170121222_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121172121217_)))
                                       (_hd121171121220_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121172121217_))))
                                   (___match128285128286_
                                    _e121172121217_
                                    _hd121171121220_
                                    _tl121170121222_)))
                               (let ()
                                 (declare (not safe))
                                 (_g121167121181_))))))))
                  (___kont128298128299_
                   (lambda (_L120967_ _L120968_)
                     (let* ((_g120984121014_
                             (lambda (_g120985121011_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g120985121011_))))
                            (_g120983121109_
                             (lambda (_g120985121017_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g120985121017_))
                                   (let ((_e120991121019_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g120985121017_))))
                                     (let ((_hd120990121022_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e120991121019_)))
                                           (_tl120989121024_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e120991121019_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl120989121024_))
                                           (let ((_e120994121027_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl120989121024_))))
                                             (let ((_hd120993121030_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120994121027_)))
                                                   (_tl120992121032_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120994121027_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120993121030_))
                                                   (let ((_e120997121035_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120993121030_))))
                                                     (let ((_hd120996121038_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120997121035_)))
                                                           (_tl120995121040_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120997121035_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd120996121038_))
                                                           (let ((_e121000121043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd120996121038_))))
                     (let ((_hd120999121046_
                            (let ()
                              (declare (not safe))
                              (##car _e121000121043_)))
                           (_tl120998121048_
                            (let ()
                              (declare (not safe))
                              (##cdr _e121000121043_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd120999121046_))
                           (let ((_e121003121051_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd120999121046_))))
                             (let ((_hd121002121054_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e121003121051_)))
                                   (_tl121001121056_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e121003121051_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl121001121056_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl120998121048_))
                                       (let ((_e121006121059_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl120998121048_))))
                                         (let ((_hd121005121062_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121006121059_)))
                                               (_tl121004121064_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121006121059_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl121004121064_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl120995121040_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120992121032_))
                                                       (let ((_e121009121067_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120992121032_))))
                 (let ((_hd121008121070_
                        (let () (declare (not safe)) (##car _e121009121067_)))
                       (_tl121007121072_
                        (let () (declare (not safe)) (##cdr _e121009121067_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121007121072_))
                       ((lambda (_L121075_ _L121076_ _L121077_)
                          (let* ((_lambda-id121101_
                                  (let ((__tmp128986
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L120968_)))
                                        (__tmp128984
                                         (let ((__tmp128985
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L121077_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name120533_
                                            __tmp128985))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp128986
                                     '"__"
                                     __tmp128984)))
                                 (_lambda-id121103_
                                  (let ((__tmp128987
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx120530_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id121101_
                                     __tmp128987)))
                                 (_g128988_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id121103_)))
                                 (_new-case-lambda-expr121106_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L121075_
                                     'id:
                                     _L121077_
                                     'new-id:
                                     _lambda-id121103_))))
                            (let ((__tmp128990
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L120968_)))
                                  (__tmp128989
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id121103_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp128990
                               '" => "
                               __tmp128989))
                            (let ((__tmp128991
                                   (let ((__tmp128992
                                          (let ((__tmp129000
                                                 (let ((__tmp129001
                                                        (let ((__tmp129002
                                                               (let ((__tmp129005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id121103_ '())))
                             (__tmp129003
                              (let ((__tmp129004
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self120529_
                                        _L121076_))))
                                (declare (not safe))
                                (cons __tmp129004 '()))))
                         (declare (not safe))
                         (cons __tmp129005 __tmp129003))))
                  (declare (not safe))
                  (cons '%#define-values __tmp129002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp129001
                                                    _stx120530_)))
                                                (__tmp128993
                                                 (let ((__tmp128994
                                                        (let ((__tmp128995
                                                               (let ((__tmp128996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp128997
                                     (let ((__tmp128999
                                            (let ()
                                              (declare (not safe))
                                              (cons _L120968_ '())))
                                           (__tmp128998
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr121106_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp128999 __tmp128998))))
                                (declare (not safe))
                                (cons '%#define-values __tmp128997))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp128996 _stx120530_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values%
                   _self120529_
                   __tmp128995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp128994 '()))))
                                            (declare (not safe))
                                            (cons __tmp129000 __tmp128993))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp128992))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp128991
                               _stx120530_))))
                        _hd121008121070_
                        _hd121005121062_
                        _hd121002121054_)
                       (let ()
                         (declare (not safe))
                         (_g120984121014_ _g120985121017_)))))
               (let () (declare (not safe)) (_g120984121014_ _g120985121017_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120984121014_
                                                      _g120985121017_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120984121014_
                                                  _g120985121017_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120984121014_ _g120985121017_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120984121014_ _g120985121017_)))))
                           (let ()
                             (declare (not safe))
                             (_g120984121014_ _g120985121017_)))))
                   (let ()
                     (declare (not safe))
                     (_g120984121014_ _g120985121017_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120984121014_
                                                      _g120985121017_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g120984121014_
                                              _g120985121017_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g120984121014_ _g120985121017_))))))
                       (declare (not safe))
                       (_g120983121109_ _L120967_))))
                  (___kont128300128301_
                   (lambda (_L120681_ _L120682_)
                     (let* ((_g120698120751_
                             (lambda (_g120699120748_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g120699120748_))))
                            (_g120697120927_
                             (lambda (_g120699120754_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g120699120754_))
                                   (let ((_e120707120756_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g120699120754_))))
                                     (let ((_hd120706120759_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e120707120756_)))
                                           (_tl120705120761_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e120707120756_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl120705120761_))
                                           (let ((_e120710120764_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl120705120761_))))
                                             (let ((_hd120709120767_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120710120764_)))
                                                   (_tl120708120769_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120710120764_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120709120767_))
                                                   (let ((_e120713120772_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120709120767_))))
                                                     (let ((_hd120712120775_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120713120772_)))
                                                           (_tl120711120777_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120713120772_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd120712120775_))
                                                           (let ((_e120716120780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd120712120775_))))
                     (let ((_hd120715120783_
                            (let ()
                              (declare (not safe))
                              (##car _e120716120780_)))
                           (_tl120714120785_
                            (let ()
                              (declare (not safe))
                              (##cdr _e120716120780_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd120715120783_))
                           (let ((_e120719120788_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd120715120783_))))
                             (let ((_hd120718120791_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120719120788_)))
                                   (_tl120717120793_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120719120788_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120717120793_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl120714120785_))
                                       (let ((_e120722120796_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl120714120785_))))
                                         (let ((_hd120721120799_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120722120796_)))
                                               (_tl120720120801_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120722120796_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd120721120799_))
                                               (let ((_e120725120804_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd120721120799_))))
                                                 (let ((_hd120724120807_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120725120804_)))
                                                       (_tl120723120809_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120725120804_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120723120809_))
                                                       (let ((_e120728120812_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120723120809_))))
                 (let ((_hd120727120815_
                        (let () (declare (not safe)) (##car _e120728120812_)))
                       (_tl120726120817_
                        (let () (declare (not safe)) (##cdr _e120728120812_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd120727120815_))
                       (let ((_e120731120820_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd120727120815_))))
                         (let ((_hd120730120823_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120731120820_)))
                               (_tl120729120825_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120731120820_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd120730120823_))
                               (let ((_e120734120828_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd120730120823_))))
                                 (let ((_hd120733120831_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e120734120828_)))
                                       (_tl120732120833_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e120734120828_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120733120831_))
                                       (let ((_e120737120836_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120733120831_))))
                                         (let ((_hd120736120839_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120737120836_)))
                                               (_tl120735120841_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120737120836_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl120735120841_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl120732120833_))
                                                   (let ((_e120740120844_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl120732120833_))))
                                                     (let ((_hd120739120847_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120740120844_)))
                                                           (_tl120738120849_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120740120844_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120738120849_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl120729120825_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl120726120817_))
                           (let ((_e120743120852_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl120726120817_))))
                             (let ((_hd120742120855_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120743120852_)))
                                   (_tl120741120857_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120743120852_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120741120857_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl120720120801_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl120711120777_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl120708120769_))
                                               (let ((_e120746120860_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl120708120769_))))
                                                 (let ((_hd120745120863_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120746120860_)))
                                                       (_tl120744120865_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120746120860_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl120744120865_))
                                                       ((lambda (_L120868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L120869_
                         _L120870_
                         _L120871_
                         _L120872_)
                  (let* ((_get-kws-id120912_
                          (let ((__tmp129008
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120682_)))
                                (__tmp129006
                                 (let ((__tmp129007
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L120872_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120534_
                                    __tmp129007
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129008 '"__" __tmp129006)))
                         (_get-kws-id120914_
                          (let ((__tmp129009
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120530_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id120912_
                             __tmp129009)))
                         (_main-id120916_
                          (let ((__tmp129012
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120682_)))
                                (__tmp129010
                                 (let ((__tmp129011
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L120871_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120534_
                                    __tmp129011
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129012 '"__" __tmp129010)))
                         (_main-id120918_
                          (let ((__tmp129013
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120530_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id120916_
                             __tmp129013)))
                         (_g129014_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id120914_)))
                         (_g129015_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id120918_)))
                         (_new-kw-dispatch120922_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L120868_
                             'id:
                             _L120872_
                             'new-id:
                             _get-kws-id120914_)))
                         (_new-get-kws120924_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L120869_
                             'id:
                             _L120871_
                             'new-id:
                             _main-id120918_))))
                    (let ((__tmp129018
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L120682_)))
                          (__tmp129017
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id120914_)))
                          (__tmp129016
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id120918_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp129018
                       '" => "
                       __tmp129017
                       '" => "
                       __tmp129016))
                    (let ((__tmp129019
                           (let ((__tmp129020
                                  (let ((__tmp129033
                                         (let ((__tmp129034
                                                (let ((__tmp129035
                                                       (let ((__tmp129036
                                                              (let ((__tmp129038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id120918_ '())))
                            (__tmp129037
                             (let ()
                               (declare (not safe))
                               (cons _L120870_ '()))))
                        (declare (not safe))
                        (cons __tmp129038 __tmp129037))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129035
                                                   _stx120530_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            _self120529_
                                            __tmp129034)))
                                        (__tmp129021
                                         (let ((__tmp129028
                                                (let ((__tmp129029
                                                       (let ((__tmp129030
                                                              (let ((__tmp129032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id120914_ '())))
                            (__tmp129031
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws120924_ '()))))
                        (declare (not safe))
                        (cons __tmp129032 __tmp129031))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129030))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129029
                                                   _stx120530_)))
                                               (__tmp129022
                                                (let ((__tmp129023
                                                       (let ((__tmp129024
                                                              (let ((__tmp129025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp129027
                                    (let ()
                                      (declare (not safe))
                                      (cons _L120682_ '())))
                                   (__tmp129026
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch120922_ '()))))
                               (declare (not safe))
                               (cons __tmp129027 __tmp129026))))
                        (declare (not safe))
                        (cons '%#define-values __tmp129025))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp129024 _stx120530_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp129023 '()))))
                                           (declare (not safe))
                                           (cons __tmp129028 __tmp129022))))
                                    (declare (not safe))
                                    (cons __tmp129033 __tmp129021))))
                             (declare (not safe))
                             (cons '%#begin __tmp129020))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp129019 _stx120530_))))
                _hd120745120863_
                _hd120742120855_
                _hd120739120847_
                _hd120736120839_
                _hd120718120791_)
               (let ()
                 (declare (not safe))
                 (_g120698120751_ _g120699120754_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120698120751_
                                                  _g120699120754_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g120698120751_
                                              _g120699120754_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g120698120751_ _g120699120754_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120698120751_ _g120699120754_)))))
                           (let ()
                             (declare (not safe))
                             (_g120698120751_ _g120699120754_)))
                       (let ()
                         (declare (not safe))
                         (_g120698120751_ _g120699120754_)))
                   (let ()
                     (declare (not safe))
                     (_g120698120751_ _g120699120754_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120698120751_
                                                      _g120699120754_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120698120751_
                                                  _g120699120754_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120698120751_ _g120699120754_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g120698120751_ _g120699120754_)))))
                       (let ()
                         (declare (not safe))
                         (_g120698120751_ _g120699120754_)))))
               (let ()
                 (declare (not safe))
                 (_g120698120751_ _g120699120754_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120698120751_
                                                  _g120699120754_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120698120751_ _g120699120754_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120698120751_ _g120699120754_)))))
                           (let ()
                             (declare (not safe))
                             (_g120698120751_ _g120699120754_)))))
                   (let ()
                     (declare (not safe))
                     (_g120698120751_ _g120699120754_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120698120751_
                                                      _g120699120754_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g120698120751_
                                              _g120699120754_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g120698120751_ _g120699120754_))))))
                       (declare (not safe))
                       (_g120697120927_ _L120681_))))
                  (___kont128302128303_
                   (lambda (_L120627_ _L120628_)
                     (let ((__tmp129039
                            (let ((__tmp129040
                                   (let ((__tmp129041
                                          (let ((__tmp129042
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self120529_
                                                    _L120627_))))
                                            (declare (not safe))
                                            (cons __tmp129042 '()))))
                                     (declare (not safe))
                                     (cons _L120628_ __tmp129041))))
                              (declare (not safe))
                              (cons '%#define-values __tmp129040))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp129039 _stx120530_)))))
              (let* ((___match128387128388_
                      (lambda (_e120573120649_
                               _hd120572120652_
                               _tl120571120654_
                               _e120576120657_
                               _hd120575120660_
                               _tl120574120662_
                               _e120579120665_
                               _hd120578120668_
                               _tl120577120670_
                               _e120582120673_
                               _hd120581120676_
                               _tl120580120678_)
                        (let ((_L120681_ _hd120581120676_)
                              (_L120682_ _hd120578120668_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120682_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L120681_)))
                              (___kont128300128301_ _L120681_ _L120682_)
                              (___kont128302128303_
                               _hd120581120676_
                               _hd120575120660_)))))
                     (___match128359128360_
                      (lambda (_e120559120935_
                               _hd120558120938_
                               _tl120557120940_
                               _e120562120943_
                               _hd120561120946_
                               _tl120560120948_
                               _e120565120951_
                               _hd120564120954_
                               _tl120563120956_
                               _e120568120959_
                               _hd120567120962_
                               _tl120566120964_)
                        (let ((_L120967_ _hd120567120962_)
                              (_L120968_ _hd120564120954_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120968_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L120967_)))
                              (___kont128298128299_ _L120967_ _L120968_)
                              (___match128387128388_
                               _e120559120935_
                               _hd120558120938_
                               _tl120557120940_
                               _e120562120943_
                               _hd120561120946_
                               _tl120560120948_
                               _e120565120951_
                               _hd120564120954_
                               _tl120563120956_
                               _e120568120959_
                               _hd120567120962_
                               _tl120566120964_)))))
                     (___match128331128332_
                      (lambda (_e120545121117_
                               _hd120544121120_
                               _tl120543121122_
                               _e120548121125_
                               _hd120547121128_
                               _tl120546121130_
                               _e120551121133_
                               _hd120550121136_
                               _tl120549121138_
                               _e120554121141_
                               _hd120553121144_
                               _tl120552121146_)
                        (let ((_L121149_ _hd120553121144_)
                              (_L121150_ _hd120550121136_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L121150_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L121149_)))
                              (___kont128296128297_ _L121149_ _L121150_)
                              (___match128359128360_
                               _e120545121117_
                               _hd120544121120_
                               _tl120543121122_
                               _e120548121125_
                               _hd120547121128_
                               _tl120546121130_
                               _e120551121133_
                               _hd120550121136_
                               _tl120549121138_
                               _e120554121141_
                               _hd120553121144_
                               _tl120552121146_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128294128295_))
                    (let ((_e120545121117_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128294128295_))))
                      (let ((_tl120543121122_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120545121117_)))
                            (_hd120544121120_
                             (let ()
                               (declare (not safe))
                               (##car _e120545121117_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120543121122_))
                            (let ((_e120548121125_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120543121122_))))
                              (let ((_tl120546121130_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120548121125_)))
                                    (_hd120547121128_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120548121125_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120547121128_))
                                    (let ((_e120551121133_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120547121128_))))
                                      (let ((_tl120549121138_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120551121133_)))
                                            (_hd120550121136_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120551121133_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120549121138_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120546121130_))
                                                (let ((_e120554121141_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120546121130_))))
                                                  (let ((_tl120552121146_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120554121141_)))
                                                        (_hd120553121144_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120554121141_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120552121146_))
                                                        (___match128331128332_
                                                         _e120545121117_
                                                         _hd120544121120_
                                                         _tl120543121122_
                                                         _e120548121125_
                                                         _hd120547121128_
                                                         _tl120546121130_
                                                         _e120551121133_
                                                         _hd120550121136_
                                                         _tl120549121138_
                                                         _e120554121141_
                                                         _hd120553121144_
                                                         _tl120552121146_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120539120598_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120539120598_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120546121130_))
                                                (let ((_e120593120619_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120546121130_))))
                                                  (let ((_tl120591120624_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120593120619_)))
                                                        (_hd120592120622_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120593120619_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120591120624_))
                                                        (___kont128302128303_
                                                         _hd120592120622_
                                                         _hd120547121128_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120539120598_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120539120598_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120546121130_))
                                        (let ((_e120593120619_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120546121130_))))
                                          (let ((_tl120591120624_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120593120619_)))
                                                (_hd120592120622_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120593120619_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120591120624_))
                                                (___kont128302128303_
                                                 _hd120592120622_
                                                 _hd120547121128_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120539120598_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g120539120598_))))))
                            (let () (declare (not safe)) (_g120539120598_)))))
                    (let () (declare (not safe)) (_g120539120598_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_self119460_ _stx119461_)
        (letrec* ((_bind-e__126690126691_
                   (lambda (_id120513_ _expr120514_ _compile?120515_)
                     (let ((__tmp129045
                            (let ()
                              (declare (not safe))
                              (cons _id120513_ '())))
                           (__tmp129043
                            (let ((__tmp129044
                                   (if _compile?120515_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self119460_
                                          _expr120514_))
                                       _expr120514_)))
                              (declare (not safe))
                              (cons __tmp129044 '()))))
                       (declare (not safe))
                       (cons __tmp129045 __tmp129043))))
                  (_bind-e__0__126692126693_
                   (lambda (_id120520_ _expr120521_)
                     (let ((_compile?120523_ '#t))
                       (declare (not safe))
                       (_bind-e__126690126691_
                        _id120520_
                        _expr120521_
                        _compile?120523_))))
                  (_bind-e119463_
                   (lambda _g129047_
                     (let ((_g129046_
                            (let ()
                              (declare (not safe))
                              (##length _g129047_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129046_ 2))
                              (apply (lambda (_id120520_ _expr120521_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126692126693_
                                          _id120520_
                                          _expr120521_)))
                                     _g129047_))
                             ((let () (declare (not safe)) (##fx= _g129046_ 3))
                              (apply (lambda (_id120525_
                                              _expr120526_
                                              _compile?120527_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126690126691_
                                          _id120525_
                                          _expr120526_
                                          _compile?120527_)))
                                     _g129047_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129047_))))))
                  (_compile-bindings119464_
                   (lambda (_bindings120097_)
                     (let _lp120099_ ((_rest120101_ _bindings120097_)
                                      (_lift1120102_ '())
                                      (_lift2120103_ '())
                                      (_bind120104_ '()))
                       (let* ((_rest120105120113_ _rest120101_)
                              (_else120107120121_
                               (lambda ()
                                 (values (reverse _lift1120102_)
                                         (reverse _lift2120103_)
                                         (reverse _bind120104_))))
                              (_K120109120500_
                               (lambda (_rest120124_ _hd120125_)
                                 (let* ((___stx128430128431_ _hd120125_)
                                        (_g120129120165_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128430128431_)))))
                                   (let ((___kont128432128433_
                                          (lambda (_L120407_ _L120408_)
                                            (let* ((___stx128410128411_
                                                    _L120407_)
                                                   (_g120423120437_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128410128411_)))))
                                              (let ((___kont128412128413_
                                                     (lambda (_L120485_)
                                                       (let ((__tmp129048
                                                              (let ((__tmp129049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126690126691_
                                _L120408_
                                _L120407_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129049 _bind120104_))))
                 (declare (not safe))
                 (_lp120099_
                  _rest120124_
                  _lift1120102_
                  _lift2120103_
                  __tmp129048))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128414128415_
                                                     (lambda (_L120450_)
                                                       (let ((_g129050_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx119461_
                         _L120408_
                         _L120450_
                         '#t))))
                 (begin
                   (let ((_g129051_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129050_)
                                (##vector-length _g129050_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129051_ 3)))
                         (error "Context expects 3 values" _g129051_)))
                   (let ((_ids120460_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129050_ 0)))
                         (_impls120461_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129050_ 1)))
                         (_clauses120462_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129050_ 2))))
                     (let* ((_g129052_
                             (for-each gx#core-bind-runtime! _ids120460_))
                            (_xbind120465_
                             (map _bind-e119463_ _ids120460_ _impls120461_))
                            (_expr*120467_
                             (let ((__tmp129054
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses120462_)))
                                   (__tmp129053
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129054
                                __tmp129053)))
                            (_bind*120469_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126690126691_
                                _L120408_
                                _expr*120467_
                                '#f))))
                       (let ((__tmp129056
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L120408_)))
                             (__tmp129055
                              (map gxc#identifier-symbol _ids120460_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129056
                          '" => "
                          __tmp129055))
                       (let ((__tmp129058
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2120103_ _xbind120465_)))
                             (__tmp129057
                              (let ()
                                (declare (not safe))
                                (cons _bind*120469_ _bind120104_))))
                         (declare (not safe))
                         (_lp120099_
                          _rest120124_
                          _lift1120102_
                          __tmp129058
                          __tmp129057)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128421128422_
                                                       (lambda (_e120428120477_
                                                                _hd120427120480_
                                                                _tl120426120482_)
                                                         (let ((_L120485_
                                                                _tl120426120482_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L120485_))
                       (___kont128412128413_ _L120485_)
                       (___kont128414128415_ _tl120426120482_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128410128411_))
                                                      (let ((_e120428120477_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128410128411_))))
                (let ((_tl120426120482_
                       (let () (declare (not safe)) (##cdr _e120428120477_)))
                      (_hd120427120480_
                       (let () (declare (not safe)) (##car _e120428120477_))))
                  (___match128421128422_
                   _e120428120477_
                   _hd120427120480_
                   _tl120426120482_)))
              (let () (declare (not safe)) (_g120423120437_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128434128435_
                                          (lambda (_L120235_ _L120236_)
                                            (let* ((_g120250120280_
                                                    (lambda (_g120251120277_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120251120277_))))
                                                   (_g120249120375_
                                                    (lambda (_g120251120283_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120251120283_))
                                                          (let ((_e120257120285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120251120283_))))
                    (let ((_hd120256120288_
                           (let ()
                             (declare (not safe))
                             (##car _e120257120285_)))
                          (_tl120255120290_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120257120285_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120255120290_))
                          (let ((_e120260120293_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120255120290_))))
                            (let ((_hd120259120296_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120260120293_)))
                                  (_tl120258120298_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120260120293_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120259120296_))
                                  (let ((_e120263120301_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120259120296_))))
                                    (let ((_hd120262120304_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120263120301_)))
                                          (_tl120261120306_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120263120301_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120262120304_))
                                          (let ((_e120266120309_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120262120304_))))
                                            (let ((_hd120265120312_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120266120309_)))
                                                  (_tl120264120314_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120266120309_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120265120312_))
                                                  (let ((_e120269120317_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120265120312_))))
                                                    (let ((_hd120268120320_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120269120317_)))
                                                          (_tl120267120322_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120269120317_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120267120322_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120264120314_))
                      (let ((_e120272120325_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120264120314_))))
                        (let ((_hd120271120328_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120272120325_)))
                              (_tl120270120330_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120272120325_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120270120330_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120261120306_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120258120298_))
                                      (let ((_e120275120333_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120258120298_))))
                                        (let ((_hd120274120336_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120275120333_)))
                                              (_tl120273120338_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120275120333_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120273120338_))
                                              ((lambda (_L120341_
                                                        _L120342_
                                                        _L120343_)
                                                 (let* ((_lambda-id120367_
                                                         (let ((__tmp129060
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L120236_)))
                       (__tmp129059 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129060 __tmp129059)))
                (_lambda-id120369_
                 (let ((__tmp129061
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx119461_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id120367_ __tmp129061)))
                (_g129062_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id120369_)))
                (_new-case-lambda-expr120372_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L120341_
                    'id:
                    _L120343_
                    'new-id:
                    _lambda-id120369_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129064
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L120236_)))
                                                         (__tmp129063
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id120369_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129064
                                                      '" => "
                                                      __tmp129063))
                                                   (let ((__tmp129067
                                                          (let ((__tmp129068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126690126691_
                            _L120236_
                            _new-case-lambda-expr120372_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129068 _rest120124_)))
                 (__tmp129065
                  (let ((__tmp129066
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126692126693_
                            _lambda-id120369_
                            _L120342_))))
                    (declare (not safe))
                    (cons __tmp129066 _lift1120102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp120099_
                                                      __tmp129067
                                                      __tmp129065
                                                      _lift2120103_
                                                      _bind120104_))))
                                               _hd120274120336_
                                               _hd120271120328_
                                               _hd120268120320_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120250120280_
                                                 _g120251120283_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120250120280_ _g120251120283_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g120250120280_ _g120251120283_)))
                              (let ()
                                (declare (not safe))
                                (_g120250120280_ _g120251120283_)))))
                      (let ()
                        (declare (not safe))
                        (_g120250120280_ _g120251120283_)))
                  (let ()
                    (declare (not safe))
                    (_g120250120280_ _g120251120283_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120250120280_
                                                     _g120251120283_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120250120280_
                                             _g120251120283_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120250120280_ _g120251120283_)))))
                          (let ()
                            (declare (not safe))
                            (_g120250120280_ _g120251120283_)))))
                  (let ()
                    (declare (not safe))
                    (_g120250120280_ _g120251120283_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120249120375_ _L120235_))))
                                         (___kont128436128437_
                                          (lambda (_L120186_ _L120187_)
                                            (let ((__tmp129069
                                                   (let ((__tmp129070
                                                          (let ((__tmp129071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129072
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self119460_ _L120186_))))
                           (declare (not safe))
                           (cons __tmp129072 '()))))
                    (declare (not safe))
                    (cons _L120187_ __tmp129071))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129070
                                                           _bind120104_))))
                                              (declare (not safe))
                                              (_lp120099_
                                               _rest120124_
                                               _lift1120102_
                                               _lift2120103_
                                               __tmp129069)))))
                                     (let* ((___match128481128482_
                                             (lambda (_e120146120211_
                                                      _hd120145120214_
                                                      _tl120144120216_
                                                      _e120149120219_
                                                      _hd120148120222_
                                                      _tl120147120224_
                                                      _e120152120227_
                                                      _hd120151120230_
                                                      _tl120150120232_)
                                               (let ((_L120235_
                                                      _hd120151120230_)
                                                     (_L120236_
                                                      _hd120148120222_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120236_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L120235_)))
                                                     (___kont128434128435_
                                                      _L120235_
                                                      _L120236_)
                                                     (___kont128436128437_
                                                      _hd120151120230_
                                                      _hd120145120214_)))))
                                            (___match128459128460_
                                             (lambda (_e120135120383_
                                                      _hd120134120386_
                                                      _tl120133120388_
                                                      _e120138120391_
                                                      _hd120137120394_
                                                      _tl120136120396_
                                                      _e120141120399_
                                                      _hd120140120402_
                                                      _tl120139120404_)
                                               (let ((_L120407_
                                                      _hd120140120402_)
                                                     (_L120408_
                                                      _hd120137120394_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120408_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L120407_)))
                                                     (___kont128432128433_
                                                      _L120407_
                                                      _L120408_)
                                                     (___match128481128482_
                                                      _e120135120383_
                                                      _hd120134120386_
                                                      _tl120133120388_
                                                      _e120138120391_
                                                      _hd120137120394_
                                                      _tl120136120396_
                                                      _e120141120399_
                                                      _hd120140120402_
                                                      _tl120139120404_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128430128431_))
                                           (let ((_e120135120383_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128430128431_))))
                                             (let ((_tl120133120388_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120135120383_)))
                                                   (_hd120134120386_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120135120383_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120134120386_))
                                                   (let ((_e120138120391_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120134120386_))))
                                                     (let ((_tl120136120396_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120138120391_)))
                                                           (_hd120137120394_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120138120391_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120136120396_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120133120388_))
                       (let ((_e120141120399_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120133120388_))))
                         (let ((_tl120139120404_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120141120399_)))
                               (_hd120140120402_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120141120399_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120139120404_))
                               (___match128459128460_
                                _e120135120383_
                                _hd120134120386_
                                _tl120133120388_
                                _e120138120391_
                                _hd120137120394_
                                _tl120136120396_
                                _e120141120399_
                                _hd120140120402_
                                _tl120139120404_)
                               (let ()
                                 (declare (not safe))
                                 (_g120129120165_)))))
                       (let () (declare (not safe)) (_g120129120165_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120133120388_))
                       (let ((_e120160120178_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120133120388_))))
                         (let ((_tl120158120183_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120160120178_)))
                               (_hd120159120181_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120160120178_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120158120183_))
                               (___kont128436128437_
                                _hd120159120181_
                                _hd120134120386_)
                               (let ()
                                 (declare (not safe))
                                 (_g120129120165_)))))
                       (let () (declare (not safe)) (_g120129120165_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120133120388_))
                                                       (let ((_e120160120178_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120133120388_))))
                 (let ((_tl120158120183_
                        (let () (declare (not safe)) (##cdr _e120160120178_)))
                       (_hd120159120181_
                        (let () (declare (not safe)) (##car _e120160120178_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120158120183_))
                       (___kont128436128437_ _hd120159120181_ _hd120134120386_)
                       (let () (declare (not safe)) (_g120129120165_)))))
               (let () (declare (not safe)) (_g120129120165_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120129120165_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120105120113_))
                             (let ((_hd120110120503_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120105120113_)))
                                   (_tl120111120505_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120105120113_))))
                               (let* ((_hd120508_ _hd120110120503_)
                                      (_rest120510_ _tl120111120505_))
                                 (declare (not safe))
                                 (_K120109120500_ _rest120510_ _hd120508_)))
                             (let ()
                               (declare (not safe))
                               (_else120107120121_)))))))
                  (_lift-kw-lambda?119465_
                   (lambda (_bind120021_)
                     (let* ((___stx128498128499_ _bind120021_)
                            (_g120024120041_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128498128499_)))))
                       (let ((___kont128500128501_
                              (lambda (_L120077_ _L120078_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L120078_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L120077_))
                                    '#f)))
                             (___kont128502128503_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx128498128499_))
                             (let ((_e120030120053_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx128498128499_))))
                               (let ((_tl120028120058_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e120030120053_)))
                                     (_hd120029120056_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e120030120053_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd120029120056_))
                                     (let ((_e120033120061_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd120029120056_))))
                                       (let ((_tl120031120066_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e120033120061_)))
                                             (_hd120032120064_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e120033120061_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl120031120066_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl120028120058_))
                                                 (let ((_e120036120069_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl120028120058_))))
                                                   (let ((_tl120034120074_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e120036120069_)))
                                                         (_hd120035120072_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e120036120069_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl120034120074_))
                                                         (___kont128500128501_
                                                          _hd120035120072_
                                                          _hd120032120064_)
                                                         (___kont128502128503_))))
                                                 (___kont128502128503_))
                                             (___kont128502128503_))))
                                     (___kont128502128503_))))
                             (___kont128502128503_))))))
                  (_lift-kw-lambda-bindings119466_
                   (lambda (_bindings119633_)
                     (let _lp119635_ ((_rest119637_ _bindings119633_)
                                      (_lift1119638_ '())
                                      (_lift2119639_ '())
                                      (_bind119640_ '()))
                       (let* ((_rest119641119649_ _rest119637_)
                              (_else119643119657_
                               (lambda ()
                                 (values (reverse _lift1119638_)
                                         (reverse _lift2119639_)
                                         (reverse _bind119640_))))
                              (_K119645120009_
                               (lambda (_rest119660_ _hd119661_)
                                 (let* ((___stx128528128529_ _hd119661_)
                                        (_g119664119689_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128528128529_)))))
                                   (let ((___kont128530128531_
                                          (lambda (_L119759_ _L119760_)
                                            (let* ((_g119774119827_
                                                    (lambda (_g119775119824_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119775119824_))))
                                                   (_g119773120003_
                                                    (lambda (_g119775119830_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119775119830_))
                                                          (let ((_e119783119832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119775119830_))))
                    (let ((_hd119782119835_
                           (let ()
                             (declare (not safe))
                             (##car _e119783119832_)))
                          (_tl119781119837_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119783119832_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119781119837_))
                          (let ((_e119786119840_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119781119837_))))
                            (let ((_hd119785119843_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119786119840_)))
                                  (_tl119784119845_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119786119840_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119785119843_))
                                  (let ((_e119789119848_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119785119843_))))
                                    (let ((_hd119788119851_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119789119848_)))
                                          (_tl119787119853_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119789119848_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119788119851_))
                                          (let ((_e119792119856_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119788119851_))))
                                            (let ((_hd119791119859_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119792119856_)))
                                                  (_tl119790119861_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119792119856_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119791119859_))
                                                  (let ((_e119795119864_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119791119859_))))
                                                    (let ((_hd119794119867_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119795119864_)))
                                                          (_tl119793119869_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119795119864_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119793119869_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119790119861_))
                      (let ((_e119798119872_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119790119861_))))
                        (let ((_hd119797119875_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119798119872_)))
                              (_tl119796119877_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119798119872_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd119797119875_))
                              (let ((_e119801119880_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd119797119875_))))
                                (let ((_hd119800119883_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119801119880_)))
                                      (_tl119799119885_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119801119880_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119799119885_))
                                      (let ((_e119804119888_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119799119885_))))
                                        (let ((_hd119803119891_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119804119888_)))
                                              (_tl119802119893_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119804119888_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd119803119891_))
                                              (let ((_e119807119896_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd119803119891_))))
                                                (let ((_hd119806119899_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e119807119896_)))
                                                      (_tl119805119901_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e119807119896_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd119806119899_))
                                                      (let ((_e119810119904_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd119806119899_))))
                (let ((_hd119809119907_
                       (let () (declare (not safe)) (##car _e119810119904_)))
                      (_tl119808119909_
                       (let () (declare (not safe)) (##cdr _e119810119904_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd119809119907_))
                      (let ((_e119813119912_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd119809119907_))))
                        (let ((_hd119812119915_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119813119912_)))
                              (_tl119811119917_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119813119912_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119811119917_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl119808119909_))
                                  (let ((_e119816119920_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl119808119909_))))
                                    (let ((_hd119815119923_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119816119920_)))
                                          (_tl119814119925_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119816119920_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl119814119925_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119805119901_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl119802119893_))
                                                  (let ((_e119819119928_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl119802119893_))))
                                                    (let ((_hd119818119931_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119819119928_)))
                                                          (_tl119817119933_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119819119928_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119817119933_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl119796119877_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl119787119853_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119784119845_))
                              (let ((_e119822119936_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119784119845_))))
                                (let ((_hd119821119939_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119822119936_)))
                                      (_tl119820119941_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119822119936_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119820119941_))
                                      ((lambda (_L119944_
                                                _L119945_
                                                _L119946_
                                                _L119947_
                                                _L119948_)
                                         (let* ((_get-kws-id119988_
                                                 (let ((__tmp129074
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119760_)))
                                                       (__tmp129073
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129074
                                                    __tmp129073)))
                                                (_get-kws-id119990_
                                                 (let ((__tmp129075
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119461_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id119988_
                                                    __tmp129075)))
                                                (_main-id119992_
                                                 (let ((__tmp129077
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119760_)))
                                                       (__tmp129076
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129077
                                                    __tmp129076)))
                                                (_main-id119994_
                                                 (let ((__tmp129078
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119461_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id119992_
                                                    __tmp129078)))
                                                (_g129079_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id119990_)))
                                                (_g129080_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id119994_)))
                                                (_new-kw-dispatch119998_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119944_
                                                    'id:
                                                    _L119948_
                                                    'new-id:
                                                    _get-kws-id119990_)))
                                                (_new-get-kws120000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119945_
                                                    'id:
                                                    _L119947_
                                                    'new-id:
                                                    _main-id119994_))))
                                           (let ((__tmp129083
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L119760_)))
                                                 (__tmp129082
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id119990_)))
                                                 (__tmp129081
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id119994_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129083
                                              '" => "
                                              __tmp129082
                                              '" => "
                                              __tmp129081))
                                           (let ((__tmp129088
                                                  (let ((__tmp129089
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126690126691_
                                                            _main-id119994_
                                                            _L119946_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129089
                                                          _lift1119638_)))
                                                 (__tmp129086
                                                  (let ((__tmp129087
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126690126691_
                                                            _get-kws-id119990_
                                                            _new-get-kws120000_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129087
                                                          _lift2119639_)))
                                                 (__tmp129084
                                                  (let ((__tmp129085
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126690126691_
                                                            _L119760_
                                                            _new-kw-dispatch119998_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129085
                                                          _bind119640_))))
                                             (declare (not safe))
                                             (_lp119635_
                                              _rest119660_
                                              __tmp129088
                                              __tmp129086
                                              __tmp129084))))
                                       _hd119821119939_
                                       _hd119818119931_
                                       _hd119815119923_
                                       _hd119812119915_
                                       _hd119794119867_)
                                      (let ()
                                        (declare (not safe))
                                        (_g119774119827_ _g119775119830_)))))
                              (let ()
                                (declare (not safe))
                                (_g119774119827_ _g119775119830_)))
                          (let ()
                            (declare (not safe))
                            (_g119774119827_ _g119775119830_)))
                      (let ()
                        (declare (not safe))
                        (_g119774119827_ _g119775119830_)))
                  (let ()
                    (declare (not safe))
                    (_g119774119827_ _g119775119830_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119774119827_
                                                     _g119775119830_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g119774119827_
                                                 _g119775119830_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g119774119827_
                                             _g119775119830_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119774119827_ _g119775119830_)))
                              (let ()
                                (declare (not safe))
                                (_g119774119827_ _g119775119830_)))))
                      (let ()
                        (declare (not safe))
                        (_g119774119827_ _g119775119830_)))))
              (let ()
                (declare (not safe))
                (_g119774119827_ _g119775119830_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g119774119827_
                                                 _g119775119830_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119774119827_ _g119775119830_)))))
                              (let ()
                                (declare (not safe))
                                (_g119774119827_ _g119775119830_)))))
                      (let ()
                        (declare (not safe))
                        (_g119774119827_ _g119775119830_)))
                  (let ()
                    (declare (not safe))
                    (_g119774119827_ _g119775119830_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119774119827_
                                                     _g119775119830_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119774119827_
                                             _g119775119830_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119774119827_ _g119775119830_)))))
                          (let ()
                            (declare (not safe))
                            (_g119774119827_ _g119775119830_)))))
                  (let ()
                    (declare (not safe))
                    (_g119774119827_ _g119775119830_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119773120003_ _L119759_))))
                                         (___kont128532128533_
                                          (lambda (_L119710_ _L119711_)
                                            (let ((__tmp129090
                                                   (let ((__tmp129091
                                                          (let ((__tmp129092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L119710_ '()))))
                    (declare (not safe))
                    (cons _L119711_ __tmp129092))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129091
                                                           _bind119640_))))
                                              (declare (not safe))
                                              (_lp119635_
                                               _rest119660_
                                               _lift1119638_
                                               _lift2119639_
                                               __tmp129090)))))
                                     (let ((___match128555128556_
                                            (lambda (_e119670119735_
                                                     _hd119669119738_
                                                     _tl119668119740_
                                                     _e119673119743_
                                                     _hd119672119746_
                                                     _tl119671119748_
                                                     _e119676119751_
                                                     _hd119675119754_
                                                     _tl119674119756_)
                                              (let ((_L119759_
                                                     _hd119675119754_)
                                                    (_L119760_
                                                     _hd119672119746_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L119760_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L119759_)))
                                                    (___kont128530128531_
                                                     _L119759_
                                                     _L119760_)
                                                    (___kont128532128533_
                                                     _hd119675119754_
                                                     _hd119669119738_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128528128529_))
                                           (let ((_e119670119735_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128528128529_))))
                                             (let ((_tl119668119740_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119670119735_)))
                                                   (_hd119669119738_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119670119735_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119669119738_))
                                                   (let ((_e119673119743_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119669119738_))))
                                                     (let ((_tl119671119748_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119673119743_)))
                                                           (_hd119672119746_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119673119743_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119671119748_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119668119740_))
                       (let ((_e119676119751_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119668119740_))))
                         (let ((_tl119674119756_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119676119751_)))
                               (_hd119675119754_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119676119751_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119674119756_))
                               (___match128555128556_
                                _e119670119735_
                                _hd119669119738_
                                _tl119668119740_
                                _e119673119743_
                                _hd119672119746_
                                _tl119671119748_
                                _e119676119751_
                                _hd119675119754_
                                _tl119674119756_)
                               (let ()
                                 (declare (not safe))
                                 (_g119664119689_)))))
                       (let () (declare (not safe)) (_g119664119689_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119668119740_))
                       (let ((_e119684119702_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119668119740_))))
                         (let ((_tl119682119707_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119684119702_)))
                               (_hd119683119705_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119684119702_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119682119707_))
                               (___kont128532128533_
                                _hd119683119705_
                                _hd119669119738_)
                               (let ()
                                 (declare (not safe))
                                 (_g119664119689_)))))
                       (let () (declare (not safe)) (_g119664119689_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119668119740_))
                                                       (let ((_e119684119702_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119668119740_))))
                 (let ((_tl119682119707_
                        (let () (declare (not safe)) (##cdr _e119684119702_)))
                       (_hd119683119705_
                        (let () (declare (not safe)) (##car _e119684119702_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119682119707_))
                       (___kont128532128533_ _hd119683119705_ _hd119669119738_)
                       (let () (declare (not safe)) (_g119664119689_)))))
               (let () (declare (not safe)) (_g119664119689_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119664119689_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119641119649_))
                             (let ((_hd119646120012_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119641119649_)))
                                   (_tl119647120014_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119641119649_))))
                               (let* ((_hd120017_ _hd119646120012_)
                                      (_rest120019_ _tl119647120014_))
                                 (declare (not safe))
                                 (_K119645120009_ _rest120019_ _hd120017_)))
                             (let ()
                               (declare (not safe))
                               (_else119643119657_))))))))
          (let* ((___stx128572128573_ _stx119461_)
                 (_g119469119495_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128572128573_)))))
            (let ((___kont128574128575_
                   (lambda (_L119555_ _L119556_)
                     (let ((__tmp129094
                            (lambda ()
                              (if (let ((__tmp129121
                                         (let ((__tmp129122
                                                (lambda (_g119584119587_
                                                         _g119585119589_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g119584119587_
                                                          _g119585119589_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp129122
                                                   '()
                                                   _L119556_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?119465_
                                            __tmp129121))
                                  (let ((_g129108_
                                         (let ((__tmp129110
                                                (let ((__tmp129111
                                                       (lambda (_g119591119594_
                                                                _g119592119596_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119591119594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119592119596_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129111
                                                          '()
                                                          _L119556_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings119466_
                                            __tmp129110))))
                                    (begin
                                      (let ((_g129109_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129108_)
                                                   (##vector-length _g129108_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129109_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129109_)))
                                      (let ((_lift1119599_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129108_ 0)))
                                            (_lift2119600_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129108_ 1)))
                                            (_hd119601_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129108_ 2))))
                                        (let* ((_expr119603_
                                                (let ((__tmp129112
                                                       (let ((__tmp129113
                                                              (let ((__tmp129114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L119555_ '()))))
                        (declare (not safe))
                        (cons _hd119601_ __tmp129114))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129113))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129112
                                                   _stx119461_)))
                                               (_expr119605_
                                                (let ((__tmp129115
                                                       (let ((__tmp129116
                                                              (let ((__tmp129117
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119603_ '()))))
                        (declare (not safe))
                        (cons _lift2119600_ __tmp129117))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129116))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129115
                                                   _stx119461_)))
                                               (_expr119607_
                                                (let ((__tmp129118
                                                       (let ((__tmp129119
                                                              (let ((__tmp129120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119605_ '()))))
                        (declare (not safe))
                        (cons _lift1119599_ __tmp129120))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129119))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129118
                                                   _stx119461_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _self119460_
                                             _expr119607_))))))
                                  (let ((_g129095_
                                         (let ((__tmp129097
                                                (let ((__tmp129098
                                                       (lambda (_g119609119612_
                                                                _g119610119614_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119609119612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119610119614_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129098
                                                          '()
                                                          _L119556_))))
                                           (declare (not safe))
                                           (_compile-bindings119464_
                                            __tmp129097))))
                                    (begin
                                      (let ((_g129096_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129095_)
                                                   (##vector-length _g129095_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129096_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129096_)))
                                      (let ((_lift1119617_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129095_ 0)))
                                            (_lift2119618_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129095_ 1)))
                                            (_hd119619_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129095_ 2))))
                                        (let* ((_body119621_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self119460_
                                                   _L119555_)))
                                               (_expr119623_
                                                (let ((__tmp129099
                                                       (let ((__tmp129100
                                                              (let ((__tmp129101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body119621_ '()))))
                        (declare (not safe))
                        (cons _hd119619_ __tmp129101))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129100))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129099
                                                   _stx119461_)))
                                               (_expr119625_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2119618_))
                                                    _expr119623_
                                                    (let ((__tmp129102
                                                           (let ((__tmp129103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129104
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119623_ '()))))
                            (declare (not safe))
                            (cons _lift2119618_ __tmp129104))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129103))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129102 _stx119461_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr119627_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1119617_))
                                                    _expr119625_
                                                    (let ((__tmp129105
                                                           (let ((__tmp129106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129107
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119625_ '()))))
                            (declare (not safe))
                            (cons _lift1119617_ __tmp129107))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129106))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129105 _stx119461_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr119627_)))))))
                           (__tmp129093
                            (let ((__obj128788
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128788)
                              __obj128788)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129094
                        gx#current-expander-context
                        __tmp129093))))
                  (___kont128578128579_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self119460_ _stx119461_)))))
              (let ((___match128599128600_
                     (lambda (_e119475119507_
                              _hd119474119510_
                              _tl119473119512_
                              _e119478119515_
                              _hd119477119518_
                              _tl119476119520_
                              ___splice128576128577_
                              _target119479119523_
                              _tl119481119525_)
                       (letrec ((_loop119482119528_
                                 (lambda (_hd119480119531_ _bind119486119533_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd119480119531_))
                                       (let ((_e119483119536_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd119480119531_))))
                                         (let ((_lp-tl119485119541_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119483119536_)))
                                               (_lp-hd119484119539_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119483119536_))))
                                           (let ((__tmp129125
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd119484119539_
                                                          _bind119486119533_))))
                                             (declare (not safe))
                                             (_loop119482119528_
                                              _lp-tl119485119541_
                                              __tmp129125))))
                                       (let ((_bind119487119544_
                                              (reverse _bind119486119533_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl119476119520_))
                                             (let ((_e119490119547_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl119476119520_))))
                                               (let ((_tl119488119552_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e119490119547_)))
                                                     (_hd119489119550_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e119490119547_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl119488119552_))
                                                     (let ((_L119555_
                                                            _hd119489119550_)
                                                           (_L119556_
                                                            _bind119487119544_))
                                                       (if (let ((__tmp129123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129124
                                 (lambda (_g119576119579_ _g119577119581_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g119576119579_ _g119577119581_)))))
                            (declare (not safe))
                            (foldr1 __tmp129124 '() _L119556_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129123))
                   (___kont128574128575_ _L119555_ _L119556_)
                   (___kont128578128579_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128578128579_))))
                                             (___kont128578128579_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop119482119528_ _target119479119523_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128572128573_))
                    (let ((_e119475119507_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128572128573_))))
                      (let ((_tl119473119512_
                             (let ()
                               (declare (not safe))
                               (##cdr _e119475119507_)))
                            (_hd119474119510_
                             (let ()
                               (declare (not safe))
                               (##car _e119475119507_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119473119512_))
                            (let ((_e119478119515_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119473119512_))))
                              (let ((_tl119476119520_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119478119515_)))
                                    (_hd119477119518_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119478119515_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd119477119518_))
                                    (let ((___splice128576128577_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd119477119518_
                                              '0))))
                                      (let ((_tl119481119525_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128576128577_
                                                '1)))
                                            (_target119479119523_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128576128577_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119481119525_))
                                            (___match128599128600_
                                             _e119475119507_
                                             _hd119474119510_
                                             _tl119473119512_
                                             _e119478119515_
                                             _hd119477119518_
                                             _tl119476119520_
                                             ___splice128576128577_
                                             _target119479119523_
                                             _tl119481119525_)
                                            (___kont128578128579_))))
                                    (___kont128578128579_))))
                            (___kont128578128579_))))
                    (___kont128578128579_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_self118603_ _stx118604_)
        (letrec* ((_bind-e__126695126696_
                   (lambda (_id119444_ _expr119445_ _compile?119446_)
                     (let ((__tmp129128
                            (let ()
                              (declare (not safe))
                              (cons _id119444_ '())))
                           (__tmp129126
                            (let ((__tmp129127
                                   (if _compile?119446_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self118603_
                                          _expr119445_))
                                       _expr119445_)))
                              (declare (not safe))
                              (cons __tmp129127 '()))))
                       (declare (not safe))
                       (cons __tmp129128 __tmp129126))))
                  (_bind-e__0__126697126698_
                   (lambda (_id119451_ _expr119452_)
                     (let ((_compile?119454_ '#t))
                       (declare (not safe))
                       (_bind-e__126695126696_
                        _id119451_
                        _expr119452_
                        _compile?119454_))))
                  (_bind-e118606_
                   (lambda _g129130_
                     (let ((_g129129_
                            (let ()
                              (declare (not safe))
                              (##length _g129130_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129129_ 2))
                              (apply (lambda (_id119451_ _expr119452_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126697126698_
                                          _id119451_
                                          _expr119452_)))
                                     _g129130_))
                             ((let () (declare (not safe)) (##fx= _g129129_ 3))
                              (apply (lambda (_id119456_
                                              _expr119457_
                                              _compile?119458_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126695126696_
                                          _id119456_
                                          _expr119457_
                                          _compile?119458_)))
                                     _g129130_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129130_))))))
                  (_compile-bindings118607_
                   (lambda (_rest118742_)
                     (let _lp118744_ ((_rest118746_ _rest118742_)
                                      (_bind118747_ '()))
                       (let* ((_rest118748118756_ _rest118746_)
                              (_else118750118764_
                               (lambda () (reverse _bind118747_)))
                              (_K118752119431_
                               (lambda (_rest118767_ _hd118768_)
                                 (let* ((___stx128622128623_ _hd118768_)
                                        (_g118773118820_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128622128623_)))))
                                   (let ((___kont128624128625_
                                          (lambda (_L119338_ _L119339_)
                                            (let* ((___stx128602128603_
                                                    _L119338_)
                                                   (_g119354119368_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128602128603_)))))
                                              (let ((___kont128604128605_
                                                     (lambda (_L119416_)
                                                       (let ((__tmp129131
                                                              (let ((__tmp129132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126695126696_
                                _L119339_
                                _L119338_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129132 _bind118747_))))
                 (declare (not safe))
                 (_lp118744_ _rest118767_ __tmp129131))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128606128607_
                                                     (lambda (_L119381_)
                                                       (let ((_g129133_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx118604_
                         _L119339_
                         _L119381_
                         '#t))))
                 (begin
                   (let ((_g129134_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129133_)
                                (##vector-length _g129133_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129134_ 3)))
                         (error "Context expects 3 values" _g129134_)))
                   (let ((_ids119391_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129133_ 0)))
                         (_impls119392_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129133_ 1)))
                         (_clauses119393_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129133_ 2))))
                     (let* ((_g129135_
                             (for-each gx#core-bind-runtime! _ids119391_))
                            (_xbind119396_
                             (map _bind-e118606_ _ids119391_ _impls119392_))
                            (_expr*119398_
                             (let ((__tmp129137
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses119393_)))
                                   (__tmp129136
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129137
                                __tmp129136)))
                            (_bind*119400_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126695126696_
                                _L119339_
                                _expr*119398_
                                '#f))))
                       (let ((__tmp129139
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L119339_)))
                             (__tmp129138
                              (map gxc#identifier-symbol _ids119391_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129139
                          '" => "
                          __tmp129138))
                       (let ((__tmp129140
                              (let ((__tmp129141
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind118747_
                                               _xbind119396_))))
                                (declare (not safe))
                                (cons _bind*119400_ __tmp129141))))
                         (declare (not safe))
                         (_lp118744_ _rest118767_ __tmp129140)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128613128614_
                                                       (lambda (_e119359119408_
                                                                _hd119358119411_
                                                                _tl119357119413_)
                                                         (let ((_L119416_
                                                                _tl119357119413_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L119416_))
                       (___kont128604128605_ _L119416_)
                       (___kont128606128607_ _tl119357119413_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128602128603_))
                                                      (let ((_e119359119408_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128602128603_))))
                (let ((_tl119357119413_
                       (let () (declare (not safe)) (##cdr _e119359119408_)))
                      (_hd119358119411_
                       (let () (declare (not safe)) (##car _e119359119408_))))
                  (___match128613128614_
                   _e119359119408_
                   _hd119358119411_
                   _tl119357119413_)))
              (let () (declare (not safe)) (_g119354119368_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128626128627_
                                          (lambda (_L119166_ _L119167_)
                                            (let* ((_g119181119211_
                                                    (lambda (_g119182119208_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119182119208_))))
                                                   (_g119180119306_
                                                    (lambda (_g119182119214_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119182119214_))
                                                          (let ((_e119188119216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119182119214_))))
                    (let ((_hd119187119219_
                           (let ()
                             (declare (not safe))
                             (##car _e119188119216_)))
                          (_tl119186119221_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119188119216_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119186119221_))
                          (let ((_e119191119224_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119186119221_))))
                            (let ((_hd119190119227_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119191119224_)))
                                  (_tl119189119229_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119191119224_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119190119227_))
                                  (let ((_e119194119232_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119190119227_))))
                                    (let ((_hd119193119235_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119194119232_)))
                                          (_tl119192119237_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119194119232_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119193119235_))
                                          (let ((_e119197119240_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119193119235_))))
                                            (let ((_hd119196119243_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119197119240_)))
                                                  (_tl119195119245_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119197119240_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119196119243_))
                                                  (let ((_e119200119248_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119196119243_))))
                                                    (let ((_hd119199119251_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119200119248_)))
                                                          (_tl119198119253_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119200119248_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119198119253_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119195119245_))
                      (let ((_e119203119256_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119195119245_))))
                        (let ((_hd119202119259_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119203119256_)))
                              (_tl119201119261_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119203119256_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119201119261_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119192119237_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119189119229_))
                                      (let ((_e119206119264_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119189119229_))))
                                        (let ((_hd119205119267_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119206119264_)))
                                              (_tl119204119269_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119206119264_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119204119269_))
                                              ((lambda (_L119272_
                                                        _L119273_
                                                        _L119274_)
                                                 (let* ((_lambda-id119298_
                                                         (let ((__tmp129143
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L119167_)))
                       (__tmp129142 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129143 __tmp129142)))
                (_lambda-id119300_
                 (let ((__tmp129144
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx118604_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id119298_ __tmp129144)))
                (_g129145_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id119300_)))
                (_new-case-lambda-expr119303_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L119272_
                    'id:
                    _L119274_
                    'new-id:
                    _lambda-id119300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129147
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L119167_)))
                                                         (__tmp129146
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id119300_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129147
                                                      '" => "
                                                      __tmp129146))
                                                   (let ((__tmp129150
                                                          (let ((__tmp129151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126695126696_
                            _L119167_
                            _new-case-lambda-expr119303_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129151 _rest118767_)))
                 (__tmp129148
                  (let ((__tmp129149
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126697126698_
                            _lambda-id119300_
                            _L119273_))))
                    (declare (not safe))
                    (cons __tmp129149 _bind118747_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp118744_
                                                      __tmp129150
                                                      __tmp129148))))
                                               _hd119205119267_
                                               _hd119202119259_
                                               _hd119199119251_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119181119211_
                                                 _g119182119214_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119181119211_ _g119182119214_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119181119211_ _g119182119214_)))
                              (let ()
                                (declare (not safe))
                                (_g119181119211_ _g119182119214_)))))
                      (let ()
                        (declare (not safe))
                        (_g119181119211_ _g119182119214_)))
                  (let ()
                    (declare (not safe))
                    (_g119181119211_ _g119182119214_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119181119211_
                                                     _g119182119214_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119181119211_
                                             _g119182119214_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119181119211_ _g119182119214_)))))
                          (let ()
                            (declare (not safe))
                            (_g119181119211_ _g119182119214_)))))
                  (let ()
                    (declare (not safe))
                    (_g119181119211_ _g119182119214_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119180119306_ _L119166_))))
                                         (___kont128628128629_
                                          (lambda (_L118890_ _L118891_)
                                            (let* ((_g118905118958_
                                                    (lambda (_g118906118955_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118906118955_))))
                                                   (_g118904119134_
                                                    (lambda (_g118906118961_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118906118961_))
                                                          (let ((_e118914118963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118906118961_))))
                    (let ((_hd118913118966_
                           (let ()
                             (declare (not safe))
                             (##car _e118914118963_)))
                          (_tl118912118968_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118914118963_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118912118968_))
                          (let ((_e118917118971_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118912118968_))))
                            (let ((_hd118916118974_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118917118971_)))
                                  (_tl118915118976_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118917118971_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118916118974_))
                                  (let ((_e118920118979_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118916118974_))))
                                    (let ((_hd118919118982_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118920118979_)))
                                          (_tl118918118984_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118920118979_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118919118982_))
                                          (let ((_e118923118987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118919118982_))))
                                            (let ((_hd118922118990_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118923118987_)))
                                                  (_tl118921118992_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118923118987_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118922118990_))
                                                  (let ((_e118926118995_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118922118990_))))
                                                    (let ((_hd118925118998_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118926118995_)))
                                                          (_tl118924119000_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118926118995_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118924119000_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118921118992_))
                      (let ((_e118929119003_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118921118992_))))
                        (let ((_hd118928119006_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118929119003_)))
                              (_tl118927119008_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118929119003_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118928119006_))
                              (let ((_e118932119011_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118928119006_))))
                                (let ((_hd118931119014_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118932119011_)))
                                      (_tl118930119016_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118932119011_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118930119016_))
                                      (let ((_e118935119019_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118930119016_))))
                                        (let ((_hd118934119022_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118935119019_)))
                                              (_tl118933119024_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118935119019_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd118934119022_))
                                              (let ((_e118938119027_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd118934119022_))))
                                                (let ((_hd118937119030_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118938119027_)))
                                                      (_tl118936119032_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118938119027_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118937119030_))
                                                      (let ((_e118941119035_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd118937119030_))))
                (let ((_hd118940119038_
                       (let () (declare (not safe)) (##car _e118941119035_)))
                      (_tl118939119040_
                       (let () (declare (not safe)) (##cdr _e118941119035_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118940119038_))
                      (let ((_e118944119043_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118940119038_))))
                        (let ((_hd118943119046_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118944119043_)))
                              (_tl118942119048_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118944119043_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118942119048_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118939119040_))
                                  (let ((_e118947119051_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118939119040_))))
                                    (let ((_hd118946119054_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118947119051_)))
                                          (_tl118945119056_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118947119051_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118945119056_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118936119032_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118933119024_))
                                                  (let ((_e118950119059_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118933119024_))))
                                                    (let ((_hd118949119062_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118950119059_)))
                                                          (_tl118948119064_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118950119059_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118948119064_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl118927119008_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl118918118984_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118915118976_))
                              (let ((_e118953119067_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118915118976_))))
                                (let ((_hd118952119070_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118953119067_)))
                                      (_tl118951119072_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118953119067_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118951119072_))
                                      ((lambda (_L119075_
                                                _L119076_
                                                _L119077_
                                                _L119078_
                                                _L119079_)
                                         (let* ((_get-kws-id119119_
                                                 (let ((__tmp129153
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118891_)))
                                                       (__tmp129152
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129153
                                                    __tmp129152)))
                                                (_get-kws-id119121_
                                                 (let ((__tmp129154
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118604_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id119119_
                                                    __tmp129154)))
                                                (_main-id119123_
                                                 (let ((__tmp129156
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118891_)))
                                                       (__tmp129155
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129156
                                                    __tmp129155)))
                                                (_main-id119125_
                                                 (let ((__tmp129157
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118604_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id119123_
                                                    __tmp129157)))
                                                (_g129158_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id119121_)))
                                                (_g129159_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id119125_)))
                                                (_new-kw-dispatch119129_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119075_
                                                    'id:
                                                    _L119079_
                                                    'new-id:
                                                    _get-kws-id119121_)))
                                                (_new-get-kws119131_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119076_
                                                    'id:
                                                    _L119078_
                                                    'new-id:
                                                    _main-id119125_))))
                                           (let ((__tmp129162
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L118891_)))
                                                 (__tmp129161
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id119121_)))
                                                 (__tmp129160
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id119125_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129162
                                              '" => "
                                              __tmp129161
                                              '" => "
                                              __tmp129160))
                                           (let ((__tmp129163
                                                  (let ((__tmp129168
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126695126696_
                                                            _main-id119125_
                                                            _L119077_
                                                            '#f)))
                                                        (__tmp129164
                                                         (let ((__tmp129167
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__126695126696_
                           _get-kws-id119121_
                           _new-get-kws119131_
                           '#f)))
                       (__tmp129165
                        (let ((__tmp129166
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__126695126696_
                                  _L118891_
                                  _new-kw-dispatch119129_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp129166 _rest118767_))))
                   (declare (not safe))
                   (cons __tmp129167 __tmp129165))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129168
                                                          __tmp129164))))
                                             (declare (not safe))
                                             (_lp118744_
                                              __tmp129163
                                              _bind118747_))))
                                       _hd118952119070_
                                       _hd118949119062_
                                       _hd118946119054_
                                       _hd118943119046_
                                       _hd118925118998_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118905118958_ _g118906118961_)))))
                              (let ()
                                (declare (not safe))
                                (_g118905118958_ _g118906118961_)))
                          (let ()
                            (declare (not safe))
                            (_g118905118958_ _g118906118961_)))
                      (let ()
                        (declare (not safe))
                        (_g118905118958_ _g118906118961_)))
                  (let ()
                    (declare (not safe))
                    (_g118905118958_ _g118906118961_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118905118958_
                                                     _g118906118961_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g118905118958_
                                                 _g118906118961_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g118905118958_
                                             _g118906118961_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118905118958_ _g118906118961_)))
                              (let ()
                                (declare (not safe))
                                (_g118905118958_ _g118906118961_)))))
                      (let ()
                        (declare (not safe))
                        (_g118905118958_ _g118906118961_)))))
              (let ()
                (declare (not safe))
                (_g118905118958_ _g118906118961_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g118905118958_
                                                 _g118906118961_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118905118958_ _g118906118961_)))))
                              (let ()
                                (declare (not safe))
                                (_g118905118958_ _g118906118961_)))))
                      (let ()
                        (declare (not safe))
                        (_g118905118958_ _g118906118961_)))
                  (let ()
                    (declare (not safe))
                    (_g118905118958_ _g118906118961_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118905118958_
                                                     _g118906118961_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118905118958_
                                             _g118906118961_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118905118958_ _g118906118961_)))))
                          (let ()
                            (declare (not safe))
                            (_g118905118958_ _g118906118961_)))))
                  (let ()
                    (declare (not safe))
                    (_g118905118958_ _g118906118961_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118904119134_ _L118890_))))
                                         (___kont128630128631_
                                          (lambda (_L118841_ _L118842_)
                                            (let ((__tmp129169
                                                   (let ((__tmp129170
                                                          (let ((__tmp129171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129172
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self118603_ _L118841_))))
                           (declare (not safe))
                           (cons __tmp129172 '()))))
                    (declare (not safe))
                    (cons _L118842_ __tmp129171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129170
                                                           _bind118747_))))
                                              (declare (not safe))
                                              (_lp118744_
                                               _rest118767_
                                               __tmp129169)))))
                                     (let* ((___match128697128698_
                                             (lambda (_e118801118866_
                                                      _hd118800118869_
                                                      _tl118799118871_
                                                      _e118804118874_
                                                      _hd118803118877_
                                                      _tl118802118879_
                                                      _e118807118882_
                                                      _hd118806118885_
                                                      _tl118805118887_)
                                               (let ((_L118890_
                                                      _hd118806118885_)
                                                     (_L118891_
                                                      _hd118803118877_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118891_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L118890_)))
                                                     (___kont128628128629_
                                                      _L118890_
                                                      _L118891_)
                                                     (___kont128630128631_
                                                      _hd118806118885_
                                                      _hd118800118869_)))))
                                            (___match128675128676_
                                             (lambda (_e118790119142_
                                                      _hd118789119145_
                                                      _tl118788119147_
                                                      _e118793119150_
                                                      _hd118792119153_
                                                      _tl118791119155_
                                                      _e118796119158_
                                                      _hd118795119161_
                                                      _tl118794119163_)
                                               (let ((_L119166_
                                                      _hd118795119161_)
                                                     (_L119167_
                                                      _hd118792119153_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119167_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L119166_)))
                                                     (___kont128626128627_
                                                      _L119166_
                                                      _L119167_)
                                                     (___match128697128698_
                                                      _e118790119142_
                                                      _hd118789119145_
                                                      _tl118788119147_
                                                      _e118793119150_
                                                      _hd118792119153_
                                                      _tl118791119155_
                                                      _e118796119158_
                                                      _hd118795119161_
                                                      _tl118794119163_)))))
                                            (___match128653128654_
                                             (lambda (_e118779119314_
                                                      _hd118778119317_
                                                      _tl118777119319_
                                                      _e118782119322_
                                                      _hd118781119325_
                                                      _tl118780119327_
                                                      _e118785119330_
                                                      _hd118784119333_
                                                      _tl118783119335_)
                                               (let ((_L119338_
                                                      _hd118784119333_)
                                                     (_L119339_
                                                      _hd118781119325_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119339_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L119338_)))
                                                     (___kont128624128625_
                                                      _L119338_
                                                      _L119339_)
                                                     (___match128675128676_
                                                      _e118779119314_
                                                      _hd118778119317_
                                                      _tl118777119319_
                                                      _e118782119322_
                                                      _hd118781119325_
                                                      _tl118780119327_
                                                      _e118785119330_
                                                      _hd118784119333_
                                                      _tl118783119335_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128622128623_))
                                           (let ((_e118779119314_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128622128623_))))
                                             (let ((_tl118777119319_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e118779119314_)))
                                                   (_hd118778119317_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e118779119314_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd118778119317_))
                                                   (let ((_e118782119322_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd118778119317_))))
                                                     (let ((_tl118780119327_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e118782119322_)))
                                                           (_hd118781119325_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e118782119322_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl118780119327_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl118777119319_))
                       (let ((_e118785119330_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118777119319_))))
                         (let ((_tl118783119335_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118785119330_)))
                               (_hd118784119333_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118785119330_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118783119335_))
                               (___match128653128654_
                                _e118779119314_
                                _hd118778119317_
                                _tl118777119319_
                                _e118782119322_
                                _hd118781119325_
                                _tl118780119327_
                                _e118785119330_
                                _hd118784119333_
                                _tl118783119335_)
                               (let ()
                                 (declare (not safe))
                                 (_g118773118820_)))))
                       (let () (declare (not safe)) (_g118773118820_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl118777119319_))
                       (let ((_e118815118833_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118777119319_))))
                         (let ((_tl118813118838_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118815118833_)))
                               (_hd118814118836_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118815118833_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118813118838_))
                               (___kont128630128631_
                                _hd118814118836_
                                _hd118778119317_)
                               (let ()
                                 (declare (not safe))
                                 (_g118773118820_)))))
                       (let () (declare (not safe)) (_g118773118820_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl118777119319_))
                                                       (let ((_e118815118833_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl118777119319_))))
                 (let ((_tl118813118838_
                        (let () (declare (not safe)) (##cdr _e118815118833_)))
                       (_hd118814118836_
                        (let () (declare (not safe)) (##car _e118815118833_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl118813118838_))
                       (___kont128630128631_ _hd118814118836_ _hd118778119317_)
                       (let () (declare (not safe)) (_g118773118820_)))))
               (let () (declare (not safe)) (_g118773118820_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g118773118820_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest118748118756_))
                             (let ((_hd118753119434_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest118748118756_)))
                                   (_tl118754119436_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest118748118756_))))
                               (let* ((_hd119439_ _hd118753119434_)
                                      (_rest119441_ _tl118754119436_))
                                 (declare (not safe))
                                 (_K118752119431_ _rest119441_ _hd119439_)))
                             (let ()
                               (declare (not safe))
                               (_else118750118764_))))))))
          (let* ((___stx128714128715_ _stx118604_)
                 (_g118610118637_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128714128715_)))))
            (let ((___kont128716128717_
                   (lambda (_L118697_ _L118698_ _L118699_)
                     (let ((__tmp129174
                            (lambda ()
                              (let ((_hd118736_
                                     (let ((__tmp129175
                                            (let ((__tmp129176
                                                   (lambda (_g118728118731_
                                                            _g118729118733_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g118728118731_
                                                             _g118729118733_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129176
                                                      '()
                                                      _L118698_))))
                                       (declare (not safe))
                                       (_compile-bindings118607_ __tmp129175)))
                                    (_body118737_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self118603_
                                        _L118697_))))
                                (let ((__tmp129177
                                       (let ((__tmp129178
                                              (let ((__tmp129179
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body118737_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd118736_
                                                      __tmp129179))))
                                         (declare (not safe))
                                         (cons _L118699_ __tmp129178))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp129177
                                   _stx118604_)))))
                           (__tmp129173
                            (let ((__obj128789
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128789)
                              __obj128789)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129174
                        gx#current-expander-context
                        __tmp129173))))
                  (___kont128720128721_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self118603_ _stx118604_)))))
              (let ((___match128741128742_
                     (lambda (_e118617118649_
                              _hd118616118652_
                              _tl118615118654_
                              _e118620118657_
                              _hd118619118660_
                              _tl118618118662_
                              ___splice128718128719_
                              _target118621118665_
                              _tl118623118667_)
                       (letrec ((_loop118624118670_
                                 (lambda (_hd118622118673_ _bind118628118675_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd118622118673_))
                                       (let ((_e118625118678_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd118622118673_))))
                                         (let ((_lp-tl118627118683_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e118625118678_)))
                                               (_lp-hd118626118681_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e118625118678_))))
                                           (let ((__tmp129182
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd118626118681_
                                                          _bind118628118675_))))
                                             (declare (not safe))
                                             (_loop118624118670_
                                              _lp-tl118627118683_
                                              __tmp129182))))
                                       (let ((_bind118629118686_
                                              (reverse _bind118628118675_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl118618118662_))
                                             (let ((_e118632118689_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl118618118662_))))
                                               (let ((_tl118630118694_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e118632118689_)))
                                                     (_hd118631118692_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e118632118689_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl118630118694_))
                                                     (let ((_L118697_
                                                            _hd118631118692_)
                                                           (_L118698_
                                                            _bind118629118686_)
                                                           (_L118699_
                                                            _hd118616118652_))
                                                       (if (let ((__tmp129180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129181
                                 (lambda (_g118720118723_ _g118721118725_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g118720118723_ _g118721118725_)))))
                            (declare (not safe))
                            (foldr1 __tmp129181 '() _L118698_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129180))
                   (___kont128716128717_ _L118697_ _L118698_ _L118699_)
                   (___kont128720128721_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128720128721_))))
                                             (___kont128720128721_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop118624118670_ _target118621118665_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128714128715_))
                    (let ((_e118617118649_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128714128715_))))
                      (let ((_tl118615118654_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118617118649_)))
                            (_hd118616118652_
                             (let ()
                               (declare (not safe))
                               (##car _e118617118649_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118615118654_))
                            (let ((_e118620118657_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118615118654_))))
                              (let ((_tl118618118662_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118620118657_)))
                                    (_hd118619118660_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118620118657_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd118619118660_))
                                    (let ((___splice128718128719_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd118619118660_
                                              '0))))
                                      (let ((_tl118623118667_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128718128719_
                                                '1)))
                                            (_target118621118665_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128718128719_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118623118667_))
                                            (___match128741128742_
                                             _e118617118649_
                                             _hd118616118652_
                                             _tl118615118654_
                                             _e118620118657_
                                             _hd118619118660_
                                             _tl118618118662_
                                             ___splice128718128719_
                                             _target118621118665_
                                             _tl118623118667_)
                                            (___kont128720128721_))))
                                    (___kont128720128721_))))
                            (___kont128720128721_))))
                    (___kont128720128721_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind118521_)
        (let* ((___stx128744128745_ _bind118521_)
               (_g118524118541_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128744128745_)))))
          (let ((___kont128746128747_
                 (lambda (_L118577_ _L118578_)
                   (if (let () (declare (not safe)) (gx#identifier? _L118578_))
                       (let ((_$e118594_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L118577_))))
                         (if _$e118594_
                             _$e118594_
                             (let ((_$e118597_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L118577_))))
                               (if _$e118597_
                                   _$e118597_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L118577_))))))
                       '#f)))
                (___kont128748128749_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128744128745_))
                (let ((_e118530118553_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128744128745_))))
                  (let ((_tl118528118558_
                         (let () (declare (not safe)) (##cdr _e118530118553_)))
                        (_hd118529118556_
                         (let ()
                           (declare (not safe))
                           (##car _e118530118553_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd118529118556_))
                        (let ((_e118533118561_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd118529118556_))))
                          (let ((_tl118531118566_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118533118561_)))
                                (_hd118532118564_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118533118561_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl118531118566_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl118528118558_))
                                    (let ((_e118536118569_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl118528118558_))))
                                      (let ((_tl118534118574_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e118536118569_)))
                                            (_hd118535118572_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e118536118569_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118534118574_))
                                            (___kont128746128747_
                                             _hd118535118572_
                                             _hd118532118564_)
                                            (___kont128748128749_))))
                                    (___kont128748128749_))
                                (___kont128748128749_))))
                        (___kont128748128749_))))
                (___kont128748128749_))))))))
