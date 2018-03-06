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
    (lambda _$args31020_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args31020_)))
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
    (lambda _$args31016_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args31016_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx31013_)
      (if (gx#identifier? _stx31013_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx31013_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx31010_)
      (if (gx#identifier? _stx31010_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx31010_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx31024_)
      (let* ((_g3103031089_
              (lambda (_g3103131085_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3103131085_)))
             (_g3102931144_
              (lambda (_g3103131093_)
                (if (gx#stx-pair? _g3103131093_)
                    (let ((_e3107531096_ (gx#syntax-e _g3103131093_)))
                      (let ((_hd3107631100_ (##car _e3107531096_))
                            (_tl3107731103_ (##cdr _e3107531096_)))
                        (if (gx#stx-pair? _tl3107731103_)
                            (let ((_e3107831106_ (gx#syntax-e _tl3107731103_)))
                              (let ((_hd3107931110_ (##car _e3107831106_))
                                    (_tl3108031113_ (##cdr _e3107831106_)))
                                (if (gx#stx-pair? _tl3108031113_)
                                    (let ((_e3108131116_
                                           (gx#syntax-e _tl3108031113_)))
                                      (let ((_hd3108231120_
                                             (##car _e3108131116_))
                                            (_tl3108331123_
                                             (##cdr _e3108131116_)))
                                        (if (gx#stx-null? _tl3108331123_)
                                            ((lambda (_L31126_ _L31128_)
                                               (if (gx#identifier? _L31128_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '%#set!)
                                                         (cons _L31128_
                                                               (cons _L31126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3103031089_
                                                    _g3103131093_)))
                                             _hd3108231120_
                                             _hd3107931110_)
                                            (_g3103031089_ _g3103131093_))))
                                    (_g3103031089_ _g3103131093_))))
                            (_g3103031089_ _g3103131093_))))
                    (_g3103031089_ _g3103131093_))))
             (_g3102831184_
              (lambda (_g3103131148_)
                (if (gx#stx-pair? _g3103131148_)
                    (let ((_e3106731151_ (gx#syntax-e _g3103131148_)))
                      (let ((_hd3106831155_ (##car _e3106731151_))
                            (_tl3106931158_ (##cdr _e3106731151_)))
                        (if (gx#stx-pair? _tl3106931158_)
                            (let ((_e3107031161_ (gx#syntax-e _tl3106931158_)))
                              (let ((_hd3107131165_ (##car _e3107031161_))
                                    (_tl3107231168_ (##cdr _e3107031161_)))
                                ((lambda (_L31171_)
                                   (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                                        _L31171_)
                                       (gx#core-apply-expander
                                        (gx#syntax-local-e _L31171_)
                                        _stx31024_)
                                       (_g3102931144_ _g3103131148_)))
                                 _hd3107131165_)))
                            (_g3102931144_ _g3103131148_))))
                    (_g3102931144_ _g3103131148_))))
             (_g3102731325_
              (lambda (_g3103131188_)
                (if (gx#stx-pair? _g3103131188_)
                    (let ((_e3104531191_ (gx#syntax-e _g3103131188_)))
                      (let ((_hd3104631195_ (##car _e3104531191_))
                            (_tl3104731198_ (##cdr _e3104531191_)))
                        (if (gx#stx-pair? _tl3104731198_)
                            (let ((_e3104831201_ (gx#syntax-e _tl3104731198_)))
                              (let ((_hd3104931205_ (##car _e3104831201_))
                                    (_tl3105031208_ (##cdr _e3104831201_)))
                                (if (gx#stx-pair? _hd3104931205_)
                                    (let ((_e3105131211_
                                           (gx#syntax-e _hd3104931205_)))
                                      (let ((_hd3105231215_
                                             (##car _e3105131211_))
                                            (_tl3105331218_
                                             (##cdr _e3105131211_)))
                                        (if (gx#stx-pair/null? _tl3105331218_)
                                            (if (fx>= (gx#stx-length
                                                       _tl3105331218_)
                                                      '0)
                                                (let ((_g35110_
                                                       (gx#syntax-split-splice
                                                        _tl3105331218_
                                                        '0)))
                                                  (begin
                                                    (let ((_g35111_
                                                           (values-count
                                                            _g35110_)))
                                                      (if (not (fx= _g35111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g35111_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3105431221_
                                                           (values-ref
                                                            _g35110_
                                                            0))
                                                          (_tl3105631224_
                                                           (values-ref
                                                            _g35110_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl3105631224_)
                                                          (letrec ((_loop3105731227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3105531231_ _arg3106131234_)
                              (if (gx#stx-pair? _hd3105531231_)
                                  (let ((_e3105831237_
                                         (gx#syntax-e _hd3105531231_)))
                                    (let ((_lp-hd3105931241_
                                           (##car _e3105831237_))
                                          (_lp-tl3106031244_
                                           (##cdr _e3105831237_)))
                                      (_loop3105731227_
                                       _lp-tl3106031244_
                                       (cons _lp-hd3105931241_
                                             _arg3106131234_))))
                                  (let ((_arg3106231247_
                                         (reverse _arg3106131234_)))
                                    (if (gx#stx-pair? _tl3105031208_)
                                        (let ((_e3106331251_
                                               (gx#syntax-e _tl3105031208_)))
                                          (let ((_hd3106431255_
                                                 (##car _e3106331251_))
                                                (_tl3106531258_
                                                 (##cdr _e3106331251_)))
                                            (if (gx#stx-null? _tl3106531258_)
                                                ((lambda (_L31261_
                                                          _L31263_
                                                          _L31264_)
                                                   (if (gx#identifier?
                                                        _L31264_)
                                                       (let* ((_g3128631294_
                                                               (lambda (_g3128731290_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g3128731290_)))
                      (_g3128531321_
                       (lambda (_g3128731298_)
                         ((lambda (_L31301_)
                            (let ()
                              (cons _L31301_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g3131231315_
                                                      _g3131331318_)
                                               (cons _g3131231315_
                                                     _g3131331318_))
                                             (cons _L31261_ '())
                                             _L31263_)))))
                          _g3128731298_))))
                 (_g3128531321_
                  (gx#stx-identifier _L31264_ _L31264_ '"-set!")))
               (_g3102831184_ _g3103131188_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd3106431255_
                                                 _arg3106231247_
                                                 _hd3105231215_)
                                                (_g3102831184_
                                                 _g3103131188_))))
                                        (_g3102831184_ _g3103131188_)))))))
                    (_loop3105731227_ _target3105431221_ '()))
                  (_g3102831184_ _g3103131188_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3102831184_ _g3103131188_))
                                            (_g3102831184_ _g3103131188_))))
                                    (_g3102831184_ _g3103131188_))))
                            (_g3102831184_ _g3103131188_))))
                    (_g3102831184_ _g3103131188_))))
             (_g3102631377_
              (lambda (_g3103131329_)
                (if (gx#stx-pair? _g3103131329_)
                    (let ((_e3103331332_ (gx#syntax-e _g3103131329_)))
                      (let ((_hd3103431336_ (##car _e3103331332_))
                            (_tl3103531339_ (##cdr _e3103331332_)))
                        (if (gx#stx-pair? _tl3103531339_)
                            (let ((_e3103631342_ (gx#syntax-e _tl3103531339_)))
                              (let ((_hd3103731346_ (##car _e3103631342_))
                                    (_tl3103831349_ (##cdr _e3103631342_)))
                                (if (gx#stx-pair? _hd3103731346_)
                                    (let ((_e3103931352_
                                           (gx#syntax-e _hd3103731346_)))
                                      (let ((_hd3104031356_
                                             (##car _e3103931352_))
                                            (_tl3104131359_
                                             (##cdr _e3103931352_)))
                                        ((lambda (_L31362_)
                                           (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                                (gx#datum->syntax '#f 'setfid))
                                               (gx#core-apply-expander
                                                (gx#syntax-local-e _L31362_)
                                                _stx31024_)
                                               (_g3102731325_ _g3103131329_)))
                                         _hd3104031356_)))
                                    (_g3102731325_ _g3103131329_))))
                            (_g3102731325_ _g3103131329_))))
                    (_g3102731325_ _g3103131329_)))))
        (_g3102631377_ _stx31024_))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx31382_)
      (let* ((_g3138531409_
              (lambda (_g3138631405_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3138631405_)))
             (_g3138431587_
              (lambda (_g3138631413_)
                (if (gx#stx-pair? _g3138631413_)
                    (let ((_e3138931416_ (gx#syntax-e _g3138631413_)))
                      (let ((_hd3139031420_ (##car _e3138931416_))
                            (_tl3139131423_ (##cdr _e3138931416_)))
                        (if (gx#stx-pair/null? _tl3139131423_)
                            (if (fx>= (gx#stx-length _tl3139131423_) '1)
                                (let ((_g35112_
                                       (gx#syntax-split-splice
                                        _tl3139131423_
                                        '1)))
                                  (begin
                                    (let ((_g35113_ (values-count _g35112_)))
                                      (if (not (fx= _g35113_ 2))
                                          (error "Context expects 2 values"
                                                 _g35113_)))
                                    (let ((_target3139231426_
                                           (values-ref _g35112_ 0))
                                          (_tl3139431429_
                                           (values-ref _g35112_ 1)))
                                      (if (gx#stx-pair? _tl3139431429_)
                                          (let ((_e3140131432_
                                                 (gx#syntax-e _tl3139431429_)))
                                            (let ((_hd3140231436_
                                                   (##car _e3140131432_))
                                                  (_tl3140331439_
                                                   (##cdr _e3140131432_)))
                                              (if (gx#stx-null? _tl3140331439_)
                                                  (letrec ((_loop3139531442_
                                                            (lambda (_hd3139331446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3139931449_)
                      (if (gx#stx-pair? _hd3139331446_)
                          (let ((_e3139631452_ (gx#syntax-e _hd3139331446_)))
                            (let ((_lp-hd3139731456_ (##car _e3139631452_))
                                  (_lp-tl3139831459_ (##cdr _e3139631452_)))
                              (_loop3139531442_
                               _lp-tl3139831459_
                               (cons _lp-hd3139731456_ _tgt3139931449_))))
                          (let ((_tgt3140031462_ (reverse _tgt3139931449_)))
                            ((lambda (_L31466_ _L31468_)
                               (let* ((_g3148631503_
                                       (lambda (_g3148731499_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3148731499_)))
                                      (_g3148531575_
                                       (lambda (_g3148731507_)
                                         (if (gx#stx-pair/null? _g3148731507_)
                                             (if (fx>= (gx#stx-length
                                                        _g3148731507_)
                                                       '0)
                                                 (let ((_g35114_
                                                        (gx#syntax-split-splice
                                                         _g3148731507_
                                                         '0)))
                                                   (begin
                                                     (let ((_g35115_
                                                            (values-count
                                                             _g35114_)))
                                                       (if (not (fx= _g35115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g35115_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target3148931510_
                                                            (values-ref
                                                             _g35114_
                                                             0))
                                                           (_tl3149131513_
                                                            (values-ref
                                                             _g35114_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl3149131513_)
                                                           (letrec ((_loop3149231516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd3149031520_ _$e3149631523_)
                               (if (gx#stx-pair? _hd3149031520_)
                                   (let ((_e3149331526_
                                          (gx#syntax-e _hd3149031520_)))
                                     (let ((_lp-hd3149431530_
                                            (##car _e3149331526_))
                                           (_lp-tl3149531533_
                                            (##cdr _e3149331526_)))
                                       (_loop3149231516_
                                        _lp-tl3149531533_
                                        (cons _lp-hd3149431530_
                                              _$e3149631523_))))
                                   (let ((_$e3149731536_
                                          (reverse _$e3149631523_)))
                                     ((lambda (_L31540_)
                                        (let ()
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!void
                            (foldr (lambda (_g3155531561_ _g3155631564_)
                                     (cons _g3155531561_ _g3155631564_))
                                   '()
                                   _L31540_))
                          (cons _L31466_ '()))
                    '())
              (begin
                (gx#syntax-check-splice-targets _L31540_ _L31468_)
                (foldr (lambda (_g3155731567_ _g3155831570_ _g3155931572_)
                         (cons (cons (gx#datum->syntax '#f 'set!)
                                     (cons _g3155831570_
                                           (cons _g3155731567_ '())))
                               _g3155931572_))
                       '()
                       _L31540_
                       _L31468_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _$e3149731536_))))))
                     (_loop3149231516_ _target3148931510_ '()))
                   (_g3148631503_ _g3148731507_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3148631503_ _g3148731507_))
                                             (_g3148631503_ _g3148731507_)))))
                                 (_g3148531575_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g3157831581_
                                                     _g3157931584_)
                                              (cons _g3157831581_
                                                    _g3157931584_))
                                            '()
                                            _L31468_))))))
                             _hd3140231436_
                             _tgt3140031462_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3139531442_
                                                     _target3139231426_
                                                     '()))
                                                  (_g3138531409_
                                                   _g3138631413_))))
                                          (_g3138531409_ _g3138631413_)))))
                                (_g3138531409_ _g3138631413_))
                            (_g3138531409_ _g3138631413_))))
                    (_g3138531409_ _g3138631413_)))))
        (_g3138431587_ _stx31382_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx31593_)
      (let* ((_g3159731655_
              (lambda (_g3159831651_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3159831651_)))
             (_g3159631932_
              (lambda (_g3159831659_)
                (if (gx#stx-pair? _g3159831659_)
                    (let ((_e3161831662_ (gx#syntax-e _g3159831659_)))
                      (let ((_hd3161931666_ (##car _e3161831662_))
                            (_tl3162031669_ (##cdr _e3161831662_)))
                        (if (gx#stx-pair? _tl3162031669_)
                            (let ((_e3162131672_ (gx#syntax-e _tl3162031669_)))
                              (let ((_hd3162231676_ (##car _e3162131672_))
                                    (_tl3162331679_ (##cdr _e3162131672_)))
                                (if (gx#stx-pair/null? _hd3162231676_)
                                    (if (fx>= (gx#stx-length _hd3162231676_)
                                              '0)
                                        (let ((_g35116_
                                               (gx#syntax-split-splice
                                                _hd3162231676_
                                                '0)))
                                          (begin
                                            (let ((_g35117_
                                                   (values-count _g35116_)))
                                              (if (not (fx= _g35117_ 2))
                                                  (error "Context expects 2 values"
                                                         _g35117_)))
                                            (let ((_target3162431682_
                                                   (values-ref _g35116_ 0))
                                                  (_tl3162631685_
                                                   (values-ref _g35116_ 1)))
                                              (if (gx#stx-null? _tl3162631685_)
                                                  (letrec ((_loop3162731688_
                                                            (lambda (_hd3162531692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr3163131695_
                             _param3163231697_)
                      (if (gx#stx-pair? _hd3162531692_)
                          (let ((_e3162831700_ (gx#syntax-e _hd3162531692_)))
                            (let ((_lp-hd3162931704_ (##car _e3162831700_))
                                  (_lp-tl3163031707_ (##cdr _e3162831700_)))
                              (if (gx#stx-pair? _lp-hd3162931704_)
                                  (let ((_e3163531710_
                                         (gx#syntax-e _lp-hd3162931704_)))
                                    (let ((_hd3163631714_
                                           (##car _e3163531710_))
                                          (_tl3163731717_
                                           (##cdr _e3163531710_)))
                                      (if (gx#stx-pair? _tl3163731717_)
                                          (let ((_e3163831720_
                                                 (gx#syntax-e _tl3163731717_)))
                                            (let ((_hd3163931724_
                                                   (##car _e3163831720_))
                                                  (_tl3164031727_
                                                   (##cdr _e3163831720_)))
                                              (if (gx#stx-null? _tl3164031727_)
                                                  (_loop3162731688_
                                                   _lp-tl3163031707_
                                                   (cons _hd3163931724_
                                                         _expr3163131695_)
                                                   (cons _hd3163631714_
                                                         _param3163231697_))
                                                  (_g3159731655_
                                                   _g3159831659_))))
                                          (_g3159731655_ _g3159831659_))))
                                  (_g3159731655_ _g3159831659_))))
                          (let ((_expr3163331730_ (reverse _expr3163131695_))
                                (_param3163431733_
                                 (reverse _param3163231697_)))
                            (if (gx#stx-pair/null? _tl3162331679_)
                                (if (fx>= (gx#stx-length _tl3162331679_) '0)
                                    (let ((_g35118_
                                           (gx#syntax-split-splice
                                            _tl3162331679_
                                            '0)))
                                      (begin
                                        (let ((_g35119_
                                               (values-count _g35118_)))
                                          (if (not (fx= _g35119_ 2))
                                              (error "Context expects 2 values"
                                                     _g35119_)))
                                        (let ((_target3164131736_
                                               (values-ref _g35118_ 0))
                                              (_tl3164331739_
                                               (values-ref _g35118_ 1)))
                                          (if (gx#stx-null? _tl3164331739_)
                                              (letrec ((_loop3164431742_
                                                        (lambda (_hd3164231746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3164831749_)
                  (if (gx#stx-pair? _hd3164231746_)
                      (let ((_e3164531752_ (gx#syntax-e _hd3164231746_)))
                        (let ((_lp-hd3164631756_ (##car _e3164531752_))
                              (_lp-tl3164731759_ (##cdr _e3164531752_)))
                          (_loop3164431742_
                           _lp-tl3164731759_
                           (cons _lp-hd3164631756_ _body3164831749_))))
                      (let ((_body3164931762_ (reverse _body3164831749_)))
                        ((lambda (_L31766_ _L31768_ _L31769_)
                           (let* ((_g3179231800_
                                   (lambda (_g3179331796_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g3179331796_)))
                                  (_g3179131920_
                                   (lambda (_g3179331804_)
                                     ((lambda (_L31807_)
                                        (let ()
                                          (let* ((_g3181931836_
                                                  (lambda (_g3182031832_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g3182031832_)))
                                                 (_g3181831900_
                                                  (lambda (_g3182031840_)
                                                    (if (gx#stx-pair/null?
                                                         _g3182031840_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g3182031840_)
                          '0)
                    (let ((_g35120_ (gx#syntax-split-splice _g3182031840_ '0)))
                      (begin
                        (let ((_g35121_ (values-count _g35120_)))
                          (if (not (fx= _g35121_ 2))
                              (error "Context expects 2 values" _g35121_)))
                        (let ((_target3182231843_ (values-ref _g35120_ 0))
                              (_tl3182431846_ (values-ref _g35120_ 1)))
                          (if (gx#stx-null? _tl3182431846_)
                              (letrec ((_loop3182531849_
                                        (lambda (_hd3182331853_
                                                 _arg3182931856_)
                                          (if (gx#stx-pair? _hd3182331853_)
                                              (let ((_e3182631859_
                                                     (gx#syntax-e
                                                      _hd3182331853_)))
                                                (let ((_lp-hd3182731863_
                                                       (##car _e3182631859_))
                                                      (_lp-tl3182831866_
                                                       (##cdr _e3182631859_)))
                                                  (_loop3182531849_
                                                   _lp-tl3182831866_
                                                   (cons _lp-hd3182731863_
                                                         _arg3182931856_))))
                                              (let ((_arg3183031869_
                                                     (reverse _arg3182931856_)))
                                                ((lambda (_L31873_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'call-with-parameters)
                                                             (cons _L31807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (begin
                             '#!void
                             (foldr (lambda (_g3189131894_ _g3189231897_)
                                      (cons _g3189131894_ _g3189231897_))
                                    '()
                                    _L31873_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _arg3183031869_))))))
                                (_loop3182531849_ _target3182231843_ '()))
                              (_g3181931836_ _g3182031840_)))))
                    (_g3181931836_ _g3182031840_))
                (_g3181931836_ _g3182031840_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3181831900_
                                             (foldr cons*
                                                    '()
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3190331906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3190431909_)
                        (cons _g3190331906_ _g3190431909_))
                      '()
                      _L31769_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3191131914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3191231917_)
                        (cons _g3191131914_ _g3191231917_))
                      '()
                      _L31768_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g3179331804_))))
                             (_g3179131920_
                              (gx#stx-wrap-source
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g3192331926_
                                                             _g3192431929_)
                                                      (cons _g3192331926_
                                                            _g3192431929_))
                                                    '()
                                                    _L31766_))))
                               (gx#stx-source _stx31593_)))))
                         _body3164931762_
                         _expr3163331730_
                         _param3163431733_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3164431742_
                                                 _target3164131736_
                                                 '()))
                                              (_g3159731655_ _g3159831659_)))))
                                    (_g3159731655_ _g3159831659_))
                                (_g3159731655_ _g3159831659_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3162731688_
                                                     _target3162431682_
                                                     '()
                                                     '()))
                                                  (_g3159731655_
                                                   _g3159831659_)))))
                                        (_g3159731655_ _g3159831659_))
                                    (_g3159731655_ _g3159831659_))))
                            (_g3159731655_ _g3159831659_))))
                    (_g3159731655_ _g3159831659_))))
             (_g3159532014_
              (lambda (_g3159831936_)
                (if (gx#stx-pair? _g3159831936_)
                    (let ((_e3160031939_ (gx#syntax-e _g3159831936_)))
                      (let ((_hd3160131943_ (##car _e3160031939_))
                            (_tl3160231946_ (##cdr _e3160031939_)))
                        (if (gx#stx-pair? _tl3160231946_)
                            (let ((_e3160331949_ (gx#syntax-e _tl3160231946_)))
                              (let ((_hd3160431953_ (##car _e3160331949_))
                                    (_tl3160531956_ (##cdr _e3160331949_)))
                                (if (gx#stx-null? _hd3160431953_)
                                    (if (gx#stx-pair/null? _tl3160531956_)
                                        (if (fx>= (gx#stx-length
                                                   _tl3160531956_)
                                                  '0)
                                            (let ((_g35122_
                                                   (gx#syntax-split-splice
                                                    _tl3160531956_
                                                    '0)))
                                              (begin
                                                (let ((_g35123_
                                                       (values-count
                                                        _g35122_)))
                                                  (if (not (fx= _g35123_ 2))
                                                      (error "Context expects 2 values"
                                                             _g35123_)))
                                                (let ((_target3160631959_
                                                       (values-ref _g35122_ 0))
                                                      (_tl3160831962_
                                                       (values-ref
                                                        _g35122_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl3160831962_)
                                                      (letrec ((_loop3160931965_
                                                                (lambda (_hd3160731969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body3161331972_)
                          (if (gx#stx-pair? _hd3160731969_)
                              (let ((_e3161031975_
                                     (gx#syntax-e _hd3160731969_)))
                                (let ((_lp-hd3161131979_ (##car _e3161031975_))
                                      (_lp-tl3161231982_
                                       (##cdr _e3161031975_)))
                                  (_loop3160931965_
                                   _lp-tl3161231982_
                                   (cons _lp-hd3161131979_ _body3161331972_))))
                              (let ((_body3161431985_
                                     (reverse _body3161331972_)))
                                ((lambda (_L31989_)
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons '()
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g3200532008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3200632011_)
                  (cons _g3200532008_ _g3200632011_))
                '()
                _L31989_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _body3161431985_))))))
                (_loop3160931965_ _target3160631959_ '()))
              (_g3159631932_ _g3159831936_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3159631932_ _g3159831936_))
                                        (_g3159631932_ _g3159831936_))
                                    (_g3159631932_ _g3159831936_))))
                            (_g3159631932_ _g3159831936_))))
                    (_g3159631932_ _g3159831936_)))))
        (_g3159532014_ _stx31593_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx32022_)
      (let* ((_g3202632050_
              (lambda (_g3202732046_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3202732046_)))
             (_g3202532135_
              (lambda (_g3202732054_)
                (if (gx#stx-pair? _g3202732054_)
                    (let ((_e3203032057_ (gx#syntax-e _g3202732054_)))
                      (let ((_hd3203132061_ (##car _e3203032057_))
                            (_tl3203232064_ (##cdr _e3203032057_)))
                        (if (gx#stx-pair? _tl3203232064_)
                            (let ((_e3203332067_ (gx#syntax-e _tl3203232064_)))
                              (let ((_hd3203432071_ (##car _e3203332067_))
                                    (_tl3203532074_ (##cdr _e3203332067_)))
                                (if (gx#stx-pair/null? _tl3203532074_)
                                    (if (fx>= (gx#stx-length _tl3203532074_)
                                              '0)
                                        (let ((_g35124_
                                               (gx#syntax-split-splice
                                                _tl3203532074_
                                                '0)))
                                          (begin
                                            (let ((_g35125_
                                                   (values-count _g35124_)))
                                              (if (not (fx= _g35125_ 2))
                                                  (error "Context expects 2 values"
                                                         _g35125_)))
                                            (let ((_target3203632077_
                                                   (values-ref _g35124_ 0))
                                                  (_tl3203832080_
                                                   (values-ref _g35124_ 1)))
                                              (if (gx#stx-null? _tl3203832080_)
                                                  (letrec ((_loop3203932083_
                                                            (lambda (_hd3203732087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3204332090_)
                      (if (gx#stx-pair? _hd3203732087_)
                          (let ((_e3204032093_ (gx#syntax-e _hd3203732087_)))
                            (let ((_lp-hd3204132097_ (##car _e3204032093_))
                                  (_lp-tl3204232100_ (##cdr _e3204032093_)))
                              (_loop3203932083_
                               _lp-tl3204232100_
                               (cons _lp-hd3204132097_ _body3204332090_))))
                          (let ((_body3204432103_ (reverse _body3204332090_)))
                            ((lambda (_L32107_ _L32109_)
                               (if (gx#identifier? _L32109_)
                                   (cons (gx#datum->syntax '#f 'call/cc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L32109_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g3212632129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g3212732132_)
                              (cons _g3212632129_ _g3212732132_))
                            '()
                            _L32107_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g3202632050_ _g3202732054_)))
                             _body3204432103_
                             _hd3203432071_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3203932083_
                                                     _target3203632077_
                                                     '()))
                                                  (_g3202632050_
                                                   _g3202732054_)))))
                                        (_g3202632050_ _g3202732054_))
                                    (_g3202632050_ _g3202732054_))))
                            (_g3202632050_ _g3202732054_))))
                    (_g3202632050_ _g3202732054_)))))
        (_g3202532135_ _$stx32022_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx32140_)
      (let* ((_g3214432168_
              (lambda (_g3214532164_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3214532164_)))
             (_g3214332253_
              (lambda (_g3214532172_)
                (if (gx#stx-pair? _g3214532172_)
                    (let ((_e3214832175_ (gx#syntax-e _g3214532172_)))
                      (let ((_hd3214932179_ (##car _e3214832175_))
                            (_tl3215032182_ (##cdr _e3214832175_)))
                        (if (gx#stx-pair? _tl3215032182_)
                            (let ((_e3215132185_ (gx#syntax-e _tl3215032182_)))
                              (let ((_hd3215232189_ (##car _e3215132185_))
                                    (_tl3215332192_ (##cdr _e3215132185_)))
                                (if (gx#stx-pair/null? _tl3215332192_)
                                    (if (fx>= (gx#stx-length _tl3215332192_)
                                              '0)
                                        (let ((_g35126_
                                               (gx#syntax-split-splice
                                                _tl3215332192_
                                                '0)))
                                          (begin
                                            (let ((_g35127_
                                                   (values-count _g35126_)))
                                              (if (not (fx= _g35127_ 2))
                                                  (error "Context expects 2 values"
                                                         _g35127_)))
                                            (let ((_target3215432195_
                                                   (values-ref _g35126_ 0))
                                                  (_tl3215632198_
                                                   (values-ref _g35126_ 1)))
                                              (if (gx#stx-null? _tl3215632198_)
                                                  (letrec ((_loop3215732201_
                                                            (lambda (_hd3215532205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3216132208_)
                      (if (gx#stx-pair? _hd3215532205_)
                          (let ((_e3215832211_ (gx#syntax-e _hd3215532205_)))
                            (let ((_lp-hd3215932215_ (##car _e3215832211_))
                                  (_lp-tl3216032218_ (##cdr _e3215832211_)))
                              (_loop3215732201_
                               _lp-tl3216032218_
                               (cons _lp-hd3215932215_ _body3216132208_))))
                          (let ((_body3216232221_ (reverse _body3216132208_)))
                            ((lambda (_L32225_ _L32227_)
                               (if (gx#identifier? _L32227_)
                                   (cons (gx#datum->syntax '#f 'call/esc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L32227_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g3224432247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g3224532250_)
                              (cons _g3224432247_ _g3224532250_))
                            '()
                            _L32225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g3214432168_ _g3214532172_)))
                             _body3216232221_
                             _hd3215232189_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3215732201_
                                                     _target3215432195_
                                                     '()))
                                                  (_g3214432168_
                                                   _g3214532172_)))))
                                        (_g3214432168_ _g3214532172_))
                                    (_g3214432168_ _g3214532172_))))
                            (_g3214432168_ _g3214532172_))))
                    (_g3214432168_ _g3214532172_)))))
        (_g3214332253_ _$stx32140_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx32258_)
      (let* ((_g3226232290_
              (lambda (_g3226332286_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3226332286_)))
             (_g3226132389_
              (lambda (_g3226332294_)
                (if (gx#stx-pair? _g3226332294_)
                    (let ((_e3226732297_ (gx#syntax-e _g3226332294_)))
                      (let ((_hd3226832301_ (##car _e3226732297_))
                            (_tl3226932304_ (##cdr _e3226732297_)))
                        (if (gx#stx-pair? _tl3226932304_)
                            (let ((_e3227032307_ (gx#syntax-e _tl3226932304_)))
                              (let ((_hd3227132311_ (##car _e3227032307_))
                                    (_tl3227232314_ (##cdr _e3227032307_)))
                                (if (gx#stx-pair? _tl3227232314_)
                                    (let ((_e3227332317_
                                           (gx#syntax-e _tl3227232314_)))
                                      (let ((_hd3227432321_
                                             (##car _e3227332317_))
                                            (_tl3227532324_
                                             (##cdr _e3227332317_)))
                                        (if (gx#stx-pair/null? _tl3227532324_)
                                            (if (fx>= (gx#stx-length
                                                       _tl3227532324_)
                                                      '0)
                                                (let ((_g35128_
                                                       (gx#syntax-split-splice
                                                        _tl3227532324_
                                                        '0)))
                                                  (begin
                                                    (let ((_g35129_
                                                           (values-count
                                                            _g35128_)))
                                                      (if (not (fx= _g35129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g35129_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3227632327_
                                                           (values-ref
                                                            _g35128_
                                                            0))
                                                          (_tl3227832330_
                                                           (values-ref
                                                            _g35128_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl3227832330_)
                                                          (letrec ((_loop3227932333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3227732337_ _rest3228332340_)
                              (if (gx#stx-pair? _hd3227732337_)
                                  (let ((_e3228032343_
                                         (gx#syntax-e _hd3227732337_)))
                                    (let ((_lp-hd3228132347_
                                           (##car _e3228032343_))
                                          (_lp-tl3228232350_
                                           (##cdr _e3228032343_)))
                                      (_loop3227932333_
                                       _lp-tl3228232350_
                                       (cons _lp-hd3228132347_
                                             _rest3228332340_))))
                                  (let ((_rest3228432353_
                                         (reverse _rest3228332340_)))
                                    ((lambda (_L32357_ _L32359_ _L32360_)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'with-unwind-protect)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons _L32360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L32359_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g3238032383_
                                                     _g3238132386_)
                                              (cons _g3238032383_
                                                    _g3238132386_))
                                            '()
                                            _L32357_)))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _rest3228432353_
                                     _hd3227432321_
                                     _hd3227132311_))))))
                    (_loop3227932333_ _target3227632327_ '()))
                  (_g3226232290_ _g3226332294_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3226232290_ _g3226332294_))
                                            (_g3226232290_ _g3226332294_))))
                                    (_g3226232290_ _g3226332294_))))
                            (_g3226232290_ _g3226332294_))))
                    (_g3226232290_ _g3226332294_)))))
        (_g3226132389_ _$stx32258_)))))
