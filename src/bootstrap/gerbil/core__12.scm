(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-sugar>[1]#setq-macro::t|
    (make-class-type
     'gerbil.core#setq-macro::t
     (cons |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t| '())
     '()
     'setq-macro
     '()
     '#f))
  (define |gerbil/core::<more-sugar>[1]#setq-macro?|
    (make-class-predicate |gerbil/core::<more-sugar>[1]#setq-macro::t|))
  (define |gerbil/core::<more-sugar>[1]#make-setq-macro|
    (lambda _$args25758_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setq-macro::t|
             _$args25758_)))
  (define |gerbil/core::<more-sugar>[1]#setf-macro::t|
    (make-class-type
     'gerbil.core#setf-macro::t
     (cons |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t| '())
     '()
     'setf-macro
     '()
     '#f))
  (define |gerbil/core::<more-sugar>[1]#setf-macro?|
    (make-class-predicate |gerbil/core::<more-sugar>[1]#setf-macro::t|))
  (define |gerbil/core::<more-sugar>[1]#make-setf-macro|
    (lambda _$args25754_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setf-macro::t|
             _$args25754_)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx25751_)
      (if (gx#identifier? _stx25751_)
          (|gerbil/core::<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx25751_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx25748_)
      (if (gx#identifier? _stx25748_)
          (|gerbil/core::<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx25748_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[:0:]#set!|
    (lambda (_stx25762_)
      (let ((_g2576825827_
             (lambda (_g2576925823_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2576925823_))))
        (let ((_g2576725882_
               (lambda (_g2576925831_)
                 (if (gx#stx-pair? _g2576925831_)
                     (let ((_e2581325834_ (gx#syntax-e _g2576925831_)))
                       (let ((_hd2581425838_ (##car _e2581325834_))
                             (_tl2581525841_ (##cdr _e2581325834_)))
                         (if (gx#stx-pair? _tl2581525841_)
                             (let ((_e2581625844_
                                    (gx#syntax-e _tl2581525841_)))
                               (let ((_hd2581725848_ (##car _e2581625844_))
                                     (_tl2581825851_ (##cdr _e2581625844_)))
                                 (if (gx#stx-pair? _tl2581825851_)
                                     (let ((_e2581925854_
                                            (gx#syntax-e _tl2581825851_)))
                                       (let ((_hd2582025858_
                                              (##car _e2581925854_))
                                             (_tl2582125861_
                                              (##cdr _e2581925854_)))
                                         (if (gx#stx-null? _tl2582125861_)
                                             ((lambda (_L25864_ _L25866_)
                                                (if (gx#identifier? _L25866_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '%#set!)
                                                          (cons _L25866_
                                                                (cons _L25864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2576825827_
                                                     _g2576925831_)))
                                              _hd2582025858_
                                              _hd2581725848_)
                                             (_g2576825827_ _g2576925831_))))
                                     (_g2576825827_ _g2576925831_))))
                             (_g2576825827_ _g2576925831_))))
                     (_g2576825827_ _g2576925831_)))))
          (let ((_g2576625922_
                 (lambda (_g2576925886_)
                   (if (gx#stx-pair? _g2576925886_)
                       (let ((_e2580525889_ (gx#syntax-e _g2576925886_)))
                         (let ((_hd2580625893_ (##car _e2580525889_))
                               (_tl2580725896_ (##cdr _e2580525889_)))
                           (if (gx#stx-pair? _tl2580725896_)
                               (let ((_e2580825899_
                                      (gx#syntax-e _tl2580725896_)))
                                 (let ((_hd2580925903_ (##car _e2580825899_))
                                       (_tl2581025906_ (##cdr _e2580825899_)))
                                   ((lambda (_L25909_)
                                      (if (|gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
                                           _L25909_)
                                          (gx#core-apply-expander
                                           (gx#syntax-local-e _L25909_)
                                           _stx25762_)
                                          (_g2576725882_ _g2576925886_)))
                                    _hd2580925903_)))
                               (_g2576725882_ _g2576925886_))))
                       (_g2576725882_ _g2576925886_)))))
            (let ((_g2576526063_
                   (lambda (_g2576925926_)
                     (if (gx#stx-pair? _g2576925926_)
                         (let ((_e2578325929_ (gx#syntax-e _g2576925926_)))
                           (let ((_hd2578425933_ (##car _e2578325929_))
                                 (_tl2578525936_ (##cdr _e2578325929_)))
                             (if (gx#stx-pair? _tl2578525936_)
                                 (let ((_e2578625939_
                                        (gx#syntax-e _tl2578525936_)))
                                   (let ((_hd2578725943_ (##car _e2578625939_))
                                         (_tl2578825946_
                                          (##cdr _e2578625939_)))
                                     (if (gx#stx-pair? _hd2578725943_)
                                         (let ((_e2578925949_
                                                (gx#syntax-e _hd2578725943_)))
                                           (let ((_hd2579025953_
                                                  (##car _e2578925949_))
                                                 (_tl2579125956_
                                                  (##cdr _e2578925949_)))
                                             (if (gx#stx-pair/null?
                                                  _tl2579125956_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl2579125956_)
                                                           '0)
                                                     (let ((_g28483_
                                                            (gx#syntax-split-splice
                                                             _tl2579125956_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28484_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28483_)))
                   (if (not (fx= _g28484_ 2))
                       (error "Context expects 2 values" _g28484_)))
                 (let ((_target2579225959_ (values-ref _g28483_ 0))
                       (_tl2579425962_ (values-ref _g28483_ 1)))
                   (if (gx#stx-null? _tl2579425962_)
                       (letrec ((_loop2579525965_
                                 (lambda (_hd2579325969_ _arg2579925972_)
                                   (if (gx#stx-pair? _hd2579325969_)
                                       (let ((_e2579625975_
                                              (gx#syntax-e _hd2579325969_)))
                                         (let ((_lp-hd2579725979_
                                                (##car _e2579625975_))
                                               (_lp-tl2579825982_
                                                (##cdr _e2579625975_)))
                                           (_loop2579525965_
                                            _lp-tl2579825982_
                                            (cons _lp-hd2579725979_
                                                  _arg2579925972_))))
                                       (let ((_arg2580025985_
                                              (reverse _arg2579925972_)))
                                         (if (gx#stx-pair? _tl2578825946_)
                                             (let ((_e2580125989_
                                                    (gx#syntax-e
                                                     _tl2578825946_)))
                                               (let ((_hd2580225993_
                                                      (##car _e2580125989_))
                                                     (_tl2580325996_
                                                      (##cdr _e2580125989_)))
                                                 (if (gx#stx-null?
                                                      _tl2580325996_)
                                                     ((lambda (_L25999_
                                                               _L26001_
                                                               _L26002_)
                                                        (if (gx#identifier?
                                                             _L26002_)
                                                            (let ((_g2602426032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2602526028_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2602526028_))))
                      (let ((_g2602326059_
                             (lambda (_g2602526036_)
                               ((lambda (_L26039_)
                                  (let ()
                                    (cons _L26039_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2605026053_
                                                            _g2605126056_)
                                                     (cons _g2605026053_
                                                           _g2605126056_))
                                                   (cons _L25999_ '())
                                                   _L26001_)))))
                                _g2602526036_))))
                        (_g2602326059_
                         (gx#stx-identifier _L26002_ _L26002_ '"-set!"))))
                    (_g2576625922_ _g2576925926_)))
              _hd2580225993_
              _arg2580025985_
              _hd2579025953_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2576625922_
                                                      _g2576925926_))))
                                             (_g2576625922_
                                              _g2576925926_)))))))
                         (_loop2579525965_ _target2579225959_ '()))
                       (_g2576625922_ _g2576925926_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2576625922_
                                                      _g2576925926_))
                                                 (_g2576625922_
                                                  _g2576925926_))))
                                         (_g2576625922_ _g2576925926_))))
                                 (_g2576625922_ _g2576925926_))))
                         (_g2576625922_ _g2576925926_)))))
              (let ((_g2576426115_
                     (lambda (_g2576926067_)
                       (if (gx#stx-pair? _g2576926067_)
                           (let ((_e2577126070_ (gx#syntax-e _g2576926067_)))
                             (let ((_hd2577226074_ (##car _e2577126070_))
                                   (_tl2577326077_ (##cdr _e2577126070_)))
                               (if (gx#stx-pair? _tl2577326077_)
                                   (let ((_e2577426080_
                                          (gx#syntax-e _tl2577326077_)))
                                     (let ((_hd2577526084_
                                            (##car _e2577426080_))
                                           (_tl2577626087_
                                            (##cdr _e2577426080_)))
                                       (if (gx#stx-pair? _hd2577526084_)
                                           (let ((_e2577726090_
                                                  (gx#syntax-e
                                                   _hd2577526084_)))
                                             (let ((_hd2577826094_
                                                    (##car _e2577726090_))
                                                   (_tl2577926097_
                                                    (##cdr _e2577726090_)))
                                               ((lambda (_L26100_)
                                                  (if (|gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (gx#core-apply-expander
                                                       (gx#syntax-local-e
                                                        _L26100_)
                                                       _stx25762_)
                                                      (_g2576526063_
                                                       _g2576926067_)))
                                                _hd2577826094_)))
                                           (_g2576526063_ _g2576926067_))))
                                   (_g2576526063_ _g2576926067_))))
                           (_g2576526063_ _g2576926067_)))))
                (_g2576426115_ _stx25762_))))))))
  (define |gerbil/core::<more-sugar>[:0:]#values-set!|
    (lambda (_stx26120_)
      (let ((_g2612326147_
             (lambda (_g2612426143_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2612426143_))))
        (let ((_g2612226325_
               (lambda (_g2612426151_)
                 (if (gx#stx-pair? _g2612426151_)
                     (let ((_e2612726154_ (gx#syntax-e _g2612426151_)))
                       (let ((_hd2612826158_ (##car _e2612726154_))
                             (_tl2612926161_ (##cdr _e2612726154_)))
                         (if (gx#stx-pair/null? _tl2612926161_)
                             (if (fx>= (gx#stx-length _tl2612926161_) '1)
                                 (let ((_g28485_
                                        (gx#syntax-split-splice
                                         _tl2612926161_
                                         '1)))
                                   (begin
                                     (let ((_g28486_ (values-count _g28485_)))
                                       (if (not (fx= _g28486_ 2))
                                           (error "Context expects 2 values"
                                                  _g28486_)))
                                     (let ((_target2613026164_
                                            (values-ref _g28485_ 0))
                                           (_tl2613226167_
                                            (values-ref _g28485_ 1)))
                                       (if (gx#stx-pair? _tl2613226167_)
                                           (let ((_e2613926170_
                                                  (gx#syntax-e
                                                   _tl2613226167_)))
                                             (let ((_hd2614026174_
                                                    (##car _e2613926170_))
                                                   (_tl2614126177_
                                                    (##cdr _e2613926170_)))
                                               (if (gx#stx-null?
                                                    _tl2614126177_)
                                                   (letrec ((_loop2613326180_
                                                             (lambda (_hd2613126184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _tgt2613726187_)
                       (if (gx#stx-pair? _hd2613126184_)
                           (let ((_e2613426190_ (gx#syntax-e _hd2613126184_)))
                             (let ((_lp-hd2613526194_ (##car _e2613426190_))
                                   (_lp-tl2613626197_ (##cdr _e2613426190_)))
                               (_loop2613326180_
                                _lp-tl2613626197_
                                (cons _lp-hd2613526194_ _tgt2613726187_))))
                           (let ((_tgt2613826200_ (reverse _tgt2613726187_)))
                             ((lambda (_L26204_ _L26206_)
                                (let ((_g2622426241_
                                       (lambda (_g2622526237_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2622526237_))))
                                  (let ((_g2622326313_
                                         (lambda (_g2622526245_)
                                           (if (gx#stx-pair/null?
                                                _g2622526245_)
                                               (if (fx>= (gx#stx-length
                                                          _g2622526245_)
                                                         '0)
                                                   (let ((_g28487_
                                                          (gx#syntax-split-splice
                                                           _g2622526245_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28488_
                                                              (values-count
                                                               _g28487_)))
                                                         (if (not (fx= _g28488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28488_)))
               (let ((_target2622726248_ (values-ref _g28487_ 0))
                     (_tl2622926251_ (values-ref _g28487_ 1)))
                 (if (gx#stx-null? _tl2622926251_)
                     (letrec ((_loop2623026254_
                               (lambda (_hd2622826258_ _$e2623426261_)
                                 (if (gx#stx-pair? _hd2622826258_)
                                     (let ((_e2623126264_
                                            (gx#syntax-e _hd2622826258_)))
                                       (let ((_lp-hd2623226268_
                                              (##car _e2623126264_))
                                             (_lp-tl2623326271_
                                              (##cdr _e2623126264_)))
                                         (_loop2623026254_
                                          _lp-tl2623326271_
                                          (cons _lp-hd2623226268_
                                                _$e2623426261_))))
                                     (let ((_$e2623526274_
                                            (reverse _$e2623426261_)))
                                       ((lambda (_L26278_)
                                          (let ()
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'let-values)
                                                  (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr (lambda (_g2629326299_ _g2629426302_)
                                       (cons _g2629326299_ _g2629426302_))
                                     '()
                                     _L26278_))
                            (cons _L26204_ '()))
                      '())
                (begin
                  (gx#syntax-check-splice-targets _L26278_ _L26206_)
                  (foldr (lambda (_g2629526305_ _g2629626308_ _g2629726310_)
                           (cons (cons (gx#datum->syntax '#f 'set!)
                                       (cons _g2629626308_
                                             (cons _g2629526305_ '())))
                                 _g2629726310_))
                         '()
                         _L26278_
                         _L26206_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e2623526274_))))))
                       (_loop2623026254_ _target2622726248_ '()))
                     (_g2622426241_ _g2622526245_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2622426241_
                                                    _g2622526245_))
                                               (_g2622426241_
                                                _g2622526245_)))))
                                    (_g2622326313_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2631626319_
                                                        _g2631726322_)
                                                 (cons _g2631626319_
                                                       _g2631726322_))
                                               '()
                                               _L26206_)))))))
                              _hd2614026174_
                              _tgt2613826200_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2613326180_
                                                      _target2613026164_
                                                      '()))
                                                   (_g2612326147_
                                                    _g2612426151_))))
                                           (_g2612326147_ _g2612426151_)))))
                                 (_g2612326147_ _g2612426151_))
                             (_g2612326147_ _g2612426151_))))
                     (_g2612326147_ _g2612426151_)))))
          (_g2612226325_ _stx26120_)))))
  (define |gerbil/core::<more-sugar>[:0:]#parameterize|
    (lambda (_stx26331_)
      (let ((_g2633526393_
             (lambda (_g2633626389_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2633626389_))))
        (let ((_g2633426670_
               (lambda (_g2633626397_)
                 (if (gx#stx-pair? _g2633626397_)
                     (let ((_e2635626400_ (gx#syntax-e _g2633626397_)))
                       (let ((_hd2635726404_ (##car _e2635626400_))
                             (_tl2635826407_ (##cdr _e2635626400_)))
                         (if (gx#stx-pair? _tl2635826407_)
                             (let ((_e2635926410_
                                    (gx#syntax-e _tl2635826407_)))
                               (let ((_hd2636026414_ (##car _e2635926410_))
                                     (_tl2636126417_ (##cdr _e2635926410_)))
                                 (if (gx#stx-pair/null? _hd2636026414_)
                                     (if (fx>= (gx#stx-length _hd2636026414_)
                                               '0)
                                         (let ((_g28489_
                                                (gx#syntax-split-splice
                                                 _hd2636026414_
                                                 '0)))
                                           (begin
                                             (let ((_g28490_
                                                    (values-count _g28489_)))
                                               (if (not (fx= _g28490_ 2))
                                                   (error "Context expects 2 values"
                                                          _g28490_)))
                                             (let ((_target2636226420_
                                                    (values-ref _g28489_ 0))
                                                   (_tl2636426423_
                                                    (values-ref _g28489_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2636426423_)
                                                   (letrec ((_loop2636526426_
                                                             (lambda (_hd2636326430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr2636926433_
                              _param2637026435_)
                       (if (gx#stx-pair? _hd2636326430_)
                           (let ((_e2636626438_ (gx#syntax-e _hd2636326430_)))
                             (let ((_lp-hd2636726442_ (##car _e2636626438_))
                                   (_lp-tl2636826445_ (##cdr _e2636626438_)))
                               (if (gx#stx-pair? _lp-hd2636726442_)
                                   (let ((_e2637326448_
                                          (gx#syntax-e _lp-hd2636726442_)))
                                     (let ((_hd2637426452_
                                            (##car _e2637326448_))
                                           (_tl2637526455_
                                            (##cdr _e2637326448_)))
                                       (if (gx#stx-pair? _tl2637526455_)
                                           (let ((_e2637626458_
                                                  (gx#syntax-e
                                                   _tl2637526455_)))
                                             (let ((_hd2637726462_
                                                    (##car _e2637626458_))
                                                   (_tl2637826465_
                                                    (##cdr _e2637626458_)))
                                               (if (gx#stx-null?
                                                    _tl2637826465_)
                                                   (_loop2636526426_
                                                    _lp-tl2636826445_
                                                    (cons _hd2637726462_
                                                          _expr2636926433_)
                                                    (cons _hd2637426452_
                                                          _param2637026435_))
                                                   (_g2633526393_
                                                    _g2633626397_))))
                                           (_g2633526393_ _g2633626397_))))
                                   (_g2633526393_ _g2633626397_))))
                           (let ((_expr2637126468_ (reverse _expr2636926433_))
                                 (_param2637226471_
                                  (reverse _param2637026435_)))
                             (if (gx#stx-pair/null? _tl2636126417_)
                                 (if (fx>= (gx#stx-length _tl2636126417_) '0)
                                     (let ((_g28491_
                                            (gx#syntax-split-splice
                                             _tl2636126417_
                                             '0)))
                                       (begin
                                         (let ((_g28492_
                                                (values-count _g28491_)))
                                           (if (not (fx= _g28492_ 2))
                                               (error "Context expects 2 values"
                                                      _g28492_)))
                                         (let ((_target2637926474_
                                                (values-ref _g28491_ 0))
                                               (_tl2638126477_
                                                (values-ref _g28491_ 1)))
                                           (if (gx#stx-null? _tl2638126477_)
                                               (letrec ((_loop2638226480_
                                                         (lambda (_hd2638026484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body2638626487_)
                   (if (gx#stx-pair? _hd2638026484_)
                       (let ((_e2638326490_ (gx#syntax-e _hd2638026484_)))
                         (let ((_lp-hd2638426494_ (##car _e2638326490_))
                               (_lp-tl2638526497_ (##cdr _e2638326490_)))
                           (_loop2638226480_
                            _lp-tl2638526497_
                            (cons _lp-hd2638426494_ _body2638626487_))))
                       (let ((_body2638726500_ (reverse _body2638626487_)))
                         ((lambda (_L26504_ _L26506_ _L26507_)
                            (let ((_g2653026538_
                                   (lambda (_g2653126534_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2653126534_))))
                              (let ((_g2652926658_
                                     (lambda (_g2653126542_)
                                       ((lambda (_L26545_)
                                          (let ()
                                            (let ((_g2655726574_
                                                   (lambda (_g2655826570_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2655826570_))))
                                              (let ((_g2655626638_
                                                     (lambda (_g2655826578_)
                                                       (if (gx#stx-pair/null?
                                                            _g2655826578_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2655826578_)
                             '0)
                       (let ((_g28493_
                              (gx#syntax-split-splice _g2655826578_ '0)))
                         (begin
                           (let ((_g28494_ (values-count _g28493_)))
                             (if (not (fx= _g28494_ 2))
                                 (error "Context expects 2 values" _g28494_)))
                           (let ((_target2656026581_ (values-ref _g28493_ 0))
                                 (_tl2656226584_ (values-ref _g28493_ 1)))
                             (if (gx#stx-null? _tl2656226584_)
                                 (letrec ((_loop2656326587_
                                           (lambda (_hd2656126591_
                                                    _arg2656726594_)
                                             (if (gx#stx-pair? _hd2656126591_)
                                                 (let ((_e2656426597_
                                                        (gx#syntax-e
                                                         _hd2656126591_)))
                                                   (let ((_lp-hd2656526601_
                                                          (##car _e2656426597_))
                                                         (_lp-tl2656626604_
                                                          (##cdr _e2656426597_)))
                                                     (_loop2656326587_
                                                      _lp-tl2656626604_
                                                      (cons _lp-hd2656526601_
                                                            _arg2656726594_))))
                                                 (let ((_arg2656826607_
                                                        (reverse _arg2656726594_)))
                                                   ((lambda (_L26611_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'call-with-parameters)
                        (cons _L26545_
                              (begin
                                '#!void
                                (foldr (lambda (_g2662926632_ _g2663026635_)
                                         (cons _g2662926632_ _g2663026635_))
                                       '()
                                       _L26611_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg2656826607_))))))
                                   (_loop2656326587_ _target2656026581_ '()))
                                 (_g2655726574_ _g2655826578_)))))
                       (_g2655726574_ _g2655826578_))
                   (_g2655726574_ _g2655826578_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2655626638_
                                                 (foldr cons*
                                                        '()
                                                        (gx#syntax->list
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g2664126644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2664226647_)
                            (cons _g2664126644_ _g2664226647_))
                          '()
                          _L26507_)))
                (gx#syntax->list
                 (begin
                   '#!void
                   (foldr (lambda (_g2664926652_ _g2665026655_)
                            (cons _g2664926652_ _g2665026655_))
                          '()
                          _L26506_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2653126542_))))
                                (_g2652926658_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g2666126664_
                                                                _g2666226667_)
                                                         (cons _g2666126664_
                                                               _g2666226667_))
                                                       '()
                                                       _L26504_))))
                                  (gx#stx-source _stx26331_))))))
                          _body2638726500_
                          _expr2637126468_
                          _param2637226471_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop2638226480_
                                                  _target2637926474_
                                                  '()))
                                               (_g2633526393_
                                                _g2633626397_)))))
                                     (_g2633526393_ _g2633626397_))
                                 (_g2633526393_ _g2633626397_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2636526426_
                                                      _target2636226420_
                                                      '()
                                                      '()))
                                                   (_g2633526393_
                                                    _g2633626397_)))))
                                         (_g2633526393_ _g2633626397_))
                                     (_g2633526393_ _g2633626397_))))
                             (_g2633526393_ _g2633626397_))))
                     (_g2633526393_ _g2633626397_)))))
          (let ((_g2633326752_
                 (lambda (_g2633626674_)
                   (if (gx#stx-pair? _g2633626674_)
                       (let ((_e2633826677_ (gx#syntax-e _g2633626674_)))
                         (let ((_hd2633926681_ (##car _e2633826677_))
                               (_tl2634026684_ (##cdr _e2633826677_)))
                           (if (gx#stx-pair? _tl2634026684_)
                               (let ((_e2634126687_
                                      (gx#syntax-e _tl2634026684_)))
                                 (let ((_hd2634226691_ (##car _e2634126687_))
                                       (_tl2634326694_ (##cdr _e2634126687_)))
                                   (if (gx#stx-null? _hd2634226691_)
                                       (if (gx#stx-pair/null? _tl2634326694_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2634326694_)
                                                     '0)
                                               (let ((_g28495_
                                                      (gx#syntax-split-splice
                                                       _tl2634326694_
                                                       '0)))
                                                 (begin
                                                   (let ((_g28496_
                                                          (values-count
                                                           _g28495_)))
                                                     (if (not (fx= _g28496_ 2))
                                                         (error "Context expects 2 values"
                                                                _g28496_)))
                                                   (let ((_target2634426697_
                                                          (values-ref
                                                           _g28495_
                                                           0))
                                                         (_tl2634626700_
                                                          (values-ref
                                                           _g28495_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2634626700_)
                                                         (letrec ((_loop2634726703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2634526707_ _body2635126710_)
                             (if (gx#stx-pair? _hd2634526707_)
                                 (let ((_e2634826713_
                                        (gx#syntax-e _hd2634526707_)))
                                   (let ((_lp-hd2634926717_
                                          (##car _e2634826713_))
                                         (_lp-tl2635026720_
                                          (##cdr _e2634826713_)))
                                     (_loop2634726703_
                                      _lp-tl2635026720_
                                      (cons _lp-hd2634926717_
                                            _body2635126710_))))
                                 (let ((_body2635226723_
                                        (reverse _body2635126710_)))
                                   ((lambda (_L26727_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2674326746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2674426749_)
                     (cons _g2674326746_ _g2674426749_))
                   '()
                   _L26727_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2635226723_))))))
                   (_loop2634726703_ _target2634426697_ '()))
                 (_g2633426670_ _g2633626674_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2633426670_ _g2633626674_))
                                           (_g2633426670_ _g2633626674_))
                                       (_g2633426670_ _g2633626674_))))
                               (_g2633426670_ _g2633626674_))))
                       (_g2633426670_ _g2633626674_)))))
            (_g2633326752_ _stx26331_))))))
  (define |gerbil/core::<more-sugar>[:0:]#let/cc|
    (lambda (_$stx26760_)
      (let ((_g2676426788_
             (lambda (_g2676526784_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2676526784_))))
        (let ((_g2676326873_
               (lambda (_g2676526792_)
                 (if (gx#stx-pair? _g2676526792_)
                     (let ((_e2676826795_ (gx#syntax-e _g2676526792_)))
                       (let ((_hd2676926799_ (##car _e2676826795_))
                             (_tl2677026802_ (##cdr _e2676826795_)))
                         (if (gx#stx-pair? _tl2677026802_)
                             (let ((_e2677126805_
                                    (gx#syntax-e _tl2677026802_)))
                               (let ((_hd2677226809_ (##car _e2677126805_))
                                     (_tl2677326812_ (##cdr _e2677126805_)))
                                 (if (gx#stx-pair/null? _tl2677326812_)
                                     (if (fx>= (gx#stx-length _tl2677326812_)
                                               '0)
                                         (let ((_g28497_
                                                (gx#syntax-split-splice
                                                 _tl2677326812_
                                                 '0)))
                                           (begin
                                             (let ((_g28498_
                                                    (values-count _g28497_)))
                                               (if (not (fx= _g28498_ 2))
                                                   (error "Context expects 2 values"
                                                          _g28498_)))
                                             (let ((_target2677426815_
                                                    (values-ref _g28497_ 0))
                                                   (_tl2677626818_
                                                    (values-ref _g28497_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2677626818_)
                                                   (letrec ((_loop2677726821_
                                                             (lambda (_hd2677526825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2678126828_)
                       (if (gx#stx-pair? _hd2677526825_)
                           (let ((_e2677826831_ (gx#syntax-e _hd2677526825_)))
                             (let ((_lp-hd2677926835_ (##car _e2677826831_))
                                   (_lp-tl2678026838_ (##cdr _e2677826831_)))
                               (_loop2677726821_
                                _lp-tl2678026838_
                                (cons _lp-hd2677926835_ _body2678126828_))))
                           (let ((_body2678226841_ (reverse _body2678126828_)))
                             ((lambda (_L26845_ _L26847_)
                                (if (gx#identifier? _L26847_)
                                    (cons (gx#datum->syntax '#f 'call/cc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L26847_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2686426867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2686526870_)
                               (cons _g2686426867_ _g2686526870_))
                             '()
                             _L26845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2676426788_ _g2676526792_)))
                              _body2678226841_
                              _hd2677226809_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2677726821_
                                                      _target2677426815_
                                                      '()))
                                                   (_g2676426788_
                                                    _g2676526792_)))))
                                         (_g2676426788_ _g2676526792_))
                                     (_g2676426788_ _g2676526792_))))
                             (_g2676426788_ _g2676526792_))))
                     (_g2676426788_ _g2676526792_)))))
          (_g2676326873_ _$stx26760_)))))
  (define |gerbil/core::<more-sugar>[:0:]#let/esc|
    (lambda (_$stx26878_)
      (let ((_g2688226906_
             (lambda (_g2688326902_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2688326902_))))
        (let ((_g2688126991_
               (lambda (_g2688326910_)
                 (if (gx#stx-pair? _g2688326910_)
                     (let ((_e2688626913_ (gx#syntax-e _g2688326910_)))
                       (let ((_hd2688726917_ (##car _e2688626913_))
                             (_tl2688826920_ (##cdr _e2688626913_)))
                         (if (gx#stx-pair? _tl2688826920_)
                             (let ((_e2688926923_
                                    (gx#syntax-e _tl2688826920_)))
                               (let ((_hd2689026927_ (##car _e2688926923_))
                                     (_tl2689126930_ (##cdr _e2688926923_)))
                                 (if (gx#stx-pair/null? _tl2689126930_)
                                     (if (fx>= (gx#stx-length _tl2689126930_)
                                               '0)
                                         (let ((_g28499_
                                                (gx#syntax-split-splice
                                                 _tl2689126930_
                                                 '0)))
                                           (begin
                                             (let ((_g28500_
                                                    (values-count _g28499_)))
                                               (if (not (fx= _g28500_ 2))
                                                   (error "Context expects 2 values"
                                                          _g28500_)))
                                             (let ((_target2689226933_
                                                    (values-ref _g28499_ 0))
                                                   (_tl2689426936_
                                                    (values-ref _g28499_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2689426936_)
                                                   (letrec ((_loop2689526939_
                                                             (lambda (_hd2689326943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2689926946_)
                       (if (gx#stx-pair? _hd2689326943_)
                           (let ((_e2689626949_ (gx#syntax-e _hd2689326943_)))
                             (let ((_lp-hd2689726953_ (##car _e2689626949_))
                                   (_lp-tl2689826956_ (##cdr _e2689626949_)))
                               (_loop2689526939_
                                _lp-tl2689826956_
                                (cons _lp-hd2689726953_ _body2689926946_))))
                           (let ((_body2690026959_ (reverse _body2689926946_)))
                             ((lambda (_L26963_ _L26965_)
                                (if (gx#identifier? _L26965_)
                                    (cons (gx#datum->syntax '#f 'call/esc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L26965_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2698226985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2698326988_)
                               (cons _g2698226985_ _g2698326988_))
                             '()
                             _L26963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2688226906_ _g2688326910_)))
                              _body2690026959_
                              _hd2689026927_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2689526939_
                                                      _target2689226933_
                                                      '()))
                                                   (_g2688226906_
                                                    _g2688326910_)))))
                                         (_g2688226906_ _g2688326910_))
                                     (_g2688226906_ _g2688326910_))))
                             (_g2688226906_ _g2688326910_))))
                     (_g2688226906_ _g2688326910_)))))
          (_g2688126991_ _$stx26878_)))))
  (define |gerbil/core::<more-sugar>[:0:]#catch|
    (lambda (_$stx26996_)
      (let ((_g2699927006_
             (lambda (_g2700027002_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2700027002_))))
        (_g2699927006_ _$stx26996_))))
  (define |gerbil/core::<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx27010_)
      (let ((_g2701427032_
             (lambda (_g2701527028_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2701527028_))))
        (let ((_g2701327087_
               (lambda (_g2701527036_)
                 (if (gx#stx-pair? _g2701527036_)
                     (let ((_e2701827039_ (gx#syntax-e _g2701527036_)))
                       (let ((_hd2701927043_ (##car _e2701827039_))
                             (_tl2702027046_ (##cdr _e2701827039_)))
                         (if (gx#stx-pair? _tl2702027046_)
                             (let ((_e2702127049_
                                    (gx#syntax-e _tl2702027046_)))
                               (let ((_hd2702227053_ (##car _e2702127049_))
                                     (_tl2702327056_ (##cdr _e2702127049_)))
                                 (if (gx#stx-pair? _tl2702327056_)
                                     (let ((_e2702427059_
                                            (gx#syntax-e _tl2702327056_)))
                                       (let ((_hd2702527063_
                                              (##car _e2702427059_))
                                             (_tl2702627066_
                                              (##cdr _e2702427059_)))
                                         (if (gx#stx-null? _tl2702627066_)
                                             ((lambda (_L27069_ _L27071_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'with-unwind-protect)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _L27071_ '())))
                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                (cons '() (cons _L27069_ '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2702527063_
                                              _hd2702227053_)
                                             (_g2701427032_ _g2701527036_))))
                                     (_g2701427032_ _g2701527036_))))
                             (_g2701427032_ _g2701527036_))))
                     (_g2701427032_ _g2701527036_)))))
          (_g2701327087_ _$stx27010_))))))
