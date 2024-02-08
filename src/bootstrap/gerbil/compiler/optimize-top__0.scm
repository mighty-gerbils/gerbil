(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1707384298)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl226845_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp233132 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl226845_ __tmp233132))
           (let ()
             (declare (not safe))
             (table-set! _tbl226845_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226845_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226845_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226845_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl226845_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx226828_ . _args226830_)
        (let ((__tmp233134
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
              (__tmp233133 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp233134
           gxc#current-compile-methods
           __tmp233133))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl226825_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp233135 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl226825_ __tmp233135))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226825_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226825_ '%#call gxc#basic-expression-type-call%))
           _tbl226825_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx226808_ . _args226810_)
        (let ((__tmp233137
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
              (__tmp233136 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp233137
           gxc#current-compile-methods
           __tmp233136))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl226805_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp233138 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl226805_ __tmp233138))
           (let ()
             (declare (not safe))
             (table-set! _tbl226805_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226805_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226805_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226805_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226805_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226805_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226805_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226805_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226805_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226805_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226805_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226805_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl226805_ '%#set! gxc#collect-body-setq%))
           _tbl226805_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx226788_ . _args226790_)
        (let ((__tmp233140
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
              (__tmp233139 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp233140
           gxc#current-compile-methods
           __tmp233139))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl226785_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp233141 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl226785_ __tmp233141))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226785_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226785_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226785_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226785_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226785_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226785_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226785_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226785_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl226785_ '%#ref gxc#basic-expression-type-ref%))
           _tbl226785_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx226768_ . _args226770_)
        (let ((__tmp233143
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
              (__tmp233142 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp233143
           gxc#current-compile-methods
           __tmp233142))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl226765_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp233144 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl226765_ __tmp233144))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226765_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226765_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226765_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl226765_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl226765_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx226748_ . _args226750_)
        (let ((__tmp233146
               (lambda ()
                 (declare (not safe))
                 (if (null? _args226750_)
                     (gxc#compile-e__0 _stx226748_)
                     (let ((_arg1226755_ (car _args226750_))
                           (_rest226757_ (cdr _args226750_)))
                       (if (null? _rest226757_)
                           (gxc#compile-e__1 _stx226748_ _arg1226755_)
                           (let ((_arg2226760_ (car _rest226757_))
                                 (_rest226762_ (cdr _rest226757_)))
                             (if (null? _rest226762_)
                                 (gxc#compile-e__2
                                  _stx226748_
                                  _arg1226755_
                                  _arg2226760_)
                                 (apply gxc#compile-e
                                        _stx226748_
                                        _arg1226755_
                                        _arg2226760_
                                        _rest226762_))))))))
              (__tmp233145 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp233146
           gxc#current-compile-methods
           __tmp233145))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx226651_)
        (let* ((___stx231052231053_ _stx226651_)
               (_g226654226674_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231052231053_)))))
          (let ((___kont231054231055_
                 (lambda (_L226718_ _L226719_)
                   (let ((_sym226737_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L226719_))))
                     (if (let ((__tmp233147 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp233147 _sym226737_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym226737_))
                         (let ((_type226738226740_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L226718_))))
                           (if _type226738226740_
                               (let ((_type226743_ _type226738226740_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym226737_
                                  _type226743_))
                               '#f))))))
                (___kont231056231057_ (lambda () '#!void)))
            (let ((___match231085231086_
                   (lambda (_e226660226686_
                            _hd226659226689_
                            _tl226658226691_
                            _e226663226694_
                            _hd226662226697_
                            _tl226661226699_
                            _e226666226702_
                            _hd226665226705_
                            _tl226664226707_
                            _e226669226710_
                            _hd226668226713_
                            _tl226667226715_)
                     (let ((_L226718_ _hd226668226713_)
                           (_L226719_ _hd226665226705_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L226719_))
                           (___kont231054231055_ _L226718_ _L226719_)
                           (___kont231056231057_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx231052231053_))
                  (let ((_e226660226686_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx231052231053_))))
                    (let ((_tl226658226691_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226660226686_)))
                          (_hd226659226689_
                           (let ()
                             (declare (not safe))
                             (##car _e226660226686_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl226658226691_))
                          (let ((_e226663226694_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl226658226691_))))
                            (let ((_tl226661226699_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226663226694_)))
                                  (_hd226662226697_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226663226694_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd226662226697_))
                                  (let ((_e226666226702_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd226662226697_))))
                                    (let ((_tl226664226707_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226666226702_)))
                                          (_hd226665226705_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226666226702_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl226664226707_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl226661226699_))
                                              (let ((_e226669226710_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl226661226699_))))
                                                (let ((_tl226667226715_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e226669226710_)))
                                                      (_hd226668226713_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e226669226710_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl226667226715_))
                                                      (___match231085231086_
                                                       _e226660226686_
                                                       _hd226659226689_
                                                       _tl226658226691_
                                                       _e226663226694_
                                                       _hd226662226697_
                                                       _tl226661226699_
                                                       _e226666226702_
                                                       _hd226665226705_
                                                       _tl226664226707_
                                                       _e226669226710_
                                                       _hd226668226713_
                                                       _tl226667226715_)
                                                      (___kont231056231057_))))
                                              (___kont231056231057_))
                                          (___kont231056231057_))))
                                  (___kont231056231057_))))
                          (___kont231056231057_))))
                  (___kont231056231057_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx226507_)
        (let* ((___stx231088231089_ _stx226507_)
               (_g226510226541_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231088231089_)))))
          (let ((___kont231090231091_
                 (lambda (_L226623_ _L226624_)
                   (let ((_sym226640_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L226624_))))
                     (if (let ((__tmp233148 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp233148 _sym226640_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym226640_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym226640_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym226640_))
                             (let ((_type226641226643_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L226623_))))
                               (if _type226641226643_
                                   (let ((_type226646_ _type226641226643_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym226640_
                                      _type226646_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L226623_)))))
                (___kont231092231093_
                 (lambda (_L226570_ _L226571_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L226570_)))))
            (let ((___match231121231122_
                   (lambda (_e226516226591_
                            _hd226515226594_
                            _tl226514226596_
                            _e226519226599_
                            _hd226518226602_
                            _tl226517226604_
                            _e226522226607_
                            _hd226521226610_
                            _tl226520226612_
                            _e226525226615_
                            _hd226524226618_
                            _tl226523226620_)
                     (let ((_L226623_ _hd226524226618_)
                           (_L226624_ _hd226521226610_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L226624_))
                           (___kont231090231091_ _L226623_ _L226624_)
                           (___kont231092231093_
                            _hd226524226618_
                            _hd226518226602_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx231088231089_))
                  (let ((_e226516226591_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx231088231089_))))
                    (let ((_tl226514226596_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226516226591_)))
                          (_hd226515226594_
                           (let ()
                             (declare (not safe))
                             (##car _e226516226591_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl226514226596_))
                          (let ((_e226519226599_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl226514226596_))))
                            (let ((_tl226517226604_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226519226599_)))
                                  (_hd226518226602_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226519226599_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd226518226602_))
                                  (let ((_e226522226607_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd226518226602_))))
                                    (let ((_tl226520226612_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226522226607_)))
                                          (_hd226521226610_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226522226607_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl226520226612_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl226517226604_))
                                              (let ((_e226525226615_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl226517226604_))))
                                                (let ((_tl226523226620_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e226525226615_)))
                                                      (_hd226524226618_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e226525226615_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl226523226620_))
                                                      (___match231121231122_
                                                       _e226516226591_
                                                       _hd226515226594_
                                                       _tl226514226596_
                                                       _e226519226599_
                                                       _hd226518226602_
                                                       _tl226517226604_
                                                       _e226522226607_
                                                       _hd226521226610_
                                                       _tl226520226612_
                                                       _e226525226615_
                                                       _hd226524226618_
                                                       _tl226523226620_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g226510226541_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g226510226541_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl226517226604_))
                                              (let ((_e226536226562_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl226517226604_))))
                                                (let ((_tl226534226567_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e226536226562_)))
                                                      (_hd226535226565_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e226536226562_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl226534226567_))
                                                      (___kont231092231093_
                                                       _hd226535226565_
                                                       _hd226518226602_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g226510226541_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g226510226541_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl226517226604_))
                                      (let ((_e226536226562_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl226517226604_))))
                                        (let ((_tl226534226567_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226536226562_)))
                                              (_hd226535226565_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226536226562_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl226534226567_))
                                              (___kont231092231093_
                                               _hd226535226565_
                                               _hd226518226602_)
                                              (let ()
                                                (declare (not safe))
                                                (_g226510226541_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g226510226541_))))))
                          (let () (declare (not safe)) (_g226510226541_)))))
                  (let () (declare (not safe)) (_g226510226541_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx226292_)
        (letrec ((_collect-e226294_
                  (lambda (_hd226451_ _expr226452_)
                    (let* ((___stx231144231145_ _hd226451_)
                           (_g226455226465_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx231144231145_)))))
                      (let ((___kont231146231147_
                             (lambda (_L226485_)
                               (let ((_sym226496_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L226485_))))
                                 (if (let ((__tmp233149
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp233149 _sym226496_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym226496_))
                                     (let ((_type226497226499_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr226452_))))
                                       (if _type226497226499_
                                           (let ((_type226502_
                                                  _type226497226499_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym226496_
                                              _type226502_
                                              '#t))
                                           '#f))))))
                            (___kont231148231149_ (lambda () '#!void)))
                        (let ((___match231157231158_
                               (lambda (_e226460226477_
                                        _hd226459226480_
                                        _tl226458226482_)
                                 (let ((_L226485_ _hd226459226480_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L226485_))
                                       (___kont231146231147_ _L226485_)
                                       (___kont231148231149_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx231144231145_))
                              (let ((_e226460226477_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx231144231145_))))
                                (let ((_tl226458226482_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226460226477_)))
                                      (_hd226459226480_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226460226477_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226458226482_))
                                      (___match231157231158_
                                       _e226460226477_
                                       _hd226459226480_
                                       _tl226458226482_)
                                      (___kont231148231149_))))
                              (___kont231148231149_))))))))
          (let* ((_g226296226331_
                  (lambda (_g226297226328_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g226297226328_))))
                 (_g226295226448_
                  (lambda (_g226297226334_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g226297226334_))
                        (let ((_e226303226336_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g226297226334_))))
                          (let ((_hd226302226339_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e226303226336_)))
                                (_tl226301226341_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e226303226336_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl226301226341_))
                                (let ((_e226306226344_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl226301226341_))))
                                  (let ((_hd226305226347_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e226306226344_)))
                                        (_tl226304226349_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e226306226344_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd226305226347_))
                                        (let ((_g233150_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd226305226347_
                                                  '0))))
                                          (begin
                                            (let ((_g233151_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g233150_)
                                                         (##vector-length
                                                          _g233150_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g233151_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g233151_)))
                                            (let ((_target226307226352_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g233150_
                                                      0)))
                                                  (_tl226309226354_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g233150_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl226309226354_))
                                                  (letrec ((_loop226310226357_
                                                            (lambda (_hd226308226360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr226314226362_
                             _hd226315226364_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd226308226360_))
                          (let ((_e226311226367_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd226308226360_))))
                            (let ((_lp-hd226312226370_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226311226367_)))
                                  (_lp-tl226313226372_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226311226367_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd226312226370_))
                                  (let ((_e226320226375_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd226312226370_))))
                                    (let ((_hd226319226378_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226320226375_)))
                                          (_tl226318226380_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226320226375_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl226318226380_))
                                          (let ((_e226323226383_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl226318226380_))))
                                            (let ((_hd226322226386_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e226323226383_)))
                                                  (_tl226321226388_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e226323226383_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl226321226388_))
                                                  (let ((__tmp233156
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd226322226386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr226314226362_)))
                (__tmp233155
                 (let ()
                   (declare (not safe))
                   (cons _hd226319226378_ _hd226315226364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop226310226357_
                                                     _lp-tl226313226372_
                                                     __tmp233156
                                                     __tmp233155))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226296226331_
                                                     _g226297226334_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g226296226331_
                                             _g226297226334_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226296226331_ _g226297226334_)))))
                          (let ((_expr226316226391_
                                 (reverse _expr226314226362_))
                                (_hd226317226393_ (reverse _hd226315226364_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl226304226349_))
                                (let ((_e226326226396_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl226304226349_))))
                                  (let ((_hd226325226399_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e226326226396_)))
                                        (_tl226324226401_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e226326226396_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl226324226401_))
                                        ((lambda (_L226404_
                                                  _L226405_
                                                  _L226406_)
                                           (for-each
                                            _collect-e226294_
                                            (let ((__tmp233152
                                                   (lambda (_g226426226429_
                                                            _g226427226431_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g226426226429_
                                                             _g226427226431_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp233152
                                                      '()
                                                      _L226406_))
                                            (let ((__tmp233153
                                                   (lambda (_g226433226436_
                                                            _g226434226438_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g226433226436_
                                                             _g226434226438_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp233153
                                                      '()
                                                      _L226405_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp233154
                                                   (lambda (_g226440226443_
                                                            _g226441226445_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g226440226443_
                                                             _g226441226445_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp233154
                                                      '()
                                                      _L226405_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L226404_)))
                                         _hd226325226399_
                                         _expr226316226391_
                                         _hd226317226393_)
                                        (let ()
                                          (declare (not safe))
                                          (_g226296226331_ _g226297226334_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g226296226331_ _g226297226334_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop226310226357_
                                                       _target226307226352_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226296226331_
                                                     _g226297226334_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g226296226331_ _g226297226334_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g226296226331_ _g226297226334_)))))
                        (let ()
                          (declare (not safe))
                          (_g226296226331_ _g226297226334_))))))
            (declare (not safe))
            (_g226295226448_ _stx226292_)))))
    (define gxc#collect-type-call%
      (lambda (_stx225784_)
        (let* ((___stx231160231161_ _stx225784_)
               (_g225788225903_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231160231161_)))))
          (let ((___kont231162231163_
                 (lambda (_L226242_ _L226243_ _L226244_ _L226245_ _L226246_)
                   (let ((__tmp233160
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L226245_)))
                         (__tmp233159
                          (let () (declare (not safe)) (gx#stx-e _L226244_)))
                         (__tmp233158
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L226243_)))
                         (__tmp233157
                          (let () (declare (not safe)) (gx#stx-e _L226242_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp233160
                      __tmp233159
                      __tmp233158
                      __tmp233157))))
                (___kont231164231165_
                 (lambda (_L226070_ _L226071_ _L226072_ _L226073_)
                   (let ((__tmp233163
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L226072_)))
                         (__tmp233162
                          (let () (declare (not safe)) (gx#stx-e _L226071_)))
                         (__tmp233161
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L226070_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp233163
                      __tmp233162
                      __tmp233161
                      '#f))))
                (___kont231166231167_
                 (lambda (_L225940_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp233164
                           (lambda (_g225953225956_ _g225954225958_)
                             (let ()
                               (declare (not safe))
                               (cons _g225953225956_ _g225954225958_)))))
                      (declare (not safe))
                      (foldr1 __tmp233164 '() _L225940_))))))
            (let* ((___match231417231418_
                    (lambda (_e225889225908_
                             _hd225888225911_
                             _tl225887225913_
                             ___splice231168231169_
                             _target225890225916_
                             _tl225892225918_)
                      (letrec ((_loop225893225921_
                                (lambda (_hd225891225924_ _expr225897225926_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd225891225924_))
                                      (let ((_e225894225929_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd225891225924_))))
                                        (let ((_lp-tl225896225934_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e225894225929_)))
                                              (_lp-hd225895225932_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e225894225929_))))
                                          (let ((__tmp233165
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd225895225932_
                                                         _expr225897225926_))))
                                            (declare (not safe))
                                            (_loop225893225921_
                                             _lp-tl225896225934_
                                             __tmp233165))))
                                      (let ((_expr225898225937_
                                             (reverse _expr225897225926_)))
                                        (___kont231166231167_
                                         _expr225898225937_))))))
                        (let ()
                          (declare (not safe))
                          (_loop225893225921_ _target225890225916_ '())))))
                   (___match231297231298_
                    (lambda (_e225797226114_
                             _hd225796226117_
                             _tl225795226119_
                             _e225800226122_
                             _hd225799226125_
                             _tl225798226127_
                             _e225803226130_
                             _hd225802226133_
                             _tl225801226135_
                             _e225806226138_
                             _hd225805226141_
                             _tl225804226143_
                             _e225809226146_
                             _hd225808226149_
                             _tl225807226151_
                             _e225812226154_
                             _hd225811226157_
                             _tl225810226159_
                             _e225815226162_
                             _hd225814226165_
                             _tl225813226167_
                             _e225818226170_
                             _hd225817226173_
                             _tl225816226175_
                             _e225821226178_
                             _hd225820226181_
                             _tl225819226183_
                             _e225824226186_
                             _hd225823226189_
                             _tl225822226191_
                             _e225827226194_
                             _hd225826226197_
                             _tl225825226199_
                             _e225830226202_
                             _hd225829226205_
                             _tl225828226207_
                             _e225833226210_
                             _hd225832226213_
                             _tl225831226215_
                             _e225836226218_
                             _hd225835226221_
                             _tl225834226223_
                             _e225839226226_
                             _hd225838226229_
                             _tl225837226231_
                             _e225842226234_
                             _hd225841226237_
                             _tl225840226239_)
                      (let ((_L226242_ _hd225841226237_)
                            (_L226243_ _hd225832226213_)
                            (_L226244_ _hd225823226189_)
                            (_L226245_ _hd225814226165_)
                            (_L226246_ _hd225805226141_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L226246_
                               'bind-method!))
                            (___kont231162231163_
                             _L226242_
                             _L226243_
                             _L226244_
                             _L226245_
                             _L226246_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl225795226119_))
                                (let ((___splice231168231169_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl225795226119_
                                          '0))))
                                  (let ((_tl225892225918_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice231168231169_
                                            '1)))
                                        (_target225890225916_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice231168231169_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl225892225918_))
                                        (___match231417231418_
                                         _e225797226114_
                                         _hd225796226117_
                                         _tl225795226119_
                                         ___splice231168231169_
                                         _target225890225916_
                                         _tl225892225918_)
                                        (let ()
                                          (declare (not safe))
                                          (_g225788225903_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g225788225903_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx231160231161_))
                  (let ((_e225797226114_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx231160231161_))))
                    (let ((_tl225795226119_
                           (let ()
                             (declare (not safe))
                             (##cdr _e225797226114_)))
                          (_hd225796226117_
                           (let ()
                             (declare (not safe))
                             (##car _e225797226114_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl225795226119_))
                          (let ((_e225800226122_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl225795226119_))))
                            (let ((_tl225798226127_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e225800226122_)))
                                  (_hd225799226125_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e225800226122_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd225799226125_))
                                  (let ((_e225803226130_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd225799226125_))))
                                    (let ((_tl225801226135_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e225803226130_)))
                                          (_hd225802226133_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e225803226130_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd225802226133_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd225802226133_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl225801226135_))
                                                  (let ((_e225806226138_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl225801226135_))))
                                                    (let ((_tl225804226143_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e225806226138_)))
                                                          (_hd225805226141_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e225806226138_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl225804226143_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl225798226127_))
                      (let ((_e225809226146_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl225798226127_))))
                        (let ((_tl225807226151_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225809226146_)))
                              (_hd225808226149_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225809226146_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd225808226149_))
                              (let ((_e225812226154_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd225808226149_))))
                                (let ((_tl225810226159_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225812226154_)))
                                      (_hd225811226157_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225812226154_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd225811226157_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd225811226157_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl225810226159_))
                                              (let ((_e225815226162_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl225810226159_))))
                                                (let ((_tl225813226167_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e225815226162_)))
                                                      (_hd225814226165_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e225815226162_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225813226167_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl225807226151_))
                                                          (let ((_e225818226170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl225807226151_))))
                    (let ((_tl225816226175_
                           (let ()
                             (declare (not safe))
                             (##cdr _e225818226170_)))
                          (_hd225817226173_
                           (let ()
                             (declare (not safe))
                             (##car _e225818226170_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd225817226173_))
                          (let ((_e225821226178_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd225817226173_))))
                            (let ((_tl225819226183_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e225821226178_)))
                                  (_hd225820226181_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e225821226178_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd225820226181_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd225820226181_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl225819226183_))
                                          (let ((_e225824226186_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl225819226183_))))
                                            (let ((_tl225822226191_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e225824226186_)))
                                                  (_hd225823226189_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e225824226186_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl225822226191_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl225816226175_))
                                                      (let ((_e225827226194_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl225816226175_))))
                (let ((_tl225825226199_
                       (let () (declare (not safe)) (##cdr _e225827226194_)))
                      (_hd225826226197_
                       (let () (declare (not safe)) (##car _e225827226194_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd225826226197_))
                      (let ((_e225830226202_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd225826226197_))))
                        (let ((_tl225828226207_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225830226202_)))
                              (_hd225829226205_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225830226202_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd225829226205_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd225829226205_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl225828226207_))
                                      (let ((_e225833226210_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl225828226207_))))
                                        (let ((_tl225831226215_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e225833226210_)))
                                              (_hd225832226213_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e225833226210_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl225831226215_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl225825226199_))
                                                  (let ((_e225836226218_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl225825226199_))))
                                                    (let ((_tl225834226223_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e225836226218_)))
                                                          (_hd225835226221_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e225836226218_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd225835226221_))
                                                          (let ((_e225839226226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd225835226221_))))
                    (let ((_tl225837226231_
                           (let ()
                             (declare (not safe))
                             (##cdr _e225839226226_)))
                          (_hd225838226229_
                           (let ()
                             (declare (not safe))
                             (##car _e225839226226_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd225838226229_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd225838226229_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl225837226231_))
                                  (let ((_e225842226234_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl225837226231_))))
                                    (let ((_tl225840226239_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e225842226234_)))
                                          (_hd225841226237_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e225842226234_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl225840226239_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl225834226223_))
                                              (___match231297231298_
                                               _e225797226114_
                                               _hd225796226117_
                                               _tl225795226119_
                                               _e225800226122_
                                               _hd225799226125_
                                               _tl225798226127_
                                               _e225803226130_
                                               _hd225802226133_
                                               _tl225801226135_
                                               _e225806226138_
                                               _hd225805226141_
                                               _tl225804226143_
                                               _e225809226146_
                                               _hd225808226149_
                                               _tl225807226151_
                                               _e225812226154_
                                               _hd225811226157_
                                               _tl225810226159_
                                               _e225815226162_
                                               _hd225814226165_
                                               _tl225813226167_
                                               _e225818226170_
                                               _hd225817226173_
                                               _tl225816226175_
                                               _e225821226178_
                                               _hd225820226181_
                                               _tl225819226183_
                                               _e225824226186_
                                               _hd225823226189_
                                               _tl225822226191_
                                               _e225827226194_
                                               _hd225826226197_
                                               _tl225825226199_
                                               _e225830226202_
                                               _hd225829226205_
                                               _tl225828226207_
                                               _e225833226210_
                                               _hd225832226213_
                                               _tl225831226215_
                                               _e225836226218_
                                               _hd225835226221_
                                               _tl225834226223_
                                               _e225839226226_
                                               _hd225838226229_
                                               _tl225837226231_
                                               _e225842226234_
                                               _hd225841226237_
                                               _tl225840226239_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl225795226119_))
                                                  (let ((___splice231168231169_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl225795226119_
                                                            '0))))
                                                    (let ((_tl225892225918_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231168231169_
                                                              '1)))
                                                          (_target225890225916_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231168231169_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl225892225918_))
                                                          (___match231417231418_
                                                           _e225797226114_
                                                           _hd225796226117_
                                                           _tl225795226119_
                                                           ___splice231168231169_
                                                           _target225890225916_
                                                           _tl225892225918_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g225788225903_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g225788225903_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl225795226119_))
                                              (let ((___splice231168231169_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl225795226119_
                                                        '0))))
                                                (let ((_tl225892225918_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231168231169_
                                                          '1)))
                                                      (_target225890225916_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231168231169_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225892225918_))
                                                      (___match231417231418_
                                                       _e225797226114_
                                                       _hd225796226117_
                                                       _tl225795226119_
                                                       ___splice231168231169_
                                                       _target225890225916_
                                                       _tl225892225918_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g225788225903_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g225788225903_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl225795226119_))
                                      (let ((___splice231168231169_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl225795226119_
                                                '0))))
                                        (let ((_tl225892225918_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231168231169_
                                                  '1)))
                                              (_target225890225916_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231168231169_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl225892225918_))
                                              (___match231417231418_
                                               _e225797226114_
                                               _hd225796226117_
                                               _tl225795226119_
                                               ___splice231168231169_
                                               _target225890225916_
                                               _tl225892225918_)
                                              (let ()
                                                (declare (not safe))
                                                (_g225788225903_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225788225903_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl225795226119_))
                                  (let ((___splice231168231169_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl225795226119_
                                            '0))))
                                    (let ((_tl225892225918_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice231168231169_
                                              '1)))
                                          (_target225890225916_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice231168231169_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl225892225918_))
                                          (___match231417231418_
                                           _e225797226114_
                                           _hd225796226117_
                                           _tl225795226119_
                                           ___splice231168231169_
                                           _target225890225916_
                                           _tl225892225918_)
                                          (let ()
                                            (declare (not safe))
                                            (_g225788225903_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g225788225903_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl225795226119_))
                              (let ((___splice231168231169_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl225795226119_
                                        '0))))
                                (let ((_tl225892225918_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice231168231169_
                                          '1)))
                                      (_target225890225916_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice231168231169_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225892225918_))
                                      (___match231417231418_
                                       _e225797226114_
                                       _hd225796226117_
                                       _tl225795226119_
                                       ___splice231168231169_
                                       _target225890225916_
                                       _tl225892225918_)
                                      (let ()
                                        (declare (not safe))
                                        (_g225788225903_)))))
                              (let ()
                                (declare (not safe))
                                (_g225788225903_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl225795226119_))
                      (let ((___splice231168231169_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl225795226119_ '0))))
                        (let ((_tl225892225918_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231168231169_ '1)))
                              (_target225890225916_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231168231169_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl225892225918_))
                              (___match231417231418_
                               _e225797226114_
                               _hd225796226117_
                               _tl225795226119_
                               ___splice231168231169_
                               _target225890225916_
                               _tl225892225918_)
                              (let ()
                                (declare (not safe))
                                (_g225788225903_)))))
                      (let () (declare (not safe)) (_g225788225903_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225825226199_))
                                                      (if (let ((__tmp233166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp233166 'bind-method!))
                  (let ((_L226070_ _hd225832226213_)
                        (_L226071_ _hd225823226189_)
                        (_L226072_ _hd225814226165_)
                        (_L226073_ _hd225805226141_))
                    (___kont231164231165_
                     _L226070_
                     _L226071_
                     _L226072_
                     _L226073_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl225795226119_))
                      (let ((___splice231168231169_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl225795226119_ '0))))
                        (let ((_tl225892225918_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231168231169_ '1)))
                              (_target225890225916_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231168231169_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl225892225918_))
                              (___match231417231418_
                               _e225797226114_
                               _hd225796226117_
                               _tl225795226119_
                               ___splice231168231169_
                               _target225890225916_
                               _tl225892225918_)
                              (let ()
                                (declare (not safe))
                                (_g225788225903_)))))
                      (let () (declare (not safe)) (_g225788225903_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl225795226119_))
                  (let ((___splice231168231169_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl225795226119_ '0))))
                    (let ((_tl225892225918_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice231168231169_ '1)))
                          (_target225890225916_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice231168231169_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl225892225918_))
                          (___match231417231418_
                           _e225797226114_
                           _hd225796226117_
                           _tl225795226119_
                           ___splice231168231169_
                           _target225890225916_
                           _tl225892225918_)
                          (let () (declare (not safe)) (_g225788225903_)))))
                  (let () (declare (not safe)) (_g225788225903_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl225795226119_))
                                                  (let ((___splice231168231169_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl225795226119_
                                                            '0))))
                                                    (let ((_tl225892225918_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231168231169_
                                                              '1)))
                                                          (_target225890225916_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231168231169_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl225892225918_))
                                                          (___match231417231418_
                                                           _e225797226114_
                                                           _hd225796226117_
                                                           _tl225795226119_
                                                           ___splice231168231169_
                                                           _target225890225916_
                                                           _tl225892225918_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g225788225903_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g225788225903_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl225795226119_))
                                          (let ((___splice231168231169_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl225795226119_
                                                    '0))))
                                            (let ((_tl225892225918_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice231168231169_
                                                      '1)))
                                                  (_target225890225916_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice231168231169_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl225892225918_))
                                                  (___match231417231418_
                                                   _e225797226114_
                                                   _hd225796226117_
                                                   _tl225795226119_
                                                   ___splice231168231169_
                                                   _target225890225916_
                                                   _tl225892225918_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g225788225903_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g225788225903_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl225795226119_))
                                      (let ((___splice231168231169_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl225795226119_
                                                '0))))
                                        (let ((_tl225892225918_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231168231169_
                                                  '1)))
                                              (_target225890225916_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231168231169_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl225892225918_))
                                              (___match231417231418_
                                               _e225797226114_
                                               _hd225796226117_
                                               _tl225795226119_
                                               ___splice231168231169_
                                               _target225890225916_
                                               _tl225892225918_)
                                              (let ()
                                                (declare (not safe))
                                                (_g225788225903_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225788225903_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl225795226119_))
                                  (let ((___splice231168231169_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl225795226119_
                                            '0))))
                                    (let ((_tl225892225918_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice231168231169_
                                              '1)))
                                          (_target225890225916_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice231168231169_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl225892225918_))
                                          (___match231417231418_
                                           _e225797226114_
                                           _hd225796226117_
                                           _tl225795226119_
                                           ___splice231168231169_
                                           _target225890225916_
                                           _tl225892225918_)
                                          (let ()
                                            (declare (not safe))
                                            (_g225788225903_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g225788225903_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl225795226119_))
                          (let ((___splice231168231169_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl225795226119_
                                    '0))))
                            (let ((_tl225892225918_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice231168231169_ '1)))
                                  (_target225890225916_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice231168231169_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl225892225918_))
                                  (___match231417231418_
                                   _e225797226114_
                                   _hd225796226117_
                                   _tl225795226119_
                                   ___splice231168231169_
                                   _target225890225916_
                                   _tl225892225918_)
                                  (let ()
                                    (declare (not safe))
                                    (_g225788225903_)))))
                          (let () (declare (not safe)) (_g225788225903_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl225795226119_))
                  (let ((___splice231168231169_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl225795226119_ '0))))
                    (let ((_tl225892225918_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice231168231169_ '1)))
                          (_target225890225916_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice231168231169_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl225892225918_))
                          (___match231417231418_
                           _e225797226114_
                           _hd225796226117_
                           _tl225795226119_
                           ___splice231168231169_
                           _target225890225916_
                           _tl225892225918_)
                          (let () (declare (not safe)) (_g225788225903_)))))
                  (let () (declare (not safe)) (_g225788225903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl225795226119_))
                                                      (let ((___splice231168231169_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl225795226119_ '0))))
                (let ((_tl225892225918_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice231168231169_ '1)))
                      (_target225890225916_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice231168231169_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl225892225918_))
                      (___match231417231418_
                       _e225797226114_
                       _hd225796226117_
                       _tl225795226119_
                       ___splice231168231169_
                       _target225890225916_
                       _tl225892225918_)
                      (let () (declare (not safe)) (_g225788225903_)))))
              (let () (declare (not safe)) (_g225788225903_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl225795226119_))
                                              (let ((___splice231168231169_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl225795226119_
                                                        '0))))
                                                (let ((_tl225892225918_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231168231169_
                                                          '1)))
                                                      (_target225890225916_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231168231169_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225892225918_))
                                                      (___match231417231418_
                                                       _e225797226114_
                                                       _hd225796226117_
                                                       _tl225795226119_
                                                       ___splice231168231169_
                                                       _target225890225916_
                                                       _tl225892225918_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g225788225903_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g225788225903_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl225795226119_))
                                          (let ((___splice231168231169_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl225795226119_
                                                    '0))))
                                            (let ((_tl225892225918_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice231168231169_
                                                      '1)))
                                                  (_target225890225916_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice231168231169_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl225892225918_))
                                                  (___match231417231418_
                                                   _e225797226114_
                                                   _hd225796226117_
                                                   _tl225795226119_
                                                   ___splice231168231169_
                                                   _target225890225916_
                                                   _tl225892225918_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g225788225903_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g225788225903_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl225795226119_))
                                      (let ((___splice231168231169_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl225795226119_
                                                '0))))
                                        (let ((_tl225892225918_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231168231169_
                                                  '1)))
                                              (_target225890225916_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231168231169_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl225892225918_))
                                              (___match231417231418_
                                               _e225797226114_
                                               _hd225796226117_
                                               _tl225795226119_
                                               ___splice231168231169_
                                               _target225890225916_
                                               _tl225892225918_)
                                              (let ()
                                                (declare (not safe))
                                                (_g225788225903_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225788225903_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl225795226119_))
                              (let ((___splice231168231169_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl225795226119_
                                        '0))))
                                (let ((_tl225892225918_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice231168231169_
                                          '1)))
                                      (_target225890225916_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice231168231169_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225892225918_))
                                      (___match231417231418_
                                       _e225797226114_
                                       _hd225796226117_
                                       _tl225795226119_
                                       ___splice231168231169_
                                       _target225890225916_
                                       _tl225892225918_)
                                      (let ()
                                        (declare (not safe))
                                        (_g225788225903_)))))
                              (let ()
                                (declare (not safe))
                                (_g225788225903_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl225795226119_))
                      (let ((___splice231168231169_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl225795226119_ '0))))
                        (let ((_tl225892225918_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231168231169_ '1)))
                              (_target225890225916_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231168231169_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl225892225918_))
                              (___match231417231418_
                               _e225797226114_
                               _hd225796226117_
                               _tl225795226119_
                               ___splice231168231169_
                               _target225890225916_
                               _tl225892225918_)
                              (let ()
                                (declare (not safe))
                                (_g225788225903_)))))
                      (let () (declare (not safe)) (_g225788225903_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl225795226119_))
                  (let ((___splice231168231169_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl225795226119_ '0))))
                    (let ((_tl225892225918_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice231168231169_ '1)))
                          (_target225890225916_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice231168231169_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl225892225918_))
                          (___match231417231418_
                           _e225797226114_
                           _hd225796226117_
                           _tl225795226119_
                           ___splice231168231169_
                           _target225890225916_
                           _tl225892225918_)
                          (let () (declare (not safe)) (_g225788225903_)))))
                  (let () (declare (not safe)) (_g225788225903_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl225795226119_))
                                                  (let ((___splice231168231169_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl225795226119_
                                                            '0))))
                                                    (let ((_tl225892225918_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231168231169_
                                                              '1)))
                                                          (_target225890225916_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231168231169_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl225892225918_))
                                                          (___match231417231418_
                                                           _e225797226114_
                                                           _hd225796226117_
                                                           _tl225795226119_
                                                           ___splice231168231169_
                                                           _target225890225916_
                                                           _tl225892225918_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g225788225903_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g225788225903_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl225795226119_))
                                              (let ((___splice231168231169_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl225795226119_
                                                        '0))))
                                                (let ((_tl225892225918_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231168231169_
                                                          '1)))
                                                      (_target225890225916_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231168231169_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225892225918_))
                                                      (___match231417231418_
                                                       _e225797226114_
                                                       _hd225796226117_
                                                       _tl225795226119_
                                                       ___splice231168231169_
                                                       _target225890225916_
                                                       _tl225892225918_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g225788225903_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g225788225903_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl225795226119_))
                                          (let ((___splice231168231169_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl225795226119_
                                                    '0))))
                                            (let ((_tl225892225918_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice231168231169_
                                                      '1)))
                                                  (_target225890225916_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice231168231169_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl225892225918_))
                                                  (___match231417231418_
                                                   _e225797226114_
                                                   _hd225796226117_
                                                   _tl225795226119_
                                                   ___splice231168231169_
                                                   _target225890225916_
                                                   _tl225892225918_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g225788225903_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g225788225903_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl225795226119_))
                                  (let ((___splice231168231169_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl225795226119_
                                            '0))))
                                    (let ((_tl225892225918_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice231168231169_
                                              '1)))
                                          (_target225890225916_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice231168231169_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl225892225918_))
                                          (___match231417231418_
                                           _e225797226114_
                                           _hd225796226117_
                                           _tl225795226119_
                                           ___splice231168231169_
                                           _target225890225916_
                                           _tl225892225918_)
                                          (let ()
                                            (declare (not safe))
                                            (_g225788225903_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g225788225903_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl225795226119_))
                          (let ((___splice231168231169_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl225795226119_
                                    '0))))
                            (let ((_tl225892225918_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice231168231169_ '1)))
                                  (_target225890225916_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice231168231169_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl225892225918_))
                                  (___match231417231418_
                                   _e225797226114_
                                   _hd225796226117_
                                   _tl225795226119_
                                   ___splice231168231169_
                                   _target225890225916_
                                   _tl225892225918_)
                                  (let ()
                                    (declare (not safe))
                                    (_g225788225903_)))))
                          (let () (declare (not safe)) (_g225788225903_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl225795226119_))
                      (let ((___splice231168231169_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl225795226119_ '0))))
                        (let ((_tl225892225918_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231168231169_ '1)))
                              (_target225890225916_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice231168231169_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl225892225918_))
                              (___match231417231418_
                               _e225797226114_
                               _hd225796226117_
                               _tl225795226119_
                               ___splice231168231169_
                               _target225890225916_
                               _tl225892225918_)
                              (let ()
                                (declare (not safe))
                                (_g225788225903_)))))
                      (let () (declare (not safe)) (_g225788225903_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl225795226119_))
                                                      (let ((___splice231168231169_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl225795226119_ '0))))
                (let ((_tl225892225918_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice231168231169_ '1)))
                      (_target225890225916_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice231168231169_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl225892225918_))
                      (___match231417231418_
                       _e225797226114_
                       _hd225796226117_
                       _tl225795226119_
                       ___splice231168231169_
                       _target225890225916_
                       _tl225892225918_)
                      (let () (declare (not safe)) (_g225788225903_)))))
              (let () (declare (not safe)) (_g225788225903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl225795226119_))
                                                  (let ((___splice231168231169_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl225795226119_
                                                            '0))))
                                                    (let ((_tl225892225918_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231168231169_
                                                              '1)))
                                                          (_target225890225916_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231168231169_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl225892225918_))
                                                          (___match231417231418_
                                                           _e225797226114_
                                                           _hd225796226117_
                                                           _tl225795226119_
                                                           ___splice231168231169_
                                                           _target225890225916_
                                                           _tl225892225918_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g225788225903_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g225788225903_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl225795226119_))
                                              (let ((___splice231168231169_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl225795226119_
                                                        '0))))
                                                (let ((_tl225892225918_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231168231169_
                                                          '1)))
                                                      (_target225890225916_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice231168231169_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225892225918_))
                                                      (___match231417231418_
                                                       _e225797226114_
                                                       _hd225796226117_
                                                       _tl225795226119_
                                                       ___splice231168231169_
                                                       _target225890225916_
                                                       _tl225892225918_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g225788225903_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g225788225903_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl225795226119_))
                                      (let ((___splice231168231169_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl225795226119_
                                                '0))))
                                        (let ((_tl225892225918_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231168231169_
                                                  '1)))
                                              (_target225890225916_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice231168231169_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl225892225918_))
                                              (___match231417231418_
                                               _e225797226114_
                                               _hd225796226117_
                                               _tl225795226119_
                                               ___splice231168231169_
                                               _target225890225916_
                                               _tl225892225918_)
                                              (let ()
                                                (declare (not safe))
                                                (_g225788225903_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225788225903_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl225795226119_))
                              (let ((___splice231168231169_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl225795226119_
                                        '0))))
                                (let ((_tl225892225918_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice231168231169_
                                          '1)))
                                      (_target225890225916_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice231168231169_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225892225918_))
                                      (___match231417231418_
                                       _e225797226114_
                                       _hd225796226117_
                                       _tl225795226119_
                                       ___splice231168231169_
                                       _target225890225916_
                                       _tl225892225918_)
                                      (let ()
                                        (declare (not safe))
                                        (_g225788225903_)))))
                              (let ()
                                (declare (not safe))
                                (_g225788225903_))))))
                  (let () (declare (not safe)) (_g225788225903_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx225724_)
        (let* ((___stx231420231421_ _stx225724_)
               (_g225727225740_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231420231421_)))))
          (let ((___kont231422231423_
                 (lambda (_L225768_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L225768_))))
                (___kont231424231425_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx231420231421_))
                (let ((_e225732225752_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx231420231421_))))
                  (let ((_tl225730225757_
                         (let () (declare (not safe)) (##cdr _e225732225752_)))
                        (_hd225731225755_
                         (let ()
                           (declare (not safe))
                           (##car _e225732225752_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl225730225757_))
                        (let ((_e225735225760_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl225730225757_))))
                          (let ((_tl225733225765_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e225735225760_)))
                                (_hd225734225763_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e225735225760_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl225733225765_))
                                (___kont231422231423_ _hd225734225763_)
                                (___kont231424231425_))))
                        (___kont231424231425_))))
                (___kont231424231425_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx225604_)
        (let* ((_g225606225623_
                (lambda (_g225607225620_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g225607225620_))))
               (_g225605225721_
                (lambda (_g225607225626_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g225607225626_))
                      (let ((_e225612225628_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g225607225626_))))
                        (let ((_hd225611225631_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225612225628_)))
                              (_tl225610225633_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225612225628_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225610225633_))
                              (let ((_e225615225636_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl225610225633_))))
                                (let ((_hd225614225639_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225615225636_)))
                                      (_tl225613225641_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225615225636_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl225613225641_))
                                      (let ((_e225618225644_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl225613225641_))))
                                        (let ((_hd225617225647_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e225618225644_)))
                                              (_tl225616225649_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e225618225644_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl225616225649_))
                                              ((lambda (_L225652_ _L225653_)
                                                 (let* ((___stx231442231443_
                                                         _L225653_)
                                                        (_g225669225680_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx231442231443_)))))
                                                   (let ((___kont231444231445_
                                                          (lambda (_L225700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L225701_)
                    (let ((_$e225713_
                           (let ((__tmp233167
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L225701_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp233167
                              '#f))))
                      (if _$e225713_
                          ((lambda (_type-e225716_)
                             (_type-e225716_ _stx225604_ _L225653_))
                           _$e225713_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L225652_))))))
                 (___kont231446231447_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L225652_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match231453231454_
                                                            (lambda (_e225675225692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd225674225695_
                             _tl225673225697_)
                      (let ((_L225700_ _tl225673225697_)
                            (_L225701_ _hd225674225695_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L225701_))
                            (___kont231444231445_ _L225700_ _L225701_)
                            (___kont231446231447_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx231442231443_))
                   (let ((_e225675225692_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx231442231443_))))
                     (let ((_tl225673225697_
                            (let ()
                              (declare (not safe))
                              (##cdr _e225675225692_)))
                           (_hd225674225695_
                            (let ()
                              (declare (not safe))
                              (##car _e225675225692_))))
                       (___match231453231454_
                        _e225675225692_
                        _hd225674225695_
                        _tl225673225697_)))
                   (___kont231446231447_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd225617225647_
                                               _hd225614225639_)
                                              (let ()
                                                (declare (not safe))
                                                (_g225606225623_
                                                 _g225607225626_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225606225623_ _g225607225626_)))))
                              (let ()
                                (declare (not safe))
                                (_g225606225623_ _g225607225626_)))))
                      (let ()
                        (declare (not safe))
                        (_g225606225623_ _g225607225626_))))))
          (declare (not safe))
          (_g225605225721_ _stx225604_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx225465_ _ann225466_)
        (let* ((_g225468225501_
                (lambda (_g225469225498_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g225469225498_))))
               (_g225467225601_
                (lambda (_g225469225504_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g225469225504_))
                      (let ((_e225478225506_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g225469225504_))))
                        (let ((_hd225477225509_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225478225506_)))
                              (_tl225476225511_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225478225506_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225476225511_))
                              (let ((_e225481225514_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl225476225511_))))
                                (let ((_hd225480225517_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225481225514_)))
                                      (_tl225479225519_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225481225514_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl225479225519_))
                                      (let ((_e225484225522_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl225479225519_))))
                                        (let ((_hd225483225525_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e225484225522_)))
                                              (_tl225482225527_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e225484225522_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl225482225527_))
                                              (let ((_e225487225530_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl225482225527_))))
                                                (let ((_hd225486225533_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e225487225530_)))
                                                      (_tl225485225535_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e225487225530_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl225485225535_))
                                                      (let ((_e225490225538_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl225485225535_))))
                (let ((_hd225489225541_
                       (let () (declare (not safe)) (##car _e225490225538_)))
                      (_tl225488225543_
                       (let () (declare (not safe)) (##cdr _e225490225538_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl225488225543_))
                      (let ((_e225493225546_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl225488225543_))))
                        (let ((_hd225492225549_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225493225546_)))
                              (_tl225491225551_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225493225546_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225491225551_))
                              (let ((_e225496225554_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl225491225551_))))
                                (let ((_hd225495225557_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225496225554_)))
                                      (_tl225494225559_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225496225554_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225494225559_))
                                      ((lambda (_L225562_
                                                _L225563_
                                                _L225564_
                                                _L225565_
                                                _L225566_
                                                _L225567_)
                                         (let ((_type-id225594_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L225567_)))
                                               (_super225595_
                                                (map gxc#identifier-symbol
                                                     _L225566_))
                                               (_slots225596_
                                                (map gx#stx-e _L225565_))
                                               (_ctor-method225597_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L225564_)))
                                               (_struct?225598_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L225563_)))
                                               (_final?225599_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L225562_))))
                                           (let ((__obj233125
                                                  (make-object*
                                                   gxc#!class::t
                                                   '10)))
                                             (gxc#!class:::init!
                                              __obj233125
                                              _type-id225594_
                                              _super225595_
                                              _slots225596_
                                              _ctor-method225597_
                                              _struct?225598_
                                              _final?225599_)
                                             __obj233125)))
                                       _hd225495225557_
                                       _hd225492225549_
                                       _hd225489225541_
                                       _hd225486225533_
                                       _hd225483225525_
                                       _hd225480225517_)
                                      (let ()
                                        (declare (not safe))
                                        (_g225468225501_ _g225469225504_)))))
                              (let ()
                                (declare (not safe))
                                (_g225468225501_ _g225469225504_)))))
                      (let ()
                        (declare (not safe))
                        (_g225468225501_ _g225469225504_)))))
              (let ()
                (declare (not safe))
                (_g225468225501_ _g225469225504_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g225468225501_
                                                 _g225469225504_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225468225501_ _g225469225504_)))))
                              (let ()
                                (declare (not safe))
                                (_g225468225501_ _g225469225504_)))))
                      (let ()
                        (declare (not safe))
                        (_g225468225501_ _g225469225504_))))))
          (declare (not safe))
          (_g225467225601_ _ann225466_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx225413_ _ann225414_)
        (let* ((_g225416225429_
                (lambda (_g225417225426_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g225417225426_))))
               (_g225415225462_
                (lambda (_g225417225432_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g225417225432_))
                      (let ((_e225421225434_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g225417225432_))))
                        (let ((_hd225420225437_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225421225434_)))
                              (_tl225419225439_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225421225434_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225419225439_))
                              (let ((_e225424225442_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl225419225439_))))
                                (let ((_hd225423225445_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225424225442_)))
                                      (_tl225422225447_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225424225442_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225422225447_))
                                      ((lambda (_L225450_)
                                         (let ((__tmp233168
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L225450_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp233168)))
                                       _hd225423225445_)
                                      (let ()
                                        (declare (not safe))
                                        (_g225416225429_ _g225417225432_)))))
                              (let ()
                                (declare (not safe))
                                (_g225416225429_ _g225417225432_)))))
                      (let ()
                        (declare (not safe))
                        (_g225416225429_ _g225417225432_))))))
          (declare (not safe))
          (_g225415225462_ _ann225414_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx225361_ _ann225362_)
        (let* ((_g225364225377_
                (lambda (_g225365225374_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g225365225374_))))
               (_g225363225410_
                (lambda (_g225365225380_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g225365225380_))
                      (let ((_e225369225382_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g225365225380_))))
                        (let ((_hd225368225385_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225369225382_)))
                              (_tl225367225387_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225369225382_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225367225387_))
                              (let ((_e225372225390_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl225367225387_))))
                                (let ((_hd225371225393_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225372225390_)))
                                      (_tl225370225395_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225372225390_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl225370225395_))
                                      ((lambda (_L225398_)
                                         (let ((__tmp233169
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L225398_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp233169)))
                                       _hd225371225393_)
                                      (let ()
                                        (declare (not safe))
                                        (_g225364225377_ _g225365225380_)))))
                              (let ()
                                (declare (not safe))
                                (_g225364225377_ _g225365225380_)))))
                      (let ()
                        (declare (not safe))
                        (_g225364225377_ _g225365225380_))))))
          (declare (not safe))
          (_g225363225410_ _ann225362_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx225277_ _ann225278_)
        (let* ((_g225280225301_
                (lambda (_g225281225298_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g225281225298_))))
               (_g225279225358_
                (lambda (_g225281225304_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g225281225304_))
                      (let ((_e225287225306_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g225281225304_))))
                        (let ((_hd225286225309_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225287225306_)))
                              (_tl225285225311_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225287225306_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225285225311_))
                              (let ((_e225290225314_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl225285225311_))))
                                (let ((_hd225289225317_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225290225314_)))
                                      (_tl225288225319_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225290225314_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl225288225319_))
                                      (let ((_e225293225322_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl225288225319_))))
                                        (let ((_hd225292225325_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e225293225322_)))
                                              (_tl225291225327_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e225293225322_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl225291225327_))
                                              (let ((_e225296225330_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl225291225327_))))
                                                (let ((_hd225295225333_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e225296225330_)))
                                                      (_tl225294225335_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e225296225330_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225294225335_))
                                                      ((lambda (_L225338_
                                                                _L225339_
                                                                _L225340_)
                                                         (let ((__tmp233172
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L225340_)))
                       (__tmp233171
                        (let () (declare (not safe)) (gx#stx-e _L225339_)))
                       (__tmp233170
                        (let () (declare (not safe)) (gx#stx-e _L225338_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp233172
                    __tmp233171
                    __tmp233170)))
               _hd225295225333_
               _hd225292225325_
               _hd225289225317_)
              (let ()
                (declare (not safe))
                (_g225280225301_ _g225281225304_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g225280225301_
                                                 _g225281225304_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225280225301_ _g225281225304_)))))
                              (let ()
                                (declare (not safe))
                                (_g225280225301_ _g225281225304_)))))
                      (let ()
                        (declare (not safe))
                        (_g225280225301_ _g225281225304_))))))
          (declare (not safe))
          (_g225279225358_ _ann225278_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx225193_ _ann225194_)
        (let* ((_g225196225217_
                (lambda (_g225197225214_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g225197225214_))))
               (_g225195225274_
                (lambda (_g225197225220_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g225197225220_))
                      (let ((_e225203225222_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g225197225220_))))
                        (let ((_hd225202225225_
                               (let ()
                                 (declare (not safe))
                                 (##car _e225203225222_)))
                              (_tl225201225227_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e225203225222_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl225201225227_))
                              (let ((_e225206225230_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl225201225227_))))
                                (let ((_hd225205225233_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e225206225230_)))
                                      (_tl225204225235_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e225206225230_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl225204225235_))
                                      (let ((_e225209225238_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl225204225235_))))
                                        (let ((_hd225208225241_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e225209225238_)))
                                              (_tl225207225243_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e225209225238_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl225207225243_))
                                              (let ((_e225212225246_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl225207225243_))))
                                                (let ((_hd225211225249_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e225212225246_)))
                                                      (_tl225210225251_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e225212225246_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl225210225251_))
                                                      ((lambda (_L225254_
                                                                _L225255_
                                                                _L225256_)
                                                         (let ((__tmp233175
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L225256_)))
                       (__tmp233174
                        (let () (declare (not safe)) (gx#stx-e _L225255_)))
                       (__tmp233173
                        (let () (declare (not safe)) (gx#stx-e _L225254_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp233175
                    __tmp233174
                    __tmp233173)))
               _hd225211225249_
               _hd225208225241_
               _hd225205225233_)
              (let ()
                (declare (not safe))
                (_g225196225217_ _g225197225220_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g225196225217_
                                                 _g225197225220_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g225196225217_ _g225197225220_)))))
                              (let ()
                                (declare (not safe))
                                (_g225196225217_ _g225197225220_)))))
                      (let ()
                        (declare (not safe))
                        (_g225196225217_ _g225197225220_))))))
          (declare (not safe))
          (_g225195225274_ _ann225194_))))
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
      (lambda (_stx224313_)
        (let* ((___stx231456231457_ _stx224313_)
               (_g224319224515_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231456231457_)))))
          (let ((___kont231458231459_
                 (lambda (_L225181_)
                   (let ((__obj233126 (make-object* gxc#!lambda::t '6)))
                     (gxc#!lambda:::init!
                      __obj233126
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L225181_))
                      '#f)
                     __obj233126)))
                (___kont231460231461_
                 (lambda (_L225108_
                          _L225109_
                          _L225110_
                          _L225111_
                          _L225112_
                          _L225113_)
                   (let* ((_tab225163_
                           (let () (declare (not safe)) (gx#stx-e _L225110_)))
                          (_keys225165_
                           (if _tab225163_
                               (let ((__tmp233176 (vector->list _tab225163_)))
                                 (declare (not safe))
                                 (filter values __tmp233176))
                               '#f)))
                     (let ((__tmp233177
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L225109_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys225165_
                        __tmp233177)))))
                (___kont231462231463_
                 (lambda (_L224841_
                          _L224842_
                          _L224843_
                          _L224844_
                          _L224845_
                          _L224846_
                          _L224847_
                          _L224848_
                          _L224849_
                          _L224850_)
                   (let ((__tmp233179
                          (map gx#stx-e
                               (let ((__tmp233180
                                      (lambda (_g224943224946_ _g224944224948_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g224943224946_
                                                _g224944224948_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp233180 '() _L224843_))))
                         (__tmp233178
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L224847_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp233179
                      __tmp233178))))
                (___kont231466231467_
                 (lambda (_L224551_)
                   (let ((__obj233127 (make-object* gxc#!lambda::t '6)))
                     (gxc#!lambda:::init!
                      __obj233127
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L224551_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L224551_)))
                     __obj233127)))
                (___kont231468231469_
                 (lambda (_L224528_)
                   (let ((__obj233128 (make-object* gxc#!lambda::t '6)))
                     (gxc#!lambda:::init!
                      __obj233128
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L224528_))
                      '#f)
                     __obj233128))))
            (let* ((___match231775231776_
                    (lambda (_e224506224543_ _hd224505224546_ _tl224504224548_)
                      (let ((_L224551_ _tl224504224548_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L224551_))
                            (___kont231466231467_ _L224551_)
                            (___kont231468231469_ _tl224504224548_)))))
                   (___match231769231770_
                    (lambda (_e224400224565_
                             _hd224399224568_
                             _tl224398224570_
                             _e224403224573_
                             _hd224402224576_
                             _tl224401224578_
                             _e224406224581_
                             _hd224405224584_
                             _tl224404224586_
                             _e224409224589_
                             _hd224408224592_
                             _tl224407224594_
                             _e224412224597_
                             _hd224411224600_
                             _tl224410224602_
                             _e224415224605_
                             _hd224414224608_
                             _tl224413224610_
                             _e224418224613_
                             _hd224417224616_
                             _tl224416224618_
                             _e224421224621_
                             _hd224420224624_
                             _tl224419224626_
                             _e224424224629_
                             _hd224423224632_
                             _tl224422224634_
                             _e224427224637_
                             _hd224426224640_
                             _tl224425224642_
                             _e224430224645_
                             _hd224429224648_
                             _tl224428224650_
                             _e224433224653_
                             _hd224432224656_
                             _tl224431224658_
                             _e224436224661_
                             _hd224435224664_
                             _tl224434224666_
                             _e224439224669_
                             _hd224438224672_
                             _tl224437224674_
                             ___splice231464231465_
                             _target224440224677_
                             _tl224442224679_
                             _e224457224682_
                             _hd224456224685_
                             _tl224455224687_
                             _e224460224690_
                             _hd224459224693_
                             _tl224458224695_
                             _e224463224698_
                             _hd224462224701_
                             _tl224461224703_)
                      (letrec ((_loop224443224706_
                                (lambda (_hd224441224709_
                                         _-absent-value224447224711_
                                         _key224448224713_
                                         _-xkwvar224449224715_
                                         _-hash-ref224450224717_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd224441224709_))
                                      (let ((_e224444224720_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd224441224709_))))
                                        (let ((_lp-tl224446224725_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224444224720_)))
                                              (_lp-hd224445224723_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224444224720_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd224445224723_))
                                              (let ((_e224466224728_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd224445224723_))))
                                                (let ((_tl224464224733_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e224466224728_)))
                                                      (_hd224465224731_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e224466224728_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd224465224731_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd224465224731_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl224464224733_))
                      (let ((_e224469224736_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl224464224733_))))
                        (let ((_tl224467224741_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224469224736_)))
                              (_hd224468224739_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224469224736_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd224468224739_))
                              (let ((_e224472224744_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd224468224739_))))
                                (let ((_tl224470224749_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224472224744_)))
                                      (_hd224471224747_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224472224744_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd224471224747_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd224471224747_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl224470224749_))
                                              (let ((_e224475224752_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl224470224749_))))
                                                (let ((_tl224473224757_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e224475224752_)))
                                                      (_hd224474224755_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e224475224752_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl224473224757_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl224467224741_))
                                                          (let ((_e224478224760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl224467224741_))))
                    (let ((_tl224476224765_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224478224760_)))
                          (_hd224477224763_
                           (let ()
                             (declare (not safe))
                             (##car _e224478224760_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd224477224763_))
                          (let ((_e224481224768_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd224477224763_))))
                            (let ((_tl224479224773_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224481224768_)))
                                  (_hd224480224771_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224481224768_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd224480224771_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd224480224771_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl224479224773_))
                                          (let ((_e224484224776_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl224479224773_))))
                                            (let ((_tl224482224781_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224484224776_)))
                                                  (_hd224483224779_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224484224776_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl224482224781_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl224476224765_))
                                                      (let ((_e224487224784_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl224476224765_))))
                (let ((_tl224485224789_
                       (let () (declare (not safe)) (##cdr _e224487224784_)))
                      (_hd224486224787_
                       (let () (declare (not safe)) (##car _e224487224784_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd224486224787_))
                      (let ((_e224490224792_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd224486224787_))))
                        (let ((_tl224488224797_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224490224792_)))
                              (_hd224489224795_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224490224792_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd224489224795_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd224489224795_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224488224797_))
                                      (let ((_e224493224800_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224488224797_))))
                                        (let ((_tl224491224805_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224493224800_)))
                                              (_hd224492224803_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224493224800_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224491224805_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl224485224789_))
                                                  (let ((_e224496224808_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl224485224789_))))
                                                    (let ((_tl224494224813_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e224496224808_)))
                                                          (_hd224495224811_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e224496224808_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd224495224811_))
                                                          (let ((_e224499224816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd224495224811_))))
                    (let ((_tl224497224821_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224499224816_)))
                          (_hd224498224819_
                           (let ()
                             (declare (not safe))
                             (##car _e224499224816_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd224498224819_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd224498224819_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl224497224821_))
                                  (let ((_e224502224824_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl224497224821_))))
                                    (let ((_tl224500224829_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224502224824_)))
                                          (_hd224501224827_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224502224824_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl224500224829_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224494224813_))
                                              (let ((__tmp233195
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd224501224827_
                                                             _-absent-value224447224711_)))
                                                    (__tmp233194
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd224492224803_
                                                             _key224448224713_)))
                                                    (__tmp233193
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd224483224779_
                                                             _-xkwvar224449224715_)))
                                                    (__tmp233192
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd224474224755_
                                                             _-hash-ref224450224717_))))
                                                (declare (not safe))
                                                (_loop224443224706_
                                                 _lp-tl224446224725_
                                                 __tmp233195
                                                 __tmp233194
                                                 __tmp233193
                                                 __tmp233192))
                                              (___match231775231776_
                                               _e224400224565_
                                               _hd224399224568_
                                               _tl224398224570_))
                                          (___match231775231776_
                                           _e224400224565_
                                           _hd224399224568_
                                           _tl224398224570_))))
                                  (___match231775231776_
                                   _e224400224565_
                                   _hd224399224568_
                                   _tl224398224570_))
                              (___match231775231776_
                               _e224400224565_
                               _hd224399224568_
                               _tl224398224570_))
                          (___match231775231776_
                           _e224400224565_
                           _hd224399224568_
                           _tl224398224570_))))
                  (___match231775231776_
                   _e224400224565_
                   _hd224399224568_
                   _tl224398224570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231775231776_
                                                   _e224400224565_
                                                   _hd224399224568_
                                                   _tl224398224570_))
                                              (___match231775231776_
                                               _e224400224565_
                                               _hd224399224568_
                                               _tl224398224570_))))
                                      (___match231775231776_
                                       _e224400224565_
                                       _hd224399224568_
                                       _tl224398224570_))
                                  (___match231775231776_
                                   _e224400224565_
                                   _hd224399224568_
                                   _tl224398224570_))
                              (___match231775231776_
                               _e224400224565_
                               _hd224399224568_
                               _tl224398224570_))))
                      (___match231775231776_
                       _e224400224565_
                       _hd224399224568_
                       _tl224398224570_))))
              (___match231775231776_
               _e224400224565_
               _hd224399224568_
               _tl224398224570_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231775231776_
                                                   _e224400224565_
                                                   _hd224399224568_
                                                   _tl224398224570_))))
                                          (___match231775231776_
                                           _e224400224565_
                                           _hd224399224568_
                                           _tl224398224570_))
                                      (___match231775231776_
                                       _e224400224565_
                                       _hd224399224568_
                                       _tl224398224570_))
                                  (___match231775231776_
                                   _e224400224565_
                                   _hd224399224568_
                                   _tl224398224570_))))
                          (___match231775231776_
                           _e224400224565_
                           _hd224399224568_
                           _tl224398224570_))))
                  (___match231775231776_
                   _e224400224565_
                   _hd224399224568_
                   _tl224398224570_))
              (___match231775231776_
               _e224400224565_
               _hd224399224568_
               _tl224398224570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match231775231776_
                                               _e224400224565_
                                               _hd224399224568_
                                               _tl224398224570_))
                                          (___match231775231776_
                                           _e224400224565_
                                           _hd224399224568_
                                           _tl224398224570_))
                                      (___match231775231776_
                                       _e224400224565_
                                       _hd224399224568_
                                       _tl224398224570_))))
                              (___match231775231776_
                               _e224400224565_
                               _hd224399224568_
                               _tl224398224570_))))
                      (___match231775231776_
                       _e224400224565_
                       _hd224399224568_
                       _tl224398224570_))
                  (___match231775231776_
                   _e224400224565_
                   _hd224399224568_
                   _tl224398224570_))
              (___match231775231776_
               _e224400224565_
               _hd224399224568_
               _tl224398224570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match231775231776_
                                               _e224400224565_
                                               _hd224399224568_
                                               _tl224398224570_))))
                                      (let ((_-hash-ref224454224838_
                                             (reverse _-hash-ref224450224717_))
                                            (_-xkwvar224453224836_
                                             (reverse _-xkwvar224449224715_))
                                            (_key224452224834_
                                             (reverse _key224448224713_))
                                            (_-absent-value224451224832_
                                             (reverse _-absent-value224447224711_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl224407224594_))
                                            (let ((_L224841_ _hd224462224701_)
                                                  (_L224842_
                                                   _-absent-value224451224832_)
                                                  (_L224843_ _key224452224834_)
                                                  (_L224844_
                                                   _-xkwvar224453224836_)
                                                  (_L224845_
                                                   _-hash-ref224454224838_)
                                                  (_L224846_ _hd224438224672_)
                                                  (_L224847_ _hd224429224648_)
                                                  (_L224848_ _hd224420224624_)
                                                  (_L224849_ _tl224404224586_)
                                                  (_L224850_ _hd224405224584_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L224850_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L224849_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L224848_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L224850_
                                                          _L224846_))
                                                       (let ((__tmp233190
                                                              (let ((__tmp233191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g224903224906_ _g224904224908_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g224903224906_ _g224904224908_)))))
                        (declare (not safe))
                        (foldr1 __tmp233191 '() _L224843_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp233190))
               (let ((__tmp233189
                      (lambda (_g224910224912_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g224910224912_
                           'hash-ref))))
                     (__tmp233187
                      (let ((__tmp233188
                             (lambda (_g224914224917_ _g224915224919_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g224914224917_ _g224915224919_)))))
                        (declare (not safe))
                        (foldr1 __tmp233188 '() _L224845_))))
                 (declare (not safe))
                 (andmap1 __tmp233189 __tmp233187))
               (let ((__tmp233186
                      (lambda (_g224921224923_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g224921224923_
                           'absent-value))))
                     (__tmp233184
                      (let ((__tmp233185
                             (lambda (_g224925224928_ _g224926224930_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g224925224928_ _g224926224930_)))))
                        (declare (not safe))
                        (foldr1 __tmp233185 '() _L224842_))))
                 (declare (not safe))
                 (andmap1 __tmp233186 __tmp233184))
               (let ((__tmp233183
                      (lambda (_g224932224934_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g224932224934_ _L224850_))))
                     (__tmp233181
                      (let ((__tmp233182
                             (lambda (_g224936224939_ _g224937224941_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g224936224939_ _g224937224941_)))))
                        (declare (not safe))
                        (foldr1 __tmp233182 '() _L224844_))))
                 (declare (not safe))
                 (andmap1 __tmp233183 __tmp233181)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont231462231463_
                                                   _L224841_
                                                   _L224842_
                                                   _L224843_
                                                   _L224844_
                                                   _L224845_
                                                   _L224846_
                                                   _L224847_
                                                   _L224848_
                                                   _L224849_
                                                   _L224850_)
                                                  (___match231775231776_
                                                   _e224400224565_
                                                   _hd224399224568_
                                                   _tl224398224570_)))
                                            (___match231775231776_
                                             _e224400224565_
                                             _hd224399224568_
                                             _tl224398224570_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop224443224706_
                           _target224440224677_
                           '()
                           '()
                           '()
                           '())))))
                   (___match231641231642_
                    (lambda (_e224400224565_
                             _hd224399224568_
                             _tl224398224570_
                             _e224403224573_
                             _hd224402224576_
                             _tl224401224578_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd224402224576_))
                          (let ((_e224406224581_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd224402224576_))))
                            (let ((_tl224404224586_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224406224581_)))
                                  (_hd224405224584_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224406224581_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl224401224578_))
                                  (let ((_e224409224589_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl224401224578_))))
                                    (let ((_tl224407224594_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224409224589_)))
                                          (_hd224408224592_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224409224589_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd224408224592_))
                                          (let ((_e224412224597_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd224408224592_))))
                                            (let ((_tl224410224602_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224412224597_)))
                                                  (_hd224411224600_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224412224597_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd224411224600_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd224411224600_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl224410224602_))
                                                          (let ((_e224415224605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl224410224602_))))
                    (let ((_tl224413224610_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224415224605_)))
                          (_hd224414224608_
                           (let ()
                             (declare (not safe))
                             (##car _e224415224605_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd224414224608_))
                          (let ((_e224418224613_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd224414224608_))))
                            (let ((_tl224416224618_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224418224613_)))
                                  (_hd224417224616_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224418224613_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd224417224616_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd224417224616_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl224416224618_))
                                          (let ((_e224421224621_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl224416224618_))))
                                            (let ((_tl224419224626_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224421224621_)))
                                                  (_hd224420224624_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224421224621_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl224419224626_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl224413224610_))
                                                      (let ((_e224424224629_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl224413224610_))))
                (let ((_tl224422224634_
                       (let () (declare (not safe)) (##cdr _e224424224629_)))
                      (_hd224423224632_
                       (let () (declare (not safe)) (##car _e224424224629_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd224423224632_))
                      (let ((_e224427224637_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd224423224632_))))
                        (let ((_tl224425224642_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224427224637_)))
                              (_hd224426224640_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224427224637_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd224426224640_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd224426224640_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224425224642_))
                                      (let ((_e224430224645_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224425224642_))))
                                        (let ((_tl224428224650_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224430224645_)))
                                              (_hd224429224648_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224430224645_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224428224650_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl224422224634_))
                                                  (let ((_e224433224653_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl224422224634_))))
                                                    (let ((_tl224431224658_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e224433224653_)))
                                                          (_hd224432224656_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e224433224653_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd224432224656_))
                                                          (let ((_e224436224661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd224432224656_))))
                    (let ((_tl224434224666_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224436224661_)))
                          (_hd224435224664_
                           (let ()
                             (declare (not safe))
                             (##car _e224436224661_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd224435224664_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd224435224664_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl224434224666_))
                                  (let ((_e224439224669_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl224434224666_))))
                                    (let ((_tl224437224674_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224439224669_)))
                                          (_hd224438224672_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224439224669_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl224437224674_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl224431224658_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl224431224658_))
                                                        '1)
                                                  (let ((___splice231464231465_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl224431224658_
                                                            '1))))
                                                    (let ((_tl224442224679_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231464231465_
                                                              '1)))
                                                          (_target224440224677_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice231464231465_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl224442224679_))
                                                          (let ((_e224457224682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl224442224679_))))
                    (let ((_tl224455224687_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224457224682_)))
                          (_hd224456224685_
                           (let ()
                             (declare (not safe))
                             (##car _e224457224682_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd224456224685_))
                          (let ((_e224460224690_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd224456224685_))))
                            (let ((_tl224458224695_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224460224690_)))
                                  (_hd224459224693_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224460224690_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd224459224693_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd224459224693_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl224458224695_))
                                          (let ((_e224463224698_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl224458224695_))))
                                            (let ((_tl224461224703_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224463224698_)))
                                                  (_hd224462224701_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224463224698_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl224461224703_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl224455224687_))
                                                      (___match231769231770_
                                                       _e224400224565_
                                                       _hd224399224568_
                                                       _tl224398224570_
                                                       _e224403224573_
                                                       _hd224402224576_
                                                       _tl224401224578_
                                                       _e224406224581_
                                                       _hd224405224584_
                                                       _tl224404224586_
                                                       _e224409224589_
                                                       _hd224408224592_
                                                       _tl224407224594_
                                                       _e224412224597_
                                                       _hd224411224600_
                                                       _tl224410224602_
                                                       _e224415224605_
                                                       _hd224414224608_
                                                       _tl224413224610_
                                                       _e224418224613_
                                                       _hd224417224616_
                                                       _tl224416224618_
                                                       _e224421224621_
                                                       _hd224420224624_
                                                       _tl224419224626_
                                                       _e224424224629_
                                                       _hd224423224632_
                                                       _tl224422224634_
                                                       _e224427224637_
                                                       _hd224426224640_
                                                       _tl224425224642_
                                                       _e224430224645_
                                                       _hd224429224648_
                                                       _tl224428224650_
                                                       _e224433224653_
                                                       _hd224432224656_
                                                       _tl224431224658_
                                                       _e224436224661_
                                                       _hd224435224664_
                                                       _tl224434224666_
                                                       _e224439224669_
                                                       _hd224438224672_
                                                       _tl224437224674_
                                                       ___splice231464231465_
                                                       _target224440224677_
                                                       _tl224442224679_
                                                       _e224457224682_
                                                       _hd224456224685_
                                                       _tl224455224687_
                                                       _e224460224690_
                                                       _hd224459224693_
                                                       _tl224458224695_
                                                       _e224463224698_
                                                       _hd224462224701_
                                                       _tl224461224703_)
                                                      (___match231775231776_
                                                       _e224400224565_
                                                       _hd224399224568_
                                                       _tl224398224570_))
                                                  (___match231775231776_
                                                   _e224400224565_
                                                   _hd224399224568_
                                                   _tl224398224570_))))
                                          (___match231775231776_
                                           _e224400224565_
                                           _hd224399224568_
                                           _tl224398224570_))
                                      (___match231775231776_
                                       _e224400224565_
                                       _hd224399224568_
                                       _tl224398224570_))
                                  (___match231775231776_
                                   _e224400224565_
                                   _hd224399224568_
                                   _tl224398224570_))))
                          (___match231775231776_
                           _e224400224565_
                           _hd224399224568_
                           _tl224398224570_))))
                  (___match231775231776_
                   _e224400224565_
                   _hd224399224568_
                   _tl224398224570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231775231776_
                                                   _e224400224565_
                                                   _hd224399224568_
                                                   _tl224398224570_))
                                              (___match231775231776_
                                               _e224400224565_
                                               _hd224399224568_
                                               _tl224398224570_))
                                          (___match231775231776_
                                           _e224400224565_
                                           _hd224399224568_
                                           _tl224398224570_))))
                                  (___match231775231776_
                                   _e224400224565_
                                   _hd224399224568_
                                   _tl224398224570_))
                              (___match231775231776_
                               _e224400224565_
                               _hd224399224568_
                               _tl224398224570_))
                          (___match231775231776_
                           _e224400224565_
                           _hd224399224568_
                           _tl224398224570_))))
                  (___match231775231776_
                   _e224400224565_
                   _hd224399224568_
                   _tl224398224570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231775231776_
                                                   _e224400224565_
                                                   _hd224399224568_
                                                   _tl224398224570_))
                                              (___match231775231776_
                                               _e224400224565_
                                               _hd224399224568_
                                               _tl224398224570_))))
                                      (___match231775231776_
                                       _e224400224565_
                                       _hd224399224568_
                                       _tl224398224570_))
                                  (___match231775231776_
                                   _e224400224565_
                                   _hd224399224568_
                                   _tl224398224570_))
                              (___match231775231776_
                               _e224400224565_
                               _hd224399224568_
                               _tl224398224570_))))
                      (___match231775231776_
                       _e224400224565_
                       _hd224399224568_
                       _tl224398224570_))))
              (___match231775231776_
               _e224400224565_
               _hd224399224568_
               _tl224398224570_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231775231776_
                                                   _e224400224565_
                                                   _hd224399224568_
                                                   _tl224398224570_))))
                                          (___match231775231776_
                                           _e224400224565_
                                           _hd224399224568_
                                           _tl224398224570_))
                                      (___match231775231776_
                                       _e224400224565_
                                       _hd224399224568_
                                       _tl224398224570_))
                                  (___match231775231776_
                                   _e224400224565_
                                   _hd224399224568_
                                   _tl224398224570_))))
                          (___match231775231776_
                           _e224400224565_
                           _hd224399224568_
                           _tl224398224570_))))
                  (___match231775231776_
                   _e224400224565_
                   _hd224399224568_
                   _tl224398224570_))
              (___match231775231776_
               _e224400224565_
               _hd224399224568_
               _tl224398224570_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231775231776_
                                                   _e224400224565_
                                                   _hd224399224568_
                                                   _tl224398224570_))))
                                          (___match231775231776_
                                           _e224400224565_
                                           _hd224399224568_
                                           _tl224398224570_))))
                                  (___match231775231776_
                                   _e224400224565_
                                   _hd224399224568_
                                   _tl224398224570_))))
                          (___match231775231776_
                           _e224400224565_
                           _hd224399224568_
                           _tl224398224570_))))
                   (___match231629231630_
                    (lambda (_e224333224956_
                             _hd224332224959_
                             _tl224331224961_
                             _e224336224964_
                             _hd224335224967_
                             _tl224334224969_
                             _e224339224972_
                             _hd224338224975_
                             _tl224337224977_
                             _e224342224980_
                             _hd224341224983_
                             _tl224340224985_
                             _e224345224988_
                             _hd224344224991_
                             _tl224343224993_
                             _e224348224996_
                             _hd224347224999_
                             _tl224346225001_
                             _e224351225004_
                             _hd224350225007_
                             _tl224349225009_
                             _e224354225012_
                             _hd224353225015_
                             _tl224352225017_
                             _e224357225020_
                             _hd224356225023_
                             _tl224355225025_
                             _e224360225028_
                             _hd224359225031_
                             _tl224358225033_
                             _e224363225036_
                             _hd224362225039_
                             _tl224361225041_
                             _e224366225044_
                             _hd224365225047_
                             _tl224364225049_
                             _e224369225052_
                             _hd224368225055_
                             _tl224367225057_
                             _e224372225060_
                             _hd224371225063_
                             _tl224370225065_
                             _e224375225068_
                             _hd224374225071_
                             _tl224373225073_
                             _e224378225076_
                             _hd224377225079_
                             _tl224376225081_
                             _e224381225084_
                             _hd224380225087_
                             _tl224379225089_
                             _e224384225092_
                             _hd224383225095_
                             _tl224382225097_
                             _e224387225100_
                             _hd224386225103_
                             _tl224385225105_)
                      (let ((_L225108_ _hd224386225103_)
                            (_L225109_ _hd224377225079_)
                            (_L225110_ _hd224368225055_)
                            (_L225111_ _hd224359225031_)
                            (_L225112_ _hd224350225007_)
                            (_L225113_ _hd224335224967_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L225113_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L225112_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L225111_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L225113_ _L225108_)))
                            (___kont231460231461_
                             _L225108_
                             _L225109_
                             _L225110_
                             _L225111_
                             _L225112_
                             _L225113_)
                            (___match231641231642_
                             _e224333224956_
                             _hd224332224959_
                             _tl224331224961_
                             _e224336224964_
                             _hd224335224967_
                             _tl224334224969_)))))
                   (___match231483231484_
                    (lambda (_e224333224956_ _hd224332224959_ _tl224331224961_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl224331224961_))
                          (let ((_e224336224964_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl224331224961_))))
                            (let ((_tl224334224969_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224336224964_)))
                                  (_hd224335224967_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224336224964_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl224334224969_))
                                  (let ((_e224339224972_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl224334224969_))))
                                    (let ((_tl224337224977_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224339224972_)))
                                          (_hd224338224975_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224339224972_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd224338224975_))
                                          (let ((_e224342224980_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd224338224975_))))
                                            (let ((_tl224340224985_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224342224980_)))
                                                  (_hd224341224983_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224342224980_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd224341224983_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd224341224983_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl224340224985_))
                                                          (let ((_e224345224988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl224340224985_))))
                    (let ((_tl224343224993_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224345224988_)))
                          (_hd224344224991_
                           (let ()
                             (declare (not safe))
                             (##car _e224345224988_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd224344224991_))
                          (let ((_e224348224996_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd224344224991_))))
                            (let ((_tl224346225001_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224348224996_)))
                                  (_hd224347224999_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224348224996_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd224347224999_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd224347224999_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl224346225001_))
                                          (let ((_e224351225004_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl224346225001_))))
                                            (let ((_tl224349225009_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224351225004_)))
                                                  (_hd224350225007_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224351225004_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl224349225009_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl224343224993_))
                                                      (let ((_e224354225012_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl224343224993_))))
                (let ((_tl224352225017_
                       (let () (declare (not safe)) (##cdr _e224354225012_)))
                      (_hd224353225015_
                       (let () (declare (not safe)) (##car _e224354225012_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd224353225015_))
                      (let ((_e224357225020_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd224353225015_))))
                        (let ((_tl224355225025_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224357225020_)))
                              (_hd224356225023_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224357225020_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd224356225023_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd224356225023_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224355225025_))
                                      (let ((_e224360225028_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224355225025_))))
                                        (let ((_tl224358225033_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224360225028_)))
                                              (_hd224359225031_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224360225028_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224358225033_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl224352225017_))
                                                  (let ((_e224363225036_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl224352225017_))))
                                                    (let ((_tl224361225041_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e224363225036_)))
                                                          (_hd224362225039_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e224363225036_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd224362225039_))
                                                          (let ((_e224366225044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd224362225039_))))
                    (let ((_tl224364225049_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224366225044_)))
                          (_hd224365225047_
                           (let ()
                             (declare (not safe))
                             (##car _e224366225044_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd224365225047_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd224365225047_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl224364225049_))
                                  (let ((_e224369225052_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl224364225049_))))
                                    (let ((_tl224367225057_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224369225052_)))
                                          (_hd224368225055_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224369225052_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl224367225057_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl224361225041_))
                                              (let ((_e224372225060_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl224361225041_))))
                                                (let ((_tl224370225065_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e224372225060_)))
                                                      (_hd224371225063_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e224372225060_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd224371225063_))
                                                      (let ((_e224375225068_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd224371225063_))))
                (let ((_tl224373225073_
                       (let () (declare (not safe)) (##cdr _e224375225068_)))
                      (_hd224374225071_
                       (let () (declare (not safe)) (##car _e224375225068_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd224374225071_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd224374225071_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224373225073_))
                              (let ((_e224378225076_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224373225073_))))
                                (let ((_tl224376225081_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224378225076_)))
                                      (_hd224377225079_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224378225076_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl224376225081_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl224370225065_))
                                          (let ((_e224381225084_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl224370225065_))))
                                            (let ((_tl224379225089_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224381225084_)))
                                                  (_hd224380225087_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224381225084_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd224380225087_))
                                                  (let ((_e224384225092_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd224380225087_))))
                                                    (let ((_tl224382225097_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e224384225092_)))
                                                          (_hd224383225095_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e224384225092_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd224383225095_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd224383225095_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl224382225097_))
                          (let ((_e224387225100_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl224382225097_))))
                            (let ((_tl224385225105_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224387225100_)))
                                  (_hd224386225103_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224387225100_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl224385225105_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl224379225089_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl224337224977_))
                                          (___match231629231630_
                                           _e224333224956_
                                           _hd224332224959_
                                           _tl224331224961_
                                           _e224336224964_
                                           _hd224335224967_
                                           _tl224334224969_
                                           _e224339224972_
                                           _hd224338224975_
                                           _tl224337224977_
                                           _e224342224980_
                                           _hd224341224983_
                                           _tl224340224985_
                                           _e224345224988_
                                           _hd224344224991_
                                           _tl224343224993_
                                           _e224348224996_
                                           _hd224347224999_
                                           _tl224346225001_
                                           _e224351225004_
                                           _hd224350225007_
                                           _tl224349225009_
                                           _e224354225012_
                                           _hd224353225015_
                                           _tl224352225017_
                                           _e224357225020_
                                           _hd224356225023_
                                           _tl224355225025_
                                           _e224360225028_
                                           _hd224359225031_
                                           _tl224358225033_
                                           _e224363225036_
                                           _hd224362225039_
                                           _tl224361225041_
                                           _e224366225044_
                                           _hd224365225047_
                                           _tl224364225049_
                                           _e224369225052_
                                           _hd224368225055_
                                           _tl224367225057_
                                           _e224372225060_
                                           _hd224371225063_
                                           _tl224370225065_
                                           _e224375225068_
                                           _hd224374225071_
                                           _tl224373225073_
                                           _e224378225076_
                                           _hd224377225079_
                                           _tl224376225081_
                                           _e224381225084_
                                           _hd224380225087_
                                           _tl224379225089_
                                           _e224384225092_
                                           _hd224383225095_
                                           _tl224382225097_
                                           _e224387225100_
                                           _hd224386225103_
                                           _tl224385225105_)
                                          (___match231641231642_
                                           _e224333224956_
                                           _hd224332224959_
                                           _tl224331224961_
                                           _e224336224964_
                                           _hd224335224967_
                                           _tl224334224969_))
                                      (___match231641231642_
                                       _e224333224956_
                                       _hd224332224959_
                                       _tl224331224961_
                                       _e224336224964_
                                       _hd224335224967_
                                       _tl224334224969_))
                                  (___match231641231642_
                                   _e224333224956_
                                   _hd224332224959_
                                   _tl224331224961_
                                   _e224336224964_
                                   _hd224335224967_
                                   _tl224334224969_))))
                          (___match231641231642_
                           _e224333224956_
                           _hd224332224959_
                           _tl224331224961_
                           _e224336224964_
                           _hd224335224967_
                           _tl224334224969_))
                      (___match231641231642_
                       _e224333224956_
                       _hd224332224959_
                       _tl224331224961_
                       _e224336224964_
                       _hd224335224967_
                       _tl224334224969_))
                  (___match231641231642_
                   _e224333224956_
                   _hd224332224959_
                   _tl224331224961_
                   _e224336224964_
                   _hd224335224967_
                   _tl224334224969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231641231642_
                                                   _e224333224956_
                                                   _hd224332224959_
                                                   _tl224331224961_
                                                   _e224336224964_
                                                   _hd224335224967_
                                                   _tl224334224969_))))
                                          (___match231641231642_
                                           _e224333224956_
                                           _hd224332224959_
                                           _tl224331224961_
                                           _e224336224964_
                                           _hd224335224967_
                                           _tl224334224969_))
                                      (___match231641231642_
                                       _e224333224956_
                                       _hd224332224959_
                                       _tl224331224961_
                                       _e224336224964_
                                       _hd224335224967_
                                       _tl224334224969_))))
                              (___match231641231642_
                               _e224333224956_
                               _hd224332224959_
                               _tl224331224961_
                               _e224336224964_
                               _hd224335224967_
                               _tl224334224969_))
                          (___match231641231642_
                           _e224333224956_
                           _hd224332224959_
                           _tl224331224961_
                           _e224336224964_
                           _hd224335224967_
                           _tl224334224969_))
                      (___match231641231642_
                       _e224333224956_
                       _hd224332224959_
                       _tl224331224961_
                       _e224336224964_
                       _hd224335224967_
                       _tl224334224969_))))
              (___match231641231642_
               _e224333224956_
               _hd224332224959_
               _tl224331224961_
               _e224336224964_
               _hd224335224967_
               _tl224334224969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match231641231642_
                                               _e224333224956_
                                               _hd224332224959_
                                               _tl224331224961_
                                               _e224336224964_
                                               _hd224335224967_
                                               _tl224334224969_))
                                          (___match231641231642_
                                           _e224333224956_
                                           _hd224332224959_
                                           _tl224331224961_
                                           _e224336224964_
                                           _hd224335224967_
                                           _tl224334224969_))))
                                  (___match231641231642_
                                   _e224333224956_
                                   _hd224332224959_
                                   _tl224331224961_
                                   _e224336224964_
                                   _hd224335224967_
                                   _tl224334224969_))
                              (___match231641231642_
                               _e224333224956_
                               _hd224332224959_
                               _tl224331224961_
                               _e224336224964_
                               _hd224335224967_
                               _tl224334224969_))
                          (___match231641231642_
                           _e224333224956_
                           _hd224332224959_
                           _tl224331224961_
                           _e224336224964_
                           _hd224335224967_
                           _tl224334224969_))))
                  (___match231641231642_
                   _e224333224956_
                   _hd224332224959_
                   _tl224331224961_
                   _e224336224964_
                   _hd224335224967_
                   _tl224334224969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231641231642_
                                                   _e224333224956_
                                                   _hd224332224959_
                                                   _tl224331224961_
                                                   _e224336224964_
                                                   _hd224335224967_
                                                   _tl224334224969_))
                                              (___match231641231642_
                                               _e224333224956_
                                               _hd224332224959_
                                               _tl224331224961_
                                               _e224336224964_
                                               _hd224335224967_
                                               _tl224334224969_))))
                                      (___match231641231642_
                                       _e224333224956_
                                       _hd224332224959_
                                       _tl224331224961_
                                       _e224336224964_
                                       _hd224335224967_
                                       _tl224334224969_))
                                  (___match231641231642_
                                   _e224333224956_
                                   _hd224332224959_
                                   _tl224331224961_
                                   _e224336224964_
                                   _hd224335224967_
                                   _tl224334224969_))
                              (___match231641231642_
                               _e224333224956_
                               _hd224332224959_
                               _tl224331224961_
                               _e224336224964_
                               _hd224335224967_
                               _tl224334224969_))))
                      (___match231641231642_
                       _e224333224956_
                       _hd224332224959_
                       _tl224331224961_
                       _e224336224964_
                       _hd224335224967_
                       _tl224334224969_))))
              (___match231641231642_
               _e224333224956_
               _hd224332224959_
               _tl224331224961_
               _e224336224964_
               _hd224335224967_
               _tl224334224969_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231641231642_
                                                   _e224333224956_
                                                   _hd224332224959_
                                                   _tl224331224961_
                                                   _e224336224964_
                                                   _hd224335224967_
                                                   _tl224334224969_))))
                                          (___match231641231642_
                                           _e224333224956_
                                           _hd224332224959_
                                           _tl224331224961_
                                           _e224336224964_
                                           _hd224335224967_
                                           _tl224334224969_))
                                      (___match231641231642_
                                       _e224333224956_
                                       _hd224332224959_
                                       _tl224331224961_
                                       _e224336224964_
                                       _hd224335224967_
                                       _tl224334224969_))
                                  (___match231641231642_
                                   _e224333224956_
                                   _hd224332224959_
                                   _tl224331224961_
                                   _e224336224964_
                                   _hd224335224967_
                                   _tl224334224969_))))
                          (___match231641231642_
                           _e224333224956_
                           _hd224332224959_
                           _tl224331224961_
                           _e224336224964_
                           _hd224335224967_
                           _tl224334224969_))))
                  (___match231641231642_
                   _e224333224956_
                   _hd224332224959_
                   _tl224331224961_
                   _e224336224964_
                   _hd224335224967_
                   _tl224334224969_))
              (___match231641231642_
               _e224333224956_
               _hd224332224959_
               _tl224331224961_
               _e224336224964_
               _hd224335224967_
               _tl224334224969_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231641231642_
                                                   _e224333224956_
                                                   _hd224332224959_
                                                   _tl224331224961_
                                                   _e224336224964_
                                                   _hd224335224967_
                                                   _tl224334224969_))))
                                          (___match231641231642_
                                           _e224333224956_
                                           _hd224332224959_
                                           _tl224331224961_
                                           _e224336224964_
                                           _hd224335224967_
                                           _tl224334224969_))))
                                  (___match231641231642_
                                   _e224333224956_
                                   _hd224332224959_
                                   _tl224331224961_
                                   _e224336224964_
                                   _hd224335224967_
                                   _tl224334224969_))))
                          (___match231775231776_
                           _e224333224956_
                           _hd224332224959_
                           _tl224331224961_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx231456231457_))
                  (let ((_e224324225173_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx231456231457_))))
                    (let ((_tl224322225178_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224324225173_)))
                          (_hd224323225176_
                           (let ()
                             (declare (not safe))
                             (##car _e224324225173_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L225181_ _tl224322225178_))
                            (___kont231458231459_ _L225181_))
                          (___match231483231484_
                           _e224324225173_
                           _hd224323225176_
                           _tl224322225178_))))
                  (let () (declare (not safe)) (_g224319224515_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx224268_)
        (letrec ((_clause-e224270_
                  (lambda (_form224311_)
                    (let ((__obj233129 (make-object* gxc#!lambda::t '6)))
                      (gxc#!lambda:::init!
                       __obj233129
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form224311_))
                       (if (let ((__tmp233196
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp233196))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form224311_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form224311_))
                               '#f)
                           '#f))
                      __obj233129))))
          (let* ((_g224272224282_
                  (lambda (_g224273224279_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g224273224279_))))
                 (_g224271224308_
                  (lambda (_g224273224285_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g224273224285_))
                        (let ((_e224277224287_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g224273224285_))))
                          (let ((_hd224276224290_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e224277224287_)))
                                (_tl224275224292_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e224277224287_))))
                            ((lambda (_L224295_)
                               (let ((_clauses224306_
                                      (map _clause-e224270_ _L224295_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses224306_)))
                             _tl224275224292_)))
                        (let ()
                          (declare (not safe))
                          (_g224272224282_ _g224273224285_))))))
            (declare (not safe))
            (_g224271224308_ _stx224268_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx224200_)
        (let* ((_g224202224219_
                (lambda (_g224203224216_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224203224216_))))
               (_g224201224265_
                (lambda (_g224203224222_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224203224222_))
                      (let ((_e224208224224_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224203224222_))))
                        (let ((_hd224207224227_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224208224224_)))
                              (_tl224206224229_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224208224224_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224206224229_))
                              (let ((_e224211224232_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224206224229_))))
                                (let ((_hd224210224235_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224211224232_)))
                                      (_tl224209224237_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224211224232_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224209224237_))
                                      (let ((_e224214224240_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224209224237_))))
                                        (let ((_hd224213224243_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224214224240_)))
                                              (_tl224212224245_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224214224240_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224212224245_))
                                              ((lambda (_L224248_ _L224249_)
                                                 (let ((__tmp233197
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L224248_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp233197
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd224213224243_
                                               _hd224210224235_)
                                              (let ()
                                                (declare (not safe))
                                                (_g224202224219_
                                                 _g224203224222_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224202224219_ _g224203224222_)))))
                              (let ()
                                (declare (not safe))
                                (_g224202224219_ _g224203224222_)))))
                      (let ()
                        (declare (not safe))
                        (_g224202224219_ _g224203224222_))))))
          (declare (not safe))
          (_g224201224265_ _stx224200_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx224105_)
        (let* ((___stx231784231785_ _stx224105_)
               (_g224108224128_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231784231785_)))))
          (let ((___kont231786231787_
                 (lambda (_L224172_ _L224173_)
                   (let ((_type-e224190224192_
                          (let ((__tmp233198
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L224173_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp233198
                             '#f))))
                     (if _type-e224190224192_
                         (let ((_type-e224195_ _type-e224190224192_))
                           (_type-e224195_ _stx224105_ _L224172_))
                         '#f))))
                (___kont231788231789_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx231784231785_))
                (let ((_e224114224140_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx231784231785_))))
                  (let ((_tl224112224145_
                         (let () (declare (not safe)) (##cdr _e224114224140_)))
                        (_hd224113224143_
                         (let ()
                           (declare (not safe))
                           (##car _e224114224140_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl224112224145_))
                        (let ((_e224117224148_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl224112224145_))))
                          (let ((_tl224115224153_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e224117224148_)))
                                (_hd224116224151_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e224117224148_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd224116224151_))
                                (let ((_e224120224156_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd224116224151_))))
                                  (let ((_tl224118224161_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e224120224156_)))
                                        (_hd224119224159_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e224120224156_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd224119224159_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd224119224159_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl224118224161_))
                                                (let ((_e224123224164_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl224118224161_))))
                                                  (let ((_tl224121224169_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e224123224164_)))
                                                        (_hd224122224167_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e224123224164_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl224121224169_))
                                                        (___kont231786231787_
                                                         _tl224115224153_
                                                         _hd224122224167_)
                                                        (___kont231788231789_))))
                                                (___kont231788231789_))
                                            (___kont231788231789_))
                                        (___kont231788231789_))))
                                (___kont231788231789_))))
                        (___kont231788231789_))))
                (___kont231788231789_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx224054_)
        (let* ((_g224056224069_
                (lambda (_g224057224066_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224057224066_))))
               (_g224055224102_
                (lambda (_g224057224072_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224057224072_))
                      (let ((_e224061224074_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224057224072_))))
                        (let ((_hd224060224077_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224061224074_)))
                              (_tl224059224079_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224061224074_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224059224079_))
                              (let ((_e224064224082_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224059224079_))))
                                (let ((_hd224063224085_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224064224082_)))
                                      (_tl224062224087_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224064224082_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl224062224087_))
                                      ((lambda (_L224090_)
                                         (let ((__tmp233199
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L224090_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp233199)))
                                       _hd224063224085_)
                                      (let ()
                                        (declare (not safe))
                                        (_g224056224069_ _g224057224072_)))))
                              (let ()
                                (declare (not safe))
                                (_g224056224069_ _g224057224072_)))))
                      (let ()
                        (declare (not safe))
                        (_g224056224069_ _g224057224072_))))))
          (declare (not safe))
          (_g224055224102_ _stx224054_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form223288_)
        (let* ((___stx231822231823_ _form223288_)
               (_g223293223450_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231822231823_)))))
          (let ((___kont231824231825_
                 (lambda (_L223974_ _L223975_ _L223976_) '#t))
                (___kont231830231831_
                 (lambda (_L223762_
                          _L223763_
                          _L223764_
                          _L223765_
                          _L223766_
                          _L223767_)
                   '#t))
                (___kont231836231837_
                 (lambda (_L223558_ _L223559_ _L223560_ _L223561_) '#t))
                (___kont231838231839_ (lambda () '#f)))
            (let* ((___match231963231964_
                    (lambda (_e223412223462_
                             _hd223411223465_
                             _tl223410223467_
                             _e223415223470_
                             _hd223414223473_
                             _tl223413223475_
                             _e223418223478_
                             _hd223417223481_
                             _tl223416223483_
                             _e223421223486_
                             _hd223420223489_
                             _tl223419223491_
                             _e223424223494_
                             _hd223423223497_
                             _tl223422223499_
                             _e223427223502_
                             _hd223426223505_
                             _tl223425223507_
                             _e223430223510_
                             _hd223429223513_
                             _tl223428223515_
                             _e223433223518_
                             _hd223432223521_
                             _tl223431223523_
                             _e223436223526_
                             _hd223435223529_
                             _tl223434223531_
                             _e223439223534_
                             _hd223438223537_
                             _tl223437223539_
                             _e223442223542_
                             _hd223441223545_
                             _tl223440223547_
                             _e223445223550_
                             _hd223444223553_
                             _tl223443223555_)
                      (let ((_L223558_ _hd223444223553_)
                            (_L223559_ _hd223435223529_)
                            (_L223560_ _hd223426223505_)
                            (_L223561_ _hd223411223465_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L223561_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L223560_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L223561_ _L223558_))
                                 (let ((__tmp233200
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L223559_
                                           _L223561_))))
                                   (declare (not safe))
                                   (not __tmp233200)))
                            (___kont231836231837_
                             _L223558_
                             _L223559_
                             _L223560_
                             _L223561_)
                            (___kont231838231839_)))))
                   (___match231935231936_
                    (lambda (_e223412223462_
                             _hd223411223465_
                             _tl223410223467_
                             _e223415223470_
                             _hd223414223473_
                             _tl223413223475_
                             _e223418223478_
                             _hd223417223481_
                             _tl223416223483_
                             _e223421223486_
                             _hd223420223489_
                             _tl223419223491_
                             _e223424223494_
                             _hd223423223497_
                             _tl223422223499_
                             _e223427223502_
                             _hd223426223505_
                             _tl223425223507_
                             _e223430223510_
                             _hd223429223513_
                             _tl223428223515_
                             _e223433223518_
                             _hd223432223521_
                             _tl223431223523_
                             _e223436223526_
                             _hd223435223529_
                             _tl223434223531_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl223428223515_))
                          (let ((_e223439223534_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl223428223515_))))
                            (let ((_tl223437223539_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e223439223534_)))
                                  (_hd223438223537_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e223439223534_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd223438223537_))
                                  (let ((_e223442223542_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd223438223537_))))
                                    (let ((_tl223440223547_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223442223542_)))
                                          (_hd223441223545_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223442223542_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd223441223545_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd223441223545_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl223440223547_))
                                                  (let ((_e223445223550_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl223440223547_))))
                                                    (let ((_tl223443223555_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223445223550_)))
                                                          (_hd223444223553_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223445223550_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl223443223555_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl223437223539_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl223413223475_))
                          (___match231963231964_
                           _e223412223462_
                           _hd223411223465_
                           _tl223410223467_
                           _e223415223470_
                           _hd223414223473_
                           _tl223413223475_
                           _e223418223478_
                           _hd223417223481_
                           _tl223416223483_
                           _e223421223486_
                           _hd223420223489_
                           _tl223419223491_
                           _e223424223494_
                           _hd223423223497_
                           _tl223422223499_
                           _e223427223502_
                           _hd223426223505_
                           _tl223425223507_
                           _e223430223510_
                           _hd223429223513_
                           _tl223428223515_
                           _e223433223518_
                           _hd223432223521_
                           _tl223431223523_
                           _e223436223526_
                           _hd223435223529_
                           _tl223434223531_
                           _e223439223534_
                           _hd223438223537_
                           _tl223437223539_
                           _e223442223542_
                           _hd223441223545_
                           _tl223440223547_
                           _e223445223550_
                           _hd223444223553_
                           _tl223443223555_)
                          (___kont231838231839_))
                      (___kont231838231839_))
                  (___kont231838231839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont231838231839_))
                                              (___kont231838231839_))
                                          (___kont231838231839_))))
                                  (___kont231838231839_))))
                          (___kont231838231839_))))
                   (___match231865231866_
                    (lambda (_e223348223602_
                             _hd223347223605_
                             _tl223346223607_
                             ___splice231832231833_
                             _target223349223610_
                             _tl223351223612_)
                      (letrec ((_loop223352223615_
                                (lambda (_hd223350223618_ _arg223356223620_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd223350223618_))
                                      (let ((_e223353223623_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd223350223618_))))
                                        (let ((_lp-tl223355223628_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223353223623_)))
                                              (_lp-hd223354223626_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223353223623_))))
                                          (let ((__tmp233215
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd223354223626_
                                                         _arg223356223620_))))
                                            (declare (not safe))
                                            (_loop223352223615_
                                             _lp-tl223355223628_
                                             __tmp233215))))
                                      (let ((_arg223357223631_
                                             (reverse _arg223356223620_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl223346223607_))
                                            (let ((_e223360223634_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl223346223607_))))
                                              (let ((_tl223358223639_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e223360223634_)))
                                                    (_hd223359223637_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e223360223634_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd223359223637_))
                                                    (let ((_e223363223642_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd223359223637_))))
                                                      (let ((_tl223361223647_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e223363223642_)))
                    (_hd223362223645_
                     (let () (declare (not safe)) (##car _e223363223642_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd223362223645_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd223362223645_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl223361223647_))
                            (let ((_e223366223650_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl223361223647_))))
                              (let ((_tl223364223655_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e223366223650_)))
                                    (_hd223365223653_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e223366223650_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd223365223653_))
                                    (let ((_e223369223658_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd223365223653_))))
                                      (let ((_tl223367223663_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e223369223658_)))
                                            (_hd223368223661_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e223369223658_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd223368223661_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd223368223661_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl223367223663_))
                                                    (let ((_e223372223666_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl223367223663_))))
                                                      (let ((_tl223370223671_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e223372223666_)))
                    (_hd223371223669_
                     (let () (declare (not safe)) (##car _e223372223666_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl223370223671_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl223364223655_))
                        (let ((_e223375223674_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl223364223655_))))
                          (let ((_tl223373223679_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e223375223674_)))
                                (_hd223374223677_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e223375223674_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd223374223677_))
                                (let ((_e223378223682_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd223374223677_))))
                                  (let ((_tl223376223687_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e223378223682_)))
                                        (_hd223377223685_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e223378223682_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd223377223685_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd223377223685_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl223376223687_))
                                                (let ((_e223381223690_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl223376223687_))))
                                                  (let ((_tl223379223695_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e223381223690_)))
                                                        (_hd223380223693_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e223381223690_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl223379223695_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl223373223679_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl223373223679_))
                              '1)
                        (let ((___splice231834231835_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl223373223679_
                                  '1))))
                          (let ((_tl223384223700_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice231834231835_ '1)))
                                (_target223382223698_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice231834231835_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl223384223700_))
                                (let ((_e223393223703_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl223384223700_))))
                                  (let ((_tl223391223708_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e223393223703_)))
                                        (_hd223392223706_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e223393223703_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd223392223706_))
                                        (let ((_e223396223711_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd223392223706_))))
                                          (let ((_tl223394223716_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e223396223711_)))
                                                (_hd223395223714_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e223396223711_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd223395223714_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd223395223714_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl223394223716_))
                                                        (let ((_e223399223719_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl223394223716_))))
                  (let ((_tl223397223724_
                         (let () (declare (not safe)) (##cdr _e223399223719_)))
                        (_hd223398223722_
                         (let ()
                           (declare (not safe))
                           (##car _e223399223719_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl223397223724_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl223391223708_))
                            (letrec ((_loop223385223727_
                                      (lambda (_hd223383223730_
                                               _xarg223389223732_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd223383223730_))
                                            (let ((_e223386223735_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd223383223730_))))
                                              (let ((_lp-tl223388223740_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e223386223735_)))
                                                    (_lp-hd223387223738_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e223386223735_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd223387223738_))
                                                    (let ((_e223402223743_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd223387223738_))))
                                                      (let ((_tl223400223748_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e223402223743_)))
                    (_hd223401223746_
                     (let () (declare (not safe)) (##car _e223402223743_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd223401223746_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd223401223746_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl223400223748_))
                            (let ((_e223405223751_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl223400223748_))))
                              (let ((_tl223403223756_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e223405223751_)))
                                    (_hd223404223754_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e223405223751_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl223403223756_))
                                    (let ((__tmp233214
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd223404223754_
                                                   _xarg223389223732_))))
                                      (declare (not safe))
                                      (_loop223385223727_
                                       _lp-tl223388223740_
                                       __tmp233214))
                                    (___match231935231936_
                                     _e223348223602_
                                     _hd223347223605_
                                     _tl223346223607_
                                     _e223360223634_
                                     _hd223359223637_
                                     _tl223358223639_
                                     _e223363223642_
                                     _hd223362223645_
                                     _tl223361223647_
                                     _e223366223650_
                                     _hd223365223653_
                                     _tl223364223655_
                                     _e223369223658_
                                     _hd223368223661_
                                     _tl223367223663_
                                     _e223372223666_
                                     _hd223371223669_
                                     _tl223370223671_
                                     _e223375223674_
                                     _hd223374223677_
                                     _tl223373223679_
                                     _e223378223682_
                                     _hd223377223685_
                                     _tl223376223687_
                                     _e223381223690_
                                     _hd223380223693_
                                     _tl223379223695_))))
                            (___match231935231936_
                             _e223348223602_
                             _hd223347223605_
                             _tl223346223607_
                             _e223360223634_
                             _hd223359223637_
                             _tl223358223639_
                             _e223363223642_
                             _hd223362223645_
                             _tl223361223647_
                             _e223366223650_
                             _hd223365223653_
                             _tl223364223655_
                             _e223369223658_
                             _hd223368223661_
                             _tl223367223663_
                             _e223372223666_
                             _hd223371223669_
                             _tl223370223671_
                             _e223375223674_
                             _hd223374223677_
                             _tl223373223679_
                             _e223378223682_
                             _hd223377223685_
                             _tl223376223687_
                             _e223381223690_
                             _hd223380223693_
                             _tl223379223695_))
                        (___match231935231936_
                         _e223348223602_
                         _hd223347223605_
                         _tl223346223607_
                         _e223360223634_
                         _hd223359223637_
                         _tl223358223639_
                         _e223363223642_
                         _hd223362223645_
                         _tl223361223647_
                         _e223366223650_
                         _hd223365223653_
                         _tl223364223655_
                         _e223369223658_
                         _hd223368223661_
                         _tl223367223663_
                         _e223372223666_
                         _hd223371223669_
                         _tl223370223671_
                         _e223375223674_
                         _hd223374223677_
                         _tl223373223679_
                         _e223378223682_
                         _hd223377223685_
                         _tl223376223687_
                         _e223381223690_
                         _hd223380223693_
                         _tl223379223695_))
                    (___match231935231936_
                     _e223348223602_
                     _hd223347223605_
                     _tl223346223607_
                     _e223360223634_
                     _hd223359223637_
                     _tl223358223639_
                     _e223363223642_
                     _hd223362223645_
                     _tl223361223647_
                     _e223366223650_
                     _hd223365223653_
                     _tl223364223655_
                     _e223369223658_
                     _hd223368223661_
                     _tl223367223663_
                     _e223372223666_
                     _hd223371223669_
                     _tl223370223671_
                     _e223375223674_
                     _hd223374223677_
                     _tl223373223679_
                     _e223378223682_
                     _hd223377223685_
                     _tl223376223687_
                     _e223381223690_
                     _hd223380223693_
                     _tl223379223695_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match231935231936_
                                                     _e223348223602_
                                                     _hd223347223605_
                                                     _tl223346223607_
                                                     _e223360223634_
                                                     _hd223359223637_
                                                     _tl223358223639_
                                                     _e223363223642_
                                                     _hd223362223645_
                                                     _tl223361223647_
                                                     _e223366223650_
                                                     _hd223365223653_
                                                     _tl223364223655_
                                                     _e223369223658_
                                                     _hd223368223661_
                                                     _tl223367223663_
                                                     _e223372223666_
                                                     _hd223371223669_
                                                     _tl223370223671_
                                                     _e223375223674_
                                                     _hd223374223677_
                                                     _tl223373223679_
                                                     _e223378223682_
                                                     _hd223377223685_
                                                     _tl223376223687_
                                                     _e223381223690_
                                                     _hd223380223693_
                                                     _tl223379223695_))))
                                            (let ((_xarg223390223759_
                                                   (reverse _xarg223389223732_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl223358223639_))
                                                  (let ((_L223762_
                                                         _hd223398223722_)
                                                        (_L223763_
                                                         _xarg223390223759_)
                                                        (_L223764_
                                                         _hd223380223693_)
                                                        (_L223765_
                                                         _hd223371223669_)
                                                        (_L223766_
                                                         _tl223351223612_)
                                                        (_L223767_
                                                         _arg223357223631_))
                                                    (if (and (let ((__tmp233212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp233213
                                   (lambda (_g223810223813_ _g223811223815_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g223810223813_
                                             _g223811223815_)))))
                              (declare (not safe))
                              (foldr1 __tmp233213 '() _L223767_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp233212))
                     (let () (declare (not safe)) (gx#identifier? _L223766_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L223765_ 'apply))
                     (fx= (length (let ((__tmp233210
                                         (lambda (_g223817223820_
                                                  _g223818223822_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g223817223820_
                                                   _g223818223822_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp233210 '() _L223767_)))
                          (length (let ((__tmp233211
                                         (lambda (_g223824223827_
                                                  _g223825223829_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g223824223827_
                                                   _g223825223829_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp233211 '() _L223763_))))
                     (let ((__tmp233208
                            (let ((__tmp233209
                                   (lambda (_g223831223834_ _g223832223836_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g223831223834_
                                             _g223832223836_)))))
                              (declare (not safe))
                              (foldr1 __tmp233209 '() _L223767_)))
                           (__tmp233206
                            (let ((__tmp233207
                                   (lambda (_g223838223841_ _g223839223843_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g223838223841_
                                             _g223839223843_)))))
                              (declare (not safe))
                              (foldr1 __tmp233207 '() _L223763_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp233208 __tmp233206))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L223766_ _L223762_))
                     (let ((__tmp233201
                            (let ((__tmp233205
                                   (lambda (_g223845223847_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g223845223847_
                                        _L223764_))))
                                  (__tmp233202
                                   (let ((__tmp233204
                                          (lambda (_g223849223852_
                                                   _g223850223854_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g223849223852_
                                                    _g223850223854_))))
                                         (__tmp233203
                                          (let ()
                                            (declare (not safe))
                                            (cons _L223766_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp233204
                                             __tmp233203
                                             _L223767_))))
                              (declare (not safe))
                              (find __tmp233205 __tmp233202))))
                       (declare (not safe))
                       (not __tmp233201)))
                (___kont231830231831_
                 _L223762_
                 _L223763_
                 _L223764_
                 _L223765_
                 _L223766_
                 _L223767_)
                (___match231935231936_
                 _e223348223602_
                 _hd223347223605_
                 _tl223346223607_
                 _e223360223634_
                 _hd223359223637_
                 _tl223358223639_
                 _e223363223642_
                 _hd223362223645_
                 _tl223361223647_
                 _e223366223650_
                 _hd223365223653_
                 _tl223364223655_
                 _e223369223658_
                 _hd223368223661_
                 _tl223367223663_
                 _e223372223666_
                 _hd223371223669_
                 _tl223370223671_
                 _e223375223674_
                 _hd223374223677_
                 _tl223373223679_
                 _e223378223682_
                 _hd223377223685_
                 _tl223376223687_
                 _e223381223690_
                 _hd223380223693_
                 _tl223379223695_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match231935231936_
                                                   _e223348223602_
                                                   _hd223347223605_
                                                   _tl223346223607_
                                                   _e223360223634_
                                                   _hd223359223637_
                                                   _tl223358223639_
                                                   _e223363223642_
                                                   _hd223362223645_
                                                   _tl223361223647_
                                                   _e223366223650_
                                                   _hd223365223653_
                                                   _tl223364223655_
                                                   _e223369223658_
                                                   _hd223368223661_
                                                   _tl223367223663_
                                                   _e223372223666_
                                                   _hd223371223669_
                                                   _tl223370223671_
                                                   _e223375223674_
                                                   _hd223374223677_
                                                   _tl223373223679_
                                                   _e223378223682_
                                                   _hd223377223685_
                                                   _tl223376223687_
                                                   _e223381223690_
                                                   _hd223380223693_
                                                   _tl223379223695_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop223385223727_ _target223382223698_ '())))
                            (___match231935231936_
                             _e223348223602_
                             _hd223347223605_
                             _tl223346223607_
                             _e223360223634_
                             _hd223359223637_
                             _tl223358223639_
                             _e223363223642_
                             _hd223362223645_
                             _tl223361223647_
                             _e223366223650_
                             _hd223365223653_
                             _tl223364223655_
                             _e223369223658_
                             _hd223368223661_
                             _tl223367223663_
                             _e223372223666_
                             _hd223371223669_
                             _tl223370223671_
                             _e223375223674_
                             _hd223374223677_
                             _tl223373223679_
                             _e223378223682_
                             _hd223377223685_
                             _tl223376223687_
                             _e223381223690_
                             _hd223380223693_
                             _tl223379223695_))
                        (___match231935231936_
                         _e223348223602_
                         _hd223347223605_
                         _tl223346223607_
                         _e223360223634_
                         _hd223359223637_
                         _tl223358223639_
                         _e223363223642_
                         _hd223362223645_
                         _tl223361223647_
                         _e223366223650_
                         _hd223365223653_
                         _tl223364223655_
                         _e223369223658_
                         _hd223368223661_
                         _tl223367223663_
                         _e223372223666_
                         _hd223371223669_
                         _tl223370223671_
                         _e223375223674_
                         _hd223374223677_
                         _tl223373223679_
                         _e223378223682_
                         _hd223377223685_
                         _tl223376223687_
                         _e223381223690_
                         _hd223380223693_
                         _tl223379223695_))))
                (___match231935231936_
                 _e223348223602_
                 _hd223347223605_
                 _tl223346223607_
                 _e223360223634_
                 _hd223359223637_
                 _tl223358223639_
                 _e223363223642_
                 _hd223362223645_
                 _tl223361223647_
                 _e223366223650_
                 _hd223365223653_
                 _tl223364223655_
                 _e223369223658_
                 _hd223368223661_
                 _tl223367223663_
                 _e223372223666_
                 _hd223371223669_
                 _tl223370223671_
                 _e223375223674_
                 _hd223374223677_
                 _tl223373223679_
                 _e223378223682_
                 _hd223377223685_
                 _tl223376223687_
                 _e223381223690_
                 _hd223380223693_
                 _tl223379223695_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match231935231936_
                                                     _e223348223602_
                                                     _hd223347223605_
                                                     _tl223346223607_
                                                     _e223360223634_
                                                     _hd223359223637_
                                                     _tl223358223639_
                                                     _e223363223642_
                                                     _hd223362223645_
                                                     _tl223361223647_
                                                     _e223366223650_
                                                     _hd223365223653_
                                                     _tl223364223655_
                                                     _e223369223658_
                                                     _hd223368223661_
                                                     _tl223367223663_
                                                     _e223372223666_
                                                     _hd223371223669_
                                                     _tl223370223671_
                                                     _e223375223674_
                                                     _hd223374223677_
                                                     _tl223373223679_
                                                     _e223378223682_
                                                     _hd223377223685_
                                                     _tl223376223687_
                                                     _e223381223690_
                                                     _hd223380223693_
                                                     _tl223379223695_))
                                                (___match231935231936_
                                                 _e223348223602_
                                                 _hd223347223605_
                                                 _tl223346223607_
                                                 _e223360223634_
                                                 _hd223359223637_
                                                 _tl223358223639_
                                                 _e223363223642_
                                                 _hd223362223645_
                                                 _tl223361223647_
                                                 _e223366223650_
                                                 _hd223365223653_
                                                 _tl223364223655_
                                                 _e223369223658_
                                                 _hd223368223661_
                                                 _tl223367223663_
                                                 _e223372223666_
                                                 _hd223371223669_
                                                 _tl223370223671_
                                                 _e223375223674_
                                                 _hd223374223677_
                                                 _tl223373223679_
                                                 _e223378223682_
                                                 _hd223377223685_
                                                 _tl223376223687_
                                                 _e223381223690_
                                                 _hd223380223693_
                                                 _tl223379223695_))))
                                        (___match231935231936_
                                         _e223348223602_
                                         _hd223347223605_
                                         _tl223346223607_
                                         _e223360223634_
                                         _hd223359223637_
                                         _tl223358223639_
                                         _e223363223642_
                                         _hd223362223645_
                                         _tl223361223647_
                                         _e223366223650_
                                         _hd223365223653_
                                         _tl223364223655_
                                         _e223369223658_
                                         _hd223368223661_
                                         _tl223367223663_
                                         _e223372223666_
                                         _hd223371223669_
                                         _tl223370223671_
                                         _e223375223674_
                                         _hd223374223677_
                                         _tl223373223679_
                                         _e223378223682_
                                         _hd223377223685_
                                         _tl223376223687_
                                         _e223381223690_
                                         _hd223380223693_
                                         _tl223379223695_))))
                                (___match231935231936_
                                 _e223348223602_
                                 _hd223347223605_
                                 _tl223346223607_
                                 _e223360223634_
                                 _hd223359223637_
                                 _tl223358223639_
                                 _e223363223642_
                                 _hd223362223645_
                                 _tl223361223647_
                                 _e223366223650_
                                 _hd223365223653_
                                 _tl223364223655_
                                 _e223369223658_
                                 _hd223368223661_
                                 _tl223367223663_
                                 _e223372223666_
                                 _hd223371223669_
                                 _tl223370223671_
                                 _e223375223674_
                                 _hd223374223677_
                                 _tl223373223679_
                                 _e223378223682_
                                 _hd223377223685_
                                 _tl223376223687_
                                 _e223381223690_
                                 _hd223380223693_
                                 _tl223379223695_))))
                        (___match231935231936_
                         _e223348223602_
                         _hd223347223605_
                         _tl223346223607_
                         _e223360223634_
                         _hd223359223637_
                         _tl223358223639_
                         _e223363223642_
                         _hd223362223645_
                         _tl223361223647_
                         _e223366223650_
                         _hd223365223653_
                         _tl223364223655_
                         _e223369223658_
                         _hd223368223661_
                         _tl223367223663_
                         _e223372223666_
                         _hd223371223669_
                         _tl223370223671_
                         _e223375223674_
                         _hd223374223677_
                         _tl223373223679_
                         _e223378223682_
                         _hd223377223685_
                         _tl223376223687_
                         _e223381223690_
                         _hd223380223693_
                         _tl223379223695_))
                    (___match231935231936_
                     _e223348223602_
                     _hd223347223605_
                     _tl223346223607_
                     _e223360223634_
                     _hd223359223637_
                     _tl223358223639_
                     _e223363223642_
                     _hd223362223645_
                     _tl223361223647_
                     _e223366223650_
                     _hd223365223653_
                     _tl223364223655_
                     _e223369223658_
                     _hd223368223661_
                     _tl223367223663_
                     _e223372223666_
                     _hd223371223669_
                     _tl223370223671_
                     _e223375223674_
                     _hd223374223677_
                     _tl223373223679_
                     _e223378223682_
                     _hd223377223685_
                     _tl223376223687_
                     _e223381223690_
                     _hd223380223693_
                     _tl223379223695_))
                (___kont231838231839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont231838231839_))
                                            (___kont231838231839_))
                                        (___kont231838231839_))))
                                (___kont231838231839_))))
                        (___kont231838231839_))
                    (___kont231838231839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont231838231839_))
                                                (___kont231838231839_))
                                            (___kont231838231839_))))
                                    (___kont231838231839_))))
                            (___kont231838231839_))
                        (___kont231838231839_))
                    (___kont231838231839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont231838231839_))))
                                            (___kont231838231839_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop223352223615_ _target223349223610_ '())))))
                   (___match231853231854_
                    (lambda (_e223300223862_
                             _hd223299223865_
                             _tl223298223867_
                             ___splice231826231827_
                             _target223301223870_
                             _tl223303223872_)
                      (letrec ((_loop223304223875_
                                (lambda (_hd223302223878_ _arg223308223880_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd223302223878_))
                                      (let ((_e223305223883_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd223302223878_))))
                                        (let ((_lp-tl223307223888_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223305223883_)))
                                              (_lp-hd223306223886_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223305223883_))))
                                          (let ((__tmp233229
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd223306223886_
                                                         _arg223308223880_))))
                                            (declare (not safe))
                                            (_loop223304223875_
                                             _lp-tl223307223888_
                                             __tmp233229))))
                                      (let ((_arg223309223891_
                                             (reverse _arg223308223880_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl223298223867_))
                                            (let ((_e223312223894_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl223298223867_))))
                                              (let ((_tl223310223899_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e223312223894_)))
                                                    (_hd223311223897_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e223312223894_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd223311223897_))
                                                    (let ((_e223315223902_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd223311223897_))))
                                                      (let ((_tl223313223907_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e223315223902_)))
                    (_hd223314223905_
                     (let () (declare (not safe)) (##car _e223315223902_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd223314223905_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd223314223905_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl223313223907_))
                            (let ((_e223318223910_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl223313223907_))))
                              (let ((_tl223316223915_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e223318223910_)))
                                    (_hd223317223913_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e223318223910_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd223317223913_))
                                    (let ((_e223321223918_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd223317223913_))))
                                      (let ((_tl223319223923_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e223321223918_)))
                                            (_hd223320223921_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e223321223918_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd223320223921_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd223320223921_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl223319223923_))
                                                    (let ((_e223324223926_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl223319223923_))))
                                                      (let ((_tl223322223931_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e223324223926_)))
                    (_hd223323223929_
                     (let () (declare (not safe)) (##car _e223324223926_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl223322223931_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl223316223915_))
                        (let ((___splice231828231829_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl223316223915_
                                  '0))))
                          (let ((_tl223327223936_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice231828231829_ '1)))
                                (_target223325223934_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice231828231829_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl223327223936_))
                                (letrec ((_loop223328223939_
                                          (lambda (_hd223326223942_
                                                   _xarg223332223944_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd223326223942_))
                                                (let ((_e223329223947_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd223326223942_))))
                                                  (let ((_lp-tl223331223952_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e223329223947_)))
                                                        (_lp-hd223330223950_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e223329223947_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd223330223950_))
                                                        (let ((_e223336223955_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd223330223950_))))
                  (let ((_tl223334223960_
                         (let () (declare (not safe)) (##cdr _e223336223955_)))
                        (_hd223335223958_
                         (let ()
                           (declare (not safe))
                           (##car _e223336223955_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd223335223958_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd223335223958_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl223334223960_))
                                (let ((_e223339223963_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl223334223960_))))
                                  (let ((_tl223337223968_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e223339223963_)))
                                        (_hd223338223966_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e223339223963_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl223337223968_))
                                        (let ((__tmp233228
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd223338223966_
                                                       _xarg223332223944_))))
                                          (declare (not safe))
                                          (_loop223328223939_
                                           _lp-tl223331223952_
                                           __tmp233228))
                                        (___match231865231866_
                                         _e223300223862_
                                         _hd223299223865_
                                         _tl223298223867_
                                         ___splice231826231827_
                                         _target223301223870_
                                         _tl223303223872_))))
                                (___match231865231866_
                                 _e223300223862_
                                 _hd223299223865_
                                 _tl223298223867_
                                 ___splice231826231827_
                                 _target223301223870_
                                 _tl223303223872_))
                            (___match231865231866_
                             _e223300223862_
                             _hd223299223865_
                             _tl223298223867_
                             ___splice231826231827_
                             _target223301223870_
                             _tl223303223872_))
                        (___match231865231866_
                         _e223300223862_
                         _hd223299223865_
                         _tl223298223867_
                         ___splice231826231827_
                         _target223301223870_
                         _tl223303223872_))))
                (___match231865231866_
                 _e223300223862_
                 _hd223299223865_
                 _tl223298223867_
                 ___splice231826231827_
                 _target223301223870_
                 _tl223303223872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg223333223971_
                                                       (reverse _xarg223332223944_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl223310223899_))
                                                      (let ((_L223974_
                                                             _xarg223333223971_)
                                                            (_L223975_
                                                             _hd223323223929_)
                                                            (_L223976_
                                                             _arg223309223891_))
                                                        (if (and (let ((__tmp233226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp233227
                                       (lambda (_g224004224007_
                                                _g224005224009_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g224004224007_
                                                 _g224005224009_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp233227 '() _L223976_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp233226))
                         (fx= (length (let ((__tmp233224
                                             (lambda (_g224011224014_
                                                      _g224012224016_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g224011224014_
                                                       _g224012224016_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp233224 '() _L223976_)))
                              (length (let ((__tmp233225
                                             (lambda (_g224018224021_
                                                      _g224019224023_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g224018224021_
                                                       _g224019224023_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp233225 '() _L223974_))))
                         (let ((__tmp233222
                                (let ((__tmp233223
                                       (lambda (_g224025224028_
                                                _g224026224030_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g224025224028_
                                                 _g224026224030_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp233223 '() _L223976_)))
                               (__tmp233220
                                (let ((__tmp233221
                                       (lambda (_g224032224035_
                                                _g224033224037_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g224032224035_
                                                 _g224033224037_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp233221 '() _L223974_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp233222
                                    __tmp233220))
                         (let ((__tmp233216
                                (let ((__tmp233219
                                       (lambda (_g224039224041_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g224039224041_
                                            _L223975_))))
                                      (__tmp233217
                                       (let ((__tmp233218
                                              (lambda (_g224043224046_
                                                       _g224044224048_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g224043224046_
                                                        _g224044224048_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp233218 '() _L223976_))))
                                  (declare (not safe))
                                  (find __tmp233219 __tmp233217))))
                           (declare (not safe))
                           (not __tmp233216)))
                    (___kont231824231825_ _L223974_ _L223975_ _L223976_)
                    (___match231865231866_
                     _e223300223862_
                     _hd223299223865_
                     _tl223298223867_
                     ___splice231826231827_
                     _target223301223870_
                     _tl223303223872_)))
              (___match231865231866_
               _e223300223862_
               _hd223299223865_
               _tl223298223867_
               ___splice231826231827_
               _target223301223870_
               _tl223303223872_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop223328223939_
                                     _target223325223934_
                                     '())))
                                (___match231865231866_
                                 _e223300223862_
                                 _hd223299223865_
                                 _tl223298223867_
                                 ___splice231826231827_
                                 _target223301223870_
                                 _tl223303223872_))))
                        (___match231865231866_
                         _e223300223862_
                         _hd223299223865_
                         _tl223298223867_
                         ___splice231826231827_
                         _target223301223870_
                         _tl223303223872_))
                    (___match231865231866_
                     _e223300223862_
                     _hd223299223865_
                     _tl223298223867_
                     ___splice231826231827_
                     _target223301223870_
                     _tl223303223872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match231865231866_
                                                     _e223300223862_
                                                     _hd223299223865_
                                                     _tl223298223867_
                                                     ___splice231826231827_
                                                     _target223301223870_
                                                     _tl223303223872_))
                                                (___match231865231866_
                                                 _e223300223862_
                                                 _hd223299223865_
                                                 _tl223298223867_
                                                 ___splice231826231827_
                                                 _target223301223870_
                                                 _tl223303223872_))
                                            (___match231865231866_
                                             _e223300223862_
                                             _hd223299223865_
                                             _tl223298223867_
                                             ___splice231826231827_
                                             _target223301223870_
                                             _tl223303223872_))))
                                    (___match231865231866_
                                     _e223300223862_
                                     _hd223299223865_
                                     _tl223298223867_
                                     ___splice231826231827_
                                     _target223301223870_
                                     _tl223303223872_))))
                            (___match231865231866_
                             _e223300223862_
                             _hd223299223865_
                             _tl223298223867_
                             ___splice231826231827_
                             _target223301223870_
                             _tl223303223872_))
                        (___match231865231866_
                         _e223300223862_
                         _hd223299223865_
                         _tl223298223867_
                         ___splice231826231827_
                         _target223301223870_
                         _tl223303223872_))
                    (___match231865231866_
                     _e223300223862_
                     _hd223299223865_
                     _tl223298223867_
                     ___splice231826231827_
                     _target223301223870_
                     _tl223303223872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match231865231866_
                                                     _e223300223862_
                                                     _hd223299223865_
                                                     _tl223298223867_
                                                     ___splice231826231827_
                                                     _target223301223870_
                                                     _tl223303223872_))))
                                            (___match231865231866_
                                             _e223300223862_
                                             _hd223299223865_
                                             _tl223298223867_
                                             ___splice231826231827_
                                             _target223301223870_
                                             _tl223303223872_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop223304223875_ _target223301223870_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx231822231823_))
                  (let ((_e223300223862_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx231822231823_))))
                    (let ((_tl223298223867_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223300223862_)))
                          (_hd223299223865_
                           (let ()
                             (declare (not safe))
                             (##car _e223300223862_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd223299223865_))
                          (let ((___splice231826231827_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd223299223865_
                                    '0))))
                            (let ((_tl223303223872_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice231826231827_ '1)))
                                  (_target223301223870_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice231826231827_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl223303223872_))
                                  (___match231853231854_
                                   _e223300223862_
                                   _hd223299223865_
                                   _tl223298223867_
                                   ___splice231826231827_
                                   _target223301223870_
                                   _tl223303223872_)
                                  (___match231865231866_
                                   _e223300223862_
                                   _hd223299223865_
                                   _tl223298223867_
                                   ___splice231826231827_
                                   _target223301223870_
                                   _tl223303223872_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223298223867_))
                              (let ((_e223415223470_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223298223867_))))
                                (let ((_tl223413223475_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223415223470_)))
                                      (_hd223414223473_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223415223470_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd223414223473_))
                                      (let ((_e223418223478_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd223414223473_))))
                                        (let ((_tl223416223483_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223418223478_)))
                                              (_hd223417223481_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223418223478_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd223417223481_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd223417223481_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl223416223483_))
                                                      (let ((_e223421223486_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl223416223483_))))
                (let ((_tl223419223491_
                       (let () (declare (not safe)) (##cdr _e223421223486_)))
                      (_hd223420223489_
                       (let () (declare (not safe)) (##car _e223421223486_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd223420223489_))
                      (let ((_e223424223494_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd223420223489_))))
                        (let ((_tl223422223499_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223424223494_)))
                              (_hd223423223497_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223424223494_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd223423223497_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd223423223497_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223422223499_))
                                      (let ((_e223427223502_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223422223499_))))
                                        (let ((_tl223425223507_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223427223502_)))
                                              (_hd223426223505_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223427223502_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223425223507_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl223419223491_))
                                                  (let ((_e223430223510_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl223419223491_))))
                                                    (let ((_tl223428223515_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223430223510_)))
                                                          (_hd223429223513_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223430223510_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd223429223513_))
                                                          (let ((_e223433223518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd223429223513_))))
                    (let ((_tl223431223523_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223433223518_)))
                          (_hd223432223521_
                           (let ()
                             (declare (not safe))
                             (##car _e223433223518_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd223432223521_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd223432223521_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl223431223523_))
                                  (let ((_e223436223526_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl223431223523_))))
                                    (let ((_tl223434223531_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223436223526_)))
                                          (_hd223435223529_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223436223526_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl223434223531_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl223428223515_))
                                              (let ((_e223439223534_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl223428223515_))))
                                                (let ((_tl223437223539_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e223439223534_)))
                                                      (_hd223438223537_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e223439223534_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd223438223537_))
                                                      (let ((_e223442223542_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd223438223537_))))
                (let ((_tl223440223547_
                       (let () (declare (not safe)) (##cdr _e223442223542_)))
                      (_hd223441223545_
                       (let () (declare (not safe)) (##car _e223442223542_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd223441223545_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd223441223545_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223440223547_))
                              (let ((_e223445223550_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223440223547_))))
                                (let ((_tl223443223555_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223445223550_)))
                                      (_hd223444223553_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223445223550_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl223443223555_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl223437223539_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223413223475_))
                                              (___match231963231964_
                                               _e223300223862_
                                               _hd223299223865_
                                               _tl223298223867_
                                               _e223415223470_
                                               _hd223414223473_
                                               _tl223413223475_
                                               _e223418223478_
                                               _hd223417223481_
                                               _tl223416223483_
                                               _e223421223486_
                                               _hd223420223489_
                                               _tl223419223491_
                                               _e223424223494_
                                               _hd223423223497_
                                               _tl223422223499_
                                               _e223427223502_
                                               _hd223426223505_
                                               _tl223425223507_
                                               _e223430223510_
                                               _hd223429223513_
                                               _tl223428223515_
                                               _e223433223518_
                                               _hd223432223521_
                                               _tl223431223523_
                                               _e223436223526_
                                               _hd223435223529_
                                               _tl223434223531_
                                               _e223439223534_
                                               _hd223438223537_
                                               _tl223437223539_
                                               _e223442223542_
                                               _hd223441223545_
                                               _tl223440223547_
                                               _e223445223550_
                                               _hd223444223553_
                                               _tl223443223555_)
                                              (___kont231838231839_))
                                          (___kont231838231839_))
                                      (___kont231838231839_))))
                              (___kont231838231839_))
                          (___kont231838231839_))
                      (___kont231838231839_))))
              (___kont231838231839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont231838231839_))
                                          (___kont231838231839_))))
                                  (___kont231838231839_))
                              (___kont231838231839_))
                          (___kont231838231839_))))
                  (___kont231838231839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont231838231839_))
                                              (___kont231838231839_))))
                                      (___kont231838231839_))
                                  (___kont231838231839_))
                              (___kont231838231839_))))
                      (___kont231838231839_))))
              (___kont231838231839_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont231838231839_))
                                              (___kont231838231839_))))
                                      (___kont231838231839_))))
                              (___kont231838231839_)))))
                  (___kont231838231839_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form222756_)
        (let* ((___stx231966231967_ _form222756_)
               (_g222760222884_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx231966231967_)))))
          (let ((___kont231968231969_
                 (lambda (_L223254_ _L223255_ _L223256_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L223255_))))
                (___kont231974231975_
                 (lambda (_L223102_ _L223103_ _L223104_ _L223105_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L223102_))))
                (___kont231978231979_
                 (lambda (_L222969_ _L222970_ _L222971_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L222969_)))))
            (let* ((___match232075232076_
                    (lambda (_e222852222889_
                             _hd222851222892_
                             _tl222850222894_
                             _e222855222897_
                             _hd222854222900_
                             _tl222853222902_
                             _e222858222905_
                             _hd222857222908_
                             _tl222856222910_
                             _e222861222913_
                             _hd222860222916_
                             _tl222859222918_
                             _e222864222921_
                             _hd222863222924_
                             _tl222862222926_
                             _e222867222929_
                             _hd222866222932_
                             _tl222865222934_
                             _e222870222937_
                             _hd222869222940_
                             _tl222868222942_
                             _e222873222945_
                             _hd222872222948_
                             _tl222871222950_
                             _e222876222953_
                             _hd222875222956_
                             _tl222874222958_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl222868222942_))
                          (let ((_e222879222961_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl222868222942_))))
                            (let ((_tl222877222966_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e222879222961_)))
                                  (_hd222878222964_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e222879222961_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl222877222966_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222853222902_))
                                      (___kont231978231979_
                                       _hd222875222956_
                                       _hd222866222932_
                                       _hd222851222892_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222760222884_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g222760222884_)))))
                          (let () (declare (not safe)) (_g222760222884_)))))
                   (___match232005232006_
                    (lambda (_e222813223006_
                             _hd222812223009_
                             _tl222811223011_
                             ___splice231976231977_
                             _target222814223014_
                             _tl222816223016_)
                      (letrec ((_loop222817223019_
                                (lambda (_hd222815223022_ _arg222821223024_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd222815223022_))
                                      (let ((_e222818223027_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd222815223022_))))
                                        (let ((_lp-tl222820223032_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222818223027_)))
                                              (_lp-hd222819223030_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222818223027_))))
                                          (let ((__tmp233230
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd222819223030_
                                                         _arg222821223024_))))
                                            (declare (not safe))
                                            (_loop222817223019_
                                             _lp-tl222820223032_
                                             __tmp233230))))
                                      (let ((_arg222822223035_
                                             (reverse _arg222821223024_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl222811223011_))
                                            (let ((_e222825223038_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl222811223011_))))
                                              (let ((_tl222823223043_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e222825223038_)))
                                                    (_hd222824223041_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e222825223038_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd222824223041_))
                                                    (let ((_e222828223046_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd222824223041_))))
                                                      (let ((_tl222826223051_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e222828223046_)))
                    (_hd222827223049_
                     (let () (declare (not safe)) (##car _e222828223046_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd222827223049_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd222827223049_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl222826223051_))
                            (let ((_e222831223054_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl222826223051_))))
                              (let ((_tl222829223059_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e222831223054_)))
                                    (_hd222830223057_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e222831223054_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd222830223057_))
                                    (let ((_e222834223062_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd222830223057_))))
                                      (let ((_tl222832223067_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e222834223062_)))
                                            (_hd222833223065_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e222834223062_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd222833223065_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd222833223065_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl222832223067_))
                                                    (let ((_e222837223070_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl222832223067_))))
                                                      (let ((_tl222835223075_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e222837223070_)))
                    (_hd222836223073_
                     (let () (declare (not safe)) (##car _e222837223070_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl222835223075_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl222829223059_))
                        (let ((_e222840223078_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl222829223059_))))
                          (let ((_tl222838223083_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222840223078_)))
                                (_hd222839223081_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222840223078_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd222839223081_))
                                (let ((_e222843223086_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd222839223081_))))
                                  (let ((_tl222841223091_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222843223086_)))
                                        (_hd222842223089_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222843223086_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd222842223089_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd222842223089_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl222841223091_))
                                                (let ((_e222846223094_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl222841223091_))))
                                                  (let ((_tl222844223099_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e222846223094_)))
                                                        (_hd222845223097_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e222846223094_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl222844223099_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl222823223043_))
                                                            (___kont231974231975_
                                                             _hd222845223097_
                                                             _hd222836223073_
                                                             _tl222816223016_
                                                             _arg222822223035_)
                                                            (___match232075232076_
                                                             _e222813223006_
                                                             _hd222812223009_
                                                             _tl222811223011_
                                                             _e222825223038_
                                                             _hd222824223041_
                                                             _tl222823223043_
                                                             _e222828223046_
                                                             _hd222827223049_
                                                             _tl222826223051_
                                                             _e222831223054_
                                                             _hd222830223057_
                                                             _tl222829223059_
                                                             _e222834223062_
                                                             _hd222833223065_
                                                             _tl222832223067_
                                                             _e222837223070_
                                                             _hd222836223073_
                                                             _tl222835223075_
                                                             _e222840223078_
                                                             _hd222839223081_
                                                             _tl222838223083_
                                                             _e222843223086_
                                                             _hd222842223089_
                                                             _tl222841223091_
                                                             _e222846223094_
                                                             _hd222845223097_
                                                             _tl222844223099_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g222760222884_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222760222884_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g222760222884_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g222760222884_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g222760222884_)))))
                        (let () (declare (not safe)) (_g222760222884_)))
                    (let () (declare (not safe)) (_g222760222884_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g222760222884_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222760222884_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g222760222884_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g222760222884_)))))
                            (let () (declare (not safe)) (_g222760222884_)))
                        (let () (declare (not safe)) (_g222760222884_)))
                    (let () (declare (not safe)) (_g222760222884_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g222760222884_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g222760222884_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop222817223019_ _target222814223014_ '())))))
                   (___match231993231994_
                    (lambda (_e222767223142_
                             _hd222766223145_
                             _tl222765223147_
                             ___splice231970231971_
                             _target222768223150_
                             _tl222770223152_)
                      (letrec ((_loop222771223155_
                                (lambda (_hd222769223158_ _arg222775223160_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd222769223158_))
                                      (let ((_e222772223163_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd222769223158_))))
                                        (let ((_lp-tl222774223168_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222772223163_)))
                                              (_lp-hd222773223166_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222772223163_))))
                                          (let ((__tmp233232
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd222773223166_
                                                         _arg222775223160_))))
                                            (declare (not safe))
                                            (_loop222771223155_
                                             _lp-tl222774223168_
                                             __tmp233232))))
                                      (let ((_arg222776223171_
                                             (reverse _arg222775223160_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl222765223147_))
                                            (let ((_e222779223174_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl222765223147_))))
                                              (let ((_tl222777223179_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e222779223174_)))
                                                    (_hd222778223177_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e222779223174_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd222778223177_))
                                                    (let ((_e222782223182_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd222778223177_))))
                                                      (let ((_tl222780223187_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e222782223182_)))
                    (_hd222781223185_
                     (let () (declare (not safe)) (##car _e222782223182_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd222781223185_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd222781223185_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl222780223187_))
                            (let ((_e222785223190_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl222780223187_))))
                              (let ((_tl222783223195_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e222785223190_)))
                                    (_hd222784223193_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e222785223190_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd222784223193_))
                                    (let ((_e222788223198_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd222784223193_))))
                                      (let ((_tl222786223203_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e222788223198_)))
                                            (_hd222787223201_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e222788223198_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd222787223201_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd222787223201_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl222786223203_))
                                                    (let ((_e222791223206_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl222786223203_))))
                                                      (let ((_tl222789223211_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e222791223206_)))
                    (_hd222790223209_
                     (let () (declare (not safe)) (##car _e222791223206_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl222789223211_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl222783223195_))
                        (let ((___splice231972231973_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl222783223195_
                                  '0))))
                          (let ((_tl222794223216_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice231972231973_ '1)))
                                (_target222792223214_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice231972231973_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl222794223216_))
                                (letrec ((_loop222795223219_
                                          (lambda (_hd222793223222_
                                                   _xarg222799223224_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd222793223222_))
                                                (let ((_e222796223227_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd222793223222_))))
                                                  (let ((_lp-tl222798223232_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e222796223227_)))
                                                        (_lp-hd222797223230_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e222796223227_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd222797223230_))
                                                        (let ((_e222803223235_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd222797223230_))))
                  (let ((_tl222801223240_
                         (let () (declare (not safe)) (##cdr _e222803223235_)))
                        (_hd222802223238_
                         (let ()
                           (declare (not safe))
                           (##car _e222803223235_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd222802223238_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd222802223238_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl222801223240_))
                                (let ((_e222806223243_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl222801223240_))))
                                  (let ((_tl222804223248_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222806223243_)))
                                        (_hd222805223246_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222806223243_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl222804223248_))
                                        (let ((__tmp233231
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd222805223246_
                                                       _xarg222799223224_))))
                                          (declare (not safe))
                                          (_loop222795223219_
                                           _lp-tl222798223232_
                                           __tmp233231))
                                        (___match232005232006_
                                         _e222767223142_
                                         _hd222766223145_
                                         _tl222765223147_
                                         ___splice231970231971_
                                         _target222768223150_
                                         _tl222770223152_))))
                                (___match232005232006_
                                 _e222767223142_
                                 _hd222766223145_
                                 _tl222765223147_
                                 ___splice231970231971_
                                 _target222768223150_
                                 _tl222770223152_))
                            (___match232005232006_
                             _e222767223142_
                             _hd222766223145_
                             _tl222765223147_
                             ___splice231970231971_
                             _target222768223150_
                             _tl222770223152_))
                        (___match232005232006_
                         _e222767223142_
                         _hd222766223145_
                         _tl222765223147_
                         ___splice231970231971_
                         _target222768223150_
                         _tl222770223152_))))
                (___match232005232006_
                 _e222767223142_
                 _hd222766223145_
                 _tl222765223147_
                 ___splice231970231971_
                 _target222768223150_
                 _tl222770223152_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg222800223251_
                                                       (reverse _xarg222799223224_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl222777223179_))
                                                      (___kont231968231969_
                                                       _xarg222800223251_
                                                       _hd222790223209_
                                                       _arg222776223171_)
                                                      (___match232005232006_
                                                       _e222767223142_
                                                       _hd222766223145_
                                                       _tl222765223147_
                                                       ___splice231970231971_
                                                       _target222768223150_
                                                       _tl222770223152_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop222795223219_
                                     _target222792223214_
                                     '())))
                                (___match232005232006_
                                 _e222767223142_
                                 _hd222766223145_
                                 _tl222765223147_
                                 ___splice231970231971_
                                 _target222768223150_
                                 _tl222770223152_))))
                        (___match232005232006_
                         _e222767223142_
                         _hd222766223145_
                         _tl222765223147_
                         ___splice231970231971_
                         _target222768223150_
                         _tl222770223152_))
                    (___match232005232006_
                     _e222767223142_
                     _hd222766223145_
                     _tl222765223147_
                     ___splice231970231971_
                     _target222768223150_
                     _tl222770223152_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match232005232006_
                                                     _e222767223142_
                                                     _hd222766223145_
                                                     _tl222765223147_
                                                     ___splice231970231971_
                                                     _target222768223150_
                                                     _tl222770223152_))
                                                (___match232005232006_
                                                 _e222767223142_
                                                 _hd222766223145_
                                                 _tl222765223147_
                                                 ___splice231970231971_
                                                 _target222768223150_
                                                 _tl222770223152_))
                                            (___match232005232006_
                                             _e222767223142_
                                             _hd222766223145_
                                             _tl222765223147_
                                             ___splice231970231971_
                                             _target222768223150_
                                             _tl222770223152_))))
                                    (___match232005232006_
                                     _e222767223142_
                                     _hd222766223145_
                                     _tl222765223147_
                                     ___splice231970231971_
                                     _target222768223150_
                                     _tl222770223152_))))
                            (___match232005232006_
                             _e222767223142_
                             _hd222766223145_
                             _tl222765223147_
                             ___splice231970231971_
                             _target222768223150_
                             _tl222770223152_))
                        (___match232005232006_
                         _e222767223142_
                         _hd222766223145_
                         _tl222765223147_
                         ___splice231970231971_
                         _target222768223150_
                         _tl222770223152_))
                    (___match232005232006_
                     _e222767223142_
                     _hd222766223145_
                     _tl222765223147_
                     ___splice231970231971_
                     _target222768223150_
                     _tl222770223152_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match232005232006_
                                                     _e222767223142_
                                                     _hd222766223145_
                                                     _tl222765223147_
                                                     ___splice231970231971_
                                                     _target222768223150_
                                                     _tl222770223152_))))
                                            (___match232005232006_
                                             _e222767223142_
                                             _hd222766223145_
                                             _tl222765223147_
                                             ___splice231970231971_
                                             _target222768223150_
                                             _tl222770223152_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop222771223155_ _target222768223150_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx231966231967_))
                  (let ((_e222767223142_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx231966231967_))))
                    (let ((_tl222765223147_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222767223142_)))
                          (_hd222766223145_
                           (let ()
                             (declare (not safe))
                             (##car _e222767223142_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd222766223145_))
                          (let ((___splice231970231971_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd222766223145_
                                    '0))))
                            (let ((_tl222770223152_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice231970231971_ '1)))
                                  (_target222768223150_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice231970231971_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl222770223152_))
                                  (___match231993231994_
                                   _e222767223142_
                                   _hd222766223145_
                                   _tl222765223147_
                                   ___splice231970231971_
                                   _target222768223150_
                                   _tl222770223152_)
                                  (___match232005232006_
                                   _e222767223142_
                                   _hd222766223145_
                                   _tl222765223147_
                                   ___splice231970231971_
                                   _target222768223150_
                                   _tl222770223152_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222765223147_))
                              (let ((_e222855222897_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222765223147_))))
                                (let ((_tl222853222902_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222855222897_)))
                                      (_hd222854222900_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222855222897_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd222854222900_))
                                      (let ((_e222858222905_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd222854222900_))))
                                        (let ((_tl222856222910_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222858222905_)))
                                              (_hd222857222908_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222858222905_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd222857222908_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd222857222908_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl222856222910_))
                                                      (let ((_e222861222913_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl222856222910_))))
                (let ((_tl222859222918_
                       (let () (declare (not safe)) (##cdr _e222861222913_)))
                      (_hd222860222916_
                       (let () (declare (not safe)) (##car _e222861222913_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd222860222916_))
                      (let ((_e222864222921_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd222860222916_))))
                        (let ((_tl222862222926_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222864222921_)))
                              (_hd222863222924_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222864222921_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd222863222924_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd222863222924_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222862222926_))
                                      (let ((_e222867222929_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222862222926_))))
                                        (let ((_tl222865222934_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222867222929_)))
                                              (_hd222866222932_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222867222929_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222865222934_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl222859222918_))
                                                  (let ((_e222870222937_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl222859222918_))))
                                                    (let ((_tl222868222942_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222870222937_)))
                                                          (_hd222869222940_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222870222937_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd222869222940_))
                                                          (let ((_e222873222945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd222869222940_))))
                    (let ((_tl222871222950_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222873222945_)))
                          (_hd222872222948_
                           (let ()
                             (declare (not safe))
                             (##car _e222873222945_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd222872222948_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd222872222948_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl222871222950_))
                                  (let ((_e222876222953_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl222871222950_))))
                                    (let ((_tl222874222958_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222876222953_)))
                                          (_hd222875222956_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222876222953_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl222874222958_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl222868222942_))
                                              (let ((_e222879222961_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl222868222942_))))
                                                (let ((_tl222877222966_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e222879222961_)))
                                                      (_hd222878222964_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e222879222961_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl222877222966_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl222853222902_))
                                                          (___kont231978231979_
                                                           _hd222875222956_
                                                           _hd222866222932_
                                                           _hd222766223145_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g222760222884_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g222760222884_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g222760222884_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g222760222884_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g222760222884_)))
                              (let () (declare (not safe)) (_g222760222884_)))
                          (let () (declare (not safe)) (_g222760222884_)))))
                  (let () (declare (not safe)) (_g222760222884_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g222760222884_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g222760222884_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222760222884_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g222760222884_)))
                              (let ()
                                (declare (not safe))
                                (_g222760222884_)))))
                      (let () (declare (not safe)) (_g222760222884_)))))
              (let () (declare (not safe)) (_g222760222884_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g222760222884_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g222760222884_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222760222884_)))))
                              (let ()
                                (declare (not safe))
                                (_g222760222884_))))))
                  (let () (declare (not safe)) (_g222760222884_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form222560_)
        (let* ((_g222562222576_
                (lambda (_g222563222573_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222563222573_))))
               (_g222561222753_
                (lambda (_g222563222579_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222563222579_))
                      (let ((_e222568222581_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222563222579_))))
                        (let ((_hd222567222584_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222568222581_)))
                              (_tl222566222586_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222568222581_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222566222586_))
                              (let ((_e222571222589_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222566222586_))))
                                (let ((_hd222570222592_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222571222589_)))
                                      (_tl222569222594_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222571222589_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222569222594_))
                                      ((lambda (_L222597_ _L222598_)
                                         (let* ((___stx232088232089_ _L222598_)
                                                (_g222613222641_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx232088232089_)))))
                                           (let ((___kont232090232091_
                                                  (lambda (_L222732_)
                                                    (length (let ((__tmp233233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g222742222745_ _g222743222747_)
                             (let ()
                               (declare (not safe))
                               (cons _g222742222745_ _g222743222747_)))))
                      (declare (not safe))
                      (foldr1 __tmp233233 '() _L222732_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont232094232095_
                                                  (lambda (_L222683_ _L222684_)
                                                    (let ((__tmp233234
                                                           (length (let ((__tmp233235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g222695222698_ _g222696222700_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g222695222698_
                                            _g222696222700_)))))
                             (declare (not safe))
                             (foldr1 __tmp233235 '() _L222684_)))))
              (declare (not safe))
              (cons __tmp233234 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont232098232099_
                                                  (lambda (_L222646_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match232113232114_
                                                     (lambda (___splice232096232097_
                                                              _target222627222659_
                                                              _tl222629222661_)
                                                       (letrec ((_loop222630222664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd222628222667_ _arg222634222669_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd222628222667_))
                               (let ((_e222631222672_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd222628222667_))))
                                 (let ((_lp-tl222633222677_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e222631222672_)))
                                       (_lp-hd222632222675_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e222631222672_))))
                                   (let ((__tmp233236
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd222632222675_
                                                  _arg222634222669_))))
                                     (declare (not safe))
                                     (_loop222630222664_
                                      _lp-tl222633222677_
                                      __tmp233236))))
                               (let ((_arg222635222680_
                                      (reverse _arg222634222669_)))
                                 (___kont232094232095_
                                  _tl222629222661_
                                  _arg222635222680_))))))
                 (let ()
                   (declare (not safe))
                   (_loop222630222664_ _target222627222659_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match232107232108_
                                                     (lambda (___splice232092232093_
                                                              _target222616222708_
                                                              _tl222618222710_)
                                                       (letrec ((_loop222619222713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd222617222716_ _arg222623222718_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd222617222716_))
                               (let ((_e222620222721_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd222617222716_))))
                                 (let ((_lp-tl222622222726_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e222620222721_)))
                                       (_lp-hd222621222724_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e222620222721_))))
                                   (let ((__tmp233237
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd222621222724_
                                                  _arg222623222718_))))
                                     (declare (not safe))
                                     (_loop222619222713_
                                      _lp-tl222622222726_
                                      __tmp233237))))
                               (let ((_arg222624222729_
                                      (reverse _arg222623222718_)))
                                 (___kont232090232091_ _arg222624222729_))))))
                 (let ()
                   (declare (not safe))
                   (_loop222619222713_ _target222616222708_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx232088232089_))
                                                   (let ((___splice232092232093_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx232088232089_
                                                             '0))))
                                                     (let ((_tl222618222710_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice232092232093_
                                                               '1)))
                                                           (_target222616222708_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice232092232093_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl222618222710_))
                                                           (___match232107232108_
                                                            ___splice232092232093_
                                                            _target222616222708_
                                                            _tl222618222710_)
                                                           (___match232113232114_
                                                            ___splice232092232093_
                                                            _target222616222708_
                                                            _tl222618222710_))))
                                                   (___kont232098232099_
                                                    ___stx232088232089_))))))
                                       _hd222570222592_
                                       _hd222567222584_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222562222576_ _g222563222579_)))))
                              (let ()
                                (declare (not safe))
                                (_g222562222576_ _g222563222579_)))))
                      (let ()
                        (declare (not safe))
                        (_g222562222576_ _g222563222579_))))))
          (declare (not safe))
          (_g222561222753_ _form222560_))))
    (define gxc#lambda-expr?
      (lambda (_expr222513_)
        (let* ((___stx232116232117_ _expr222513_)
               (_g222516222526_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx232116232117_)))))
          (let ((___kont232118232119_ (lambda (_L222546_) '#t))
                (___kont232120232121_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx232116232117_))
                (let ((_e222521222538_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx232116232117_))))
                  (let ((_tl222519222543_
                         (let () (declare (not safe)) (##cdr _e222521222538_)))
                        (_hd222520222541_
                         (let ()
                           (declare (not safe))
                           (##car _e222521222538_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd222520222541_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd222520222541_))
                            (___kont232118232119_ _tl222519222543_)
                            (___kont232120232121_))
                        (___kont232120232121_))))
                (___kont232120232121_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr222466_)
        (let* ((___stx232134232135_ _expr222466_)
               (_g222469222479_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx232134232135_)))))
          (let ((___kont232136232137_ (lambda (_L222499_) '#t))
                (___kont232138232139_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx232134232135_))
                (let ((_e222474222491_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx232134232135_))))
                  (let ((_tl222472222496_
                         (let () (declare (not safe)) (##cdr _e222474222491_)))
                        (_hd222473222494_
                         (let ()
                           (declare (not safe))
                           (##car _e222474222491_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd222473222494_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd222473222494_))
                            (___kont232136232137_ _tl222472222496_)
                            (___kont232138232139_))
                        (___kont232138232139_))))
                (___kont232138232139_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr222335_)
        (let* ((___stx232152232153_ _expr222335_)
               (_g222338222368_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx232152232153_)))))
          (let ((___kont232154232155_
                 (lambda (_L222436_ _L222437_ _L222438_)
                   (if (let () (declare (not safe)) (gx#identifier? _L222438_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L222437_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L222436_))
                           '#f)
                       '#f)))
                (___kont232156232157_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx232152232153_))
                (let ((_e222345222380_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx232152232153_))))
                  (let ((_tl222343222385_
                         (let () (declare (not safe)) (##cdr _e222345222380_)))
                        (_hd222344222383_
                         (let ()
                           (declare (not safe))
                           (##car _e222345222380_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd222344222383_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd222344222383_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl222343222385_))
                                (let ((_e222348222388_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl222343222385_))))
                                  (let ((_tl222346222393_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222348222388_)))
                                        (_hd222347222391_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222348222388_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd222347222391_))
                                        (let ((_e222351222396_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd222347222391_))))
                                          (let ((_tl222349222401_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e222351222396_)))
                                                (_hd222350222399_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e222351222396_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd222350222399_))
                                                (let ((_e222354222404_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd222350222399_))))
                                                  (let ((_tl222352222409_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e222354222404_)))
                                                        (_hd222353222407_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e222354222404_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd222353222407_))
                                                        (let ((_e222357222412_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd222353222407_))))
                  (let ((_tl222355222417_
                         (let () (declare (not safe)) (##cdr _e222357222412_)))
                        (_hd222356222415_
                         (let ()
                           (declare (not safe))
                           (##car _e222357222412_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl222355222417_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl222352222409_))
                            (let ((_e222360222420_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl222352222409_))))
                              (let ((_tl222358222425_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e222360222420_)))
                                    (_hd222359222423_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e222360222420_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl222358222425_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl222349222401_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl222346222393_))
                                            (let ((_e222363222428_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl222346222393_))))
                                              (let ((_tl222361222433_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e222363222428_)))
                                                    (_hd222362222431_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e222363222428_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl222361222433_))
                                                    (___kont232154232155_
                                                     _hd222362222431_
                                                     _hd222359222423_
                                                     _hd222356222415_)
                                                    (___kont232156232157_))))
                                            (___kont232156232157_))
                                        (___kont232156232157_))
                                    (___kont232156232157_))))
                            (___kont232156232157_))
                        (___kont232156232157_))))
                (___kont232156232157_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont232156232157_))))
                                        (___kont232156232157_))))
                                (___kont232156232157_))
                            (___kont232156232157_))
                        (___kont232156232157_))))
                (___kont232156232157_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr221660_)
        (let* ((___stx232214232215_ _expr221660_)
               (_g221663221821_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx232214232215_)))))
          (let ((___kont232216232217_
                 (lambda (_L222209_
                          _L222210_
                          _L222211_
                          _L222212_
                          _L222213_
                          _L222214_
                          _L222215_
                          _L222216_
                          _L222217_
                          _L222218_
                          _L222219_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L222216_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L222212_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L222211_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L222219_
                                      _L222210_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L222218_
                                          _L222215_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L222213_
                                              _L222209_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L222217_
                                              _L222214_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont232218232219_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx232214232215_))
                (let ((_e221678221833_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx232214232215_))))
                  (let ((_tl221676221838_
                         (let () (declare (not safe)) (##cdr _e221678221833_)))
                        (_hd221677221836_
                         (let ()
                           (declare (not safe))
                           (##car _e221678221833_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd221677221836_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd221677221836_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl221676221838_))
                                (let ((_e221681221841_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl221676221838_))))
                                  (let ((_tl221679221846_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221681221841_)))
                                        (_hd221680221844_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221681221841_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd221680221844_))
                                        (let ((_e221684221849_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd221680221844_))))
                                          (let ((_tl221682221854_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e221684221849_)))
                                                (_hd221683221852_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e221684221849_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd221683221852_))
                                                (let ((_e221687221857_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd221683221852_))))
                                                  (let ((_tl221685221862_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e221687221857_)))
                                                        (_hd221686221860_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e221687221857_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd221686221860_))
                                                        (let ((_e221690221865_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd221686221860_))))
                  (let ((_tl221688221870_
                         (let () (declare (not safe)) (##cdr _e221690221865_)))
                        (_hd221689221868_
                         (let ()
                           (declare (not safe))
                           (##car _e221690221865_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl221688221870_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl221685221862_))
                            (let ((_e221693221873_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl221685221862_))))
                              (let ((_tl221691221878_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e221693221873_)))
                                    (_hd221692221876_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e221693221873_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd221692221876_))
                                    (let ((_e221696221881_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd221692221876_))))
                                      (let ((_tl221694221886_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e221696221881_)))
                                            (_hd221695221884_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e221696221881_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd221695221884_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd221695221884_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl221694221886_))
                                                    (let ((_e221699221889_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl221694221886_))))
                                                      (let ((_tl221697221894_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e221699221889_)))
                    (_hd221698221892_
                     (let () (declare (not safe)) (##car _e221699221889_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd221698221892_))
                    (let ((_e221702221897_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd221698221892_))))
                      (let ((_tl221700221902_
                             (let ()
                               (declare (not safe))
                               (##cdr _e221702221897_)))
                            (_hd221701221900_
                             (let ()
                               (declare (not safe))
                               (##car _e221702221897_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd221701221900_))
                            (let ((_e221705221905_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd221701221900_))))
                              (let ((_tl221703221910_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e221705221905_)))
                                    (_hd221704221908_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e221705221905_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd221704221908_))
                                    (let ((_e221708221913_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd221704221908_))))
                                      (let ((_tl221706221918_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e221708221913_)))
                                            (_hd221707221916_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e221708221913_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl221706221918_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl221703221910_))
                                                (let ((_e221711221921_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl221703221910_))))
                                                  (let ((_tl221709221926_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e221711221921_)))
                                                        (_hd221710221924_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e221711221921_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl221709221926_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl221700221902_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl221697221894_))
                        (let ((_e221714221929_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl221697221894_))))
                          (let ((_tl221712221934_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221714221929_)))
                                (_hd221713221932_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221714221929_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd221713221932_))
                                (let ((_e221717221937_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd221713221932_))))
                                  (let ((_tl221715221942_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221717221937_)))
                                        (_hd221716221940_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221717221937_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd221716221940_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd221716221940_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl221715221942_))
                                                (let ((_e221720221945_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl221715221942_))))
                                                  (let ((_tl221718221950_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e221720221945_)))
                                                        (_hd221719221948_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e221720221945_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd221719221948_))
                                                        (let ((_e221723221953_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd221719221948_))))
                  (let ((_tl221721221958_
                         (let () (declare (not safe)) (##cdr _e221723221953_)))
                        (_hd221722221956_
                         (let ()
                           (declare (not safe))
                           (##car _e221723221953_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl221718221950_))
                        (let ((_e221726221961_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl221718221950_))))
                          (let ((_tl221724221966_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221726221961_)))
                                (_hd221725221964_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221726221961_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd221725221964_))
                                (let ((_e221729221969_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd221725221964_))))
                                  (let ((_tl221727221974_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221729221969_)))
                                        (_hd221728221972_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221729221969_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd221728221972_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd221728221972_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl221727221974_))
                                                (let ((_e221732221977_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl221727221974_))))
                                                  (let ((_tl221730221982_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e221732221977_)))
                                                        (_hd221731221980_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e221732221977_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd221731221980_))
                                                        (let ((_e221735221985_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd221731221980_))))
                  (let ((_tl221733221990_
                         (let () (declare (not safe)) (##cdr _e221735221985_)))
                        (_hd221734221988_
                         (let ()
                           (declare (not safe))
                           (##car _e221735221985_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd221734221988_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd221734221988_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl221733221990_))
                                (let ((_e221738221993_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl221733221990_))))
                                  (let ((_tl221736221998_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221738221993_)))
                                        (_hd221737221996_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221738221993_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221736221998_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl221730221982_))
                                            (let ((_e221741222001_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl221730221982_))))
                                              (let ((_tl221739222006_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e221741222001_)))
                                                    (_hd221740222004_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e221741222001_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd221740222004_))
                                                    (let ((_e221744222009_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd221740222004_))))
                                                      (let ((_tl221742222014_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e221744222009_)))
                    (_hd221743222012_
                     (let () (declare (not safe)) (##car _e221744222009_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd221743222012_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd221743222012_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl221742222014_))
                            (let ((_e221747222017_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl221742222014_))))
                              (let ((_tl221745222022_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e221747222017_)))
                                    (_hd221746222020_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e221747222017_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl221745222022_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl221739222006_))
                                        (let ((_e221750222025_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl221739222006_))))
                                          (let ((_tl221748222030_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e221750222025_)))
                                                (_hd221749222028_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e221750222025_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd221749222028_))
                                                (let ((_e221753222033_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd221749222028_))))
                                                  (let ((_tl221751222038_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e221753222033_)))
                                                        (_hd221752222036_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e221753222033_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd221752222036_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd221752222036_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl221751222038_))
                        (let ((_e221756222041_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl221751222038_))))
                          (let ((_tl221754222046_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221756222041_)))
                                (_hd221755222044_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221756222041_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl221754222046_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl221724221966_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221712221934_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl221691221878_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221682221854_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl221679221846_))
                                                    (let ((_e221759222049_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl221679221846_))))
                                                      (let ((_tl221757222054_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e221759222049_)))
                    (_hd221758222052_
                     (let () (declare (not safe)) (##car _e221759222049_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd221758222052_))
                    (let ((_e221762222057_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd221758222052_))))
                      (let ((_tl221760222062_
                             (let ()
                               (declare (not safe))
                               (##cdr _e221762222057_)))
                            (_hd221761222060_
                             (let ()
                               (declare (not safe))
                               (##car _e221762222057_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd221761222060_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd221761222060_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl221760222062_))
                                    (let ((_e221765222065_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl221760222062_))))
                                      (let ((_tl221763222070_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e221765222065_)))
                                            (_hd221764222068_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e221765222065_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl221763222070_))
                                            (let ((_e221768222073_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl221763222070_))))
                                              (let ((_tl221766222078_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e221768222073_)))
                                                    (_hd221767222076_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e221768222073_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd221767222076_))
                                                    (let ((_e221771222081_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd221767222076_))))
                                                      (let ((_tl221769222086_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e221771222081_)))
                    (_hd221770222084_
                     (let () (declare (not safe)) (##car _e221771222081_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd221770222084_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd221770222084_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl221769222086_))
                            (let ((_e221774222089_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl221769222086_))))
                              (let ((_tl221772222094_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e221774222089_)))
                                    (_hd221773222092_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e221774222089_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd221773222092_))
                                    (let ((_e221777222097_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd221773222092_))))
                                      (let ((_tl221775222102_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e221777222097_)))
                                            (_hd221776222100_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e221777222097_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd221776222100_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd221776222100_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl221775222102_))
                                                    (let ((_e221780222105_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl221775222102_))))
                                                      (let ((_tl221778222110_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e221780222105_)))
                    (_hd221779222108_
                     (let () (declare (not safe)) (##car _e221780222105_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl221778222110_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl221772222094_))
                        (let ((_e221783222113_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl221772222094_))))
                          (let ((_tl221781222118_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221783222113_)))
                                (_hd221782222116_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221783222113_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd221782222116_))
                                (let ((_e221786222121_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd221782222116_))))
                                  (let ((_tl221784222126_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221786222121_)))
                                        (_hd221785222124_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221786222121_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd221785222124_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd221785222124_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl221784222126_))
                                                (let ((_e221789222129_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl221784222126_))))
                                                  (let ((_tl221787222134_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e221789222129_)))
                                                        (_hd221788222132_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e221789222129_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl221787222134_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl221781222118_))
                                                            (let ((_e221792222137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl221781222118_))))
                      (let ((_tl221790222142_
                             (let ()
                               (declare (not safe))
                               (##cdr _e221792222137_)))
                            (_hd221791222140_
                             (let ()
                               (declare (not safe))
                               (##car _e221792222137_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd221791222140_))
                            (let ((_e221795222145_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd221791222140_))))
                              (let ((_tl221793222150_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e221795222145_)))
                                    (_hd221794222148_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e221795222145_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd221794222148_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd221794222148_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl221793222150_))
                                            (let ((_e221798222153_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl221793222150_))))
                                              (let ((_tl221796222158_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e221798222153_)))
                                                    (_hd221797222156_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e221798222153_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl221796222158_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl221790222142_))
                                                        (let ((_e221801222161_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl221790222142_))))
                  (let ((_tl221799222166_
                         (let () (declare (not safe)) (##cdr _e221801222161_)))
                        (_hd221800222164_
                         (let ()
                           (declare (not safe))
                           (##car _e221801222161_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd221800222164_))
                        (let ((_e221804222169_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd221800222164_))))
                          (let ((_tl221802222174_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221804222169_)))
                                (_hd221803222172_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221804222169_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd221803222172_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd221803222172_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl221802222174_))
                                        (let ((_e221807222177_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl221802222174_))))
                                          (let ((_tl221805222182_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e221807222177_)))
                                                (_hd221806222180_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e221807222177_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221805222182_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl221799222166_))
                                                    (let ((_e221810222185_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl221799222166_))))
                                                      (let ((_tl221808222190_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e221810222185_)))
                    (_hd221809222188_
                     (let () (declare (not safe)) (##car _e221810222185_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd221809222188_))
                    (let ((_e221813222193_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd221809222188_))))
                      (let ((_tl221811222198_
                             (let ()
                               (declare (not safe))
                               (##cdr _e221813222193_)))
                            (_hd221812222196_
                             (let ()
                               (declare (not safe))
                               (##car _e221813222193_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd221812222196_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd221812222196_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl221811222198_))
                                    (let ((_e221816222201_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl221811222198_))))
                                      (let ((_tl221814222206_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e221816222201_)))
                                            (_hd221815222204_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e221816222201_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl221814222206_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221808222190_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl221766222078_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl221757222054_))
                                                        (___kont232216232217_
                                                         _hd221815222204_
                                                         _hd221806222180_
                                                         _hd221788222132_
                                                         _hd221779222108_
                                                         _hd221764222068_
                                                         _hd221755222044_
                                                         _hd221746222020_
                                                         _hd221737221996_
                                                         _hd221722221956_
                                                         _hd221707221916_
                                                         _hd221689221868_)
                                                        (___kont232218232219_))
                                                    (___kont232218232219_))
                                                (___kont232218232219_))
                                            (___kont232218232219_))))
                                    (___kont232218232219_))
                                (___kont232218232219_))
                            (___kont232218232219_))))
                    (___kont232218232219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232218232219_))
                                                (___kont232218232219_))))
                                        (___kont232218232219_))
                                    (___kont232218232219_))
                                (___kont232218232219_))))
                        (___kont232218232219_))))
                (___kont232218232219_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232218232219_))))
                                            (___kont232218232219_))
                                        (___kont232218232219_))
                                    (___kont232218232219_))))
                            (___kont232218232219_))))
                    (___kont232218232219_))
                (___kont232218232219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont232218232219_))
                                            (___kont232218232219_))
                                        (___kont232218232219_))))
                                (___kont232218232219_))))
                        (___kont232218232219_))
                    (___kont232218232219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232218232219_))
                                                (___kont232218232219_))
                                            (___kont232218232219_))))
                                    (___kont232218232219_))))
                            (___kont232218232219_))
                        (___kont232218232219_))
                    (___kont232218232219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232218232219_))))
                                            (___kont232218232219_))))
                                    (___kont232218232219_))
                                (___kont232218232219_))
                            (___kont232218232219_))))
                    (___kont232218232219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232218232219_))
                                                (___kont232218232219_))
                                            (___kont232218232219_))
                                        (___kont232218232219_))
                                    (___kont232218232219_))
                                (___kont232218232219_))))
                        (___kont232218232219_))
                    (___kont232218232219_))
                (___kont232218232219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont232218232219_))))
                                        (___kont232218232219_))
                                    (___kont232218232219_))))
                            (___kont232218232219_))
                        (___kont232218232219_))
                    (___kont232218232219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232218232219_))))
                                            (___kont232218232219_))
                                        (___kont232218232219_))))
                                (___kont232218232219_))
                            (___kont232218232219_))
                        (___kont232218232219_))))
                (___kont232218232219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont232218232219_))
                                            (___kont232218232219_))
                                        (___kont232218232219_))))
                                (___kont232218232219_))))
                        (___kont232218232219_))))
                (___kont232218232219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont232218232219_))
                                            (___kont232218232219_))
                                        (___kont232218232219_))))
                                (___kont232218232219_))))
                        (___kont232218232219_))
                    (___kont232218232219_))
                (___kont232218232219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont232218232219_))
                                            (___kont232218232219_))))
                                    (___kont232218232219_))))
                            (___kont232218232219_))))
                    (___kont232218232219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232218232219_))
                                                (___kont232218232219_))
                                            (___kont232218232219_))))
                                    (___kont232218232219_))))
                            (___kont232218232219_))
                        (___kont232218232219_))))
                (___kont232218232219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont232218232219_))))
                                        (___kont232218232219_))))
                                (___kont232218232219_))
                            (___kont232218232219_))
                        (___kont232218232219_))))
                (___kont232218232219_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx221402_ _id221403_ _clauses221404_ _gensym?221405_)
        (let _lp221407_ ((_rest221409_ _clauses221404_)
                         (_ids221410_ '())
                         (_impls221411_ '())
                         (_clauses221412_ '()))
          (let* ((_rest221413221421_ _rest221409_)
                 (_else221415221429_
                  (lambda ()
                    (values (reverse _ids221410_)
                            (reverse _impls221411_)
                            (reverse _clauses221412_))))
                 (_K221417221634_
                  (lambda (_rest221432_ _clause221433_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause221433_))
                        (let ((__tmp233293
                               (let ()
                                 (declare (not safe))
                                 (cons _clause221433_ _clauses221412_))))
                          (declare (not safe))
                          (_lp221407_
                           _rest221432_
                           _ids221410_
                           _impls221411_
                           __tmp233293))
                        (let* ((_g221435221446_
                                (lambda (_g221436221443_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g221436221443_))))
                               (_g221434221631_
                                (lambda (_g221436221449_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g221436221449_))
                                      (let ((_e221441221451_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g221436221449_))))
                                        (let ((_hd221440221454_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221441221451_)))
                                              (_tl221439221456_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221441221451_))))
                                          ((lambda (_L221459_ _L221460_)
                                             (let* ((_id221477_
                                                     (let ((__tmp233240
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id221403_)))
                                                           (__tmp233239
                                                            (length _clauses221412_))
                                                           (__tmp233238
                                                            (if _gensym?221405_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp233240
                                                        '"__"
                                                        __tmp233239
                                                        __tmp233238)))
                                                    (_id221479_
                                                     (let ((__tmp233241
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx221402_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id221477_
                                                        __tmp233241)))
                                                    (_impl221481_
                                                     (let ((__tmp233242
                                                            (let ((__tmp233244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp233243
                           (let ()
                             (declare (not safe))
                             (cons _L221460_ _L221459_))))
                      (declare (not safe))
                      (cons __tmp233244 __tmp233243))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp233242 _stx221402_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause221628_
                                                     (let* ((___stx232598232599_
                                                             _L221460_)
                                                            (_g221485221513_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx232598232599_)))))
               (let ((___kont232600232601_
                      (lambda (_L221607_)
                        (let ((__tmp233245
                               (let ((__tmp233246
                                      (let ((__tmp233247
                                             (let ((__tmp233248
                                                    (let ((__tmp233254
                                                           (let ((__tmp233255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id221479_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp233255)))
                  (__tmp233249
                   (let ((__tmp233250
                          (lambda (_g221617221620_ _g221618221622_)
                            (let ((__tmp233251
                                   (let ((__tmp233253
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp233252
                                          (let ()
                                            (declare (not safe))
                                            (cons _g221617221620_ '()))))
                                     (declare (not safe))
                                     (cons __tmp233253 __tmp233252))))
                              (declare (not safe))
                              (cons __tmp233251 _g221618221622_)))))
                     (declare (not safe))
                     (foldr1 __tmp233250 '() _L221607_))))
              (declare (not safe))
              (cons __tmp233254 __tmp233249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp233248))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp233247
                                         _stx221402_))))
                                 (declare (not safe))
                                 (cons __tmp233246 '()))))
                          (declare (not safe))
                          (cons _L221460_ __tmp233245))))
                     (___kont232604232605_
                      (lambda (_L221558_ _L221559_)
                        (let ((__tmp233256
                               (let ((__tmp233257
                                      (let ((__tmp233258
                                             (let ((__tmp233259
                                                    (let ((__tmp233273
                                                           (let ((__tmp233274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp233274)))
                  (__tmp233260
                   (let ((__tmp233271
                          (let ((__tmp233272
                                 (let ()
                                   (declare (not safe))
                                   (cons _id221479_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp233272)))
                         (__tmp233261
                          (let ((__tmp233267
                                 (let ((__tmp233268
                                        (let ((__tmp233270
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp233269
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L221558_ '()))))
                                          (declare (not safe))
                                          (cons __tmp233270 __tmp233269))))
                                   (declare (not safe))
                                   (cons __tmp233268 '())))
                                (__tmp233262
                                 (let ((__tmp233263
                                        (lambda (_g221570221573_
                                                 _g221571221575_)
                                          (let ((__tmp233264
                                                 (let ((__tmp233266
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp233265
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g221570221573_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp233266
                                                         __tmp233265))))
                                            (declare (not safe))
                                            (cons __tmp233264
                                                  _g221571221575_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp233263 '() _L221559_))))
                            (declare (not safe))
                            (foldr1 cons __tmp233267 __tmp233262))))
                     (declare (not safe))
                     (cons __tmp233271 __tmp233261))))
              (declare (not safe))
              (cons __tmp233273 __tmp233260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp233259))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp233258
                                         _stx221402_))))
                                 (declare (not safe))
                                 (cons __tmp233257 '()))))
                          (declare (not safe))
                          (cons _L221460_ __tmp233256))))
                     (___kont232608232609_
                      (lambda (_L221518_)
                        (let ((__tmp233275
                               (let ((__tmp233276
                                      (let ((__tmp233277
                                             (let ((__tmp233278
                                                    (let ((__tmp233286
                                                           (let ((__tmp233287
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp233287)))
                  (__tmp233279
                   (let ((__tmp233284
                          (let ((__tmp233285
                                 (let ()
                                   (declare (not safe))
                                   (cons _id221479_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp233285)))
                         (__tmp233280
                          (let ((__tmp233281
                                 (let ((__tmp233283
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp233282
                                        (let ()
                                          (declare (not safe))
                                          (cons _L221518_ '()))))
                                   (declare (not safe))
                                   (cons __tmp233283 __tmp233282))))
                            (declare (not safe))
                            (cons __tmp233281 '()))))
                     (declare (not safe))
                     (cons __tmp233284 __tmp233280))))
              (declare (not safe))
              (cons __tmp233286 __tmp233279))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp233278))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp233277
                                         _stx221402_))))
                                 (declare (not safe))
                                 (cons __tmp233276 '()))))
                          (declare (not safe))
                          (cons _L221460_ __tmp233275)))))
                 (let* ((___match232623232624_
                         (lambda (___splice232606232607_
                                  _target221499221534_
                                  _tl221501221536_)
                           (letrec ((_loop221502221539_
                                     (lambda (_hd221500221542_
                                              _arg221506221544_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd221500221542_))
                                           (let ((_e221503221547_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd221500221542_))))
                                             (let ((_lp-tl221505221552_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e221503221547_)))
                                                   (_lp-hd221504221550_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e221503221547_))))
                                               (let ((__tmp233288
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd221504221550_
                                                              _arg221506221544_))))
                                                 (declare (not safe))
                                                 (_loop221502221539_
                                                  _lp-tl221505221552_
                                                  __tmp233288))))
                                           (let ((_arg221507221555_
                                                  (reverse _arg221506221544_)))
                                             (___kont232604232605_
                                              _tl221501221536_
                                              _arg221507221555_))))))
                             (let ()
                               (declare (not safe))
                               (_loop221502221539_
                                _target221499221534_
                                '())))))
                        (___match232617232618_
                         (lambda (___splice232602232603_
                                  _target221488221583_
                                  _tl221490221585_)
                           (letrec ((_loop221491221588_
                                     (lambda (_hd221489221591_
                                              _arg221495221593_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd221489221591_))
                                           (let ((_e221492221596_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd221489221591_))))
                                             (let ((_lp-tl221494221601_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e221492221596_)))
                                                   (_lp-hd221493221599_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e221492221596_))))
                                               (let ((__tmp233289
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd221493221599_
                                                              _arg221495221593_))))
                                                 (declare (not safe))
                                                 (_loop221491221588_
                                                  _lp-tl221494221601_
                                                  __tmp233289))))
                                           (let ((_arg221496221604_
                                                  (reverse _arg221495221593_)))
                                             (___kont232600232601_
                                              _arg221496221604_))))))
                             (let ()
                               (declare (not safe))
                               (_loop221491221588_
                                _target221488221583_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx232598232599_))
                       (let ((___splice232602232603_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx232598232599_
                                 '0))))
                         (let ((_tl221490221585_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice232602232603_ '1)))
                               (_target221488221583_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice232602232603_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl221490221585_))
                               (___match232617232618_
                                ___splice232602232603_
                                _target221488221583_
                                _tl221490221585_)
                               (___match232623232624_
                                ___splice232602232603_
                                _target221488221583_
                                _tl221490221585_))))
                       (___kont232608232609_ ___stx232598232599_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp233292
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id221479_
                                                              _ids221410_)))
                                                     (__tmp233291
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl221481_
                                                              _impls221411_)))
                                                     (__tmp233290
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause221628_
                                                              _clauses221412_))))
                                                 (declare (not safe))
                                                 (_lp221407_
                                                  _rest221432_
                                                  __tmp233292
                                                  __tmp233291
                                                  __tmp233290))))
                                           _tl221439221456_
                                           _hd221440221454_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g221435221446_ _g221436221449_))))))
                          (declare (not safe))
                          (_g221434221631_ _clause221433_))))))
            (if (let () (declare (not safe)) (##pair? _rest221413221421_))
                (let ((_hd221418221637_
                       (let ()
                         (declare (not safe))
                         (##car _rest221413221421_)))
                      (_tl221419221639_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest221413221421_))))
                  (let* ((_clause221642_ _hd221418221637_)
                         (_rest221644_ _tl221419221639_))
                    (declare (not safe))
                    (_K221417221634_ _rest221644_ _clause221642_)))
                (let () (declare (not safe)) (_else221415221429_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx221649_ _id221650_ _clauses221651_)
        (let ((_gensym?221653_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx221649_
           _id221650_
           _clauses221651_
           _gensym?221653_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g233295_
        (let ((_g233294_ (let () (declare (not safe)) (##length _g233295_))))
          (cond ((let () (declare (not safe)) (##fx= _g233294_ 3))
                 (apply (lambda (_stx221649_ _id221650_ _clauses221651_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx221649_
                             _id221650_
                             _clauses221651_)))
                        _g233295_))
                ((let () (declare (not safe)) (##fx= _g233294_ 4))
                 (apply (lambda (_stx221655_
                                 _id221656_
                                 _clauses221657_
                                 _gensym?221658_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx221655_
                             _id221656_
                             _clauses221657_
                             _gensym?221658_)))
                        _g233295_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g233295_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx220679_)
        (letrec ((_case-lambda-clause-def220681_
                  (lambda (_id221398_ _impl221399_)
                    (let ((__tmp233296
                           (let ((__tmp233297
                                  (let ((__tmp233300
                                         (let ()
                                           (declare (not safe))
                                           (cons _id221398_ '())))
                                        (__tmp233298
                                         (let ((__tmp233299
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl221399_))))
                                           (declare (not safe))
                                           (cons __tmp233299 '()))))
                                    (declare (not safe))
                                    (cons __tmp233300 __tmp233298))))
                             (declare (not safe))
                             (cons '%#define-values __tmp233297))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp233296 _stx220679_))))
                 (_opt-lambda-dispatch-name220682_
                  (lambda (_id221394_)
                    (if (uninterned-symbol? _id221394_)
                        (let ((_str221396_ (symbol->string _id221394_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str221396_))
                              '"%"
                              _id221394_))
                        _id221394_)))
                 (_kw-lambda-dispatch-name220683_
                  (lambda (_id221389_ _name221390_)
                    (if (uninterned-symbol? _id221389_)
                        (let ((_str221392_ (symbol->string _id221389_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str221392_))
                              _name221390_
                              _id221389_))
                        _id221389_))))
          (let* ((___stx232646232647_ _stx220679_)
                 (_g220688220747_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx232646232647_)))))
            (let ((___kont232648232649_
                   (lambda (_L221298_ _L221299_)
                     (let* ((___stx232626232627_ _L221298_)
                            (_g221316221330_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx232626232627_)))))
                       (let ((___kont232628232629_
                              (lambda (_L221374_) _stx220679_))
                             (___kont232630232631_
                              (lambda (_L221343_)
                                (let ((_g233301_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx220679_
                                          _L221299_
                                          _L221343_))))
                                  (begin
                                    (let ((_g233302_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g233301_)
                                                 (##vector-length _g233301_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g233302_ 3)))
                                          (error "Context expects 3 values"
                                                 _g233302_)))
                                    (let ((_ids221353_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g233301_ 0)))
                                          (_impls221354_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g233301_ 1)))
                                          (_clauses221355_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g233301_ 2))))
                                      (let* ((_g233303_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids221353_))
                                             (_defs221358_
                                              (map _case-lambda-clause-def220681_
                                                   _ids221353_
                                                   _impls221354_)))
                                        (let ((__tmp233305
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L221299_)))
                                              (__tmp233304
                                               (map gxc#identifier-symbol
                                                    _ids221353_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp233305
                                           '" => "
                                           __tmp233304))
                                        (let ((__tmp233306
                                               (let ((__tmp233307
                                                      (let ((__tmp233308
                                                             (let ((__tmp233309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp233310
                                   (let ((__tmp233311
                                          (let ((__tmp233316
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L221299_ '())))
                                                (__tmp233312
                                                 (let ((__tmp233313
                                                        (let ((__tmp233315
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses221355_)))
                      (__tmp233314
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp233315 __tmp233314))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp233313 '()))))
                                            (declare (not safe))
                                            (cons __tmp233316 __tmp233312))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp233311))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp233310
                               _stx220679_))))
                       (declare (not safe))
                       (cons __tmp233309 '()))))
                (declare (not safe))
                (foldr1 cons __tmp233308 _defs221358_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp233307))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp233306
                                           _stx220679_)))))))))
                         (let ((___match232637232638_
                                (lambda (_e221321221366_
                                         _hd221320221369_
                                         _tl221319221371_)
                                  (let ((_L221374_ _tl221319221371_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L221374_))
                                        (___kont232628232629_ _L221374_)
                                        (___kont232630232631_
                                         _tl221319221371_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx232626232627_))
                               (let ((_e221321221366_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx232626232627_))))
                                 (let ((_tl221319221371_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e221321221366_)))
                                       (_hd221320221369_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e221321221366_))))
                                   (___match232637232638_
                                    _e221321221366_
                                    _hd221320221369_
                                    _tl221319221371_)))
                               (let ()
                                 (declare (not safe))
                                 (_g221316221330_))))))))
                  (___kont232650232651_
                   (lambda (_L221116_ _L221117_)
                     (let* ((_g221133221163_
                             (lambda (_g221134221160_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g221134221160_))))
                            (_g221132221258_
                             (lambda (_g221134221166_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g221134221166_))
                                   (let ((_e221140221168_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g221134221166_))))
                                     (let ((_hd221139221171_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e221140221168_)))
                                           (_tl221138221173_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e221140221168_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl221138221173_))
                                           (let ((_e221143221176_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl221138221173_))))
                                             (let ((_hd221142221179_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e221143221176_)))
                                                   (_tl221141221181_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e221143221176_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd221142221179_))
                                                   (let ((_e221146221184_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd221142221179_))))
                                                     (let ((_hd221145221187_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e221146221184_)))
                                                           (_tl221144221189_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e221146221184_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd221145221187_))
                                                           (let ((_e221149221192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd221145221187_))))
                     (let ((_hd221148221195_
                            (let ()
                              (declare (not safe))
                              (##car _e221149221192_)))
                           (_tl221147221197_
                            (let ()
                              (declare (not safe))
                              (##cdr _e221149221192_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd221148221195_))
                           (let ((_e221152221200_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd221148221195_))))
                             (let ((_hd221151221203_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e221152221200_)))
                                   (_tl221150221205_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e221152221200_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl221150221205_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl221147221197_))
                                       (let ((_e221155221208_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl221147221197_))))
                                         (let ((_hd221154221211_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e221155221208_)))
                                               (_tl221153221213_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e221155221208_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl221153221213_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl221144221189_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl221141221181_))
                                                       (let ((_e221158221216_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl221141221181_))))
                 (let ((_hd221157221219_
                        (let () (declare (not safe)) (##car _e221158221216_)))
                       (_tl221156221221_
                        (let () (declare (not safe)) (##cdr _e221158221216_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl221156221221_))
                       ((lambda (_L221224_ _L221225_ _L221226_)
                          (let* ((_lambda-id221250_
                                  (let ((__tmp233319
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L221117_)))
                                        (__tmp233317
                                         (let ((__tmp233318
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L221226_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name220682_
                                            __tmp233318))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp233319
                                     '"__"
                                     __tmp233317)))
                                 (_lambda-id221252_
                                  (let ((__tmp233320
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx220679_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id221250_
                                     __tmp233320)))
                                 (_g233321_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id221252_)))
                                 (_new-case-lambda-expr221255_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L221224_
                                     _L221226_
                                     _lambda-id221252_))))
                            (let ((__tmp233323
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L221117_)))
                                  (__tmp233322
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id221252_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp233323
                               '" => "
                               __tmp233322))
                            (let ((__tmp233324
                                   (let ((__tmp233325
                                          (let ((__tmp233333
                                                 (let ((__tmp233334
                                                        (let ((__tmp233335
                                                               (let ((__tmp233338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id221252_ '())))
                             (__tmp233336
                              (let ((__tmp233337
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L221225_))))
                                (declare (not safe))
                                (cons __tmp233337 '()))))
                         (declare (not safe))
                         (cons __tmp233338 __tmp233336))))
                  (declare (not safe))
                  (cons '%#define-values __tmp233335))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp233334
                                                    _stx220679_)))
                                                (__tmp233326
                                                 (let ((__tmp233327
                                                        (let ((__tmp233328
                                                               (let ((__tmp233329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp233330
                                     (let ((__tmp233332
                                            (let ()
                                              (declare (not safe))
                                              (cons _L221117_ '())))
                                           (__tmp233331
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr221255_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp233332 __tmp233331))))
                                (declare (not safe))
                                (cons '%#define-values __tmp233330))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp233329 _stx220679_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp233328))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp233327 '()))))
                                            (declare (not safe))
                                            (cons __tmp233333 __tmp233326))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp233325))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp233324
                               _stx220679_))))
                        _hd221157221219_
                        _hd221154221211_
                        _hd221151221203_)
                       (let ()
                         (declare (not safe))
                         (_g221133221163_ _g221134221166_)))))
               (let () (declare (not safe)) (_g221133221163_ _g221134221166_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g221133221163_
                                                      _g221134221166_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g221133221163_
                                                  _g221134221166_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g221133221163_ _g221134221166_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g221133221163_ _g221134221166_)))))
                           (let ()
                             (declare (not safe))
                             (_g221133221163_ _g221134221166_)))))
                   (let ()
                     (declare (not safe))
                     (_g221133221163_ _g221134221166_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g221133221163_
                                                      _g221134221166_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g221133221163_
                                              _g221134221166_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g221133221163_ _g221134221166_))))))
                       (declare (not safe))
                       (_g221132221258_ _L221116_))))
                  (___kont232652232653_
                   (lambda (_L220830_ _L220831_)
                     (let* ((_g220847220900_
                             (lambda (_g220848220897_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g220848220897_))))
                            (_g220846221076_
                             (lambda (_g220848220903_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g220848220903_))
                                   (let ((_e220856220905_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g220848220903_))))
                                     (let ((_hd220855220908_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e220856220905_)))
                                           (_tl220854220910_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e220856220905_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl220854220910_))
                                           (let ((_e220859220913_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl220854220910_))))
                                             (let ((_hd220858220916_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e220859220913_)))
                                                   (_tl220857220918_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e220859220913_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd220858220916_))
                                                   (let ((_e220862220921_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd220858220916_))))
                                                     (let ((_hd220861220924_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e220862220921_)))
                                                           (_tl220860220926_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e220862220921_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd220861220924_))
                                                           (let ((_e220865220929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd220861220924_))))
                     (let ((_hd220864220932_
                            (let ()
                              (declare (not safe))
                              (##car _e220865220929_)))
                           (_tl220863220934_
                            (let ()
                              (declare (not safe))
                              (##cdr _e220865220929_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd220864220932_))
                           (let ((_e220868220937_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd220864220932_))))
                             (let ((_hd220867220940_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e220868220937_)))
                                   (_tl220866220942_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e220868220937_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl220866220942_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl220863220934_))
                                       (let ((_e220871220945_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl220863220934_))))
                                         (let ((_hd220870220948_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e220871220945_)))
                                               (_tl220869220950_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e220871220945_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd220870220948_))
                                               (let ((_e220874220953_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd220870220948_))))
                                                 (let ((_hd220873220956_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e220874220953_)))
                                                       (_tl220872220958_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e220874220953_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl220872220958_))
                                                       (let ((_e220877220961_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl220872220958_))))
                 (let ((_hd220876220964_
                        (let () (declare (not safe)) (##car _e220877220961_)))
                       (_tl220875220966_
                        (let () (declare (not safe)) (##cdr _e220877220961_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd220876220964_))
                       (let ((_e220880220969_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd220876220964_))))
                         (let ((_hd220879220972_
                                (let ()
                                  (declare (not safe))
                                  (##car _e220880220969_)))
                               (_tl220878220974_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e220880220969_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd220879220972_))
                               (let ((_e220883220977_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd220879220972_))))
                                 (let ((_hd220882220980_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e220883220977_)))
                                       (_tl220881220982_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e220883220977_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd220882220980_))
                                       (let ((_e220886220985_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd220882220980_))))
                                         (let ((_hd220885220988_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e220886220985_)))
                                               (_tl220884220990_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e220886220985_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl220884220990_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl220881220982_))
                                                   (let ((_e220889220993_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl220881220982_))))
                                                     (let ((_hd220888220996_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e220889220993_)))
                                                           (_tl220887220998_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e220889220993_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl220887220998_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl220878220974_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl220875220966_))
                           (let ((_e220892221001_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl220875220966_))))
                             (let ((_hd220891221004_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e220892221001_)))
                                   (_tl220890221006_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e220892221001_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl220890221006_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl220869220950_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl220860220926_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl220857220918_))
                                               (let ((_e220895221009_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl220857220918_))))
                                                 (let ((_hd220894221012_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e220895221009_)))
                                                       (_tl220893221014_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e220895221009_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl220893221014_))
                                                       ((lambda (_L221017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L221018_
                         _L221019_
                         _L221020_
                         _L221021_)
                  (let* ((_get-kws-id221061_
                          (let ((__tmp233341
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L220831_)))
                                (__tmp233339
                                 (let ((__tmp233340
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L221021_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name220683_
                                    __tmp233340
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp233341 '"__" __tmp233339)))
                         (_get-kws-id221063_
                          (let ((__tmp233342
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx220679_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id221061_
                             __tmp233342)))
                         (_main-id221065_
                          (let ((__tmp233345
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L220831_)))
                                (__tmp233343
                                 (let ((__tmp233344
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L221020_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name220683_
                                    __tmp233344
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp233345 '"__" __tmp233343)))
                         (_main-id221067_
                          (let ((__tmp233346
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx220679_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id221065_
                             __tmp233346)))
                         (_g233347_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id221063_)))
                         (_g233348_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id221067_)))
                         (_new-kw-dispatch221071_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L221017_
                             _L221021_
                             _get-kws-id221063_)))
                         (_new-get-kws221073_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L221018_
                             _L221020_
                             _main-id221067_))))
                    (let ((__tmp233351
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L220831_)))
                          (__tmp233350
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id221063_)))
                          (__tmp233349
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id221067_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp233351
                       '" => "
                       __tmp233350
                       '" => "
                       __tmp233349))
                    (let ((__tmp233352
                           (let ((__tmp233353
                                  (let ((__tmp233366
                                         (let ((__tmp233367
                                                (let ((__tmp233368
                                                       (let ((__tmp233369
                                                              (let ((__tmp233371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id221067_ '())))
                            (__tmp233370
                             (let ()
                               (declare (not safe))
                               (cons _L221019_ '()))))
                        (declare (not safe))
                        (cons __tmp233371 __tmp233370))))
                 (declare (not safe))
                 (cons '%#define-values __tmp233369))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp233368
                                                   _stx220679_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp233367)))
                                        (__tmp233354
                                         (let ((__tmp233361
                                                (let ((__tmp233362
                                                       (let ((__tmp233363
                                                              (let ((__tmp233365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id221063_ '())))
                            (__tmp233364
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws221073_ '()))))
                        (declare (not safe))
                        (cons __tmp233365 __tmp233364))))
                 (declare (not safe))
                 (cons '%#define-values __tmp233363))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp233362
                                                   _stx220679_)))
                                               (__tmp233355
                                                (let ((__tmp233356
                                                       (let ((__tmp233357
                                                              (let ((__tmp233358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp233360
                                    (let ()
                                      (declare (not safe))
                                      (cons _L220831_ '())))
                                   (__tmp233359
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch221071_ '()))))
                               (declare (not safe))
                               (cons __tmp233360 __tmp233359))))
                        (declare (not safe))
                        (cons '%#define-values __tmp233358))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp233357 _stx220679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp233356 '()))))
                                           (declare (not safe))
                                           (cons __tmp233361 __tmp233355))))
                                    (declare (not safe))
                                    (cons __tmp233366 __tmp233354))))
                             (declare (not safe))
                             (cons '%#begin __tmp233353))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp233352 _stx220679_))))
                _hd220894221012_
                _hd220891221004_
                _hd220888220996_
                _hd220885220988_
                _hd220867220940_)
               (let ()
                 (declare (not safe))
                 (_g220847220900_ _g220848220903_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g220847220900_
                                                  _g220848220903_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g220847220900_
                                              _g220848220903_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g220847220900_ _g220848220903_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g220847220900_ _g220848220903_)))))
                           (let ()
                             (declare (not safe))
                             (_g220847220900_ _g220848220903_)))
                       (let ()
                         (declare (not safe))
                         (_g220847220900_ _g220848220903_)))
                   (let ()
                     (declare (not safe))
                     (_g220847220900_ _g220848220903_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g220847220900_
                                                      _g220848220903_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g220847220900_
                                                  _g220848220903_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g220847220900_ _g220848220903_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g220847220900_ _g220848220903_)))))
                       (let ()
                         (declare (not safe))
                         (_g220847220900_ _g220848220903_)))))
               (let ()
                 (declare (not safe))
                 (_g220847220900_ _g220848220903_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g220847220900_
                                                  _g220848220903_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g220847220900_ _g220848220903_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g220847220900_ _g220848220903_)))))
                           (let ()
                             (declare (not safe))
                             (_g220847220900_ _g220848220903_)))))
                   (let ()
                     (declare (not safe))
                     (_g220847220900_ _g220848220903_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g220847220900_
                                                      _g220848220903_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g220847220900_
                                              _g220848220903_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g220847220900_ _g220848220903_))))))
                       (declare (not safe))
                       (_g220846221076_ _L220830_))))
                  (___kont232654232655_
                   (lambda (_L220776_ _L220777_)
                     (let ((__tmp233372
                            (let ((__tmp233373
                                   (let ((__tmp233374
                                          (let ((__tmp233375
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L220776_))))
                                            (declare (not safe))
                                            (cons __tmp233375 '()))))
                                     (declare (not safe))
                                     (cons _L220777_ __tmp233374))))
                              (declare (not safe))
                              (cons '%#define-values __tmp233373))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp233372 _stx220679_)))))
              (let* ((___match232739232740_
                      (lambda (_e220722220798_
                               _hd220721220801_
                               _tl220720220803_
                               _e220725220806_
                               _hd220724220809_
                               _tl220723220811_
                               _e220728220814_
                               _hd220727220817_
                               _tl220726220819_
                               _e220731220822_
                               _hd220730220825_
                               _tl220729220827_)
                        (let ((_L220830_ _hd220730220825_)
                              (_L220831_ _hd220727220817_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L220831_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L220830_)))
                              (___kont232652232653_ _L220830_ _L220831_)
                              (___kont232654232655_
                               _hd220730220825_
                               _hd220724220809_)))))
                     (___match232711232712_
                      (lambda (_e220708221084_
                               _hd220707221087_
                               _tl220706221089_
                               _e220711221092_
                               _hd220710221095_
                               _tl220709221097_
                               _e220714221100_
                               _hd220713221103_
                               _tl220712221105_
                               _e220717221108_
                               _hd220716221111_
                               _tl220715221113_)
                        (let ((_L221116_ _hd220716221111_)
                              (_L221117_ _hd220713221103_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L221117_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L221116_)))
                              (___kont232650232651_ _L221116_ _L221117_)
                              (___match232739232740_
                               _e220708221084_
                               _hd220707221087_
                               _tl220706221089_
                               _e220711221092_
                               _hd220710221095_
                               _tl220709221097_
                               _e220714221100_
                               _hd220713221103_
                               _tl220712221105_
                               _e220717221108_
                               _hd220716221111_
                               _tl220715221113_)))))
                     (___match232683232684_
                      (lambda (_e220694221266_
                               _hd220693221269_
                               _tl220692221271_
                               _e220697221274_
                               _hd220696221277_
                               _tl220695221279_
                               _e220700221282_
                               _hd220699221285_
                               _tl220698221287_
                               _e220703221290_
                               _hd220702221293_
                               _tl220701221295_)
                        (let ((_L221298_ _hd220702221293_)
                              (_L221299_ _hd220699221285_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L221299_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L221298_)))
                              (___kont232648232649_ _L221298_ _L221299_)
                              (___match232711232712_
                               _e220694221266_
                               _hd220693221269_
                               _tl220692221271_
                               _e220697221274_
                               _hd220696221277_
                               _tl220695221279_
                               _e220700221282_
                               _hd220699221285_
                               _tl220698221287_
                               _e220703221290_
                               _hd220702221293_
                               _tl220701221295_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx232646232647_))
                    (let ((_e220694221266_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx232646232647_))))
                      (let ((_tl220692221271_
                             (let ()
                               (declare (not safe))
                               (##cdr _e220694221266_)))
                            (_hd220693221269_
                             (let ()
                               (declare (not safe))
                               (##car _e220694221266_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl220692221271_))
                            (let ((_e220697221274_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl220692221271_))))
                              (let ((_tl220695221279_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e220697221274_)))
                                    (_hd220696221277_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e220697221274_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd220696221277_))
                                    (let ((_e220700221282_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd220696221277_))))
                                      (let ((_tl220698221287_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e220700221282_)))
                                            (_hd220699221285_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e220700221282_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl220698221287_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl220695221279_))
                                                (let ((_e220703221290_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl220695221279_))))
                                                  (let ((_tl220701221295_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e220703221290_)))
                                                        (_hd220702221293_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e220703221290_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl220701221295_))
                                                        (___match232683232684_
                                                         _e220694221266_
                                                         _hd220693221269_
                                                         _tl220692221271_
                                                         _e220697221274_
                                                         _hd220696221277_
                                                         _tl220695221279_
                                                         _e220700221282_
                                                         _hd220699221285_
                                                         _tl220698221287_
                                                         _e220703221290_
                                                         _hd220702221293_
                                                         _tl220701221295_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g220688220747_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220688220747_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl220695221279_))
                                                (let ((_e220742220768_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl220695221279_))))
                                                  (let ((_tl220740220773_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e220742220768_)))
                                                        (_hd220741220771_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e220742220768_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl220740220773_))
                                                        (___kont232654232655_
                                                         _hd220741220771_
                                                         _hd220696221277_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g220688220747_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220688220747_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl220695221279_))
                                        (let ((_e220742220768_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl220695221279_))))
                                          (let ((_tl220740220773_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e220742220768_)))
                                                (_hd220741220771_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e220742220768_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl220740220773_))
                                                (___kont232654232655_
                                                 _hd220741220771_
                                                 _hd220696221277_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220688220747_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g220688220747_))))))
                            (let () (declare (not safe)) (_g220688220747_)))))
                    (let () (declare (not safe)) (_g220688220747_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx219611_)
        (letrec* ((_bind-e__231042231043_
                   (lambda (_id220663_ _expr220664_ _compile?220665_)
                     (let ((__tmp233378
                            (let ()
                              (declare (not safe))
                              (cons _id220663_ '())))
                           (__tmp233376
                            (let ((__tmp233377
                                   (if _compile?220665_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr220664_))
                                       _expr220664_)))
                              (declare (not safe))
                              (cons __tmp233377 '()))))
                       (declare (not safe))
                       (cons __tmp233378 __tmp233376))))
                  (_bind-e__0__231044231045_
                   (lambda (_id220670_ _expr220671_)
                     (let ((_compile?220673_ '#t))
                       (declare (not safe))
                       (_bind-e__231042231043_
                        _id220670_
                        _expr220671_
                        _compile?220673_))))
                  (_bind-e219613_
                   (lambda _g233380_
                     (let ((_g233379_
                            (let ()
                              (declare (not safe))
                              (##length _g233380_))))
                       (cond ((let () (declare (not safe)) (##fx= _g233379_ 2))
                              (apply (lambda (_id220670_ _expr220671_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__231044231045_
                                          _id220670_
                                          _expr220671_)))
                                     _g233380_))
                             ((let () (declare (not safe)) (##fx= _g233379_ 3))
                              (apply (lambda (_id220675_
                                              _expr220676_
                                              _compile?220677_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__231042231043_
                                          _id220675_
                                          _expr220676_
                                          _compile?220677_)))
                                     _g233380_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g233380_))))))
                  (_compile-bindings219614_
                   (lambda (_bindings220247_)
                     (let _lp220249_ ((_rest220251_ _bindings220247_)
                                      (_lift1220252_ '())
                                      (_lift2220253_ '())
                                      (_bind220254_ '()))
                       (let* ((_rest220255220263_ _rest220251_)
                              (_else220257220271_
                               (lambda ()
                                 (values (reverse _lift1220252_)
                                         (reverse _lift2220253_)
                                         (reverse _bind220254_))))
                              (_K220259220650_
                               (lambda (_rest220274_ _hd220275_)
                                 (let* ((___stx232782232783_ _hd220275_)
                                        (_g220279220315_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx232782232783_)))))
                                   (let ((___kont232784232785_
                                          (lambda (_L220557_ _L220558_)
                                            (let* ((___stx232762232763_
                                                    _L220557_)
                                                   (_g220573220587_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx232762232763_)))))
                                              (let ((___kont232764232765_
                                                     (lambda (_L220635_)
                                                       (let ((__tmp233381
                                                              (let ((__tmp233382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__231042231043_
                                _L220558_
                                _L220557_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp233382 _bind220254_))))
                 (declare (not safe))
                 (_lp220249_
                  _rest220274_
                  _lift1220252_
                  _lift2220253_
                  __tmp233381))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232766232767_
                                                     (lambda (_L220600_)
                                                       (let ((_g233383_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx219611_
                         _L220558_
                         _L220600_
                         '#t))))
                 (begin
                   (let ((_g233384_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g233383_)
                                (##vector-length _g233383_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g233384_ 3)))
                         (error "Context expects 3 values" _g233384_)))
                   (let ((_ids220610_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g233383_ 0)))
                         (_impls220611_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g233383_ 1)))
                         (_clauses220612_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g233383_ 2))))
                     (let* ((_g233385_
                             (for-each gx#core-bind-runtime! _ids220610_))
                            (_xbind220615_
                             (map _bind-e219613_ _ids220610_ _impls220611_))
                            (_expr*220617_
                             (let ((__tmp233387
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses220612_)))
                                   (__tmp233386
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp233387
                                __tmp233386)))
                            (_bind*220619_
                             (let ()
                               (declare (not safe))
                               (_bind-e__231042231043_
                                _L220558_
                                _expr*220617_
                                '#f))))
                       (let ((__tmp233389
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L220558_)))
                             (__tmp233388
                              (map gxc#identifier-symbol _ids220610_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp233389
                          '" => "
                          __tmp233388))
                       (let ((__tmp233391
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2220253_ _xbind220615_)))
                             (__tmp233390
                              (let ()
                                (declare (not safe))
                                (cons _bind*220619_ _bind220254_))))
                         (declare (not safe))
                         (_lp220249_
                          _rest220274_
                          _lift1220252_
                          __tmp233391
                          __tmp233390)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match232773232774_
                                                       (lambda (_e220578220627_
                                                                _hd220577220630_
                                                                _tl220576220632_)
                                                         (let ((_L220635_
                                                                _tl220576220632_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L220635_))
                       (___kont232764232765_ _L220635_)
                       (___kont232766232767_ _tl220576220632_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx232762232763_))
                                                      (let ((_e220578220627_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx232762232763_))))
                (let ((_tl220576220632_
                       (let () (declare (not safe)) (##cdr _e220578220627_)))
                      (_hd220577220630_
                       (let () (declare (not safe)) (##car _e220578220627_))))
                  (___match232773232774_
                   _e220578220627_
                   _hd220577220630_
                   _tl220576220632_)))
              (let () (declare (not safe)) (_g220573220587_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont232786232787_
                                          (lambda (_L220385_ _L220386_)
                                            (let* ((_g220400220430_
                                                    (lambda (_g220401220427_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g220401220427_))))
                                                   (_g220399220525_
                                                    (lambda (_g220401220433_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g220401220433_))
                                                          (let ((_e220407220435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g220401220433_))))
                    (let ((_hd220406220438_
                           (let ()
                             (declare (not safe))
                             (##car _e220407220435_)))
                          (_tl220405220440_
                           (let ()
                             (declare (not safe))
                             (##cdr _e220407220435_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl220405220440_))
                          (let ((_e220410220443_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl220405220440_))))
                            (let ((_hd220409220446_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e220410220443_)))
                                  (_tl220408220448_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e220410220443_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd220409220446_))
                                  (let ((_e220413220451_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd220409220446_))))
                                    (let ((_hd220412220454_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e220413220451_)))
                                          (_tl220411220456_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e220413220451_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd220412220454_))
                                          (let ((_e220416220459_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd220412220454_))))
                                            (let ((_hd220415220462_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e220416220459_)))
                                                  (_tl220414220464_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e220416220459_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd220415220462_))
                                                  (let ((_e220419220467_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd220415220462_))))
                                                    (let ((_hd220418220470_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e220419220467_)))
                                                          (_tl220417220472_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e220419220467_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl220417220472_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl220414220464_))
                      (let ((_e220422220475_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl220414220464_))))
                        (let ((_hd220421220478_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220422220475_)))
                              (_tl220420220480_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220422220475_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl220420220480_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl220411220456_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220408220448_))
                                      (let ((_e220425220483_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220408220448_))))
                                        (let ((_hd220424220486_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220425220483_)))
                                              (_tl220423220488_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220425220483_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220423220488_))
                                              ((lambda (_L220491_
                                                        _L220492_
                                                        _L220493_)
                                                 (let* ((_lambda-id220517_
                                                         (let ((__tmp233393
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L220386_)))
                       (__tmp233392 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp233393 __tmp233392)))
                (_lambda-id220519_
                 (let ((__tmp233394
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx219611_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id220517_ __tmp233394)))
                (_g233395_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id220519_)))
                (_new-case-lambda-expr220522_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L220491_
                    _L220493_
                    _lambda-id220519_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp233397
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L220386_)))
                                                         (__tmp233396
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id220519_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp233397
                                                      '" => "
                                                      __tmp233396))
                                                   (let ((__tmp233400
                                                          (let ((__tmp233401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__231042231043_
                            _L220386_
                            _new-case-lambda-expr220522_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp233401 _rest220274_)))
                 (__tmp233398
                  (let ((__tmp233399
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__231044231045_
                            _lambda-id220519_
                            _L220492_))))
                    (declare (not safe))
                    (cons __tmp233399 _lift1220252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp220249_
                                                      __tmp233400
                                                      __tmp233398
                                                      _lift2220253_
                                                      _bind220254_))))
                                               _hd220424220486_
                                               _hd220421220478_
                                               _hd220418220470_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220400220430_
                                                 _g220401220433_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220400220430_ _g220401220433_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g220400220430_ _g220401220433_)))
                              (let ()
                                (declare (not safe))
                                (_g220400220430_ _g220401220433_)))))
                      (let ()
                        (declare (not safe))
                        (_g220400220430_ _g220401220433_)))
                  (let ()
                    (declare (not safe))
                    (_g220400220430_ _g220401220433_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g220400220430_
                                                     _g220401220433_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g220400220430_
                                             _g220401220433_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g220400220430_ _g220401220433_)))))
                          (let ()
                            (declare (not safe))
                            (_g220400220430_ _g220401220433_)))))
                  (let ()
                    (declare (not safe))
                    (_g220400220430_ _g220401220433_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g220399220525_ _L220385_))))
                                         (___kont232788232789_
                                          (lambda (_L220336_ _L220337_)
                                            (let ((__tmp233402
                                                   (let ((__tmp233403
                                                          (let ((__tmp233404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp233405
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L220336_))))
                           (declare (not safe))
                           (cons __tmp233405 '()))))
                    (declare (not safe))
                    (cons _L220337_ __tmp233404))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp233403
                                                           _bind220254_))))
                                              (declare (not safe))
                                              (_lp220249_
                                               _rest220274_
                                               _lift1220252_
                                               _lift2220253_
                                               __tmp233402)))))
                                     (let* ((___match232833232834_
                                             (lambda (_e220296220361_
                                                      _hd220295220364_
                                                      _tl220294220366_
                                                      _e220299220369_
                                                      _hd220298220372_
                                                      _tl220297220374_
                                                      _e220302220377_
                                                      _hd220301220380_
                                                      _tl220300220382_)
                                               (let ((_L220385_
                                                      _hd220301220380_)
                                                     (_L220386_
                                                      _hd220298220372_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L220386_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L220385_)))
                                                     (___kont232786232787_
                                                      _L220385_
                                                      _L220386_)
                                                     (___kont232788232789_
                                                      _hd220301220380_
                                                      _hd220295220364_)))))
                                            (___match232811232812_
                                             (lambda (_e220285220533_
                                                      _hd220284220536_
                                                      _tl220283220538_
                                                      _e220288220541_
                                                      _hd220287220544_
                                                      _tl220286220546_
                                                      _e220291220549_
                                                      _hd220290220552_
                                                      _tl220289220554_)
                                               (let ((_L220557_
                                                      _hd220290220552_)
                                                     (_L220558_
                                                      _hd220287220544_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L220558_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L220557_)))
                                                     (___kont232784232785_
                                                      _L220557_
                                                      _L220558_)
                                                     (___match232833232834_
                                                      _e220285220533_
                                                      _hd220284220536_
                                                      _tl220283220538_
                                                      _e220288220541_
                                                      _hd220287220544_
                                                      _tl220286220546_
                                                      _e220291220549_
                                                      _hd220290220552_
                                                      _tl220289220554_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx232782232783_))
                                           (let ((_e220285220533_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx232782232783_))))
                                             (let ((_tl220283220538_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e220285220533_)))
                                                   (_hd220284220536_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e220285220533_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd220284220536_))
                                                   (let ((_e220288220541_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd220284220536_))))
                                                     (let ((_tl220286220546_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e220288220541_)))
                                                           (_hd220287220544_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e220288220541_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl220286220546_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl220283220538_))
                       (let ((_e220291220549_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl220283220538_))))
                         (let ((_tl220289220554_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e220291220549_)))
                               (_hd220290220552_
                                (let ()
                                  (declare (not safe))
                                  (##car _e220291220549_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl220289220554_))
                               (___match232811232812_
                                _e220285220533_
                                _hd220284220536_
                                _tl220283220538_
                                _e220288220541_
                                _hd220287220544_
                                _tl220286220546_
                                _e220291220549_
                                _hd220290220552_
                                _tl220289220554_)
                               (let ()
                                 (declare (not safe))
                                 (_g220279220315_)))))
                       (let () (declare (not safe)) (_g220279220315_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl220283220538_))
                       (let ((_e220310220328_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl220283220538_))))
                         (let ((_tl220308220333_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e220310220328_)))
                               (_hd220309220331_
                                (let ()
                                  (declare (not safe))
                                  (##car _e220310220328_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl220308220333_))
                               (___kont232788232789_
                                _hd220309220331_
                                _hd220284220536_)
                               (let ()
                                 (declare (not safe))
                                 (_g220279220315_)))))
                       (let () (declare (not safe)) (_g220279220315_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl220283220538_))
                                                       (let ((_e220310220328_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl220283220538_))))
                 (let ((_tl220308220333_
                        (let () (declare (not safe)) (##cdr _e220310220328_)))
                       (_hd220309220331_
                        (let () (declare (not safe)) (##car _e220310220328_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl220308220333_))
                       (___kont232788232789_ _hd220309220331_ _hd220284220536_)
                       (let () (declare (not safe)) (_g220279220315_)))))
               (let () (declare (not safe)) (_g220279220315_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g220279220315_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest220255220263_))
                             (let ((_hd220260220653_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest220255220263_)))
                                   (_tl220261220655_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest220255220263_))))
                               (let* ((_hd220658_ _hd220260220653_)
                                      (_rest220660_ _tl220261220655_))
                                 (declare (not safe))
                                 (_K220259220650_ _rest220660_ _hd220658_)))
                             (let ()
                               (declare (not safe))
                               (_else220257220271_)))))))
                  (_lift-kw-lambda?219615_
                   (lambda (_bind220171_)
                     (let* ((___stx232850232851_ _bind220171_)
                            (_g220174220191_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx232850232851_)))))
                       (let ((___kont232852232853_
                              (lambda (_L220227_ _L220228_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L220228_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L220227_))
                                    '#f)))
                             (___kont232854232855_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx232850232851_))
                             (let ((_e220180220203_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx232850232851_))))
                               (let ((_tl220178220208_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e220180220203_)))
                                     (_hd220179220206_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e220180220203_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd220179220206_))
                                     (let ((_e220183220211_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd220179220206_))))
                                       (let ((_tl220181220216_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e220183220211_)))
                                             (_hd220182220214_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e220183220211_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl220181220216_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl220178220208_))
                                                 (let ((_e220186220219_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl220178220208_))))
                                                   (let ((_tl220184220224_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e220186220219_)))
                                                         (_hd220185220222_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e220186220219_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl220184220224_))
                                                         (___kont232852232853_
                                                          _hd220185220222_
                                                          _hd220182220214_)
                                                         (___kont232854232855_))))
                                                 (___kont232854232855_))
                                             (___kont232854232855_))))
                                     (___kont232854232855_))))
                             (___kont232854232855_))))))
                  (_lift-kw-lambda-bindings219616_
                   (lambda (_bindings219783_)
                     (let _lp219785_ ((_rest219787_ _bindings219783_)
                                      (_lift1219788_ '())
                                      (_lift2219789_ '())
                                      (_bind219790_ '()))
                       (let* ((_rest219791219799_ _rest219787_)
                              (_else219793219807_
                               (lambda ()
                                 (values (reverse _lift1219788_)
                                         (reverse _lift2219789_)
                                         (reverse _bind219790_))))
                              (_K219795220159_
                               (lambda (_rest219810_ _hd219811_)
                                 (let* ((___stx232880232881_ _hd219811_)
                                        (_g219814219839_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx232880232881_)))))
                                   (let ((___kont232882232883_
                                          (lambda (_L219909_ _L219910_)
                                            (let* ((_g219924219977_
                                                    (lambda (_g219925219974_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g219925219974_))))
                                                   (_g219923220153_
                                                    (lambda (_g219925219980_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g219925219980_))
                                                          (let ((_e219933219982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g219925219980_))))
                    (let ((_hd219932219985_
                           (let ()
                             (declare (not safe))
                             (##car _e219933219982_)))
                          (_tl219931219987_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219933219982_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl219931219987_))
                          (let ((_e219936219990_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl219931219987_))))
                            (let ((_hd219935219993_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219936219990_)))
                                  (_tl219934219995_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219936219990_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd219935219993_))
                                  (let ((_e219939219998_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd219935219993_))))
                                    (let ((_hd219938220001_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219939219998_)))
                                          (_tl219937220003_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219939219998_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd219938220001_))
                                          (let ((_e219942220006_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd219938220001_))))
                                            (let ((_hd219941220009_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e219942220006_)))
                                                  (_tl219940220011_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e219942220006_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd219941220009_))
                                                  (let ((_e219945220014_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd219941220009_))))
                                                    (let ((_hd219944220017_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219945220014_)))
                                                          (_tl219943220019_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219945220014_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219943220019_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl219940220011_))
                      (let ((_e219948220022_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl219940220011_))))
                        (let ((_hd219947220025_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219948220022_)))
                              (_tl219946220027_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219948220022_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd219947220025_))
                              (let ((_e219951220030_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd219947220025_))))
                                (let ((_hd219950220033_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219951220030_)))
                                      (_tl219949220035_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219951220030_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219949220035_))
                                      (let ((_e219954220038_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219949220035_))))
                                        (let ((_hd219953220041_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219954220038_)))
                                              (_tl219952220043_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219954220038_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd219953220041_))
                                              (let ((_e219957220046_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd219953220041_))))
                                                (let ((_hd219956220049_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e219957220046_)))
                                                      (_tl219955220051_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e219957220046_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd219956220049_))
                                                      (let ((_e219960220054_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd219956220049_))))
                (let ((_hd219959220057_
                       (let () (declare (not safe)) (##car _e219960220054_)))
                      (_tl219958220059_
                       (let () (declare (not safe)) (##cdr _e219960220054_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd219959220057_))
                      (let ((_e219963220062_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd219959220057_))))
                        (let ((_hd219962220065_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219963220062_)))
                              (_tl219961220067_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219963220062_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl219961220067_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl219958220059_))
                                  (let ((_e219966220070_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl219958220059_))))
                                    (let ((_hd219965220073_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219966220070_)))
                                          (_tl219964220075_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219966220070_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl219964220075_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219955220051_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl219952220043_))
                                                  (let ((_e219969220078_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl219952220043_))))
                                                    (let ((_hd219968220081_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219969220078_)))
                                                          (_tl219967220083_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219969220078_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219967220083_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl219946220027_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl219937220003_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219934219995_))
                              (let ((_e219972220086_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219934219995_))))
                                (let ((_hd219971220089_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219972220086_)))
                                      (_tl219970220091_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219972220086_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219970220091_))
                                      ((lambda (_L220094_
                                                _L220095_
                                                _L220096_
                                                _L220097_
                                                _L220098_)
                                         (let* ((_get-kws-id220138_
                                                 (let ((__tmp233407
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L219910_)))
                                                       (__tmp233406
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp233407
                                                    __tmp233406)))
                                                (_get-kws-id220140_
                                                 (let ((__tmp233408
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx219611_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id220138_
                                                    __tmp233408)))
                                                (_main-id220142_
                                                 (let ((__tmp233410
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L219910_)))
                                                       (__tmp233409
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp233410
                                                    __tmp233409)))
                                                (_main-id220144_
                                                 (let ((__tmp233411
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx219611_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id220142_
                                                    __tmp233411)))
                                                (_g233412_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id220140_)))
                                                (_g233413_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id220144_)))
                                                (_new-kw-dispatch220148_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L220094_
                                                    _L220098_
                                                    _get-kws-id220140_)))
                                                (_new-get-kws220150_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L220095_
                                                    _L220097_
                                                    _main-id220144_))))
                                           (let ((__tmp233416
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L219910_)))
                                                 (__tmp233415
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id220140_)))
                                                 (__tmp233414
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id220144_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp233416
                                              '" => "
                                              __tmp233415
                                              '" => "
                                              __tmp233414))
                                           (let ((__tmp233421
                                                  (let ((__tmp233422
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__231042231043_
                                                            _main-id220144_
                                                            _L220096_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp233422
                                                          _lift1219788_)))
                                                 (__tmp233419
                                                  (let ((__tmp233420
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__231042231043_
                                                            _get-kws-id220140_
                                                            _new-get-kws220150_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp233420
                                                          _lift2219789_)))
                                                 (__tmp233417
                                                  (let ((__tmp233418
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__231042231043_
                                                            _L219910_
                                                            _new-kw-dispatch220148_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp233418
                                                          _bind219790_))))
                                             (declare (not safe))
                                             (_lp219785_
                                              _rest219810_
                                              __tmp233421
                                              __tmp233419
                                              __tmp233417))))
                                       _hd219971220089_
                                       _hd219968220081_
                                       _hd219965220073_
                                       _hd219962220065_
                                       _hd219944220017_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219924219977_ _g219925219980_)))))
                              (let ()
                                (declare (not safe))
                                (_g219924219977_ _g219925219980_)))
                          (let ()
                            (declare (not safe))
                            (_g219924219977_ _g219925219980_)))
                      (let ()
                        (declare (not safe))
                        (_g219924219977_ _g219925219980_)))
                  (let ()
                    (declare (not safe))
                    (_g219924219977_ _g219925219980_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g219924219977_
                                                     _g219925219980_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g219924219977_
                                                 _g219925219980_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g219924219977_
                                             _g219925219980_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g219924219977_ _g219925219980_)))
                              (let ()
                                (declare (not safe))
                                (_g219924219977_ _g219925219980_)))))
                      (let ()
                        (declare (not safe))
                        (_g219924219977_ _g219925219980_)))))
              (let ()
                (declare (not safe))
                (_g219924219977_ _g219925219980_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g219924219977_
                                                 _g219925219980_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219924219977_ _g219925219980_)))))
                              (let ()
                                (declare (not safe))
                                (_g219924219977_ _g219925219980_)))))
                      (let ()
                        (declare (not safe))
                        (_g219924219977_ _g219925219980_)))
                  (let ()
                    (declare (not safe))
                    (_g219924219977_ _g219925219980_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g219924219977_
                                                     _g219925219980_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g219924219977_
                                             _g219925219980_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g219924219977_ _g219925219980_)))))
                          (let ()
                            (declare (not safe))
                            (_g219924219977_ _g219925219980_)))))
                  (let ()
                    (declare (not safe))
                    (_g219924219977_ _g219925219980_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g219923220153_ _L219909_))))
                                         (___kont232884232885_
                                          (lambda (_L219860_ _L219861_)
                                            (let ((__tmp233423
                                                   (let ((__tmp233424
                                                          (let ((__tmp233425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L219860_ '()))))
                    (declare (not safe))
                    (cons _L219861_ __tmp233425))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp233424
                                                           _bind219790_))))
                                              (declare (not safe))
                                              (_lp219785_
                                               _rest219810_
                                               _lift1219788_
                                               _lift2219789_
                                               __tmp233423)))))
                                     (let ((___match232907232908_
                                            (lambda (_e219820219885_
                                                     _hd219819219888_
                                                     _tl219818219890_
                                                     _e219823219893_
                                                     _hd219822219896_
                                                     _tl219821219898_
                                                     _e219826219901_
                                                     _hd219825219904_
                                                     _tl219824219906_)
                                              (let ((_L219909_
                                                     _hd219825219904_)
                                                    (_L219910_
                                                     _hd219822219896_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L219910_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L219909_)))
                                                    (___kont232882232883_
                                                     _L219909_
                                                     _L219910_)
                                                    (___kont232884232885_
                                                     _hd219825219904_
                                                     _hd219819219888_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx232880232881_))
                                           (let ((_e219820219885_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx232880232881_))))
                                             (let ((_tl219818219890_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e219820219885_)))
                                                   (_hd219819219888_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e219820219885_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd219819219888_))
                                                   (let ((_e219823219893_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd219819219888_))))
                                                     (let ((_tl219821219898_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e219823219893_)))
                                                           (_hd219822219896_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e219823219893_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl219821219898_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl219818219890_))
                       (let ((_e219826219901_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl219818219890_))))
                         (let ((_tl219824219906_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e219826219901_)))
                               (_hd219825219904_
                                (let ()
                                  (declare (not safe))
                                  (##car _e219826219901_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl219824219906_))
                               (___match232907232908_
                                _e219820219885_
                                _hd219819219888_
                                _tl219818219890_
                                _e219823219893_
                                _hd219822219896_
                                _tl219821219898_
                                _e219826219901_
                                _hd219825219904_
                                _tl219824219906_)
                               (let ()
                                 (declare (not safe))
                                 (_g219814219839_)))))
                       (let () (declare (not safe)) (_g219814219839_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl219818219890_))
                       (let ((_e219834219852_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl219818219890_))))
                         (let ((_tl219832219857_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e219834219852_)))
                               (_hd219833219855_
                                (let ()
                                  (declare (not safe))
                                  (##car _e219834219852_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl219832219857_))
                               (___kont232884232885_
                                _hd219833219855_
                                _hd219819219888_)
                               (let ()
                                 (declare (not safe))
                                 (_g219814219839_)))))
                       (let () (declare (not safe)) (_g219814219839_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl219818219890_))
                                                       (let ((_e219834219852_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl219818219890_))))
                 (let ((_tl219832219857_
                        (let () (declare (not safe)) (##cdr _e219834219852_)))
                       (_hd219833219855_
                        (let () (declare (not safe)) (##car _e219834219852_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl219832219857_))
                       (___kont232884232885_ _hd219833219855_ _hd219819219888_)
                       (let () (declare (not safe)) (_g219814219839_)))))
               (let () (declare (not safe)) (_g219814219839_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g219814219839_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest219791219799_))
                             (let ((_hd219796220162_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest219791219799_)))
                                   (_tl219797220164_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest219791219799_))))
                               (let* ((_hd220167_ _hd219796220162_)
                                      (_rest220169_ _tl219797220164_))
                                 (declare (not safe))
                                 (_K219795220159_ _rest220169_ _hd220167_)))
                             (let ()
                               (declare (not safe))
                               (_else219793219807_))))))))
          (let* ((___stx232924232925_ _stx219611_)
                 (_g219619219645_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx232924232925_)))))
            (let ((___kont232926232927_
                   (lambda (_L219705_ _L219706_)
                     (let ((__tmp233427
                            (lambda ()
                              (if (let ((__tmp233454
                                         (let ((__tmp233455
                                                (lambda (_g219734219737_
                                                         _g219735219739_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g219734219737_
                                                          _g219735219739_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp233455
                                                   '()
                                                   _L219706_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?219615_
                                            __tmp233454))
                                  (let ((_g233441_
                                         (let ((__tmp233443
                                                (let ((__tmp233444
                                                       (lambda (_g219741219744_
                                                                _g219742219746_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g219741219744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g219742219746_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp233444
                                                          '()
                                                          _L219706_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings219616_
                                            __tmp233443))))
                                    (begin
                                      (let ((_g233442_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g233441_)
                                                   (##vector-length _g233441_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g233442_ 3)))
                                            (error "Context expects 3 values"
                                                   _g233442_)))
                                      (let ((_lift1219749_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g233441_ 0)))
                                            (_lift2219750_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g233441_ 1)))
                                            (_hd219751_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g233441_ 2))))
                                        (let* ((_expr219753_
                                                (let ((__tmp233445
                                                       (let ((__tmp233446
                                                              (let ((__tmp233447
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L219705_ '()))))
                        (declare (not safe))
                        (cons _hd219751_ __tmp233447))))
                 (declare (not safe))
                 (cons '%#let-values __tmp233446))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp233445
                                                   _stx219611_)))
                                               (_expr219755_
                                                (let ((__tmp233448
                                                       (let ((__tmp233449
                                                              (let ((__tmp233450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr219753_ '()))))
                        (declare (not safe))
                        (cons _lift2219750_ __tmp233450))))
                 (declare (not safe))
                 (cons '%#let-values __tmp233449))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp233448
                                                   _stx219611_)))
                                               (_expr219757_
                                                (let ((__tmp233451
                                                       (let ((__tmp233452
                                                              (let ((__tmp233453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr219755_ '()))))
                        (declare (not safe))
                        (cons _lift1219749_ __tmp233453))))
                 (declare (not safe))
                 (cons '%#let-values __tmp233452))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp233451
                                                   _stx219611_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr219757_))))))
                                  (let ((_g233428_
                                         (let ((__tmp233430
                                                (let ((__tmp233431
                                                       (lambda (_g219759219762_
                                                                _g219760219764_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g219759219762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g219760219764_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp233431
                                                          '()
                                                          _L219706_))))
                                           (declare (not safe))
                                           (_compile-bindings219614_
                                            __tmp233430))))
                                    (begin
                                      (let ((_g233429_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g233428_)
                                                   (##vector-length _g233428_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g233429_ 3)))
                                            (error "Context expects 3 values"
                                                   _g233429_)))
                                      (let ((_lift1219767_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g233428_ 0)))
                                            (_lift2219768_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g233428_ 1)))
                                            (_hd219769_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g233428_ 2))))
                                        (let* ((_body219771_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L219705_)))
                                               (_expr219773_
                                                (let ((__tmp233432
                                                       (let ((__tmp233433
                                                              (let ((__tmp233434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body219771_ '()))))
                        (declare (not safe))
                        (cons _hd219769_ __tmp233434))))
                 (declare (not safe))
                 (cons '%#let-values __tmp233433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp233432
                                                   _stx219611_)))
                                               (_expr219775_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2219768_))
                                                    _expr219773_
                                                    (let ((__tmp233435
                                                           (let ((__tmp233436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp233437
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr219773_ '()))))
                            (declare (not safe))
                            (cons _lift2219768_ __tmp233437))))
                     (declare (not safe))
                     (cons '%#let-values __tmp233436))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp233435 _stx219611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr219777_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1219767_))
                                                    _expr219775_
                                                    (let ((__tmp233438
                                                           (let ((__tmp233439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp233440
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr219775_ '()))))
                            (declare (not safe))
                            (cons _lift1219767_ __tmp233440))))
                     (declare (not safe))
                     (cons '%#let-values __tmp233439))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp233438 _stx219611_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr219777_)))))))
                           (__tmp233426
                            (let ((__obj233130
                                   (make-object* gx#local-context::t '6)))
                              (gx#local-context:::init! __obj233130)
                              __obj233130)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp233427
                        gx#current-expander-context
                        __tmp233426))))
                  (___kont232930232931_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx219611_)))))
              (let ((___match232951232952_
                     (lambda (_e219625219657_
                              _hd219624219660_
                              _tl219623219662_
                              _e219628219665_
                              _hd219627219668_
                              _tl219626219670_
                              ___splice232928232929_
                              _target219629219673_
                              _tl219631219675_)
                       (letrec ((_loop219632219678_
                                 (lambda (_hd219630219681_ _bind219636219683_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd219630219681_))
                                       (let ((_e219633219686_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd219630219681_))))
                                         (let ((_lp-tl219635219691_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e219633219686_)))
                                               (_lp-hd219634219689_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e219633219686_))))
                                           (let ((__tmp233458
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd219634219689_
                                                          _bind219636219683_))))
                                             (declare (not safe))
                                             (_loop219632219678_
                                              _lp-tl219635219691_
                                              __tmp233458))))
                                       (let ((_bind219637219694_
                                              (reverse _bind219636219683_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl219626219670_))
                                             (let ((_e219640219697_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl219626219670_))))
                                               (let ((_tl219638219702_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e219640219697_)))
                                                     (_hd219639219700_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e219640219697_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl219638219702_))
                                                     (let ((_L219705_
                                                            _hd219639219700_)
                                                           (_L219706_
                                                            _bind219637219694_))
                                                       (if (let ((__tmp233456
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp233457
                                 (lambda (_g219726219729_ _g219727219731_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g219726219729_ _g219727219731_)))))
                            (declare (not safe))
                            (foldr1 __tmp233457 '() _L219706_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp233456))
                   (___kont232926232927_ _L219705_ _L219706_)
                   (___kont232930232931_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont232930232931_))))
                                             (___kont232930232931_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop219632219678_ _target219629219673_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx232924232925_))
                    (let ((_e219625219657_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx232924232925_))))
                      (let ((_tl219623219662_
                             (let ()
                               (declare (not safe))
                               (##cdr _e219625219657_)))
                            (_hd219624219660_
                             (let ()
                               (declare (not safe))
                               (##car _e219625219657_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl219623219662_))
                            (let ((_e219628219665_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl219623219662_))))
                              (let ((_tl219626219670_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e219628219665_)))
                                    (_hd219627219668_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e219628219665_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd219627219668_))
                                    (let ((___splice232928232929_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd219627219668_
                                              '0))))
                                      (let ((_tl219631219675_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice232928232929_
                                                '1)))
                                            (_target219629219673_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice232928232929_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl219631219675_))
                                            (___match232951232952_
                                             _e219625219657_
                                             _hd219624219660_
                                             _tl219623219662_
                                             _e219628219665_
                                             _hd219627219668_
                                             _tl219626219670_
                                             ___splice232928232929_
                                             _target219629219673_
                                             _tl219631219675_)
                                            (___kont232930232931_))))
                                    (___kont232930232931_))))
                            (___kont232930232931_))))
                    (___kont232930232931_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx218755_)
        (letrec* ((_bind-e__231047231048_
                   (lambda (_id219595_ _expr219596_ _compile?219597_)
                     (let ((__tmp233461
                            (let ()
                              (declare (not safe))
                              (cons _id219595_ '())))
                           (__tmp233459
                            (let ((__tmp233460
                                   (if _compile?219597_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr219596_))
                                       _expr219596_)))
                              (declare (not safe))
                              (cons __tmp233460 '()))))
                       (declare (not safe))
                       (cons __tmp233461 __tmp233459))))
                  (_bind-e__0__231049231050_
                   (lambda (_id219602_ _expr219603_)
                     (let ((_compile?219605_ '#t))
                       (declare (not safe))
                       (_bind-e__231047231048_
                        _id219602_
                        _expr219603_
                        _compile?219605_))))
                  (_bind-e218757_
                   (lambda _g233463_
                     (let ((_g233462_
                            (let ()
                              (declare (not safe))
                              (##length _g233463_))))
                       (cond ((let () (declare (not safe)) (##fx= _g233462_ 2))
                              (apply (lambda (_id219602_ _expr219603_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__231049231050_
                                          _id219602_
                                          _expr219603_)))
                                     _g233463_))
                             ((let () (declare (not safe)) (##fx= _g233462_ 3))
                              (apply (lambda (_id219607_
                                              _expr219608_
                                              _compile?219609_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__231047231048_
                                          _id219607_
                                          _expr219608_
                                          _compile?219609_)))
                                     _g233463_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g233463_))))))
                  (_compile-bindings218758_
                   (lambda (_rest218893_)
                     (let _lp218895_ ((_rest218897_ _rest218893_)
                                      (_bind218898_ '()))
                       (let* ((_rest218899218907_ _rest218897_)
                              (_else218901218915_
                               (lambda () (reverse _bind218898_)))
                              (_K218903219582_
                               (lambda (_rest218918_ _hd218919_)
                                 (let* ((___stx232974232975_ _hd218919_)
                                        (_g218924218971_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx232974232975_)))))
                                   (let ((___kont232976232977_
                                          (lambda (_L219489_ _L219490_)
                                            (let* ((___stx232954232955_
                                                    _L219489_)
                                                   (_g219505219519_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx232954232955_)))))
                                              (let ((___kont232956232957_
                                                     (lambda (_L219567_)
                                                       (let ((__tmp233464
                                                              (let ((__tmp233465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__231047231048_
                                _L219490_
                                _L219489_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp233465 _bind218898_))))
                 (declare (not safe))
                 (_lp218895_ _rest218918_ __tmp233464))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont232958232959_
                                                     (lambda (_L219532_)
                                                       (let ((_g233466_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx218755_
                         _L219490_
                         _L219532_
                         '#t))))
                 (begin
                   (let ((_g233467_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g233466_)
                                (##vector-length _g233466_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g233467_ 3)))
                         (error "Context expects 3 values" _g233467_)))
                   (let ((_ids219542_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g233466_ 0)))
                         (_impls219543_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g233466_ 1)))
                         (_clauses219544_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g233466_ 2))))
                     (let* ((_g233468_
                             (for-each gx#core-bind-runtime! _ids219542_))
                            (_xbind219547_
                             (map _bind-e218757_ _ids219542_ _impls219543_))
                            (_expr*219549_
                             (let ((__tmp233470
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses219544_)))
                                   (__tmp233469
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp233470
                                __tmp233469)))
                            (_bind*219551_
                             (let ()
                               (declare (not safe))
                               (_bind-e__231047231048_
                                _L219490_
                                _expr*219549_
                                '#f))))
                       (let ((__tmp233472
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L219490_)))
                             (__tmp233471
                              (map gxc#identifier-symbol _ids219542_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp233472
                          '" => "
                          __tmp233471))
                       (let ((__tmp233473
                              (let ((__tmp233474
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind218898_
                                               _xbind219547_))))
                                (declare (not safe))
                                (cons _bind*219551_ __tmp233474))))
                         (declare (not safe))
                         (_lp218895_ _rest218918_ __tmp233473)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match232965232966_
                                                       (lambda (_e219510219559_
                                                                _hd219509219562_
                                                                _tl219508219564_)
                                                         (let ((_L219567_
                                                                _tl219508219564_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L219567_))
                       (___kont232956232957_ _L219567_)
                       (___kont232958232959_ _tl219508219564_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx232954232955_))
                                                      (let ((_e219510219559_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx232954232955_))))
                (let ((_tl219508219564_
                       (let () (declare (not safe)) (##cdr _e219510219559_)))
                      (_hd219509219562_
                       (let () (declare (not safe)) (##car _e219510219559_))))
                  (___match232965232966_
                   _e219510219559_
                   _hd219509219562_
                   _tl219508219564_)))
              (let () (declare (not safe)) (_g219505219519_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont232978232979_
                                          (lambda (_L219317_ _L219318_)
                                            (let* ((_g219332219362_
                                                    (lambda (_g219333219359_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g219333219359_))))
                                                   (_g219331219457_
                                                    (lambda (_g219333219365_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g219333219365_))
                                                          (let ((_e219339219367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g219333219365_))))
                    (let ((_hd219338219370_
                           (let ()
                             (declare (not safe))
                             (##car _e219339219367_)))
                          (_tl219337219372_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219339219367_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl219337219372_))
                          (let ((_e219342219375_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl219337219372_))))
                            (let ((_hd219341219378_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219342219375_)))
                                  (_tl219340219380_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219342219375_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd219341219378_))
                                  (let ((_e219345219383_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd219341219378_))))
                                    (let ((_hd219344219386_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219345219383_)))
                                          (_tl219343219388_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219345219383_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd219344219386_))
                                          (let ((_e219348219391_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd219344219386_))))
                                            (let ((_hd219347219394_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e219348219391_)))
                                                  (_tl219346219396_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e219348219391_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd219347219394_))
                                                  (let ((_e219351219399_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd219347219394_))))
                                                    (let ((_hd219350219402_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219351219399_)))
                                                          (_tl219349219404_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219351219399_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219349219404_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl219346219396_))
                      (let ((_e219354219407_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl219346219396_))))
                        (let ((_hd219353219410_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219354219407_)))
                              (_tl219352219412_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219354219407_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl219352219412_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl219343219388_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219340219380_))
                                      (let ((_e219357219415_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219340219380_))))
                                        (let ((_hd219356219418_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219357219415_)))
                                              (_tl219355219420_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219357219415_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219355219420_))
                                              ((lambda (_L219423_
                                                        _L219424_
                                                        _L219425_)
                                                 (let* ((_lambda-id219449_
                                                         (let ((__tmp233476
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L219318_)))
                       (__tmp233475 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp233476 __tmp233475)))
                (_lambda-id219451_
                 (let ((__tmp233477
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx218755_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id219449_ __tmp233477)))
                (_g233478_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id219451_)))
                (_new-case-lambda-expr219454_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L219423_
                    _L219425_
                    _lambda-id219451_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp233480
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L219318_)))
                                                         (__tmp233479
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id219451_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp233480
                                                      '" => "
                                                      __tmp233479))
                                                   (let ((__tmp233483
                                                          (let ((__tmp233484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__231047231048_
                            _L219318_
                            _new-case-lambda-expr219454_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp233484 _rest218918_)))
                 (__tmp233481
                  (let ((__tmp233482
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__231049231050_
                            _lambda-id219451_
                            _L219424_))))
                    (declare (not safe))
                    (cons __tmp233482 _bind218898_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp218895_
                                                      __tmp233483
                                                      __tmp233481))))
                                               _hd219356219418_
                                               _hd219353219410_
                                               _hd219350219402_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219332219362_
                                                 _g219333219365_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219332219362_ _g219333219365_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g219332219362_ _g219333219365_)))
                              (let ()
                                (declare (not safe))
                                (_g219332219362_ _g219333219365_)))))
                      (let ()
                        (declare (not safe))
                        (_g219332219362_ _g219333219365_)))
                  (let ()
                    (declare (not safe))
                    (_g219332219362_ _g219333219365_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g219332219362_
                                                     _g219333219365_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g219332219362_
                                             _g219333219365_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g219332219362_ _g219333219365_)))))
                          (let ()
                            (declare (not safe))
                            (_g219332219362_ _g219333219365_)))))
                  (let ()
                    (declare (not safe))
                    (_g219332219362_ _g219333219365_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g219331219457_ _L219317_))))
                                         (___kont232980232981_
                                          (lambda (_L219041_ _L219042_)
                                            (let* ((_g219056219109_
                                                    (lambda (_g219057219106_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g219057219106_))))
                                                   (_g219055219285_
                                                    (lambda (_g219057219112_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g219057219112_))
                                                          (let ((_e219065219114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g219057219112_))))
                    (let ((_hd219064219117_
                           (let ()
                             (declare (not safe))
                             (##car _e219065219114_)))
                          (_tl219063219119_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219065219114_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl219063219119_))
                          (let ((_e219068219122_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl219063219119_))))
                            (let ((_hd219067219125_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219068219122_)))
                                  (_tl219066219127_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219068219122_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd219067219125_))
                                  (let ((_e219071219130_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd219067219125_))))
                                    (let ((_hd219070219133_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219071219130_)))
                                          (_tl219069219135_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219071219130_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd219070219133_))
                                          (let ((_e219074219138_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd219070219133_))))
                                            (let ((_hd219073219141_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e219074219138_)))
                                                  (_tl219072219143_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e219074219138_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd219073219141_))
                                                  (let ((_e219077219146_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd219073219141_))))
                                                    (let ((_hd219076219149_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219077219146_)))
                                                          (_tl219075219151_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219077219146_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219075219151_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl219072219143_))
                      (let ((_e219080219154_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl219072219143_))))
                        (let ((_hd219079219157_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219080219154_)))
                              (_tl219078219159_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219080219154_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd219079219157_))
                              (let ((_e219083219162_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd219079219157_))))
                                (let ((_hd219082219165_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219083219162_)))
                                      (_tl219081219167_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219083219162_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219081219167_))
                                      (let ((_e219086219170_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219081219167_))))
                                        (let ((_hd219085219173_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219086219170_)))
                                              (_tl219084219175_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219086219170_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd219085219173_))
                                              (let ((_e219089219178_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd219085219173_))))
                                                (let ((_hd219088219181_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e219089219178_)))
                                                      (_tl219087219183_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e219089219178_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd219088219181_))
                                                      (let ((_e219092219186_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd219088219181_))))
                (let ((_hd219091219189_
                       (let () (declare (not safe)) (##car _e219092219186_)))
                      (_tl219090219191_
                       (let () (declare (not safe)) (##cdr _e219092219186_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd219091219189_))
                      (let ((_e219095219194_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd219091219189_))))
                        (let ((_hd219094219197_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219095219194_)))
                              (_tl219093219199_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219095219194_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl219093219199_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl219090219191_))
                                  (let ((_e219098219202_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl219090219191_))))
                                    (let ((_hd219097219205_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219098219202_)))
                                          (_tl219096219207_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219098219202_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl219096219207_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219087219183_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl219084219175_))
                                                  (let ((_e219101219210_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl219084219175_))))
                                                    (let ((_hd219100219213_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219101219210_)))
                                                          (_tl219099219215_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219101219210_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219099219215_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl219078219159_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl219069219135_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219066219127_))
                              (let ((_e219104219218_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219066219127_))))
                                (let ((_hd219103219221_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219104219218_)))
                                      (_tl219102219223_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219104219218_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219102219223_))
                                      ((lambda (_L219226_
                                                _L219227_
                                                _L219228_
                                                _L219229_
                                                _L219230_)
                                         (let* ((_get-kws-id219270_
                                                 (let ((__tmp233486
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L219042_)))
                                                       (__tmp233485
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp233486
                                                    __tmp233485)))
                                                (_get-kws-id219272_
                                                 (let ((__tmp233487
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx218755_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id219270_
                                                    __tmp233487)))
                                                (_main-id219274_
                                                 (let ((__tmp233489
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L219042_)))
                                                       (__tmp233488
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp233489
                                                    __tmp233488)))
                                                (_main-id219276_
                                                 (let ((__tmp233490
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx218755_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id219274_
                                                    __tmp233490)))
                                                (_g233491_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id219272_)))
                                                (_g233492_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id219276_)))
                                                (_new-kw-dispatch219280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L219226_
                                                    _L219230_
                                                    _get-kws-id219272_)))
                                                (_new-get-kws219282_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L219227_
                                                    _L219229_
                                                    _main-id219276_))))
                                           (let ((__tmp233495
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L219042_)))
                                                 (__tmp233494
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id219272_)))
                                                 (__tmp233493
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id219276_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp233495
                                              '" => "
                                              __tmp233494
                                              '" => "
                                              __tmp233493))
                                           (let ((__tmp233496
                                                  (let ((__tmp233501
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__231047231048_
                                                            _main-id219276_
                                                            _L219228_
                                                            '#f)))
                                                        (__tmp233497
                                                         (let ((__tmp233500
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__231047231048_
                           _get-kws-id219272_
                           _new-get-kws219282_
                           '#f)))
                       (__tmp233498
                        (let ((__tmp233499
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__231047231048_
                                  _L219042_
                                  _new-kw-dispatch219280_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp233499 _rest218918_))))
                   (declare (not safe))
                   (cons __tmp233500 __tmp233498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp233501
                                                          __tmp233497))))
                                             (declare (not safe))
                                             (_lp218895_
                                              __tmp233496
                                              _bind218898_))))
                                       _hd219103219221_
                                       _hd219100219213_
                                       _hd219097219205_
                                       _hd219094219197_
                                       _hd219076219149_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219056219109_ _g219057219112_)))))
                              (let ()
                                (declare (not safe))
                                (_g219056219109_ _g219057219112_)))
                          (let ()
                            (declare (not safe))
                            (_g219056219109_ _g219057219112_)))
                      (let ()
                        (declare (not safe))
                        (_g219056219109_ _g219057219112_)))
                  (let ()
                    (declare (not safe))
                    (_g219056219109_ _g219057219112_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g219056219109_
                                                     _g219057219112_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g219056219109_
                                                 _g219057219112_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g219056219109_
                                             _g219057219112_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g219056219109_ _g219057219112_)))
                              (let ()
                                (declare (not safe))
                                (_g219056219109_ _g219057219112_)))))
                      (let ()
                        (declare (not safe))
                        (_g219056219109_ _g219057219112_)))))
              (let ()
                (declare (not safe))
                (_g219056219109_ _g219057219112_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g219056219109_
                                                 _g219057219112_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219056219109_ _g219057219112_)))))
                              (let ()
                                (declare (not safe))
                                (_g219056219109_ _g219057219112_)))))
                      (let ()
                        (declare (not safe))
                        (_g219056219109_ _g219057219112_)))
                  (let ()
                    (declare (not safe))
                    (_g219056219109_ _g219057219112_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g219056219109_
                                                     _g219057219112_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g219056219109_
                                             _g219057219112_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g219056219109_ _g219057219112_)))))
                          (let ()
                            (declare (not safe))
                            (_g219056219109_ _g219057219112_)))))
                  (let ()
                    (declare (not safe))
                    (_g219056219109_ _g219057219112_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g219055219285_ _L219041_))))
                                         (___kont232982232983_
                                          (lambda (_L218992_ _L218993_)
                                            (let ((__tmp233502
                                                   (let ((__tmp233503
                                                          (let ((__tmp233504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp233505
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L218992_))))
                           (declare (not safe))
                           (cons __tmp233505 '()))))
                    (declare (not safe))
                    (cons _L218993_ __tmp233504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp233503
                                                           _bind218898_))))
                                              (declare (not safe))
                                              (_lp218895_
                                               _rest218918_
                                               __tmp233502)))))
                                     (let* ((___match233049233050_
                                             (lambda (_e218952219017_
                                                      _hd218951219020_
                                                      _tl218950219022_
                                                      _e218955219025_
                                                      _hd218954219028_
                                                      _tl218953219030_
                                                      _e218958219033_
                                                      _hd218957219036_
                                                      _tl218956219038_)
                                               (let ((_L219041_
                                                      _hd218957219036_)
                                                     (_L219042_
                                                      _hd218954219028_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L219042_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L219041_)))
                                                     (___kont232980232981_
                                                      _L219041_
                                                      _L219042_)
                                                     (___kont232982232983_
                                                      _hd218957219036_
                                                      _hd218951219020_)))))
                                            (___match233027233028_
                                             (lambda (_e218941219293_
                                                      _hd218940219296_
                                                      _tl218939219298_
                                                      _e218944219301_
                                                      _hd218943219304_
                                                      _tl218942219306_
                                                      _e218947219309_
                                                      _hd218946219312_
                                                      _tl218945219314_)
                                               (let ((_L219317_
                                                      _hd218946219312_)
                                                     (_L219318_
                                                      _hd218943219304_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L219318_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L219317_)))
                                                     (___kont232978232979_
                                                      _L219317_
                                                      _L219318_)
                                                     (___match233049233050_
                                                      _e218941219293_
                                                      _hd218940219296_
                                                      _tl218939219298_
                                                      _e218944219301_
                                                      _hd218943219304_
                                                      _tl218942219306_
                                                      _e218947219309_
                                                      _hd218946219312_
                                                      _tl218945219314_)))))
                                            (___match233005233006_
                                             (lambda (_e218930219465_
                                                      _hd218929219468_
                                                      _tl218928219470_
                                                      _e218933219473_
                                                      _hd218932219476_
                                                      _tl218931219478_
                                                      _e218936219481_
                                                      _hd218935219484_
                                                      _tl218934219486_)
                                               (let ((_L219489_
                                                      _hd218935219484_)
                                                     (_L219490_
                                                      _hd218932219476_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L219490_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L219489_)))
                                                     (___kont232976232977_
                                                      _L219489_
                                                      _L219490_)
                                                     (___match233027233028_
                                                      _e218930219465_
                                                      _hd218929219468_
                                                      _tl218928219470_
                                                      _e218933219473_
                                                      _hd218932219476_
                                                      _tl218931219478_
                                                      _e218936219481_
                                                      _hd218935219484_
                                                      _tl218934219486_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx232974232975_))
                                           (let ((_e218930219465_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx232974232975_))))
                                             (let ((_tl218928219470_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e218930219465_)))
                                                   (_hd218929219468_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e218930219465_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd218929219468_))
                                                   (let ((_e218933219473_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd218929219468_))))
                                                     (let ((_tl218931219478_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e218933219473_)))
                                                           (_hd218932219476_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e218933219473_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl218931219478_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl218928219470_))
                       (let ((_e218936219481_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl218928219470_))))
                         (let ((_tl218934219486_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e218936219481_)))
                               (_hd218935219484_
                                (let ()
                                  (declare (not safe))
                                  (##car _e218936219481_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl218934219486_))
                               (___match233005233006_
                                _e218930219465_
                                _hd218929219468_
                                _tl218928219470_
                                _e218933219473_
                                _hd218932219476_
                                _tl218931219478_
                                _e218936219481_
                                _hd218935219484_
                                _tl218934219486_)
                               (let ()
                                 (declare (not safe))
                                 (_g218924218971_)))))
                       (let () (declare (not safe)) (_g218924218971_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl218928219470_))
                       (let ((_e218966218984_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl218928219470_))))
                         (let ((_tl218964218989_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e218966218984_)))
                               (_hd218965218987_
                                (let ()
                                  (declare (not safe))
                                  (##car _e218966218984_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl218964218989_))
                               (___kont232982232983_
                                _hd218965218987_
                                _hd218929219468_)
                               (let ()
                                 (declare (not safe))
                                 (_g218924218971_)))))
                       (let () (declare (not safe)) (_g218924218971_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl218928219470_))
                                                       (let ((_e218966218984_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl218928219470_))))
                 (let ((_tl218964218989_
                        (let () (declare (not safe)) (##cdr _e218966218984_)))
                       (_hd218965218987_
                        (let () (declare (not safe)) (##car _e218966218984_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl218964218989_))
                       (___kont232982232983_ _hd218965218987_ _hd218929219468_)
                       (let () (declare (not safe)) (_g218924218971_)))))
               (let () (declare (not safe)) (_g218924218971_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g218924218971_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest218899218907_))
                             (let ((_hd218904219585_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest218899218907_)))
                                   (_tl218905219587_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest218899218907_))))
                               (let* ((_hd219590_ _hd218904219585_)
                                      (_rest219592_ _tl218905219587_))
                                 (declare (not safe))
                                 (_K218903219582_ _rest219592_ _hd219590_)))
                             (let ()
                               (declare (not safe))
                               (_else218901218915_))))))))
          (let* ((___stx233066233067_ _stx218755_)
                 (_g218761218788_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx233066233067_)))))
            (let ((___kont233068233069_
                   (lambda (_L218848_ _L218849_ _L218850_)
                     (let ((__tmp233507
                            (lambda ()
                              (let ((_hd218887_
                                     (let ((__tmp233508
                                            (let ((__tmp233509
                                                   (lambda (_g218879218882_
                                                            _g218880218884_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g218879218882_
                                                             _g218880218884_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp233509
                                                      '()
                                                      _L218849_))))
                                       (declare (not safe))
                                       (_compile-bindings218758_ __tmp233508)))
                                    (_body218888_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L218848_))))
                                (let ((__tmp233510
                                       (let ((__tmp233511
                                              (let ((__tmp233512
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body218888_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd218887_
                                                      __tmp233512))))
                                         (declare (not safe))
                                         (cons _L218850_ __tmp233511))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp233510
                                   _stx218755_)))))
                           (__tmp233506
                            (let ((__obj233131
                                   (make-object* gx#local-context::t '6)))
                              (gx#local-context:::init! __obj233131)
                              __obj233131)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp233507
                        gx#current-expander-context
                        __tmp233506))))
                  (___kont233072233073_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx218755_)))))
              (let ((___match233093233094_
                     (lambda (_e218768218800_
                              _hd218767218803_
                              _tl218766218805_
                              _e218771218808_
                              _hd218770218811_
                              _tl218769218813_
                              ___splice233070233071_
                              _target218772218816_
                              _tl218774218818_)
                       (letrec ((_loop218775218821_
                                 (lambda (_hd218773218824_ _bind218779218826_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd218773218824_))
                                       (let ((_e218776218829_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd218773218824_))))
                                         (let ((_lp-tl218778218834_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e218776218829_)))
                                               (_lp-hd218777218832_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e218776218829_))))
                                           (let ((__tmp233515
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd218777218832_
                                                          _bind218779218826_))))
                                             (declare (not safe))
                                             (_loop218775218821_
                                              _lp-tl218778218834_
                                              __tmp233515))))
                                       (let ((_bind218780218837_
                                              (reverse _bind218779218826_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl218769218813_))
                                             (let ((_e218783218840_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl218769218813_))))
                                               (let ((_tl218781218845_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e218783218840_)))
                                                     (_hd218782218843_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e218783218840_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl218781218845_))
                                                     (let ((_L218848_
                                                            _hd218782218843_)
                                                           (_L218849_
                                                            _bind218780218837_)
                                                           (_L218850_
                                                            _hd218767218803_))
                                                       (if (let ((__tmp233513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp233514
                                 (lambda (_g218871218874_ _g218872218876_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g218871218874_ _g218872218876_)))))
                            (declare (not safe))
                            (foldr1 __tmp233514 '() _L218849_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp233513))
                   (___kont233068233069_ _L218848_ _L218849_ _L218850_)
                   (___kont233072233073_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont233072233073_))))
                                             (___kont233072233073_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop218775218821_ _target218772218816_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx233066233067_))
                    (let ((_e218768218800_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx233066233067_))))
                      (let ((_tl218766218805_
                             (let ()
                               (declare (not safe))
                               (##cdr _e218768218800_)))
                            (_hd218767218803_
                             (let ()
                               (declare (not safe))
                               (##car _e218768218800_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl218766218805_))
                            (let ((_e218771218808_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl218766218805_))))
                              (let ((_tl218769218813_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e218771218808_)))
                                    (_hd218770218811_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e218771218808_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd218770218811_))
                                    (let ((___splice233070233071_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd218770218811_
                                              '0))))
                                      (let ((_tl218774218818_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice233070233071_
                                                '1)))
                                            (_target218772218816_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice233070233071_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl218774218818_))
                                            (___match233093233094_
                                             _e218768218800_
                                             _hd218767218803_
                                             _tl218766218805_
                                             _e218771218808_
                                             _hd218770218811_
                                             _tl218769218813_
                                             ___splice233070233071_
                                             _target218772218816_
                                             _tl218774218818_)
                                            (___kont233072233073_))))
                                    (___kont233072233073_))))
                            (___kont233072233073_))))
                    (___kont233072233073_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind218673_)
        (let* ((___stx233096233097_ _bind218673_)
               (_g218676218693_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx233096233097_)))))
          (let ((___kont233098233099_
                 (lambda (_L218729_ _L218730_)
                   (if (let () (declare (not safe)) (gx#identifier? _L218730_))
                       (let ((_$e218746_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L218729_))))
                         (if _$e218746_
                             _$e218746_
                             (let ((_$e218749_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L218729_))))
                               (if _$e218749_
                                   _$e218749_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L218729_))))))
                       '#f)))
                (___kont233100233101_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx233096233097_))
                (let ((_e218682218705_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx233096233097_))))
                  (let ((_tl218680218710_
                         (let () (declare (not safe)) (##cdr _e218682218705_)))
                        (_hd218681218708_
                         (let ()
                           (declare (not safe))
                           (##car _e218682218705_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd218681218708_))
                        (let ((_e218685218713_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd218681218708_))))
                          (let ((_tl218683218718_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e218685218713_)))
                                (_hd218684218716_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e218685218713_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl218683218718_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl218680218710_))
                                    (let ((_e218688218721_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl218680218710_))))
                                      (let ((_tl218686218726_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e218688218721_)))
                                            (_hd218687218724_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e218688218721_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl218686218726_))
                                            (___kont233098233099_
                                             _hd218687218724_
                                             _hd218684218716_)
                                            (___kont233100233101_))))
                                    (___kont233100233101_))
                                (___kont233100233101_))))
                        (___kont233100233101_))))
                (___kont233100233101_))))))))
