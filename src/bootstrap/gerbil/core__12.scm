(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-sugar>[1]#setq-macro::t|
    (make-class-type
     'gerbil.core#setq-macro::t
     (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
     '()
     'setq-macro
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setq-macro?|
    (make-class-predicate |gerbil/core$<more-sugar>[1]#setq-macro::t|))
  (define |gerbil/core$<more-sugar>[1]#make-setq-macro|
    (lambda _$args31257_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args31257_)))
  (define |gerbil/core$<more-sugar>[1]#setf-macro::t|
    (make-class-type
     'gerbil.core#setf-macro::t
     (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
     '()
     'setf-macro
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setf-macro?|
    (make-class-predicate |gerbil/core$<more-sugar>[1]#setf-macro::t|))
  (define |gerbil/core$<more-sugar>[1]#make-setf-macro|
    (lambda _$args31253_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args31253_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx31250_)
      (if (gx#identifier? _stx31250_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx31250_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx31247_)
      (if (gx#identifier? _stx31247_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx31247_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx31261_)
      (let* ((_g3126731326_
              (lambda (_g3126831322_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3126831322_)))
             (_g3126631381_
              (lambda (_g3126831330_)
                (if (gx#stx-pair? _g3126831330_)
                    (let ((_e3131231333_ (gx#syntax-e _g3126831330_)))
                      (let ((_hd3131331337_ (##car _e3131231333_))
                            (_tl3131431340_ (##cdr _e3131231333_)))
                        (if (gx#stx-pair? _tl3131431340_)
                            (let ((_e3131531343_ (gx#syntax-e _tl3131431340_)))
                              (let ((_hd3131631347_ (##car _e3131531343_))
                                    (_tl3131731350_ (##cdr _e3131531343_)))
                                (if (gx#stx-pair? _tl3131731350_)
                                    (let ((_e3131831353_
                                           (gx#syntax-e _tl3131731350_)))
                                      (let ((_hd3131931357_
                                             (##car _e3131831353_))
                                            (_tl3132031360_
                                             (##cdr _e3131831353_)))
                                        (if (gx#stx-null? _tl3132031360_)
                                            ((lambda (_L31363_ _L31365_)
                                               (if (gx#identifier? _L31365_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '%#set!)
                                                         (cons _L31365_
                                                               (cons _L31363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3126731326_
                                                    _g3126831330_)))
                                             _hd3131931357_
                                             _hd3131631347_)
                                            (_g3126731326_ _g3126831330_))))
                                    (_g3126731326_ _g3126831330_))))
                            (_g3126731326_ _g3126831330_))))
                    (_g3126731326_ _g3126831330_))))
             (_g3126531421_
              (lambda (_g3126831385_)
                (if (gx#stx-pair? _g3126831385_)
                    (let ((_e3130431388_ (gx#syntax-e _g3126831385_)))
                      (let ((_hd3130531392_ (##car _e3130431388_))
                            (_tl3130631395_ (##cdr _e3130431388_)))
                        (if (gx#stx-pair? _tl3130631395_)
                            (let ((_e3130731398_ (gx#syntax-e _tl3130631395_)))
                              (let ((_hd3130831402_ (##car _e3130731398_))
                                    (_tl3130931405_ (##cdr _e3130731398_)))
                                ((lambda (_L31408_)
                                   (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                                        _L31408_)
                                       (gx#core-apply-expander
                                        (gx#syntax-local-e _L31408_)
                                        _stx31261_)
                                       (_g3126631381_ _g3126831385_)))
                                 _hd3130831402_)))
                            (_g3126631381_ _g3126831385_))))
                    (_g3126631381_ _g3126831385_))))
             (_g3126431562_
              (lambda (_g3126831425_)
                (if (gx#stx-pair? _g3126831425_)
                    (let ((_e3128231428_ (gx#syntax-e _g3126831425_)))
                      (let ((_hd3128331432_ (##car _e3128231428_))
                            (_tl3128431435_ (##cdr _e3128231428_)))
                        (if (gx#stx-pair? _tl3128431435_)
                            (let ((_e3128531438_ (gx#syntax-e _tl3128431435_)))
                              (let ((_hd3128631442_ (##car _e3128531438_))
                                    (_tl3128731445_ (##cdr _e3128531438_)))
                                (if (gx#stx-pair? _hd3128631442_)
                                    (let ((_e3128831448_
                                           (gx#syntax-e _hd3128631442_)))
                                      (let ((_hd3128931452_
                                             (##car _e3128831448_))
                                            (_tl3129031455_
                                             (##cdr _e3128831448_)))
                                        (if (gx#stx-pair/null? _tl3129031455_)
                                            (if (fx>= (gx#stx-length
                                                       _tl3129031455_)
                                                      '0)
                                                (let ((_g35351_
                                                       (gx#syntax-split-splice
                                                        _tl3129031455_
                                                        '0)))
                                                  (begin
                                                    (let ((_g35352_
                                                           (values-count
                                                            _g35351_)))
                                                      (if (not (fx= _g35352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g35352_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3129131458_
                                                           (values-ref
                                                            _g35351_
                                                            0))
                                                          (_tl3129331461_
                                                           (values-ref
                                                            _g35351_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl3129331461_)
                                                          (letrec ((_loop3129431464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3129231468_ _arg3129831471_)
                              (if (gx#stx-pair? _hd3129231468_)
                                  (let ((_e3129531474_
                                         (gx#syntax-e _hd3129231468_)))
                                    (let ((_lp-hd3129631478_
                                           (##car _e3129531474_))
                                          (_lp-tl3129731481_
                                           (##cdr _e3129531474_)))
                                      (_loop3129431464_
                                       _lp-tl3129731481_
                                       (cons _lp-hd3129631478_
                                             _arg3129831471_))))
                                  (let ((_arg3129931484_
                                         (reverse _arg3129831471_)))
                                    (if (gx#stx-pair? _tl3128731445_)
                                        (let ((_e3130031488_
                                               (gx#syntax-e _tl3128731445_)))
                                          (let ((_hd3130131492_
                                                 (##car _e3130031488_))
                                                (_tl3130231495_
                                                 (##cdr _e3130031488_)))
                                            (if (gx#stx-null? _tl3130231495_)
                                                ((lambda (_L31498_
                                                          _L31500_
                                                          _L31501_)
                                                   (if (gx#identifier?
                                                        _L31501_)
                                                       (let* ((_g3152331531_
                                                               (lambda (_g3152431527_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g3152431527_)))
                      (_g3152231558_
                       (lambda (_g3152431535_)
                         ((lambda (_L31538_)
                            (let ()
                              (cons _L31538_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g3154931552_
                                                      _g3155031555_)
                                               (cons _g3154931552_
                                                     _g3155031555_))
                                             (cons _L31498_ '())
                                             _L31500_)))))
                          _g3152431535_))))
                 (_g3152231558_
                  (gx#stx-identifier _L31501_ _L31501_ '"-set!")))
               (_g3126531421_ _g3126831425_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd3130131492_
                                                 _arg3129931484_
                                                 _hd3128931452_)
                                                (_g3126531421_
                                                 _g3126831425_))))
                                        (_g3126531421_ _g3126831425_)))))))
                    (_loop3129431464_ _target3129131458_ '()))
                  (_g3126531421_ _g3126831425_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3126531421_ _g3126831425_))
                                            (_g3126531421_ _g3126831425_))))
                                    (_g3126531421_ _g3126831425_))))
                            (_g3126531421_ _g3126831425_))))
                    (_g3126531421_ _g3126831425_))))
             (_g3126331614_
              (lambda (_g3126831566_)
                (if (gx#stx-pair? _g3126831566_)
                    (let ((_e3127031569_ (gx#syntax-e _g3126831566_)))
                      (let ((_hd3127131573_ (##car _e3127031569_))
                            (_tl3127231576_ (##cdr _e3127031569_)))
                        (if (gx#stx-pair? _tl3127231576_)
                            (let ((_e3127331579_ (gx#syntax-e _tl3127231576_)))
                              (let ((_hd3127431583_ (##car _e3127331579_))
                                    (_tl3127531586_ (##cdr _e3127331579_)))
                                (if (gx#stx-pair? _hd3127431583_)
                                    (let ((_e3127631589_
                                           (gx#syntax-e _hd3127431583_)))
                                      (let ((_hd3127731593_
                                             (##car _e3127631589_))
                                            (_tl3127831596_
                                             (##cdr _e3127631589_)))
                                        ((lambda (_L31599_)
                                           (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                                (gx#datum->syntax '#f 'setfid))
                                               (gx#core-apply-expander
                                                (gx#syntax-local-e _L31599_)
                                                _stx31261_)
                                               (_g3126431562_ _g3126831566_)))
                                         _hd3127731593_)))
                                    (_g3126431562_ _g3126831566_))))
                            (_g3126431562_ _g3126831566_))))
                    (_g3126431562_ _g3126831566_)))))
        (_g3126331614_ _stx31261_))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx31619_)
      (let* ((_g3162231646_
              (lambda (_g3162331642_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3162331642_)))
             (_g3162131824_
              (lambda (_g3162331650_)
                (if (gx#stx-pair? _g3162331650_)
                    (let ((_e3162631653_ (gx#syntax-e _g3162331650_)))
                      (let ((_hd3162731657_ (##car _e3162631653_))
                            (_tl3162831660_ (##cdr _e3162631653_)))
                        (if (gx#stx-pair/null? _tl3162831660_)
                            (if (fx>= (gx#stx-length _tl3162831660_) '1)
                                (let ((_g35353_
                                       (gx#syntax-split-splice
                                        _tl3162831660_
                                        '1)))
                                  (begin
                                    (let ((_g35354_ (values-count _g35353_)))
                                      (if (not (fx= _g35354_ 2))
                                          (error "Context expects 2 values"
                                                 _g35354_)))
                                    (let ((_target3162931663_
                                           (values-ref _g35353_ 0))
                                          (_tl3163131666_
                                           (values-ref _g35353_ 1)))
                                      (if (gx#stx-pair? _tl3163131666_)
                                          (let ((_e3163831669_
                                                 (gx#syntax-e _tl3163131666_)))
                                            (let ((_hd3163931673_
                                                   (##car _e3163831669_))
                                                  (_tl3164031676_
                                                   (##cdr _e3163831669_)))
                                              (if (gx#stx-null? _tl3164031676_)
                                                  (letrec ((_loop3163231679_
                                                            (lambda (_hd3163031683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3163631686_)
                      (if (gx#stx-pair? _hd3163031683_)
                          (let ((_e3163331689_ (gx#syntax-e _hd3163031683_)))
                            (let ((_lp-hd3163431693_ (##car _e3163331689_))
                                  (_lp-tl3163531696_ (##cdr _e3163331689_)))
                              (_loop3163231679_
                               _lp-tl3163531696_
                               (cons _lp-hd3163431693_ _tgt3163631686_))))
                          (let ((_tgt3163731699_ (reverse _tgt3163631686_)))
                            ((lambda (_L31703_ _L31705_)
                               (let* ((_g3172331740_
                                       (lambda (_g3172431736_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3172431736_)))
                                      (_g3172231812_
                                       (lambda (_g3172431744_)
                                         (if (gx#stx-pair/null? _g3172431744_)
                                             (if (fx>= (gx#stx-length
                                                        _g3172431744_)
                                                       '0)
                                                 (let ((_g35355_
                                                        (gx#syntax-split-splice
                                                         _g3172431744_
                                                         '0)))
                                                   (begin
                                                     (let ((_g35356_
                                                            (values-count
                                                             _g35355_)))
                                                       (if (not (fx= _g35356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g35356_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target3172631747_
                                                            (values-ref
                                                             _g35355_
                                                             0))
                                                           (_tl3172831750_
                                                            (values-ref
                                                             _g35355_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl3172831750_)
                                                           (letrec ((_loop3172931753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd3172731757_ _$e3173331760_)
                               (if (gx#stx-pair? _hd3172731757_)
                                   (let ((_e3173031763_
                                          (gx#syntax-e _hd3172731757_)))
                                     (let ((_lp-hd3173131767_
                                            (##car _e3173031763_))
                                           (_lp-tl3173231770_
                                            (##cdr _e3173031763_)))
                                       (_loop3172931753_
                                        _lp-tl3173231770_
                                        (cons _lp-hd3173131767_
                                              _$e3173331760_))))
                                   (let ((_$e3173431773_
                                          (reverse _$e3173331760_)))
                                     ((lambda (_L31777_)
                                        (let ()
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!void
                            (foldr (lambda (_g3179231798_ _g3179331801_)
                                     (cons _g3179231798_ _g3179331801_))
                                   '()
                                   _L31777_))
                          (cons _L31703_ '()))
                    '())
              (begin
                (gx#syntax-check-splice-targets _L31777_ _L31705_)
                (foldr (lambda (_g3179431804_ _g3179531807_ _g3179631809_)
                         (cons (cons (gx#datum->syntax '#f 'set!)
                                     (cons _g3179531807_
                                           (cons _g3179431804_ '())))
                               _g3179631809_))
                       '()
                       _L31777_
                       _L31705_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _$e3173431773_))))))
                     (_loop3172931753_ _target3172631747_ '()))
                   (_g3172331740_ _g3172431744_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3172331740_ _g3172431744_))
                                             (_g3172331740_ _g3172431744_)))))
                                 (_g3172231812_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g3181531818_
                                                     _g3181631821_)
                                              (cons _g3181531818_
                                                    _g3181631821_))
                                            '()
                                            _L31705_))))))
                             _hd3163931673_
                             _tgt3163731699_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3163231679_
                                                     _target3162931663_
                                                     '()))
                                                  (_g3162231646_
                                                   _g3162331650_))))
                                          (_g3162231646_ _g3162331650_)))))
                                (_g3162231646_ _g3162331650_))
                            (_g3162231646_ _g3162331650_))))
                    (_g3162231646_ _g3162331650_)))))
        (_g3162131824_ _stx31619_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx31830_)
      (let* ((_g3183431892_
              (lambda (_g3183531888_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3183531888_)))
             (_g3183332169_
              (lambda (_g3183531896_)
                (if (gx#stx-pair? _g3183531896_)
                    (let ((_e3185531899_ (gx#syntax-e _g3183531896_)))
                      (let ((_hd3185631903_ (##car _e3185531899_))
                            (_tl3185731906_ (##cdr _e3185531899_)))
                        (if (gx#stx-pair? _tl3185731906_)
                            (let ((_e3185831909_ (gx#syntax-e _tl3185731906_)))
                              (let ((_hd3185931913_ (##car _e3185831909_))
                                    (_tl3186031916_ (##cdr _e3185831909_)))
                                (if (gx#stx-pair/null? _hd3185931913_)
                                    (if (fx>= (gx#stx-length _hd3185931913_)
                                              '0)
                                        (let ((_g35357_
                                               (gx#syntax-split-splice
                                                _hd3185931913_
                                                '0)))
                                          (begin
                                            (let ((_g35358_
                                                   (values-count _g35357_)))
                                              (if (not (fx= _g35358_ 2))
                                                  (error "Context expects 2 values"
                                                         _g35358_)))
                                            (let ((_target3186131919_
                                                   (values-ref _g35357_ 0))
                                                  (_tl3186331922_
                                                   (values-ref _g35357_ 1)))
                                              (if (gx#stx-null? _tl3186331922_)
                                                  (letrec ((_loop3186431925_
                                                            (lambda (_hd3186231929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr3186831932_
                             _param3186931934_)
                      (if (gx#stx-pair? _hd3186231929_)
                          (let ((_e3186531937_ (gx#syntax-e _hd3186231929_)))
                            (let ((_lp-hd3186631941_ (##car _e3186531937_))
                                  (_lp-tl3186731944_ (##cdr _e3186531937_)))
                              (if (gx#stx-pair? _lp-hd3186631941_)
                                  (let ((_e3187231947_
                                         (gx#syntax-e _lp-hd3186631941_)))
                                    (let ((_hd3187331951_
                                           (##car _e3187231947_))
                                          (_tl3187431954_
                                           (##cdr _e3187231947_)))
                                      (if (gx#stx-pair? _tl3187431954_)
                                          (let ((_e3187531957_
                                                 (gx#syntax-e _tl3187431954_)))
                                            (let ((_hd3187631961_
                                                   (##car _e3187531957_))
                                                  (_tl3187731964_
                                                   (##cdr _e3187531957_)))
                                              (if (gx#stx-null? _tl3187731964_)
                                                  (_loop3186431925_
                                                   _lp-tl3186731944_
                                                   (cons _hd3187631961_
                                                         _expr3186831932_)
                                                   (cons _hd3187331951_
                                                         _param3186931934_))
                                                  (_g3183431892_
                                                   _g3183531896_))))
                                          (_g3183431892_ _g3183531896_))))
                                  (_g3183431892_ _g3183531896_))))
                          (let ((_expr3187031967_ (reverse _expr3186831932_))
                                (_param3187131970_
                                 (reverse _param3186931934_)))
                            (if (gx#stx-pair/null? _tl3186031916_)
                                (if (fx>= (gx#stx-length _tl3186031916_) '0)
                                    (let ((_g35359_
                                           (gx#syntax-split-splice
                                            _tl3186031916_
                                            '0)))
                                      (begin
                                        (let ((_g35360_
                                               (values-count _g35359_)))
                                          (if (not (fx= _g35360_ 2))
                                              (error "Context expects 2 values"
                                                     _g35360_)))
                                        (let ((_target3187831973_
                                               (values-ref _g35359_ 0))
                                              (_tl3188031976_
                                               (values-ref _g35359_ 1)))
                                          (if (gx#stx-null? _tl3188031976_)
                                              (letrec ((_loop3188131979_
                                                        (lambda (_hd3187931983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3188531986_)
                  (if (gx#stx-pair? _hd3187931983_)
                      (let ((_e3188231989_ (gx#syntax-e _hd3187931983_)))
                        (let ((_lp-hd3188331993_ (##car _e3188231989_))
                              (_lp-tl3188431996_ (##cdr _e3188231989_)))
                          (_loop3188131979_
                           _lp-tl3188431996_
                           (cons _lp-hd3188331993_ _body3188531986_))))
                      (let ((_body3188631999_ (reverse _body3188531986_)))
                        ((lambda (_L32003_ _L32005_ _L32006_)
                           (let* ((_g3202932037_
                                   (lambda (_g3203032033_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g3203032033_)))
                                  (_g3202832157_
                                   (lambda (_g3203032041_)
                                     ((lambda (_L32044_)
                                        (let ()
                                          (let* ((_g3205632073_
                                                  (lambda (_g3205732069_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g3205732069_)))
                                                 (_g3205532137_
                                                  (lambda (_g3205732077_)
                                                    (if (gx#stx-pair/null?
                                                         _g3205732077_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g3205732077_)
                          '0)
                    (let ((_g35361_ (gx#syntax-split-splice _g3205732077_ '0)))
                      (begin
                        (let ((_g35362_ (values-count _g35361_)))
                          (if (not (fx= _g35362_ 2))
                              (error "Context expects 2 values" _g35362_)))
                        (let ((_target3205932080_ (values-ref _g35361_ 0))
                              (_tl3206132083_ (values-ref _g35361_ 1)))
                          (if (gx#stx-null? _tl3206132083_)
                              (letrec ((_loop3206232086_
                                        (lambda (_hd3206032090_
                                                 _arg3206632093_)
                                          (if (gx#stx-pair? _hd3206032090_)
                                              (let ((_e3206332096_
                                                     (gx#syntax-e
                                                      _hd3206032090_)))
                                                (let ((_lp-hd3206432100_
                                                       (##car _e3206332096_))
                                                      (_lp-tl3206532103_
                                                       (##cdr _e3206332096_)))
                                                  (_loop3206232086_
                                                   _lp-tl3206532103_
                                                   (cons _lp-hd3206432100_
                                                         _arg3206632093_))))
                                              (let ((_arg3206732106_
                                                     (reverse _arg3206632093_)))
                                                ((lambda (_L32110_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'call-with-parameters)
                                                             (cons _L32044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (begin
                             '#!void
                             (foldr (lambda (_g3212832131_ _g3212932134_)
                                      (cons _g3212832131_ _g3212932134_))
                                    '()
                                    _L32110_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _arg3206732106_))))))
                                (_loop3206232086_ _target3205932080_ '()))
                              (_g3205632073_ _g3205732077_)))))
                    (_g3205632073_ _g3205732077_))
                (_g3205632073_ _g3205732077_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3205532137_
                                             (foldr cons*
                                                    '()
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3214032143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3214132146_)
                        (cons _g3214032143_ _g3214132146_))
                      '()
                      _L32006_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3214832151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3214932154_)
                        (cons _g3214832151_ _g3214932154_))
                      '()
                      _L32005_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g3203032041_))))
                             (_g3202832157_
                              (gx#stx-wrap-source
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g3216032163_
                                                             _g3216132166_)
                                                      (cons _g3216032163_
                                                            _g3216132166_))
                                                    '()
                                                    _L32003_))))
                               (gx#stx-source _stx31830_)))))
                         _body3188631999_
                         _expr3187031967_
                         _param3187131970_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3188131979_
                                                 _target3187831973_
                                                 '()))
                                              (_g3183431892_ _g3183531896_)))))
                                    (_g3183431892_ _g3183531896_))
                                (_g3183431892_ _g3183531896_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3186431925_
                                                     _target3186131919_
                                                     '()
                                                     '()))
                                                  (_g3183431892_
                                                   _g3183531896_)))))
                                        (_g3183431892_ _g3183531896_))
                                    (_g3183431892_ _g3183531896_))))
                            (_g3183431892_ _g3183531896_))))
                    (_g3183431892_ _g3183531896_))))
             (_g3183232251_
              (lambda (_g3183532173_)
                (if (gx#stx-pair? _g3183532173_)
                    (let ((_e3183732176_ (gx#syntax-e _g3183532173_)))
                      (let ((_hd3183832180_ (##car _e3183732176_))
                            (_tl3183932183_ (##cdr _e3183732176_)))
                        (if (gx#stx-pair? _tl3183932183_)
                            (let ((_e3184032186_ (gx#syntax-e _tl3183932183_)))
                              (let ((_hd3184132190_ (##car _e3184032186_))
                                    (_tl3184232193_ (##cdr _e3184032186_)))
                                (if (gx#stx-null? _hd3184132190_)
                                    (if (gx#stx-pair/null? _tl3184232193_)
                                        (if (fx>= (gx#stx-length
                                                   _tl3184232193_)
                                                  '0)
                                            (let ((_g35363_
                                                   (gx#syntax-split-splice
                                                    _tl3184232193_
                                                    '0)))
                                              (begin
                                                (let ((_g35364_
                                                       (values-count
                                                        _g35363_)))
                                                  (if (not (fx= _g35364_ 2))
                                                      (error "Context expects 2 values"
                                                             _g35364_)))
                                                (let ((_target3184332196_
                                                       (values-ref _g35363_ 0))
                                                      (_tl3184532199_
                                                       (values-ref
                                                        _g35363_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl3184532199_)
                                                      (letrec ((_loop3184632202_
                                                                (lambda (_hd3184432206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body3185032209_)
                          (if (gx#stx-pair? _hd3184432206_)
                              (let ((_e3184732212_
                                     (gx#syntax-e _hd3184432206_)))
                                (let ((_lp-hd3184832216_ (##car _e3184732212_))
                                      (_lp-tl3184932219_
                                       (##cdr _e3184732212_)))
                                  (_loop3184632202_
                                   _lp-tl3184932219_
                                   (cons _lp-hd3184832216_ _body3185032209_))))
                              (let ((_body3185132222_
                                     (reverse _body3185032209_)))
                                ((lambda (_L32226_)
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons '()
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g3224232245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3224332248_)
                  (cons _g3224232245_ _g3224332248_))
                '()
                _L32226_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _body3185132222_))))))
                (_loop3184632202_ _target3184332196_ '()))
              (_g3183332169_ _g3183532173_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3183332169_ _g3183532173_))
                                        (_g3183332169_ _g3183532173_))
                                    (_g3183332169_ _g3183532173_))))
                            (_g3183332169_ _g3183532173_))))
                    (_g3183332169_ _g3183532173_)))))
        (_g3183232251_ _stx31830_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx32259_)
      (let* ((_g3226332287_
              (lambda (_g3226432283_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3226432283_)))
             (_g3226232372_
              (lambda (_g3226432291_)
                (if (gx#stx-pair? _g3226432291_)
                    (let ((_e3226732294_ (gx#syntax-e _g3226432291_)))
                      (let ((_hd3226832298_ (##car _e3226732294_))
                            (_tl3226932301_ (##cdr _e3226732294_)))
                        (if (gx#stx-pair? _tl3226932301_)
                            (let ((_e3227032304_ (gx#syntax-e _tl3226932301_)))
                              (let ((_hd3227132308_ (##car _e3227032304_))
                                    (_tl3227232311_ (##cdr _e3227032304_)))
                                (if (gx#stx-pair/null? _tl3227232311_)
                                    (if (fx>= (gx#stx-length _tl3227232311_)
                                              '0)
                                        (let ((_g35365_
                                               (gx#syntax-split-splice
                                                _tl3227232311_
                                                '0)))
                                          (begin
                                            (let ((_g35366_
                                                   (values-count _g35365_)))
                                              (if (not (fx= _g35366_ 2))
                                                  (error "Context expects 2 values"
                                                         _g35366_)))
                                            (let ((_target3227332314_
                                                   (values-ref _g35365_ 0))
                                                  (_tl3227532317_
                                                   (values-ref _g35365_ 1)))
                                              (if (gx#stx-null? _tl3227532317_)
                                                  (letrec ((_loop3227632320_
                                                            (lambda (_hd3227432324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3228032327_)
                      (if (gx#stx-pair? _hd3227432324_)
                          (let ((_e3227732330_ (gx#syntax-e _hd3227432324_)))
                            (let ((_lp-hd3227832334_ (##car _e3227732330_))
                                  (_lp-tl3227932337_ (##cdr _e3227732330_)))
                              (_loop3227632320_
                               _lp-tl3227932337_
                               (cons _lp-hd3227832334_ _body3228032327_))))
                          (let ((_body3228132340_ (reverse _body3228032327_)))
                            ((lambda (_L32344_ _L32346_)
                               (if (gx#identifier? _L32346_)
                                   (cons (gx#datum->syntax '#f 'call/cc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L32346_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g3236332366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g3236432369_)
                              (cons _g3236332366_ _g3236432369_))
                            '()
                            _L32344_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g3226332287_ _g3226432291_)))
                             _body3228132340_
                             _hd3227132308_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3227632320_
                                                     _target3227332314_
                                                     '()))
                                                  (_g3226332287_
                                                   _g3226432291_)))))
                                        (_g3226332287_ _g3226432291_))
                                    (_g3226332287_ _g3226432291_))))
                            (_g3226332287_ _g3226432291_))))
                    (_g3226332287_ _g3226432291_)))))
        (_g3226232372_ _$stx32259_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx32377_)
      (let* ((_g3238132405_
              (lambda (_g3238232401_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3238232401_)))
             (_g3238032490_
              (lambda (_g3238232409_)
                (if (gx#stx-pair? _g3238232409_)
                    (let ((_e3238532412_ (gx#syntax-e _g3238232409_)))
                      (let ((_hd3238632416_ (##car _e3238532412_))
                            (_tl3238732419_ (##cdr _e3238532412_)))
                        (if (gx#stx-pair? _tl3238732419_)
                            (let ((_e3238832422_ (gx#syntax-e _tl3238732419_)))
                              (let ((_hd3238932426_ (##car _e3238832422_))
                                    (_tl3239032429_ (##cdr _e3238832422_)))
                                (if (gx#stx-pair/null? _tl3239032429_)
                                    (if (fx>= (gx#stx-length _tl3239032429_)
                                              '0)
                                        (let ((_g35367_
                                               (gx#syntax-split-splice
                                                _tl3239032429_
                                                '0)))
                                          (begin
                                            (let ((_g35368_
                                                   (values-count _g35367_)))
                                              (if (not (fx= _g35368_ 2))
                                                  (error "Context expects 2 values"
                                                         _g35368_)))
                                            (let ((_target3239132432_
                                                   (values-ref _g35367_ 0))
                                                  (_tl3239332435_
                                                   (values-ref _g35367_ 1)))
                                              (if (gx#stx-null? _tl3239332435_)
                                                  (letrec ((_loop3239432438_
                                                            (lambda (_hd3239232442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3239832445_)
                      (if (gx#stx-pair? _hd3239232442_)
                          (let ((_e3239532448_ (gx#syntax-e _hd3239232442_)))
                            (let ((_lp-hd3239632452_ (##car _e3239532448_))
                                  (_lp-tl3239732455_ (##cdr _e3239532448_)))
                              (_loop3239432438_
                               _lp-tl3239732455_
                               (cons _lp-hd3239632452_ _body3239832445_))))
                          (let ((_body3239932458_ (reverse _body3239832445_)))
                            ((lambda (_L32462_ _L32464_)
                               (if (gx#identifier? _L32464_)
                                   (cons (gx#datum->syntax '#f 'call/esc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L32464_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g3248132484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g3248232487_)
                              (cons _g3248132484_ _g3248232487_))
                            '()
                            _L32462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g3238132405_ _g3238232409_)))
                             _body3239932458_
                             _hd3238932426_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3239432438_
                                                     _target3239132432_
                                                     '()))
                                                  (_g3238132405_
                                                   _g3238232409_)))))
                                        (_g3238132405_ _g3238232409_))
                                    (_g3238132405_ _g3238232409_))))
                            (_g3238132405_ _g3238232409_))))
                    (_g3238132405_ _g3238232409_)))))
        (_g3238032490_ _$stx32377_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx32495_)
      (let* ((_g3249932527_
              (lambda (_g3250032523_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3250032523_)))
             (_g3249832626_
              (lambda (_g3250032531_)
                (if (gx#stx-pair? _g3250032531_)
                    (let ((_e3250432534_ (gx#syntax-e _g3250032531_)))
                      (let ((_hd3250532538_ (##car _e3250432534_))
                            (_tl3250632541_ (##cdr _e3250432534_)))
                        (if (gx#stx-pair? _tl3250632541_)
                            (let ((_e3250732544_ (gx#syntax-e _tl3250632541_)))
                              (let ((_hd3250832548_ (##car _e3250732544_))
                                    (_tl3250932551_ (##cdr _e3250732544_)))
                                (if (gx#stx-pair? _tl3250932551_)
                                    (let ((_e3251032554_
                                           (gx#syntax-e _tl3250932551_)))
                                      (let ((_hd3251132558_
                                             (##car _e3251032554_))
                                            (_tl3251232561_
                                             (##cdr _e3251032554_)))
                                        (if (gx#stx-pair/null? _tl3251232561_)
                                            (if (fx>= (gx#stx-length
                                                       _tl3251232561_)
                                                      '0)
                                                (let ((_g35369_
                                                       (gx#syntax-split-splice
                                                        _tl3251232561_
                                                        '0)))
                                                  (begin
                                                    (let ((_g35370_
                                                           (values-count
                                                            _g35369_)))
                                                      (if (not (fx= _g35370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g35370_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3251332564_
                                                           (values-ref
                                                            _g35369_
                                                            0))
                                                          (_tl3251532567_
                                                           (values-ref
                                                            _g35369_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl3251532567_)
                                                          (letrec ((_loop3251632570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3251432574_ _rest3252032577_)
                              (if (gx#stx-pair? _hd3251432574_)
                                  (let ((_e3251732580_
                                         (gx#syntax-e _hd3251432574_)))
                                    (let ((_lp-hd3251832584_
                                           (##car _e3251732580_))
                                          (_lp-tl3251932587_
                                           (##cdr _e3251732580_)))
                                      (_loop3251632570_
                                       _lp-tl3251932587_
                                       (cons _lp-hd3251832584_
                                             _rest3252032577_))))
                                  (let ((_rest3252132590_
                                         (reverse _rest3252032577_)))
                                    ((lambda (_L32594_ _L32596_ _L32597_)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'with-unwind-protect)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons _L32597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L32596_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g3261732620_
                                                     _g3261832623_)
                                              (cons _g3261732620_
                                                    _g3261832623_))
                                            '()
                                            _L32594_)))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _rest3252132590_
                                     _hd3251132558_
                                     _hd3250832548_))))))
                    (_loop3251632570_ _target3251332564_ '()))
                  (_g3249932527_ _g3250032531_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3249932527_ _g3250032531_))
                                            (_g3249932527_ _g3250032531_))))
                                    (_g3249932527_ _g3250032531_))))
                            (_g3249932527_ _g3250032531_))))
                    (_g3249932527_ _g3250032531_)))))
        (_g3249832626_ _$stx32495_)))))
