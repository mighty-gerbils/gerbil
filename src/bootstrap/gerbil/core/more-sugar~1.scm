(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g44612_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/more-sugar[:0:]#:|
      (lambda (_stx42320_)
        (let* ((_g4232342341_
                (lambda (_g4232442337_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g4232442337_)))
               (_g4232242617_
                (lambda (_g4232442345_)
                  (if (gx#stx-pair? _g4232442345_)
                      (let ((_e4232942348_ (gx#syntax-e _g4232442345_)))
                        (let ((_hd4232842352_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4232942348_)))
                              (_tl4232742355_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4232942348_))))
                          (if (gx#stx-pair? _tl4232742355_)
                              (let ((_e4233242358_
                                     (gx#syntax-e _tl4232742355_)))
                                (let ((_hd4233142362_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4233242358_)))
                                      (_tl4233042365_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4233242358_))))
                                  (if (gx#stx-pair? _tl4233042365_)
                                      (let ((_e4233542368_
                                             (gx#syntax-e _tl4233042365_)))
                                        (let ((_hd4233442372_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4233542368_)))
                                              (_tl4233342375_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4233542368_))))
                                          (if (gx#stx-null? _tl4233342375_)
                                              ((lambda (_L42378_ _L42380_)
                                                 (if (gx#identifier? _L42378_)
                                                     (let ((_meta42396_
                                                            (gx#syntax-local-value
                                                             _L42378_
                                                             false)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (not _meta42396_))
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"unknown type"
                                                            _stx42320_
                                                            _L42378_)
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/mop~MOP-2#class-type-info::t
                          _meta42396_))
                       (let* ((_g4239942414_
                               (lambda (_g4240042410_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g4240042410_)))
                              (_g4239842460_
                               (lambda (_g4240042418_)
                                 (if (gx#stx-pair? _g4240042418_)
                                     (let ((_e4240542421_
                                            (gx#syntax-e _g4240042418_)))
                                       (let ((_hd4240442425_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4240542421_)))
                                             (_tl4240342428_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4240542421_))))
                                         (if (gx#stx-pair? _tl4240342428_)
                                             (let ((_e4240842431_
                                                    (gx#syntax-e
                                                     _tl4240342428_)))
                                               (let ((_hd4240742435_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e4240842431_)))
                                                     (_tl4240642438_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e4240842431_))))
                                                 (if (gx#stx-null?
                                                      _tl4240642438_)
                                                     ((lambda (_L42441_
                                                               _L42443_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation)
                        (cons (cons (gx#datum->syntax '#f '@type)
                                    (cons _L42443_ '()))
                              (cons (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      (cons _L42380_ '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons _L42441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (gx#datum->syntax '#f 'val) '()))
                          (cons (gx#datum->syntax '#f 'val)
                                (cons (cons (gx#datum->syntax '#f 'error)
                                            (cons '"bad cast"
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'val)
                                                        (cons _L42443_ '()))))
                                      '()))))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
              _hd4240742435_
              _hd4240442425_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4239942414_
                                                      _g4240042418_))))
                                             (_g4239942414_ _g4240042418_))))
                                     (_g4239942414_ _g4240042418_)))))
                         (_g4239842460_
                          (list (let ((__obj44607 _meta42396_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj44607
                                         'gerbil.core#class-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj44607
                                         '10
                                         '#f
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core/mop~MOP-2#class-type-info::t
                                       __obj44607
                                       'type-descriptor)))
                                (let ((__obj44608 _meta42396_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj44608
                                         'gerbil.core#class-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj44608
                                         '12
                                         '#f
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core/mop~MOP-2#class-type-info::t
                                       __obj44608
                                       'predicate))))))
                       (let ((_$e42464_
                              (let ()
                                (declare (not safe))
                                (__method-ref _meta42396_ 'type-descriptor))))
                         (if _$e42464_
                             ((lambda (_type-descriptor42468_)
                                (let ((_$e42471_
                                       (let ()
                                         (declare (not safe))
                                         (__method-ref
                                          _meta42396_
                                          'type-cast))))
                                  (if _$e42471_
                                      ((lambda (_type-cast42475_)
                                         (let* ((_g4247842493_
                                                 (lambda (_g4247942489_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g4247942489_)))
                                                (_g4247742541_
                                                 (lambda (_g4247942497_)
                                                   (if (gx#stx-pair?
                                                        _g4247942497_)
                                                       (let ((_e4248442500_
                                                              (gx#syntax-e
                                                               _g4247942497_)))
                                                         (let ((_hd4248342504_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e4248442500_)))
                       (_tl4248242507_
                        (let () (declare (not safe)) (##cdr _e4248442500_))))
                   (if (gx#stx-pair? _tl4248242507_)
                       (let ((_e4248742510_ (gx#syntax-e _tl4248242507_)))
                         (let ((_hd4248642514_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4248742510_)))
                               (_tl4248542517_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4248742510_))))
                           (if (gx#stx-null? _tl4248542517_)
                               ((lambda (_L42520_ _L42522_)
                                  (let ()
                                    (cons (gx#datum->syntax
                                           '#f
                                           'begin-annotation)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '@type)
                                                      (cons _L42522_ '()))
                                                (cons (cons _L42520_
                                                            (cons _L42380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _hd4248642514_
                                _hd4248342504_)
                               (_g4247842493_ _g4247942497_))))
                       (_g4247842493_ _g4247942497_))))
               (_g4247842493_ _g4247942497_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g4247742541_
                                            (list (_type-descriptor42468_
                                                   _meta42396_)
                                                  (_type-cast42475_
                                                   _meta42396_)))))
                                       _$e42471_)
                                      (let ((_$e42545_
                                             (let ()
                                               (declare (not safe))
                                               (__method-ref
                                                _meta42396_
                                                'type-predicate))))
                                        (if _$e42545_
                                            ((lambda (_type-predicate42549_)
                                               (let* ((_g4255242567_
                                                       (lambda (_g4255342563_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g4255342563_)))
                                                      (_g4255142613_
                                                       (lambda (_g4255342571_)
                                                         (if (gx#stx-pair?
                                                              _g4255342571_)
                                                             (let ((_e4255842574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g4255342571_)))
                       (let ((_hd4255742578_
                              (let ()
                                (declare (not safe))
                                (##car _e4255842574_)))
                             (_tl4255642581_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4255842574_))))
                         (if (gx#stx-pair? _tl4255642581_)
                             (let ((_e4256142584_
                                    (gx#syntax-e _tl4255642581_)))
                               (let ((_hd4256042588_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4256142584_)))
                                     (_tl4255942591_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4256142584_))))
                                 (if (gx#stx-null? _tl4255942591_)
                                     ((lambda (_L42594_ _L42596_)
                                        (let ()
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@type)
                                                            (cons _L42596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (gx#datum->syntax '#f 'val)
                                      (cons _L42380_ '()))
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons _L42594_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'val)
                                                              '()))
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'val)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'error)
                            (cons '"bad cast"
                                  (cons (gx#datum->syntax '#f 'val)
                                        (cons _L42596_ '()))))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _hd4256042588_
                                      _hd4255742578_)
                                     (_g4255242567_ _g4255342571_))))
                             (_g4255242567_ _g4255342571_))))
                     (_g4255242567_ _g4255342571_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g4255142613_
                                                  (list (_type-descriptor42468_
                                                         _meta42396_)
                                                        (_type-predicate42549_
                                                         _meta42396_)))))
                                             _$e42545_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"type does not support casting"
                                             _stx42320_
                                             _L42378_))))))
                              _$e42464_)
                             (gx#raise-syntax-error
                              '#f
                              '"not a type"
                              _stx42320_
                              _L42378_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4232342341_
                                                      _g4232442345_)))
                                               _hd4233442372_
                                               _hd4233142362_)
                                              (_g4232342341_ _g4232442345_))))
                                      (_g4232342341_ _g4232442345_))))
                              (_g4232342341_ _g4232442345_))))
                      (_g4232342341_ _g4232442345_)))))
          (_g4232242617_ _stx42320_))))
    (define |gerbil/core/more-sugar[:0:]#:~|
      (lambda (_$stx42621_)
        (let* ((___stx4439044391_ _$stx42621_)
               (_g4262642662_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4439044391_))))
          (let ((___kont4439344394_
                 (lambda (_L42780_ _L42782_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _L42782_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _L42780_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'val)
                                                             '()))
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'error)
                           (cons '"contract check failure"
                                 (cons (gx#datum->syntax '#f 'val)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L42780_ '()))
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4439544396_
                 (lambda (_L42719_ _L42721_ _L42722_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _L42722_ (cons _L42721_ '())))
                               (cons _L42719_ '()))))))
            (if (gx#stx-pair? ___stx4439044391_)
                (let ((_e4263242750_ (gx#syntax-e ___stx4439044391_)))
                  (let ((_tl4263042757_
                         (let () (declare (not safe)) (##cdr _e4263242750_)))
                        (_hd4263142754_
                         (let () (declare (not safe)) (##car _e4263242750_))))
                    (if (gx#stx-pair? _tl4263042757_)
                        (let ((_e4263542760_ (gx#syntax-e _tl4263042757_)))
                          (let ((_tl4263342767_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4263542760_)))
                                (_hd4263442764_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4263542760_))))
                            (if (gx#stx-pair? _tl4263342767_)
                                (let ((_e4263842770_
                                       (gx#syntax-e _tl4263342767_)))
                                  (let ((_tl4263642777_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4263842770_)))
                                        (_hd4263742774_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4263842770_))))
                                    (if (gx#stx-null? _tl4263642777_)
                                        (___kont4439344394_
                                         _hd4263742774_
                                         _hd4263442764_)
                                        (if (gx#stx-pair? _tl4263642777_)
                                            (let ((_e4265342699_
                                                   (gx#syntax-e
                                                    _tl4263642777_)))
                                              (let ((_tl4265142706_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4265342699_)))
                                                    (_hd4265242703_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4265342699_))))
                                                (if (gx#identifier?
                                                     _hd4265242703_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/more-sugar[1]#_g44612_|
                                                         _hd4265242703_)
                                                        (if (gx#stx-pair?
                                                             _tl4265142706_)
                                                            (let ((_e4265642709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl4265142706_)))
                      (let ((_tl4265442716_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4265642709_)))
                            (_hd4265542713_
                             (let ()
                               (declare (not safe))
                               (##car _e4265642709_))))
                        (if (gx#stx-null? _tl4265442716_)
                            (___kont4439544396_
                             _hd4265542713_
                             _hd4263742774_
                             _hd4263442764_)
                            (let () (declare (not safe)) (_g4262642662_)))))
                    (let () (declare (not safe)) (_g4262642662_)))
                (let () (declare (not safe)) (_g4262642662_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4262642662_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4262642662_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g4262642662_)))))
                        (let () (declare (not safe)) (_g4262642662_)))))
                (let () (declare (not safe)) (_g4262642662_)))))))
    (define |gerbil/core/more-sugar[:0:]#:-|
      (lambda (_stx42801_)
        (let* ((_g4280442822_
                (lambda (_g4280542818_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g4280542818_)))
               (_g4280342951_
                (lambda (_g4280542826_)
                  (if (gx#stx-pair? _g4280542826_)
                      (let ((_e4281042829_ (gx#syntax-e _g4280542826_)))
                        (let ((_hd4280942833_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4281042829_)))
                              (_tl4280842836_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4281042829_))))
                          (if (gx#stx-pair? _tl4280842836_)
                              (let ((_e4281342839_
                                     (gx#syntax-e _tl4280842836_)))
                                (let ((_hd4281242843_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4281342839_)))
                                      (_tl4281142846_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4281342839_))))
                                  (if (gx#stx-pair? _tl4281142846_)
                                      (let ((_e4281642849_
                                             (gx#syntax-e _tl4281142846_)))
                                        (let ((_hd4281542853_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4281642849_)))
                                              (_tl4281442856_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4281642849_))))
                                          (if (gx#stx-null? _tl4281442856_)
                                              ((lambda (_L42859_ _L42861_)
                                                 (if (gx#identifier? _L42859_)
                                                     (let ((_meta42877_
                                                            (gx#syntax-local-value
                                                             _L42859_
                                                             false)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (not _meta42877_))
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"unknown type"
                                                            _stx42801_
                                                            _L42859_)
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/mop~MOP-2#class-type-info::t
                          _meta42877_))
                       (let* ((_g4288042888_
                               (lambda (_g4288142884_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g4288142884_)))
                              (_g4287942908_
                               (lambda (_g4288142892_)
                                 ((lambda (_L42895_)
                                    (let ()
                                      (cons (gx#datum->syntax
                                             '#f
                                             'begin-annotation)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '@type)
                                                        (cons _L42895_ '()))
                                                  (cons _L42861_ '())))))
                                  _g4288142892_))))
                         (_g4287942908_
                          (let ((__obj44609 _meta42877_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj44609
                                   'gerbil.core#class-type-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj44609
                                   '10
                                   '#f
                                   '#f))
                                (class-slot-ref
                                 gerbil/core/mop~MOP-2#class-type-info::t
                                 __obj44609
                                 'type-descriptor)))))
                       (let ((_$e42912_
                              (let ()
                                (declare (not safe))
                                (__method-ref _meta42877_ 'type-descriptor))))
                         (if _$e42912_
                             ((lambda (_type-descriptor42916_)
                                (let* ((_g4291942927_
                                        (lambda (_g4292042923_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g4292042923_)))
                                       (_g4291842947_
                                        (lambda (_g4292042931_)
                                          ((lambda (_L42934_)
                                             (let ()
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@type)
                         (cons _L42934_ '()))
                   (cons _L42861_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g4292042931_))))
                                  (_g4291842947_
                                   (_type-descriptor42916_ _meta42877_))))
                              _$e42912_)
                             (gx#raise-syntax-error
                              '#f
                              '"not a type"
                              _stx42801_
                              _L42859_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4280442822_
                                                      _g4280542826_)))
                                               _hd4281542853_
                                               _hd4281242843_)
                                              (_g4280442822_ _g4280542826_))))
                                      (_g4280442822_ _g4280542826_))))
                              (_g4280442822_ _g4280542826_))))
                      (_g4280442822_ _g4280542826_)))))
          (_g4280342951_ _stx42801_))))
    (define |gerbil/core/more-sugar[:0:]#:=|
      (lambda (_$stx42955_)
        (let ((_g4295842965_
               (lambda (_g4295942961_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g4295942961_))))
          (_g4295842965_ _$stx42955_))))
    (define |gerbil/core/more-sugar[1]#setq-macro::t|
      (let ((__tmp44613 (list gerbil/core/macro-object#macro-object::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil.core#setq-macro::t
         'setq-macro
         __tmp44613
         '()
         '()
         '#f)))
    (define |gerbil/core/more-sugar[1]#setq-macro?|
      (let ()
        (declare (not safe))
        (__make-class-predicate |gerbil/core/more-sugar[1]#setq-macro::t|)))
    (define |gerbil/core/more-sugar[1]#make-setq-macro|
      (lambda _$args42979_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _$args42979_)))
    (define |gerbil/core/more-sugar[1]#setq-macro-macro|
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         |gerbil/core/more-sugar[1]#setq-macro::t|
         'macro)))
    (define |gerbil/core/more-sugar[1]#setq-macro-macro-set!|
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         |gerbil/core/more-sugar[1]#setq-macro::t|
         'macro)))
    (define |gerbil/core/more-sugar[1]#&setq-macro-macro|
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         |gerbil/core/more-sugar[1]#setq-macro::t|
         'macro)))
    (define |gerbil/core/more-sugar[1]#&setq-macro-macro-set!|
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         |gerbil/core/more-sugar[1]#setq-macro::t|
         'macro)))
    (define |gerbil/core/more-sugar[1]#setf-macro::t|
      (let ((__tmp44614 (list gerbil/core/macro-object#macro-object::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil.core#setf-macro::t
         'setf-macro
         __tmp44614
         '()
         '()
         '#f)))
    (define |gerbil/core/more-sugar[1]#setf-macro?|
      (let ()
        (declare (not safe))
        (__make-class-predicate |gerbil/core/more-sugar[1]#setf-macro::t|)))
    (define |gerbil/core/more-sugar[1]#make-setf-macro|
      (lambda _$args42975_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _$args42975_)))
    (define |gerbil/core/more-sugar[1]#setf-macro-macro|
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         |gerbil/core/more-sugar[1]#setf-macro::t|
         'macro)))
    (define |gerbil/core/more-sugar[1]#setf-macro-macro-set!|
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         |gerbil/core/more-sugar[1]#setf-macro::t|
         'macro)))
    (define |gerbil/core/more-sugar[1]#&setf-macro-macro|
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         |gerbil/core/more-sugar[1]#setf-macro::t|
         'macro)))
    (define |gerbil/core/more-sugar[1]#&setf-macro-macro-set!|
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         |gerbil/core/more-sugar[1]#setf-macro::t|
         'macro)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
      (lambda (_stx42972_)
        (if (gx#identifier? _stx42972_)
            (let ((__tmp44615 (gx#syntax-local-value _stx42972_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp44615))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_stx42969_)
        (if (gx#identifier? _stx42969_)
            (let ((__tmp44616 (gx#syntax-local-value _stx42969_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp44616))
            '#f)))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_stx42983_)
        (let* ((___stx4445644457_ _stx42983_)
               (_g4298943048_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4445644457_))))
          (let ((___kont4445944460_
                 (lambda (_L43321_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _L43321_)
                    _stx42983_)))
                (___kont4446144462_
                 (lambda (_L43220_ _L43222_ _L43223_)
                   (let* ((_g4324543253_
                           (lambda (_g4324643249_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g4324643249_)))
                          (_g4324443280_
                           (lambda (_g4324643257_)
                             ((lambda (_L43260_)
                                (let ()
                                  (cons _L43260_
                                        (let ((__tmp44618
                                               (lambda (_g4327143274_
                                                        _g4327243277_)
                                                 (cons _g4327143274_
                                                       _g4327243277_)))
                                              (__tmp44617 (cons _L43220_ '())))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp44618
                                           __tmp44617
                                           _L43222_)))))
                              _g4324643257_))))
                     (_g4324443280_
                      (gx#stx-identifier _L43223_ _L43223_ '"-set!")))))
                (___kont4446544466_
                 (lambda (_L43130_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _L43130_)
                    _stx42983_)))
                (___kont4446744468_
                 (lambda (_L43085_ _L43087_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _L43087_ (cons _L43085_ '()))))))
            (let* ((___match4454744548_
                    (lambda (_e4303643055_
                             _hd4303543059_
                             _tl4303443062_
                             _e4303943065_
                             _hd4303843069_
                             _tl4303743072_
                             _e4304243075_
                             _hd4304143079_
                             _tl4304043082_)
                      (let ((_L43085_ _hd4304143079_)
                            (_L43087_ _hd4303843069_))
                        (if (gx#identifier? _L43087_)
                            (___kont4446744468_ _L43085_ _L43087_)
                            (let () (declare (not safe)) (_g4298943048_))))))
                   (___match4452744528_
                    (lambda (_e4302843110_
                             _hd4302743114_
                             _tl4302643117_
                             _e4303143120_
                             _hd4303043124_
                             _tl4302943127_)
                      (let ((_L43130_ _hd4303043124_))
                        (if (let ()
                              (declare (not safe))
                              (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                               _L43130_))
                            (___kont4446544466_ _L43130_)
                            (if (gx#stx-pair? _tl4302943127_)
                                (let ((_e4304243075_
                                       (gx#syntax-e _tl4302943127_)))
                                  (let ((_tl4304043082_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4304243075_)))
                                        (_hd4304143079_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4304243075_))))
                                    (if (gx#stx-null? _tl4304043082_)
                                        (___match4454744548_
                                         _e4302843110_
                                         _hd4302743114_
                                         _tl4302643117_
                                         _e4303143120_
                                         _hd4303043124_
                                         _tl4302943127_
                                         _e4304243075_
                                         _hd4304143079_
                                         _tl4304043082_)
                                        (let ()
                                          (declare (not safe))
                                          (_g4298943048_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g4298943048_)))))))
                   (___match4451544516_
                    (lambda (_e4300643150_
                             _hd4300543154_
                             _tl4300443157_
                             _e4300943160_
                             _hd4300843164_
                             _tl4300743167_
                             _e4301243170_
                             _hd4301143174_
                             _tl4301043177_
                             ___splice4446344464_
                             _target4301343180_
                             _tl4301543183_)
                      (letrec ((_loop4301643186_
                                (lambda (_hd4301443190_ _arg4302043193_)
                                  (if (gx#stx-pair? _hd4301443190_)
                                      (let ((_e4301743196_
                                             (gx#syntax-e _hd4301443190_)))
                                        (let ((_lp-tl4301943203_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4301743196_)))
                                              (_lp-hd4301843200_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4301743196_))))
                                          (_loop4301643186_
                                           _lp-tl4301943203_
                                           (cons _lp-hd4301843200_
                                                 _arg4302043193_))))
                                      (let ((_arg4302143206_
                                             (reverse _arg4302043193_)))
                                        (if (gx#stx-pair? _tl4300743167_)
                                            (let ((_e4302443210_
                                                   (gx#syntax-e
                                                    _tl4300743167_)))
                                              (let ((_tl4302243217_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4302443210_)))
                                                    (_hd4302343214_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4302443210_))))
                                                (if (gx#stx-null?
                                                     _tl4302243217_)
                                                    (let ((_L43220_
                                                           _hd4302343214_)
                                                          (_L43222_
                                                           _arg4302143206_)
                                                          (_L43223_
                                                           _hd4301143174_))
                                                      (if (gx#identifier?
                                                           _L43223_)
                                                          (___kont4446144462_
                                                           _L43220_
                                                           _L43222_
                                                           _L43223_)
                                                          (___match4452744528_
                                                           _e4300643150_
                                                           _hd4300543154_
                                                           _tl4300443157_
                                                           _e4300943160_
                                                           _hd4300843164_
                                                           _tl4300743167_)))
                                                    (___match4452744528_
                                                     _e4300643150_
                                                     _hd4300543154_
                                                     _tl4300443157_
                                                     _e4300943160_
                                                     _hd4300843164_
                                                     _tl4300743167_))))
                                            (___match4452744528_
                                             _e4300643150_
                                             _hd4300543154_
                                             _tl4300443157_
                                             _e4300943160_
                                             _hd4300843164_
                                             _tl4300743167_)))))))
                        (_loop4301643186_ _target4301343180_ '())))))
              (if (gx#stx-pair? ___stx4445644457_)
                  (let ((_e4299443291_ (gx#syntax-e ___stx4445644457_)))
                    (let ((_tl4299243298_
                           (let () (declare (not safe)) (##cdr _e4299443291_)))
                          (_hd4299343295_
                           (let ()
                             (declare (not safe))
                             (##car _e4299443291_))))
                      (if (gx#stx-pair? _tl4299243298_)
                          (let ((_e4299743301_ (gx#syntax-e _tl4299243298_)))
                            (let ((_tl4299543308_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4299743301_)))
                                  (_hd4299643305_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4299743301_))))
                              (if (gx#stx-pair? _hd4299643305_)
                                  (let ((_e4300043311_
                                         (gx#syntax-e _hd4299643305_)))
                                    (let ((_tl4299843318_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4300043311_)))
                                          (_hd4299943315_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4300043311_))))
                                      (if (let ((__tmp44619
                                                 (gx#datum->syntax
                                                  '#f
                                                  'setfid)))
                                            (declare (not safe))
                                            (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                             __tmp44619))
                                          (let ((_L43321_ _hd4299943315_))
                                            (___kont4445944460_ _L43321_))
                                          (if (gx#stx-pair/null?
                                               _tl4299843318_)
                                              (let ((___splice4446344464_
                                                     (gx#syntax-split-splice
                                                      _tl4299843318_
                                                      '0)))
                                                (let ((_tl4301543183_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4446344464_
                                                          '1)))
                                                      (_target4301343180_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4446344464_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl4301543183_)
                                                      (___match4451544516_
                                                       _e4299443291_
                                                       _hd4299343295_
                                                       _tl4299243298_
                                                       _e4299743301_
                                                       _hd4299643305_
                                                       _tl4299543308_
                                                       _e4300043311_
                                                       _hd4299943315_
                                                       _tl4299843318_
                                                       ___splice4446344464_
                                                       _target4301343180_
                                                       _tl4301543183_)
                                                      (___match4452744528_
                                                       _e4299443291_
                                                       _hd4299343295_
                                                       _tl4299243298_
                                                       _e4299743301_
                                                       _hd4299643305_
                                                       _tl4299543308_))))
                                              (___match4452744528_
                                               _e4299443291_
                                               _hd4299343295_
                                               _tl4299243298_
                                               _e4299743301_
                                               _hd4299643305_
                                               _tl4299543308_)))))
                                  (___match4452744528_
                                   _e4299443291_
                                   _hd4299343295_
                                   _tl4299243298_
                                   _e4299743301_
                                   _hd4299643305_
                                   _tl4299543308_))))
                          (let () (declare (not safe)) (_g4298943048_)))))
                  (let () (declare (not safe)) (_g4298943048_))))))))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_stx43341_)
        (let* ((_g4334443368_
                (lambda (_g4334543364_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g4334543364_)))
               (_g4334343546_
                (lambda (_g4334543372_)
                  (if (gx#stx-pair? _g4334543372_)
                      (let ((_e4335043375_ (gx#syntax-e _g4334543372_)))
                        (let ((_hd4334943379_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4335043375_)))
                              (_tl4334843382_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4335043375_))))
                          (if (gx#stx-pair/null? _tl4334843382_)
                              (if (let ((__tmp44620
                                         (gx#stx-length _tl4334843382_)))
                                    (declare (not safe))
                                    (##fx>= __tmp44620 '1))
                                  (let ((_g44621_
                                         (gx#syntax-split-splice
                                          _tl4334843382_
                                          '1)))
                                    (begin
                                      (let ((_g44622_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g44621_)
                                                   (##vector-length _g44621_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g44622_ 2)))
                                            (error "Context expects 2 values"
                                                   _g44622_)))
                                      (let ((_target4335143385_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g44621_ 0)))
                                            (_tl4335343388_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g44621_ 1))))
                                        (if (gx#stx-pair? _tl4335343388_)
                                            (let ((_e4336243391_
                                                   (gx#syntax-e
                                                    _tl4335343388_)))
                                              (let ((_hd4336143395_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4336243391_)))
                                                    (_tl4336043398_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4336243391_))))
                                                (if (gx#stx-null?
                                                     _tl4336043398_)
                                                    (letrec ((_loop4335443401_
                                                              (lambda (_hd4335243405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tgt4335843408_)
                        (if (gx#stx-pair? _hd4335243405_)
                            (let ((_e4335543411_ (gx#syntax-e _hd4335243405_)))
                              (let ((_lp-hd4335643415_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4335543411_)))
                                    (_lp-tl4335743418_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4335543411_))))
                                (_loop4335443401_
                                 _lp-tl4335743418_
                                 (cons _lp-hd4335643415_ _tgt4335843408_))))
                            (let ((_tgt4335943421_ (reverse _tgt4335843408_)))
                              ((lambda (_L43425_ _L43427_)
                                 (let* ((_g4344543462_
                                         (lambda (_g4344643458_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g4344643458_)))
                                        (_g4344443534_
                                         (lambda (_g4344643466_)
                                           (if (gx#stx-pair/null?
                                                _g4344643466_)
                                               (let ((_g44623_
                                                      (gx#syntax-split-splice
                                                       _g4344643466_
                                                       '0)))
                                                 (begin
                                                   (let ((_g44624_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g44623_)
                        (##vector-length _g44623_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g44624_ 2)))
                 (error "Context expects 2 values" _g44624_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target4344843469_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g44623_
                                                             0)))
                                                         (_tl4345043472_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g44623_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl4345043472_)
                                                         (letrec ((_loop4345143475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd4344943479_ _$e4345543482_)
                             (if (gx#stx-pair? _hd4344943479_)
                                 (let ((_e4345243485_
                                        (gx#syntax-e _hd4344943479_)))
                                   (let ((_lp-hd4345343489_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4345243485_)))
                                         (_lp-tl4345443492_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4345243485_))))
                                     (_loop4345143475_
                                      _lp-tl4345443492_
                                      (cons _lp-hd4345343489_
                                            _$e4345543482_))))
                                 (let ((_$e4345643495_
                                        (reverse _$e4345543482_)))
                                   ((lambda (_L43499_)
                                      (let ()
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons (cons (cons (let ((__tmp44625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g4351743520_ _g4351843523_)
                                 (cons _g4351743520_ _g4351843523_))))
                          (declare (not safe))
                          (__foldr1 __tmp44625 '() _L43499_))
                        (cons _L43425_ '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L43499_
                                                       _L43427_)
                                                      (let ((__tmp44626
                                                             (lambda (_g4351443526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g4351543529_
                              _g4351643531_)
                       (cons (cons (gx#datum->syntax '#f 'set!)
                                   (cons _g4351543529_
                                         (cons _g4351443526_ '())))
                             _g4351643531_))))
                (declare (not safe))
                (__foldr2 __tmp44626 '() _L43499_ _L43427_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _$e4345643495_))))))
                   (_loop4345143475_ _target4344843469_ '()))
                 (_g4344543462_ _g4344643466_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g4344543462_
                                                _g4344643466_)))))
                                   (_g4344443534_
                                    (gx#gentemps
                                     (let ((__tmp44627
                                            (lambda (_g4353743540_
                                                     _g4353843543_)
                                              (cons _g4353743540_
                                                    _g4353843543_))))
                                       (declare (not safe))
                                       (__foldr1 __tmp44627 '() _L43427_))))))
                               _hd4336143395_
                               _tgt4335943421_))))))
              (_loop4335443401_ _target4335143385_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4334443368_
                                                     _g4334543372_))))
                                            (_g4334443368_ _g4334543372_)))))
                                  (_g4334443368_ _g4334543372_))
                              (_g4334443368_ _g4334543372_))))
                      (_g4334443368_ _g4334543372_)))))
          (_g4334343546_ _stx43341_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_stx43552_)
        (let* ((___stx4455044551_ _stx43552_)
               (_g4355643614_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4455044551_))))
          (let ((___kont4455344554_
                 (lambda (_L43948_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (let ((__tmp44628
                                      (lambda (_g4396443967_ _g4396543970_)
                                        (cons _g4396443967_ _g4396543970_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp44628 '() _L43948_))))))
                (___kont4455744558_
                 (lambda (_L43725_ _L43727_ _L43728_)
                   (let* ((_g4375143759_
                           (lambda (_g4375243755_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g4375243755_)))
                          (_g4375043879_
                           (lambda (_g4375243763_)
                             ((lambda (_L43766_)
                                (let ()
                                  (let* ((_g4377843795_
                                          (lambda (_g4377943791_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g4377943791_)))
                                         (_g4377743859_
                                          (lambda (_g4377943799_)
                                            (if (gx#stx-pair/null?
                                                 _g4377943799_)
                                                (let ((_g44629_
                                                       (gx#syntax-split-splice
                                                        _g4377943799_
                                                        '0)))
                                                  (begin
                                                    (let ((_g44630_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g44629_)
                         (##vector-length _g44629_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g44630_ 2)))
                  (error "Context expects 2 values" _g44630_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target4378143802_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g44629_
                                                              0)))
                                                          (_tl4378343805_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g44629_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl4378343805_)
                                                          (letrec ((_loop4378443808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd4378243812_ _arg4378843815_)
                              (if (gx#stx-pair? _hd4378243812_)
                                  (let ((_e4378543818_
                                         (gx#syntax-e _hd4378243812_)))
                                    (let ((_lp-hd4378643822_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4378543818_)))
                                          (_lp-tl4378743825_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4378543818_))))
                                      (_loop4378443808_
                                       _lp-tl4378743825_
                                       (cons _lp-hd4378643822_
                                             _arg4378843815_))))
                                  (let ((_arg4378943828_
                                         (reverse _arg4378843815_)))
                                    ((lambda (_L43832_)
                                       (let ()
                                         (let ()
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'call-with-parameters)
                                                 (cons _L43766_
                                                       (let ((__tmp44631
                                                              (lambda (_g4385043853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g4385143856_)
                        (cons _g4385043853_ _g4385143856_))))
                 (declare (not safe))
                 (__foldr1 __tmp44631 '() _L43832_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _arg4378943828_))))))
                    (_loop4378443808_ _target4378143802_ '()))
                  (_g4377843795_ _g4377943799_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4377843795_
                                                 _g4377943799_)))))
                                    (_g4377743859_
                                     (let ((__tmp44634
                                            (gx#syntax->list
                                             (let ((__tmp44635
                                                    (lambda (_g4386243865_
                                                             _g4386343868_)
                                                      (cons _g4386243865_
                                                            _g4386343868_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp44635
                                                '()
                                                _L43728_))))
                                           (__tmp44632
                                            (gx#syntax->list
                                             (let ((__tmp44633
                                                    (lambda (_g4387043873_
                                                             _g4387143876_)
                                                      (cons _g4387043873_
                                                            _g4387143876_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp44633
                                                '()
                                                _L43727_)))))
                                       (declare (not safe))
                                       (__foldr2
                                        cons*
                                        '()
                                        __tmp44634
                                        __tmp44632))))))
                              _g4375243763_))))
                     (_g4375043879_
                      (gx#stx-wrap-source
                       (cons (gx#datum->syntax '#f 'lambda)
                             (cons '()
                                   (let ((__tmp44636
                                          (lambda (_g4388243885_ _g4388343888_)
                                            (cons _g4388243885_
                                                  _g4388343888_))))
                                     (declare (not safe))
                                     (__foldr1 __tmp44636 '() _L43725_))))
                       (gx#stx-source _stx43552_)))))))
            (let* ((___match4460544606_
                    (lambda (_e4357943621_
                             _hd4357843625_
                             _tl4357743628_
                             _e4358243631_
                             _hd4358143635_
                             _tl4358043638_
                             ___splice4455944560_
                             _target4358343641_
                             _tl4358543644_)
                      (letrec ((_loop4358643647_
                                (lambda (_hd4358443651_
                                         _expr4359043654_
                                         _param4359143656_)
                                  (if (gx#stx-pair? _hd4358443651_)
                                      (let ((_e4358743659_
                                             (gx#syntax-e _hd4358443651_)))
                                        (let ((_lp-tl4358943666_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4358743659_)))
                                              (_lp-hd4358843663_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4358743659_))))
                                          (if (gx#stx-pair? _lp-hd4358843663_)
                                              (let ((_e4359643669_
                                                     (gx#syntax-e
                                                      _lp-hd4358843663_)))
                                                (let ((_tl4359443676_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4359643669_)))
                                                      (_hd4359543673_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4359643669_))))
                                                  (if (gx#stx-pair?
                                                       _tl4359443676_)
                                                      (let ((_e4359943679_
                                                             (gx#syntax-e
                                                              _tl4359443676_)))
                                                        (let ((_tl4359743686_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4359943679_)))
                      (_hd4359843683_
                       (let () (declare (not safe)) (##car _e4359943679_))))
                  (if (gx#stx-null? _tl4359743686_)
                      (_loop4358643647_
                       _lp-tl4358943666_
                       (cons _hd4359843683_ _expr4359043654_)
                       (cons _hd4359543673_ _param4359143656_))
                      (let () (declare (not safe)) (_g4355643614_)))))
              (let () (declare (not safe)) (_g4355643614_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g4355643614_)))))
                                      (let ((_param4359343692_
                                             (reverse _param4359143656_))
                                            (_expr4359243689_
                                             (reverse _expr4359043654_)))
                                        (if (gx#stx-pair/null? _tl4358043638_)
                                            (let ((___splice4456144562_
                                                   (gx#syntax-split-splice
                                                    _tl4358043638_
                                                    '0)))
                                              (let ((_tl4360243698_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4456144562_
                                                        '1)))
                                                    (_target4360043695_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4456144562_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4360243698_)
                                                    (letrec ((_loop4360343701_
                                                              (lambda (_hd4360143705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body4360743708_)
                        (if (gx#stx-pair? _hd4360143705_)
                            (let ((_e4360443711_ (gx#syntax-e _hd4360143705_)))
                              (let ((_lp-tl4360643718_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4360443711_)))
                                    (_lp-hd4360543715_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4360443711_))))
                                (_loop4360343701_
                                 _lp-tl4360643718_
                                 (cons _lp-hd4360543715_ _body4360743708_))))
                            (let ((_body4360843721_
                                   (reverse _body4360743708_)))
                              (___kont4455744558_
                               _body4360843721_
                               _expr4359243689_
                               _param4359343692_))))))
              (_loop4360343701_ _target4360043695_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4355643614_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4355643614_))))))))
                        (_loop4358643647_ _target4358343641_ '() '()))))
                   (___match4458544586_
                    (lambda (_e4356143898_
                             _hd4356043902_
                             _tl4355943905_
                             _e4356443908_
                             _hd4356343912_
                             _tl4356243915_
                             ___splice4455544556_
                             _target4356543918_
                             _tl4356743921_)
                      (letrec ((_loop4356843924_
                                (lambda (_hd4356643928_ _body4357243931_)
                                  (if (gx#stx-pair? _hd4356643928_)
                                      (let ((_e4356943934_
                                             (gx#syntax-e _hd4356643928_)))
                                        (let ((_lp-tl4357143941_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4356943934_)))
                                              (_lp-hd4357043938_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4356943934_))))
                                          (_loop4356843924_
                                           _lp-tl4357143941_
                                           (cons _lp-hd4357043938_
                                                 _body4357243931_))))
                                      (let ((_body4357343944_
                                             (reverse _body4357243931_)))
                                        (___kont4455344554_
                                         _body4357343944_))))))
                        (_loop4356843924_ _target4356543918_ '())))))
              (if (gx#stx-pair? ___stx4455044551_)
                  (let ((_e4356143898_ (gx#syntax-e ___stx4455044551_)))
                    (let ((_tl4355943905_
                           (let () (declare (not safe)) (##cdr _e4356143898_)))
                          (_hd4356043902_
                           (let ()
                             (declare (not safe))
                             (##car _e4356143898_))))
                      (if (gx#stx-pair? _tl4355943905_)
                          (let ((_e4356443908_ (gx#syntax-e _tl4355943905_)))
                            (let ((_tl4356243915_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4356443908_)))
                                  (_hd4356343912_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4356443908_))))
                              (if (gx#stx-null? _hd4356343912_)
                                  (if (gx#stx-pair/null? _tl4356243915_)
                                      (let ((___splice4455544556_
                                             (gx#syntax-split-splice
                                              _tl4356243915_
                                              '0)))
                                        (let ((_tl4356743921_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4455544556_
                                                  '1)))
                                              (_target4356543918_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4455544556_
                                                  '0))))
                                          (if (gx#stx-null? _tl4356743921_)
                                              (___match4458544586_
                                               _e4356143898_
                                               _hd4356043902_
                                               _tl4355943905_
                                               _e4356443908_
                                               _hd4356343912_
                                               _tl4356243915_
                                               ___splice4455544556_
                                               _target4356543918_
                                               _tl4356743921_)
                                              (if (gx#stx-pair/null?
                                                   _hd4356343912_)
                                                  (let ((___splice4455944560_
                                                         (gx#syntax-split-splice
                                                          _hd4356343912_
                                                          '0)))
                                                    (let ((_tl4358543644_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4455944560_
                                                              '1)))
                                                          (_target4358343641_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4455944560_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl4358543644_)
                                                          (___match4460544606_
                                                           _e4356143898_
                                                           _hd4356043902_
                                                           _tl4355943905_
                                                           _e4356443908_
                                                           _hd4356343912_
                                                           _tl4356243915_
                                                           ___splice4455944560_
                                                           _target4358343641_
                                                           _tl4358543644_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4355643614_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4355643614_))))))
                                      (if (gx#stx-pair/null? _hd4356343912_)
                                          (let ((___splice4455944560_
                                                 (gx#syntax-split-splice
                                                  _hd4356343912_
                                                  '0)))
                                            (let ((_tl4358543644_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4455944560_
                                                      '1)))
                                                  (_target4358343641_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4455944560_
                                                      '0))))
                                              (if (gx#stx-null? _tl4358543644_)
                                                  (___match4460544606_
                                                   _e4356143898_
                                                   _hd4356043902_
                                                   _tl4355943905_
                                                   _e4356443908_
                                                   _hd4356343912_
                                                   _tl4356243915_
                                                   ___splice4455944560_
                                                   _target4358343641_
                                                   _tl4358543644_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4355643614_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4355643614_))))
                                  (if (gx#stx-pair/null? _hd4356343912_)
                                      (let ((___splice4455944560_
                                             (gx#syntax-split-splice
                                              _hd4356343912_
                                              '0)))
                                        (let ((_tl4358543644_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4455944560_
                                                  '1)))
                                              (_target4358343641_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4455944560_
                                                  '0))))
                                          (if (gx#stx-null? _tl4358543644_)
                                              (___match4460544606_
                                               _e4356143898_
                                               _hd4356043902_
                                               _tl4355943905_
                                               _e4356443908_
                                               _hd4356343912_
                                               _tl4356243915_
                                               ___splice4455944560_
                                               _target4358343641_
                                               _tl4358543644_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4355643614_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4355643614_))))))
                          (let () (declare (not safe)) (_g4355643614_)))))
                  (let () (declare (not safe)) (_g4355643614_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_$stx43981_)
        (let* ((_g4398544009_
                (lambda (_g4398644005_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g4398644005_)))
               (_g4398444094_
                (lambda (_g4398644013_)
                  (if (gx#stx-pair? _g4398644013_)
                      (let ((_e4399144016_ (gx#syntax-e _g4398644013_)))
                        (let ((_hd4399044020_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4399144016_)))
                              (_tl4398944023_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4399144016_))))
                          (if (gx#stx-pair? _tl4398944023_)
                              (let ((_e4399444026_
                                     (gx#syntax-e _tl4398944023_)))
                                (let ((_hd4399344030_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4399444026_)))
                                      (_tl4399244033_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4399444026_))))
                                  (if (gx#stx-pair/null? _tl4399244033_)
                                      (let ((_g44637_
                                             (gx#syntax-split-splice
                                              _tl4399244033_
                                              '0)))
                                        (begin
                                          (let ((_g44638_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44637_)
                                                       (##vector-length
                                                        _g44637_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44638_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44638_)))
                                          (let ((_target4399544036_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g44637_ 0)))
                                                (_tl4399744039_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g44637_ 1))))
                                            (if (gx#stx-null? _tl4399744039_)
                                                (letrec ((_loop4399844042_
                                                          (lambda (_hd4399644046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body4400244049_)
                    (if (gx#stx-pair? _hd4399644046_)
                        (let ((_e4399944052_ (gx#syntax-e _hd4399644046_)))
                          (let ((_lp-hd4400044056_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4399944052_)))
                                (_lp-tl4400144059_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4399944052_))))
                            (_loop4399844042_
                             _lp-tl4400144059_
                             (cons _lp-hd4400044056_ _body4400244049_))))
                        (let ((_body4400344062_ (reverse _body4400244049_)))
                          ((lambda (_L44066_ _L44068_)
                             (if (gx#identifier? _L44068_)
                                 (cons (gx#datum->syntax '#f 'call/cc)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _L44068_ '())
                                                         (let ((__tmp44639
                                                                (lambda (_g4408544088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g4408644091_)
                          (cons _g4408544088_ _g4408644091_))))
                   (declare (not safe))
                   (__foldr1 __tmp44639 '() _L44066_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (_g4398544009_ _g4398644013_)))
                           _body4400344062_
                           _hd4399344030_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop4399844042_
                                                   _target4399544036_
                                                   '()))
                                                (_g4398544009_
                                                 _g4398644013_)))))
                                      (_g4398544009_ _g4398644013_))))
                              (_g4398544009_ _g4398644013_))))
                      (_g4398544009_ _g4398644013_)))))
          (_g4398444094_ _$stx43981_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_$stx44099_)
        (let* ((_g4410344131_
                (lambda (_g4410444127_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g4410444127_)))
               (_g4410244230_
                (lambda (_g4410444135_)
                  (if (gx#stx-pair? _g4410444135_)
                      (let ((_e4411044138_ (gx#syntax-e _g4410444135_)))
                        (let ((_hd4410944142_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4411044138_)))
                              (_tl4410844145_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4411044138_))))
                          (if (gx#stx-pair? _tl4410844145_)
                              (let ((_e4411344148_
                                     (gx#syntax-e _tl4410844145_)))
                                (let ((_hd4411244152_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4411344148_)))
                                      (_tl4411144155_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4411344148_))))
                                  (if (gx#stx-pair? _tl4411144155_)
                                      (let ((_e4411644158_
                                             (gx#syntax-e _tl4411144155_)))
                                        (let ((_hd4411544162_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4411644158_)))
                                              (_tl4411444165_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4411644158_))))
                                          (if (gx#stx-pair/null?
                                               _tl4411444165_)
                                              (let ((_g44640_
                                                     (gx#syntax-split-splice
                                                      _tl4411444165_
                                                      '0)))
                                                (begin
                                                  (let ((_g44641_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g44640_)
                                                               (##vector-length
                                                                _g44640_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g44641_ 2)))
                (error "Context expects 2 values" _g44641_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target4411744168_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g44640_
                                                            0)))
                                                        (_tl4411944171_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g44640_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl4411944171_)
                                                        (letrec ((_loop4412044174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd4411844178_ _rest4412444181_)
                            (if (gx#stx-pair? _hd4411844178_)
                                (let ((_e4412144184_
                                       (gx#syntax-e _hd4411844178_)))
                                  (let ((_lp-hd4412244188_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4412144184_)))
                                        (_lp-tl4412344191_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4412144184_))))
                                    (_loop4412044174_
                                     _lp-tl4412344191_
                                     (cons _lp-hd4412244188_
                                           _rest4412444181_))))
                                (let ((_rest4412544194_
                                       (reverse _rest4412444181_)))
                                  ((lambda (_L44198_ _L44200_ _L44201_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'with-unwind-protect)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons '()
                                                             (cons _L44201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L44200_
                                 (let ((__tmp44642
                                        (lambda (_g4422144224_ _g4422244227_)
                                          (cons _g4422144224_ _g4422244227_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp44642 '() _L44198_)))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _rest4412544194_
                                   _hd4411544162_
                                   _hd4411244152_))))))
                  (_loop4412044174_ _target4411744168_ '()))
                (_g4410344131_ _g4410444135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g4410344131_ _g4410444135_))))
                                      (_g4410344131_ _g4410444135_))))
                              (_g4410344131_ _g4410444135_))))
                      (_g4410344131_ _g4410444135_)))))
          (_g4410244230_ _$stx44099_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_stx44235_)
        (let* ((_g4423844252_
                (lambda (_g4423944248_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g4423944248_)))
               (_g4423744324_
                (lambda (_g4423944256_)
                  (if (gx#stx-pair? _g4423944256_)
                      (let ((_e4424344259_ (gx#syntax-e _g4423944256_)))
                        (let ((_hd4424244263_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4424344259_)))
                              (_tl4424144266_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4424344259_))))
                          (if (gx#stx-pair? _tl4424144266_)
                              (let ((_e4424644269_
                                     (gx#syntax-e _tl4424144266_)))
                                (let ((_hd4424544273_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4424644269_)))
                                      (_tl4424444276_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4424644269_))))
                                  (if (gx#stx-null? _tl4424444276_)
                                      ((lambda (_L44279_)
                                         (if (gx#stx-string? _L44279_)
                                             (let* ((_g4429344301_
                                                     (lambda (_g4429444297_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g4429444297_)))
                                                    (_g4429244320_
                                                     (lambda (_g4429444305_)
                                                       ((lambda (_L44308_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L44308_ '()))))
                _g4429444305_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g4429244320_
                                                (let ((__tmp44643
                                                       (gx#stx-e _L44279_)))
                                                  (declare (not safe))
                                                  (string->bytes__0
                                                   __tmp44643))))
                                             (_g4423844252_ _g4423944256_)))
                                       _hd4424544273_)
                                      (_g4423844252_ _g4423944256_))))
                              (_g4423844252_ _g4423944256_))))
                      (_g4423844252_ _g4423944256_)))))
          (_g4423744324_ _stx44235_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_stx44328_)
        (let* ((_g4433144345_
                (lambda (_g4433244341_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g4433244341_)))
               (_g4433044386_
                (lambda (_g4433244349_)
                  (if (gx#stx-pair? _g4433244349_)
                      (let ((_e4433644352_ (gx#syntax-e _g4433244349_)))
                        (let ((_hd4433544356_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4433644352_)))
                              (_tl4433444359_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4433644352_))))
                          (if (gx#stx-pair? _tl4433444359_)
                              (let ((_e4433944362_
                                     (gx#syntax-e _tl4433444359_)))
                                (let ((_hd4433844366_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4433944362_)))
                                      (_tl4433744369_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4433944362_))))
                                  (if (gx#stx-null? _tl4433744369_)
                                      ((lambda (_L44372_)
                                         (if (gx#current-expander-compiling?)
                                             (gx#eval-syntax _L44372_)
                                             '#!void)
                                         (cons (gx#datum->syntax '#f 'void)
                                               '()))
                                       _hd4433844366_)
                                      (_g4433144345_ _g4433244349_))))
                              (_g4433144345_ _g4433244349_))))
                      (_g4433144345_ _g4433244349_)))))
          (_g4433044386_ _stx44328_))))))
