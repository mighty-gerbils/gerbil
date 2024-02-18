(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1708271175)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp194258 (list gx#expander::t))
            (__tmp194256
             (let ((__tmp194257
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp194257 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp194258
         '(id depth)
         __tmp194256
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args190186_
        (apply make-instance gx#syntax-pattern::t _$args190186_)))
    (define gx#syntax-pattern-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern::apply-macro-expander
      (lambda (_self190183_ _stx190184_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx190184_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx189665_)
        (letrec ((_generate189667_
                  (lambda (_e189894_)
                    (letrec ((_BUG189896_
                              (lambda (_q190058_)
                                (error '"BUG: syntax; generate"
                                       _stx189665_
                                       _e189894_
                                       _q190058_)))
                             (_local-pattern-e189897_
                              (lambda (_pat190056_)
                                (let ((__tmp194259
                                       (##structure-ref
                                        _pat190056_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp194259))))
                             (_getvar189898_
                              (lambda (_q190053_ _vars190054_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q190053_
                                           _vars190054_
                                           _BUG189896_))))
                             (_getarg189899_
                              (lambda (_arg190019_ _vars190020_)
                                (let* ((_arg190021190028_ _arg190019_)
                                       (_E190023190032_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg190021190028_)))
                                       (_K190024190041_
                                        (lambda (_e190035_ _tag190036_)
                                          (let ((_$e190038_ _tag190036_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e190038_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar189898_
                                                   _e190035_
                                                   _vars190020_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e190038_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e189897_
                                                       _e190035_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG189896_
                                                       _arg190019_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg190021190028_))
                                      (let ((_hd190025190044_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg190021190028_)))
                                            (_tl190026190046_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg190021190028_))))
                                        (let* ((_tag190049_ _hd190025190044_)
                                               (_e190051_ _tl190026190046_))
                                          (declare (not safe))
                                          (_K190024190041_
                                           _e190051_
                                           _tag190049_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E190023190032_)))))))
                      (let _recur189901_ ((_e189903_ _e189894_)
                                          (_vars189904_ '()))
                        (let* ((_e189905189912_ _e189903_)
                               (_E189907189916_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e189905189912_)))
                               (_K189908190007_
                                (lambda (_body189919_ _tag189920_)
                                  (let ((_$e189922_ _tag189920_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e189922_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body189919_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e189922_))
                                            (let ((_id189925_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body189919_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id189925_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks189927_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id189925_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks189927_))
                                                        (let ((__tmp194260
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body189919_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp194260))
                (let ((__tmp194262
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body189919_)))
                      (__tmp194261
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body189919_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp194262
                   __tmp194261
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id189925_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body189919_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG189896_
                                                         _e189903_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e189922_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e189897_
                                                   _body189919_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e189922_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar189898_
                                                       _body189919_
                                                       _vars189904_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e189922_))
                                                        (let ((__tmp194265
                                                               (let ((__tmp194266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body189919_)))
                         (declare (not safe))
                         (_recur189901_ __tmp194266 _vars189904_)))
                      (__tmp194263
                       (let ((__tmp194264 (cdr _body189919_)))
                         (declare (not safe))
                         (_recur189901_ __tmp194264 _vars189904_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp194265 __tmp194263))
                (if (let () (declare (not safe)) (eq? 'vector _$e189922_))
                    (let ((__tmp194267
                           (let ()
                             (declare (not safe))
                             (_recur189901_ _body189919_ _vars189904_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp194267))
                    (if (let () (declare (not safe)) (eq? 'box _$e189922_))
                        (let ((__tmp194268
                               (let ()
                                 (declare (not safe))
                                 (_recur189901_ _body189919_ _vars189904_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp194268))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e189922_))
                            (let* ((_body189928189939_ _body189919_)
                                   (_E189930189943_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body189928189939_)))
                                   (_K189931189981_
                                    (lambda (_args189946_
                                             _iv189947_
                                             _hd189948_
                                             _depth189949_)
                                      (let* ((_targets189955_
                                              (map (lambda (_g189950189952_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg189899_
                                                        _g189950189952_
                                                        _vars189904_)))
                                                   _args189946_))
                                             (_fold-in189957_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args189946_)))
                                             (_fold-out189959_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args189961_
                                              (let ((__tmp194269
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out189959_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp194269
                                                        _fold-in189957_)))
                                             (_lambda-body189978_
                                              (if (fx> _depth189949_ '1)
                                                  (let ((_r-args189969_
                                                         (map (lambda (_arg189963_)
                                                                (let ((__tmp194270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg189963_)))
                          (declare (not safe))
                          (cons 'ref __tmp194270)))
                      _args189946_))
                (_r-vars189970_
                 (let ((__tmp194271
                        (lambda (_arg189965_ _var189966_ _r189967_)
                          (let ((__tmp194272
                                 (let ((__tmp194273 (cdr _arg189965_)))
                                   (declare (not safe))
                                   (cons __tmp194273 _var189966_))))
                            (declare (not safe))
                            (cons __tmp194272 _r189967_)))))
                   (declare (not safe))
                   (foldr2 __tmp194271
                           _vars189904_
                           _args189946_
                           _fold-in189957_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp194274
                                                           (let ((__tmp194275
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp194279
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth189949_ '1)))
                                (__tmp194276
                                 (let ((__tmp194277
                                        (let ((__tmp194278
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out189959_))))
                                          (declare (not safe))
                                          (cons __tmp194278 _r-args189969_))))
                                   (declare (not safe))
                                   (cons _hd189948_ __tmp194277))))
                            (declare (not safe))
                            (cons __tmp194279 __tmp194276))))
                     (declare (not safe))
                     (cons 'splice __tmp194275))))
              (declare (not safe))
              (_recur189901_ __tmp194274 _r-vars189970_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars189976_
                                                          (let ((__tmp194280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg189972_ _var189973_ _r189974_)
                           (let ((__tmp194281
                                  (let ((__tmp194282 (cdr _arg189972_)))
                                    (declare (not safe))
                                    (cons __tmp194282 _var189973_))))
                             (declare (not safe))
                             (cons __tmp194281 _r189974_)))))
                    (declare (not safe))
                    (foldr2 __tmp194280
                            _vars189904_
                            _args189946_
                            _fold-in189957_)))
                 (__tmp194283
                  (let ()
                    (declare (not safe))
                    (_recur189901_ _hd189948_ _hd-vars189976_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp194283
                                                     _fold-out189959_)))))
                                        (let ((__tmp194287
                                               (if (fx> (length _targets189955_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets189955_))
                                                   '#!void))
                                              (__tmp194284
                                               (let ((__tmp194286
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args189961_
                                                         _lambda-body189978_)))
                                                     (__tmp194285
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur189901_
                                                         _iv189947_
                                                         _vars189904_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp194286
                                                  __tmp194285
                                                  _targets189955_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp194287
                                           __tmp194284))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body189928189939_))
                                  (let ((_hd189932189984_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body189928189939_)))
                                        (_tl189933189986_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body189928189939_))))
                                    (let ((_depth189989_ _hd189932189984_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl189933189986_))
                                          (let ((_hd189934189991_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl189933189986_)))
                                                (_tl189935189993_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl189933189986_))))
                                            (let ((_hd189996_
                                                   _hd189934189991_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl189935189993_))
                                                  (let ((_hd189936189998_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl189935189993_)))
                                                        (_tl189937190000_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl189935189993_))))
                                                    (let* ((_iv190003_
                                                            _hd189936189998_)
                                                           (_args190005_
                                                            _tl189937190000_))
                                                      (declare (not safe))
                                                      (_K189931189981_
                                                       _args190005_
                                                       _iv190003_
                                                       _hd189996_
                                                       _depth189989_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E189930189943_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E189930189943_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E189930189943_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e189922_))
                                _body189919_
                                (let ()
                                  (declare (not safe))
                                  (_BUG189896_ _e189903_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e189905189912_))
                              (let ((_hd189909190010_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e189905189912_)))
                                    (_tl189910190012_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e189905189912_))))
                                (let* ((_tag190015_ _hd189909190010_)
                                       (_body190017_ _tl189910190012_))
                                  (declare (not safe))
                                  (_K189908190007_ _body190017_ _tag190015_)))
                              (let ()
                                (declare (not safe))
                                (_E189907189916_))))))))
                 (_parse189668_
                  (lambda (_e189709_)
                    (letrec ((_make-cons189711_
                              (lambda (_hd189886_ _tl189887_)
                                (let ((_g194288_ _hd189886_)
                                      (_g194290_ _tl189887_))
                                  (begin
                                    (let ((_g194289_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g194288_)
                                                 (##vector-length _g194288_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g194289_ 2)))
                                          (error "Context expects 2 values"
                                                 _g194289_)))
                                    (let ((_g194291_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g194290_)
                                                 (##vector-length _g194290_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g194291_ 2)))
                                          (error "Context expects 2 values"
                                                 _g194291_)))
                                    (let ((_hd-e189889_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g194288_ 0)))
                                          (_hd-vars189890_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g194288_ 1))))
                                      (let ((_tl-e189891_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g194290_ 0)))
                                            (_tl-vars189892_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g194290_ 1))))
                                        (values (let ((__tmp194292
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e189889_
                                                               _tl-e189891_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp194292))
                                                (append _hd-vars189890_
                                                        _tl-vars189892_))))))))
                             (_make-splice189712_
                              (lambda (_where189825_
                                       _depth189826_
                                       _hd189827_
                                       _tl189828_)
                                (let ((_g194293_ _hd189827_)
                                      (_g194295_ _tl189828_))
                                  (begin
                                    (let ((_g194294_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g194293_)
                                                 (##vector-length _g194293_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g194294_ 2)))
                                          (error "Context expects 2 values"
                                                 _g194294_)))
                                    (let ((_g194296_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g194295_)
                                                 (##vector-length _g194295_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g194296_ 2)))
                                          (error "Context expects 2 values"
                                                 _g194296_)))
                                    (let ((_hd-e189830_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g194293_ 0)))
                                          (_hd-vars189831_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g194293_ 1))))
                                      (let ((_tl-e189832_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g194295_ 0)))
                                            (_tl-vars189833_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g194295_ 1))))
                                        (let _lp189835_ ((_rest189837_
                                                          _hd-vars189831_)
                                                         (_targets189838_ '())
                                                         (_vars189839_
                                                          _tl-vars189833_))
                                          (let* ((_rest189840189850_
                                                  _rest189837_)
                                                 (_else189842189858_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets189838_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx189665_
                                                           _where189825_))
                                                        (values (let ((__tmp194297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp194298
                                      (let ((__tmp194299
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e189832_
                                                     _targets189838_))))
                                        (declare (not safe))
                                        (cons _hd-e189830_ __tmp194299))))
                                 (declare (not safe))
                                 (cons _depth189826_ __tmp194298))))
                          (declare (not safe))
                          (cons 'splice __tmp194297))
                        _vars189839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K189844189867_
                                                  (lambda (_rest189861_
                                                           _hd-pat189862_
                                                           _hd-depth*189863_)
                                                    (let ((_hd-depth189865_
                                                           (fx- _hd-depth*189863_
                                                                _depth189826_)))
                                                      (if (fxpositive?
                                                           _hd-depth189865_)
                                                          (let ((__tmp194302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp194303
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat189862_))))
                           (declare (not safe))
                           (cons __tmp194303 _targets189838_)))
                        (__tmp194300
                         (let ((__tmp194301
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth189865_ _hd-pat189862_))))
                           (declare (not safe))
                           (cons __tmp194301 _vars189839_))))
                    (declare (not safe))
                    (_lp189835_ _rest189861_ __tmp194302 __tmp194300))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth189865_))
                      (let ((__tmp194304
                             (let ((__tmp194305
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat189862_))))
                               (declare (not safe))
                               (cons __tmp194305 _targets189838_))))
                        (declare (not safe))
                        (_lp189835_ _rest189861_ __tmp194304 _vars189839_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx189665_
                         _where189825_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest189840189850_))
                                                (let ((_hd189845189870_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest189840189850_)))
                                                      (_tl189846189872_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest189840189850_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd189845189870_))
                                                      (let ((_hd189847189875_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd189845189870_)))
                    (_tl189848189877_
                     (let () (declare (not safe)) (##cdr _hd189845189870_))))
                (let* ((_hd-depth*189880_ _hd189847189875_)
                       (_hd-pat189882_ _tl189848189877_)
                       (_rest189884_ _tl189846189872_))
                  (declare (not safe))
                  (_K189844189867_
                   _rest189884_
                   _hd-pat189882_
                   _hd-depth*189880_)))
              (let () (declare (not safe)) (_else189842189858_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else189842189858_)))))))))))
                             (_recur189713_
                              (lambda (_e189718_ _is-e?189719_)
                                (if (_is-e?189719_ _e189718_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx189665_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e189718_))
                                        (let* ((_pat189721_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e189718_)))
                                               (_depth189723_
                                                (##structure-ref
                                                 _pat189721_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth189723_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat189721_))
                                                      (let ((__tmp194306
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth189723_ _pat189721_))))
                (declare (not safe))
                (cons __tmp194306 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat189721_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e189718_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e189718_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e189718_))
                                                (let* ((_e189725189732_
                                                        _e189718_)
                                                       (_E189727189736_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e189725189732_))))
                                                       (_E189726189815_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e189725189732_))
                      (let ((_e189728189740_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e189725189732_))))
                        (let ((_hd189729189743_
                               (let ()
                                 (declare (not safe))
                                 (##car _e189728189740_)))
                              (_tl189730189745_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e189728189740_))))
                          (let* ((_hd189748_ _hd189729189743_)
                                 (_rest189750_ _tl189730189745_))
                            (if '#t
                                (if (_is-e?189719_ _hd189748_)
                                    (let* ((_e189751189758_ _rest189750_)
                                           (_E189753189762_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx189665_
                                                 _e189718_))))
                                           (_E189752189776_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e189751189758_))
                                                  (let ((_e189754189766_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e189751189758_))))
                                                    (let ((_hd189755189769_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e189754189766_)))
                                                          (_tl189756189771_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e189754189766_))))
                                                      (let ((_rest189774_
                                                             _hd189755189769_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl189756189771_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur189713_ _rest189774_ false))
                        (let () (declare (not safe)) (_E189753189762_)))
                    (let () (declare (not safe)) (_E189753189762_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E189753189762_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E189752189776_)))
                                    (let _lp189780_ ((_rest189782_
                                                      _rest189750_)
                                                     (_depth189783_ '0))
                                      (let* ((_e189784189791_ _rest189782_)
                                             (_E189786189795_
                                              (lambda ()
                                                (if (fxpositive? _depth189783_)
                                                    (let ((__tmp194308
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur189713_
                                                              _hd189748_
                                                              _is-e?189719_)))
                                                          (__tmp194307
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur189713_
                                                              _rest189782_
                                                              _is-e?189719_))))
                                                      (declare (not safe))
                                                      (_make-splice189712_
                                                       _e189718_
                                                       _depth189783_
                                                       __tmp194308
                                                       __tmp194307))
                                                    (let ((__tmp194310
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur189713_
                                                              _hd189748_
                                                              _is-e?189719_)))
                                                          (__tmp194309
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur189713_
                                                              _rest189782_
                                                              _is-e?189719_))))
                                                      (declare (not safe))
                                                      (_make-cons189711_
                                                       __tmp194310
                                                       __tmp194309)))))
                                             (_E189785189811_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e189784189791_))
                                                    (let ((_e189787189799_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e189784189791_))))
                                                      (let ((_hd189788189802_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e189787189799_)))
                    (_tl189789189804_
                     (let () (declare (not safe)) (##cdr _e189787189799_))))
                (let* ((_rest-hd189807_ _hd189788189802_)
                       (_rest-tl189809_ _tl189789189804_))
                  (if '#t
                      (if (_is-e?189719_ _rest-hd189807_)
                          (let ((__tmp194311
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth189783_ '1))))
                            (declare (not safe))
                            (_lp189780_ _rest-tl189809_ __tmp194311))
                          (if (fxpositive? _depth189783_)
                              (let ((__tmp194313
                                     (let ()
                                       (declare (not safe))
                                       (_recur189713_
                                        _hd189748_
                                        _is-e?189719_)))
                                    (__tmp194312
                                     (let ()
                                       (declare (not safe))
                                       (_recur189713_
                                        _rest189782_
                                        _is-e?189719_))))
                                (declare (not safe))
                                (_make-splice189712_
                                 _e189718_
                                 _depth189783_
                                 __tmp194313
                                 __tmp194312))
                              (let ((__tmp194315
                                     (let ()
                                       (declare (not safe))
                                       (_recur189713_
                                        _hd189748_
                                        _is-e?189719_)))
                                    (__tmp194314
                                     (let ()
                                       (declare (not safe))
                                       (_recur189713_
                                        _rest189782_
                                        _is-e?189719_))))
                                (declare (not safe))
                                (_make-cons189711_ __tmp194315 __tmp194314))))
                      (let () (declare (not safe)) (_E189786189795_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E189786189795_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E189785189811_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E189727189736_))))))
                      (let () (declare (not safe)) (_E189727189736_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E189726189815_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e189718_))
                                                    (let ((_g194316_
                                                           (let ((__tmp194318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e189718_)))))
                     (declare (not safe))
                     (_recur189713_ __tmp194318 _is-e?189719_))))
              (begin
                (let ((_g194317_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g194316_)
                             (##vector-length _g194316_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g194317_ 2)))
                      (error "Context expects 2 values" _g194317_)))
                (let ((_e189819_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g194316_ 0)))
                      (_vars189820_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g194316_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e189819_))
                          _vars189820_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e189718_))
                                                        (let ((_g194319_
                                                               (let ((__tmp194321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e189718_)))))
                         (declare (not safe))
                         (_recur189713_ __tmp194321 _is-e?189719_))))
                  (begin
                    (let ((_g194320_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g194319_)
                                 (##vector-length _g194319_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g194320_ 2)))
                          (error "Context expects 2 values" _g194320_)))
                    (let ((_e189822_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g194319_ 0)))
                          (_vars189823_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g194319_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e189822_))
                              _vars189823_))))
                (values (let () (declare (not safe)) (cons 'datum _e189718_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g194322_
                             (let ()
                               (declare (not safe))
                               (_recur189713_ _e189709_ gx#ellipsis?))))
                        (begin
                          (let ((_g194323_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g194322_)
                                       (##vector-length _g194322_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g194323_ 2)))
                                (error "Context expects 2 values" _g194323_)))
                          (let ((_tree189715_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g194322_ 0)))
                                (_vars189716_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g194322_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars189716_))
                                _tree189715_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx189665_
                                   _vars189716_))))))))))
          (let* ((_e189669189679_ _stx189665_)
                 (_E189671189683_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx189665_))))
                 (_E189670189705_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e189669189679_))
                        (let ((_e189672189687_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e189669189679_))))
                          (let ((_hd189673189690_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e189672189687_)))
                                (_tl189674189692_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e189672189687_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl189674189692_))
                                (let ((_e189675189695_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl189674189692_))))
                                  (let ((_hd189676189698_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e189675189695_)))
                                        (_tl189677189700_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e189675189695_))))
                                    (let ((_form189703_ _hd189676189698_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl189677189700_))
                                          (if '#t
                                              (let ((__tmp194325
                                                     (let ((__tmp194326
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse189668_
                                                               _form189703_))))
                                                       (declare (not safe))
                                                       (_generate189667_
                                                        __tmp194326)))
                                                    (__tmp194324
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx189665_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp194325
                                                 __tmp194324))
                                              (let ()
                                                (declare (not safe))
                                                (_E189671189683_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E189671189683_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E189671189683_)))))
                        (let () (declare (not safe)) (_E189671189683_))))))
            (let () (declare (not safe)) (_E189670189705_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx188929_
               _identifier=?188930_
               _unwrap-e188931_
               _wrap-e188932_)
        (letrec ((_generate-bindings188934_
                  (lambda (_target189529_
                           _ids189530_
                           _clauses189531_
                           _clause-ids189532_
                           _E189533_)
                    (letrec ((_generate1189535_
                              (lambda (_clause189632_
                                       _clause-id189633_
                                       _E189634_)
                                (let ((__tmp194331
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id189633_ '())))
                                      (__tmp194327
                                       (let ((__tmp194328
                                              (let ((__tmp194330
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target189529_
                                                             '())))
                                                    (__tmp194329
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause188936_
                                                        _target189529_
                                                        _ids189530_
                                                        _clause189632_
                                                        _E189634_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp194330
                                                 __tmp194329))))
                                         (declare (not safe))
                                         (cons __tmp194328 '()))))
                                  (declare (not safe))
                                  (cons __tmp194331 __tmp194327)))))
                      (let _lp189537_ ((_rest189539_ _clauses189531_)
                                       (_rest-ids189540_ _clause-ids189532_)
                                       (_bindings189541_ '()))
                        (let* ((_rest189542189550_ _rest189539_)
                               (_else189544189558_
                                (lambda () _bindings189541_))
                               (_K189546189620_
                                (lambda (_rest189561_ _clause189562_)
                                  (let* ((_rest-ids189563189570_
                                          _rest-ids189540_)
                                         (_E189565189574_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids189563189570_)))
                                         (_K189566189608_
                                          (lambda (_rest-ids189577_
                                                   _clause-id189578_)
                                            (let* ((_rest-ids189579189587_
                                                    _rest-ids189577_)
                                                   (_else189581189595_
                                                    (lambda ()
                                                      (let ((__tmp194332
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1189535_
                        _clause189562_
                        _clause-id189578_
                        _E189533_))))
                (declare (not safe))
                (cons __tmp194332 _bindings189541_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K189583189600_
                                                    (lambda (_next-clause-id189598_)
                                                      (let ((__tmp194333
                                                             (let ((__tmp194334
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1189535_
                               _clause189562_
                               _clause-id189578_
                               _next-clause-id189598_))))
                       (declare (not safe))
                       (cons __tmp194334 _bindings189541_))))
                (declare (not safe))
                (_lp189537_ _rest189561_ _rest-ids189577_ __tmp194333)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids189579189587_))
                                                  (let* ((_hd189584189603_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids189579189587_)))
                                                         (_next-clause-id189606_
                                                          _hd189584189603_))
                                                    (declare (not safe))
                                                    (_K189583189600_
                                                     _next-clause-id189606_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else189581189595_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids189563189570_))
                                        (let ((_hd189567189611_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids189563189570_)))
                                              (_tl189568189613_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids189563189570_))))
                                          (let* ((_clause-id189616_
                                                  _hd189567189611_)
                                                 (_rest-ids189618_
                                                  _tl189568189613_))
                                            (declare (not safe))
                                            (_K189566189608_
                                             _rest-ids189618_
                                             _clause-id189616_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E189565189574_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest189542189550_))
                              (let ((_hd189547189623_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest189542189550_)))
                                    (_tl189548189625_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest189542189550_))))
                                (let* ((_clause189628_ _hd189547189623_)
                                       (_rest189630_ _tl189548189625_))
                                  (declare (not safe))
                                  (_K189546189620_
                                   _rest189630_
                                   _clause189628_)))
                              (let ()
                                (declare (not safe))
                                (_else189544189558_))))))))
                 (_generate-body188935_
                  (lambda (_bindings189489_ _body189490_)
                    (let _recur189492_ ((_rest189494_ _bindings189489_))
                      (let* ((_rest189495189503_ _rest189494_)
                             (_else189497189511_ (lambda () _body189490_))
                             (_K189499189517_
                              (lambda (_rest189514_ _hd189515_)
                                (let ((__tmp194336
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd189515_ '())))
                                      (__tmp194335
                                       (let ()
                                         (declare (not safe))
                                         (_recur189492_ _rest189514_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp194336
                                   __tmp194335)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest189495189503_))
                            (let ((_hd189500189520_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest189495189503_)))
                                  (_tl189501189522_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest189495189503_))))
                              (let* ((_hd189525_ _hd189500189520_)
                                     (_rest189527_ _tl189501189522_))
                                (declare (not safe))
                                (_K189499189517_ _rest189527_ _hd189525_)))
                            (let ()
                              (declare (not safe))
                              (_else189497189511_)))))))
                 (_generate-clause188936_
                  (lambda (_target189352_ _ids189353_ _clause189354_ _E189355_)
                    (letrec ((_generate1189357_
                              (lambda (_hd189444_ _fender189445_ _body189446_)
                                (let ((_g194337_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause188938_
                                          _hd189444_
                                          _ids189353_))))
                                  (begin
                                    (let ((_g194338_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g194337_)
                                                 (##vector-length _g194337_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g194338_ 2)))
                                          (error "Context expects 2 values"
                                                 _g194338_)))
                                    (let ((_e189448_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g194337_ 0)))
                                          (_mvars189449_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g194337_ 1))))
                                      (let* ((_pvars189451_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars189449_))))
                                             (_E189453_
                                              (let ((__tmp194339
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target189352_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E189355_ __tmp194339)))
                                             (_K189486_
                                              (let ((__tmp194340
                                                     (let ((__tmp194342
                                                            (map (lambda (_mvar189455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar189456_)
                           (let* ((_mvar189457189464_ _mvar189455_)
                                  (_E189459189468_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar189457189464_)))
                                  (_K189460189474_
                                   (lambda (_depth189471_ _id189472_)
                                     (let ((__tmp194343
                                            (let ((__tmp194344
                                                   (let ((__tmp194346
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id189472_)))
                                                         (__tmp194345
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar189456_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp194346
                                                      __tmp194345
                                                      _depth189471_))))
                                              (declare (not safe))
                                              (cons __tmp194344 '()))))
                                       (declare (not safe))
                                       (cons _id189472_ __tmp194343)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar189457189464_))
                                 (let ((_hd189461189477_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar189457189464_)))
                                       (_tl189462189479_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar189457189464_))))
                                   (let* ((_id189482_ _hd189461189477_)
                                          (_depth189484_ _tl189462189479_))
                                     (declare (not safe))
                                     (_K189460189474_
                                      _depth189484_
                                      _id189482_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E189459189468_)))))
                         _mvars189449_
                         _pvars189451_))
                   (__tmp194341
                    (if (let () (declare (not safe)) (eq? _fender189445_ '#t))
                        _body189446_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender189445_
                           _body189446_
                           _E189453_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp194342 __tmp194341))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars189451_
                                                 __tmp194340))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match188937_
                                           _hd189444_
                                           _target189352_
                                           _e189448_
                                           _mvars189449_
                                           _K189486_
                                           _E189453_)))))))))
                      (let* ((_e189358189378_ _clause189354_)
                             (_E189367189382_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e189358189378_))))
                             (_E189360189416_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e189358189378_))
                                    (let ((_e189368189386_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e189358189378_))))
                                      (let ((_hd189369189389_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e189368189386_)))
                                            (_tl189370189391_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e189368189386_))))
                                        (let ((_hd189394_ _hd189369189389_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl189370189391_))
                                              (let ((_e189371189396_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl189370189391_))))
                                                (let ((_hd189372189399_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e189371189396_)))
                                                      (_tl189373189401_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e189371189396_))))
                                                  (let ((_fender189404_
                                                         _hd189372189399_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl189373189401_))
                                                        (let ((_e189374189406_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl189373189401_))))
                  (let ((_hd189375189409_
                         (let () (declare (not safe)) (##car _e189374189406_)))
                        (_tl189376189411_
                         (let ()
                           (declare (not safe))
                           (##cdr _e189374189406_))))
                    (let ((_body189414_ _hd189375189409_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl189376189411_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1189357_
                                 _hd189394_
                                 _fender189404_
                                 _body189414_))
                              (let () (declare (not safe)) (_E189367189382_)))
                          (let () (declare (not safe)) (_E189367189382_))))))
                (let () (declare (not safe)) (_E189367189382_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E189367189382_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E189367189382_)))))
                             (_E189359189440_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e189358189378_))
                                    (let ((_e189361189420_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e189358189378_))))
                                      (let ((_hd189362189423_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e189361189420_)))
                                            (_tl189363189425_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e189361189420_))))
                                        (let ((_hd189428_ _hd189362189423_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl189363189425_))
                                              (let ((_e189364189430_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl189363189425_))))
                                                (let ((_hd189365189433_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e189364189430_)))
                                                      (_tl189366189435_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e189364189430_))))
                                                  (let ((_body189438_
                                                         _hd189365189433_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl189366189435_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1189357_
                                                               _hd189428_
                                                               '#t
                                                               _body189438_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E189360189416_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E189360189416_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E189360189416_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E189360189416_))))))
                        (let () (declare (not safe)) (_E189359189440_))))))
                 (_generate-match188937_
                  (lambda (_where189101_
                           _target189102_
                           _hd189103_
                           _mvars189104_
                           _K189105_
                           _E189106_)
                    (letrec ((_BUG189108_
                              (lambda (_q189350_)
                                (error '"BUG: syntax-case; generate"
                                       _stx188929_
                                       _hd189103_
                                       _q189350_)))
                             (_recur189109_
                              (lambda (_e189200_
                                       _vars189201_
                                       _target189202_
                                       _E189203_
                                       _k189204_)
                                (let* ((_e189205189212_ _e189200_)
                                       (_E189207189216_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e189205189212_)))
                                       (_K189208189338_
                                        (lambda (_body189219_ _tag189220_)
                                          (let ((_$e189222_ _tag189220_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e189222_))
                                                (_k189204_ _vars189201_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e189222_))
                                                    (let ((__tmp194351
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target189202_)))
                                                          (__tmp194347
                                                           (let ((__tmp194349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp194350
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e188932_
                                    _body189219_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?188930_
                             __tmp194350
                             _target189202_)))
                         (__tmp194348 (_k189204_ _vars189201_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp194349 __tmp194348 _E189203_))))
              (declare (not safe))
              (gx#core-list 'if __tmp194351 __tmp194347 _E189203_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e189222_))
                                                        (_k189204_
                                                         (let ((__tmp194352
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body189219_ _target189202_))))
                   (declare (not safe))
                   (cons __tmp194352 _vars189201_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e189222_))
                    (let ((_$e189225_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd189226_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl189227_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp194372
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target189202_)))
                            (__tmp194353
                             (let ((__tmp194367
                                    (let ((__tmp194368
                                           (let ((__tmp194371
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e189225_ '())))
                                                 (__tmp194369
                                                  (let ((__tmp194370
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e188931_
                                                            _target189202_))))
                                                    (declare (not safe))
                                                    (cons __tmp194370 '()))))
                                             (declare (not safe))
                                             (cons __tmp194371 __tmp194369))))
                                      (declare (not safe))
                                      (cons __tmp194368 '())))
                                   (__tmp194354
                                    (let ((__tmp194357
                                           (let ((__tmp194363
                                                  (let ((__tmp194366
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd189226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp194364
                 (let ((__tmp194365
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e189225_))))
                   (declare (not safe))
                   (cons __tmp194365 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp194366
                                                          __tmp194364)))
                                                 (__tmp194358
                                                  (let ((__tmp194359
                                                         (let ((__tmp194362
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl189227_ '())))
                       (__tmp194360
                        (let ((__tmp194361
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e189225_))))
                          (declare (not safe))
                          (cons __tmp194361 '()))))
                   (declare (not safe))
                   (cons __tmp194362 __tmp194360))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp194359 '()))))
                                             (declare (not safe))
                                             (cons __tmp194363 __tmp194358)))
                                          (__tmp194355
                                           (let* ((_body189228189235_
                                                   _body189219_)
                                                  (_E189230189239_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body189228189235_)))
                                                  (_K189231189247_
                                                   (lambda (_tl189242_
                                                            _hd189243_)
                                                     (let ((__tmp194356
                                                            (lambda (_vars189245_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur189109_
                         _tl189242_
                         _vars189245_
                         _$tl189227_
                         _E189203_
                         _k189204_)))))
               (declare (not safe))
               (_recur189109_
                _hd189243_
                _vars189201_
                _$hd189226_
                _E189203_
                __tmp194356)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body189228189235_))
                                                 (let ((_hd189232189250_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body189228189235_)))
                                                       (_tl189233189252_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body189228189235_))))
                                                   (let* ((_hd189255_
                                                           _hd189232189250_)
                                                          (_tl189257_
                                                           _tl189233189252_))
                                                     (declare (not safe))
                                                     (_K189231189247_
                                                      _tl189257_
                                                      _hd189255_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E189230189239_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp194357
                                       __tmp194355))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp194367
                                __tmp194354))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp194372 __tmp194353 _E189203_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e189222_))
                        (let* ((_body189258189265_ _body189219_)
                               (_E189260189269_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body189258189265_)))
                               (_K189261189320_
                                (lambda (_tl189272_ _hd189273_)
                                  (let* ((_rlen189275_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen189110_ _tl189272_)))
                                         (_$target189277_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd189279_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl189281_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp189283_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e189285_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd189287_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl189289_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars189291_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars189111_ _hd189273_)))
                                         (_lvars189293_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars189291_)))
                                         (_tlvars189295_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars189291_)))
                                         (_linit189299_
                                          (map (lambda (_var189297_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars189293_)))
                                    (letrec ((_make-loop189302_
                                              (lambda (_vars189306_)
                                                (let ((__tmp194375
                                                       (let ((__tmp194376
                                                              (let ((__tmp194412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp189283_ '())))
                            (__tmp194377
                             (let ((__tmp194378
                                    (let ((__tmp194411
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd189279_ _lvars189293_)))
                                          (__tmp194379
                                           (let ((__tmp194410
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd189279_)))
                                                 (__tmp194388
                                                  (let ((__tmp194405
                                                         (let ((__tmp194406
                                                                (let ((__tmp194409
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e189285_ '())))
                              (__tmp194407
                               (let ((__tmp194408
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e188931_
                                         _$hd189279_))))
                                 (declare (not safe))
                                 (cons __tmp194408 '()))))
                          (declare (not safe))
                          (cons __tmp194409 __tmp194407))))
                   (declare (not safe))
                   (cons __tmp194406 '())))
                (__tmp194389
                 (let ((__tmp194395
                        (let ((__tmp194401
                               (let ((__tmp194404
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd189287_ '())))
                                     (__tmp194402
                                      (let ((__tmp194403
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e189285_))))
                                        (declare (not safe))
                                        (cons __tmp194403 '()))))
                                 (declare (not safe))
                                 (cons __tmp194404 __tmp194402)))
                              (__tmp194396
                               (let ((__tmp194397
                                      (let ((__tmp194400
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl189289_ '())))
                                            (__tmp194398
                                             (let ((__tmp194399
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e189285_))))
                                               (declare (not safe))
                                               (cons __tmp194399 '()))))
                                        (declare (not safe))
                                        (cons __tmp194400 __tmp194398))))
                                 (declare (not safe))
                                 (cons __tmp194397 '()))))
                          (declare (not safe))
                          (cons __tmp194401 __tmp194396)))
                       (__tmp194390
                        (let ((__tmp194391
                               (lambda (_hdvars189308_)
                                 (let ((__tmp194392
                                        (let ((__tmp194393
                                               (map (lambda (_svar189310_
                                                             _lvar189311_)
                                                      (let ((__tmp194394
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar189310_ _hdvars189308_ _BUG189108_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp194394 _lvar189311_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars189291_
                                                    _lvars189293_)))
                                          (declare (not safe))
                                          (cons _$lp-tl189289_ __tmp194393))))
                                   (declare (not safe))
                                   (cons _$lp189283_ __tmp194392)))))
                          (declare (not safe))
                          (_recur189109_
                           _hd189273_
                           '()
                           _$lp-hd189287_
                           _E189203_
                           __tmp194391))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp194395 __tmp194390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp194405
                                                     __tmp194389)))
                                                 (__tmp194380
                                                  (let ((__tmp194384
                                                         (map (lambda (_lvar189313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar189314_)
                        (let ((__tmp194387
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar189314_ '())))
                              (__tmp194385
                               (let ((__tmp194386
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar189313_))))
                                 (declare (not safe))
                                 (cons __tmp194386 '()))))
                          (declare (not safe))
                          (cons __tmp194387 __tmp194385)))
                      _lvars189293_
                      _tlvars189295_))
                (__tmp194381
                 (_k189204_
                  (let ((__tmp194382
                         (lambda (_svar189316_ _tlvar189317_ _r189318_)
                           (let ((__tmp194383
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar189316_ _tlvar189317_))))
                             (declare (not safe))
                             (cons __tmp194383 _r189318_)))))
                    (declare (not safe))
                    (foldl2 __tmp194382
                            _vars189306_
                            _svars189291_
                            _tlvars189295_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp194384
                                                     __tmp194381))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp194410
                                              __tmp194388
                                              __tmp194380))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp194411
                                       __tmp194379))))
                               (declare (not safe))
                               (cons __tmp194378 '()))))
                        (declare (not safe))
                        (cons __tmp194412 __tmp194377))))
                 (declare (not safe))
                 (cons __tmp194376 '())))
              (__tmp194373
               (let ((__tmp194374
                      (let ()
                        (declare (not safe))
                        (cons _$target189277_ _linit189299_))))
                 (declare (not safe))
                 (cons _$lp189283_ __tmp194374))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp194375
                                                   __tmp194373)))))
                                      (let ((_body189304_
                                             (let ((__tmp194414
                                                    (let ((__tmp194415
                                                           (let ((__tmp194418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp194419
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl189281_ '()))))
                            (declare (not safe))
                            (cons _$target189277_ __tmp194419)))
                         (__tmp194416
                          (let ((__tmp194417
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target189202_
                                    _rlen189275_))))
                            (declare (not safe))
                            (cons __tmp194417 '()))))
                     (declare (not safe))
                     (cons __tmp194418 __tmp194416))))
              (declare (not safe))
              (cons __tmp194415 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp194413
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur189109_
                                                       _tl189272_
                                                       _vars189201_
                                                       _$tl189281_
                                                       _E189203_
                                                       _make-loop189302_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp194414
                                                __tmp194413))))
                                        (let ((__tmp194423
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target189202_)))
                                              (__tmp194420
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen189275_))
                                                   _body189304_
                                                   (let ((__tmp194421
                                                          (let ((__tmp194422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target189202_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp194422 _rlen189275_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp194421
                                                      _body189304_
                                                      _E189203_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp194423
                                           __tmp194420
                                           _E189203_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body189258189265_))
                              (let ((_hd189262189323_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body189258189265_)))
                                    (_tl189263189325_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body189258189265_))))
                                (let* ((_hd189328_ _hd189262189323_)
                                       (_tl189330_ _tl189263189325_))
                                  (declare (not safe))
                                  (_K189261189320_ _tl189330_ _hd189328_)))
                              (let () (declare (not safe)) (_E189260189269_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e189222_))
                            (let ((__tmp194425
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target189202_)))
                                  (__tmp194424 (_k189204_ _vars189201_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp194425
                               __tmp194424
                               _E189203_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e189222_))
                                (let ((_$e189332_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp194434
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target189202_)))
                                        (__tmp194426
                                         (let ((__tmp194428
                                                (let ((__tmp194429
                                                       (let ((__tmp194433
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e189332_ '())))
                     (__tmp194430
                      (let ((__tmp194431
                             (let ((__tmp194432
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e188931_
                                       _target189202_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp194432))))
                        (declare (not safe))
                        (cons __tmp194431 '()))))
                 (declare (not safe))
                 (cons __tmp194433 __tmp194430))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp194429 '())))
                                               (__tmp194427
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur189109_
                                                   _body189219_
                                                   _vars189201_
                                                   _$e189332_
                                                   _E189203_
                                                   _k189204_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp194428
                                            __tmp194427))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp194434
                                     __tmp194426
                                     _E189203_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e189222_))
                                    (let ((_$e189334_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp194443
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target189202_)))
                                            (__tmp194435
                                             (let ((__tmp194437
                                                    (let ((__tmp194438
                                                           (let ((__tmp194442
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e189334_ '())))
                         (__tmp194439
                          (let ((__tmp194440
                                 (let ((__tmp194441
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e188931_
                                           _target189202_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp194441))))
                            (declare (not safe))
                            (cons __tmp194440 '()))))
                     (declare (not safe))
                     (cons __tmp194442 __tmp194439))))
              (declare (not safe))
              (cons __tmp194438 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp194436
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur189109_
                                                       _body189219_
                                                       _vars189201_
                                                       _$e189334_
                                                       _E189203_
                                                       _k189204_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp194437
                                                __tmp194436))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp194443
                                         __tmp194435
                                         _E189203_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e189222_))
                                        (let ((_$e189336_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp194453
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target189202_)))
                                                (__tmp194444
                                                 (let ((__tmp194448
                                                        (let ((__tmp194449
                                                               (let ((__tmp194452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e189336_ '())))
                             (__tmp194450
                              (let ((__tmp194451
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target189202_))))
                                (declare (not safe))
                                (cons __tmp194451 '()))))
                         (declare (not safe))
                         (cons __tmp194452 __tmp194450))))
                  (declare (not safe))
                  (cons __tmp194449 '())))
               (__tmp194445
                (let ((__tmp194447
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e189336_ _body189219_)))
                      (__tmp194446 (_k189204_ _vars189201_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp194447 __tmp194446 _E189203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp194448
                                                    __tmp194445))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp194453
                                             __tmp194444
                                             _E189203_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG189108_ _e189200_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e189205189212_))
                                      (let ((_hd189209189341_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e189205189212_)))
                                            (_tl189210189343_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e189205189212_))))
                                        (let* ((_tag189346_ _hd189209189341_)
                                               (_body189348_ _tl189210189343_))
                                          (declare (not safe))
                                          (_K189208189338_
                                           _body189348_
                                           _tag189346_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E189207189216_))))))
                             (_splice-rlen189110_
                              (lambda (_e189162_)
                                (let _lp189164_ ((_e189166_ _e189162_)
                                                 (_n189167_ '0))
                                  (let* ((_e189168189175_ _e189166_)
                                         (_E189170189179_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e189168189175_)))
                                         (_K189171189188_
                                          (lambda (_body189182_ _tag189183_)
                                            (let ((_$e189185_ _tag189183_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e189185_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx188929_
                                                     _where189101_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e189185_))
                                                      (let ((__tmp194455
                                                             (cdr _body189182_))
                                                            (__tmp194454
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n189167_ '1))))
                (declare (not safe))
                (_lp189164_ __tmp194455 __tmp194454))
              _n189167_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e189168189175_))
                                        (let ((_hd189172189191_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e189168189175_)))
                                              (_tl189173189193_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e189168189175_))))
                                          (let* ((_tag189196_ _hd189172189191_)
                                                 (_body189198_
                                                  _tl189173189193_))
                                            (declare (not safe))
                                            (_K189171189188_
                                             _body189198_
                                             _tag189196_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E189170189179_)))))))
                             (_splice-vars189111_
                              (lambda (_e189118_)
                                (let _recur189120_ ((_e189122_ _e189118_)
                                                    (_vars189123_ '()))
                                  (let* ((_e189124189131_ _e189122_)
                                         (_E189126189135_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e189124189131_)))
                                         (_K189127189150_
                                          (lambda (_body189138_ _tag189139_)
                                            (let ((_$e189141_ _tag189139_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e189141_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body189138_
                                                          _vars189123_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e189141_))
                  (let () (declare (not safe)) (eq? 'splice _$e189141_)))
              (let ((__tmp194458 (cdr _body189138_))
                    (__tmp194456
                     (let ((__tmp194457 (car _body189138_)))
                       (declare (not safe))
                       (_recur189120_ __tmp194457 _vars189123_))))
                (declare (not safe))
                (_recur189120_ __tmp194458 __tmp194456))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e189141_))
                      (let () (declare (not safe)) (eq? 'box _$e189141_)))
                  (let ()
                    (declare (not safe))
                    (_recur189120_ _body189138_ _vars189123_))
                  _vars189123_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e189124189131_))
                                        (let ((_hd189128189153_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e189124189131_)))
                                              (_tl189129189155_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e189124189131_))))
                                          (let* ((_tag189158_ _hd189128189153_)
                                                 (_body189160_
                                                  _tl189129189155_))
                                            (declare (not safe))
                                            (_K189127189150_
                                             _body189160_
                                             _tag189158_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E189126189135_)))))))
                             (_make-body189112_
                              (lambda (_vars189114_)
                                (let ((__tmp194459
                                       (map (lambda (_mvar189116_)
                                              (let ((__tmp194460
                                                     (car _mvar189116_)))
                                                (declare (not safe))
                                                (assgetq __tmp194460
                                                         _vars189114_
                                                         _BUG189108_)))
                                            _mvars189104_)))
                                  (declare (not safe))
                                  (cons _K189105_ __tmp194459)))))
                      (let ()
                        (declare (not safe))
                        (_recur189109_
                         _hd189103_
                         '()
                         _target189102_
                         _E189106_
                         _make-body189112_)))))
                 (_parse-clause188938_
                  (lambda (_hd189007_ _ids189008_)
                    (let _recur189010_ ((_e189012_ _hd189007_)
                                        (_vars189013_ '())
                                        (_depth189014_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e189012_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e189012_))
                              (values '(any) _vars189013_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e189012_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx188929_
                                     _hd189007_))
                                  (if (let ((__tmp194461
                                             (lambda (_id189016_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e189012_
                                                  _id189016_)))))
                                        (declare (not safe))
                                        (find __tmp194461 _ids189008_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e189012_))
                                              _vars189013_)
                                      (if (let ((__tmp194462
                                                 (lambda (_var189018_)
                                                   (let ((__tmp194463
                                                          (car _var189018_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e189012_
                                                      __tmp194463)))))
                                            (declare (not safe))
                                            (find __tmp194462 _vars189013_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx188929_
                                             _e189012_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e189012_))
                                                  (let ((__tmp194464
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e189012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth189014_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp194464
                                                          _vars189013_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e189012_))
                              (let* ((_e189019189026_ _e189012_)
                                     (_E189021189030_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e189019189026_))))
                                     (_E189020189091_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e189019189026_))
                                            (let ((_e189022189034_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e189019189026_))))
                                              (let ((_hd189023189037_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e189022189034_)))
                                                    (_tl189024189039_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e189022189034_))))
                                                (let* ((_hd189042_
                                                        _hd189023189037_)
                                                       (_rest189044_
                                                        _tl189024189039_))
                                                  (if '#t
                                                      (let* ((_make-pair189059_
                                                              (lambda (_tag189046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd189047_
                               _tl189048_)
                        (let* ((_hd-depth189050_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag189046_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth189014_ '1))
                                    _depth189014_))
                               (_g194465_
                                (let ()
                                  (declare (not safe))
                                  (_recur189010_
                                   _hd189047_
                                   _vars189013_
                                   _hd-depth189050_))))
                          (begin
                            (let ((_g194466_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g194465_)
                                         (##vector-length _g194465_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g194466_ 2)))
                                  (error "Context expects 2 values"
                                         _g194466_)))
                            (let ((_hd189052_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g194465_ 0)))
                                  (_vars189053_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g194465_ 1))))
                              (let ((_g194467_
                                     (let ()
                                       (declare (not safe))
                                       (_recur189010_
                                        _tl189048_
                                        _vars189053_
                                        _depth189014_))))
                                (begin
                                  (let ((_g194468_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g194467_)
                                               (##vector-length _g194467_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g194468_ 2)))
                                        (error "Context expects 2 values"
                                               _g194468_)))
                                  (let ((_tl189055_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g194467_ 0)))
                                        (_vars189056_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g194467_ 1))))
                                    (let ()
                                      (values (let ((__tmp194469
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd189052_
                                                             _tl189055_))))
                                                (declare (not safe))
                                                (cons _tag189046_ __tmp194469))
                                              _vars189056_))))))))))
                     (_e189060189067_ _rest189044_)
                     (_E189062189071_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair189059_ 'cons _hd189042_ _rest189044_))))
                     (_E189061189087_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e189060189067_))
                            (let ((_e189063189075_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e189060189067_))))
                              (let ((_hd189064189078_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e189063189075_)))
                                    (_tl189065189080_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e189063189075_))))
                                (let* ((_rest-hd189083_ _hd189064189078_)
                                       (_rest-tl189085_ _tl189065189080_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd189083_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair189059_
                                             'splice
                                             _hd189042_
                                             _rest-tl189085_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair189059_
                                             'cons
                                             _hd189042_
                                             _rest189044_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E189062189071_))))))
                            (let () (declare (not safe)) (_E189062189071_))))))
                (let () (declare (not safe)) (_E189061189087_)))
              (let () (declare (not safe)) (_E189021189030_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E189021189030_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E189020189091_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e189012_))
                                  (values '(null) _vars189013_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e189012_))
                                      (let ((_g194470_
                                             (let ((__tmp194472
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e189012_)))))
                                               (declare (not safe))
                                               (_recur189010_
                                                __tmp194472
                                                _vars189013_
                                                _depth189014_))))
                                        (begin
                                          (let ((_g194471_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g194470_)
                                                       (##vector-length
                                                        _g194470_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g194471_ 2)))
                                                (error "Context expects 2 values"
                                                       _g194471_)))
                                          (let ((_e189095_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g194470_ 0)))
                                                (_vars189096_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g194470_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e189095_))
                                                    _vars189096_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e189012_))
                                          (let ((_g194473_
                                                 (let ((__tmp194475
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e189012_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur189010_
                                                    __tmp194475
                                                    _vars189013_
                                                    _depth189014_))))
                                            (begin
                                              (let ((_g194474_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g194473_)
                                                           (##vector-length
                                                            _g194473_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g194474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g194474_)))
                                              (let ((_e189098_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g194473_
                                                        0)))
                                                    (_vars189099_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g194473_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e189098_))
                                                        _vars189099_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e189012_))
                                              (values (let ((__tmp194476
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e189012_))))
                (declare (not safe))
                (cons 'datum __tmp194476))
              _vars189013_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx188929_
                                                 _e189012_))))))))))))
          (let* ((_e188939188952_ _stx188929_)
                 (_E188941188956_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e188939188952_))))
                 (_E188940189003_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e188939188952_))
                        (let ((_e188942188960_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e188939188952_))))
                          (let ((_hd188943188963_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e188942188960_)))
                                (_tl188944188965_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e188942188960_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl188944188965_))
                                (let ((_e188945188968_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl188944188965_))))
                                  (let ((_hd188946188971_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e188945188968_)))
                                        (_tl188947188973_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e188945188968_))))
                                    (let ((_expr188976_ _hd188946188971_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl188947188973_))
                                          (let ((_e188948188978_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl188947188973_))))
                                            (let ((_hd188949188981_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e188948188978_)))
                                                  (_tl188950188983_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e188948188978_))))
                                              (let* ((_ids188986_
                                                      _hd188949188981_)
                                                     (_clauses188988_
                                                      _tl188950188983_))
                                                (if '#t
                                                    (if (let ((__tmp194477
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids188986_))))
                  (declare (not safe))
                  (not __tmp194477))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx188929_
                   _ids188986_))
                (if (let ((__tmp194478
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses188988_))))
                      (declare (not safe))
                      (not __tmp194478))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx188929_))
                    (let* ((_ids188990_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids188986_)))
                           (_clauses188992_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses188988_)))
                           (_clause-ids188994_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses188992_)))
                           (_E188996_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target188998_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first189000_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses188992_))
                                _E188996_
                                (car _clause-ids188994_))))
                      (let ((__tmp194480
                             (let ((__tmp194481
                                    (let ((__tmp194483
                                           (let ((__tmp194488
                                                  (let ((__tmp194489
                                                         (let ((__tmp194494
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E188996_ '())))
                       (__tmp194490
                        (let ((__tmp194491
                               (let ((__tmp194493
                                      (let ()
                                        (declare (not safe))
                                        (cons _target188998_ '())))
                                     (__tmp194492
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target188998_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp194493
                                  __tmp194492))))
                          (declare (not safe))
                          (cons __tmp194491 '()))))
                   (declare (not safe))
                   (cons __tmp194494 __tmp194490))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp194489 '())))
                                                 (__tmp194484
                                                  (let ((__tmp194487
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings188934_
                                                            _target188998_
                                                            _ids188990_
                                                            _clauses188992_
                                                            _clause-ids188994_
                                                            _E188996_)))
                                                        (__tmp194485
                                                         (let ((__tmp194486
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr188976_ '()))))
                   (declare (not safe))
                   (cons _first189000_ __tmp194486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body188935_
                                                     __tmp194487
                                                     __tmp194485))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp194488
                                              __tmp194484)))
                                          (__tmp194482
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx188929_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp194483
                                       __tmp194482))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp194481)))
                            (__tmp194479
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx188929_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp194480 __tmp194479)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E188941188956_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E188941188956_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E188941188956_)))))
                        (let () (declare (not safe)) (_E188941188956_))))))
            (let () (declare (not safe)) (_E188940189003_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx189639_)
        (let* ((_identifier=?189641_ 'free-identifier=?)
               (_unwrap-e189643_ 'syntax-e)
               (_wrap-e189645_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx189639_
           _identifier=?189641_
           _unwrap-e189643_
           _wrap-e189645_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx189647_ _identifier=?189648_)
        (let* ((_unwrap-e189650_ 'syntax-e) (_wrap-e189652_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx189647_
           _identifier=?189648_
           _unwrap-e189650_
           _wrap-e189652_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx189654_ _identifier=?189655_ _unwrap-e189656_)
        (let ((_wrap-e189658_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx189654_
           _identifier=?189655_
           _unwrap-e189656_
           _wrap-e189658_))))
    (define gx#macro-expand-syntax-case
      (lambda _g194496_
        (let ((_g194495_ (let () (declare (not safe)) (##length _g194496_))))
          (cond ((let () (declare (not safe)) (##fx= _g194495_ 1))
                 (apply (lambda (_stx189639_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx189639_)))
                        _g194496_))
                ((let () (declare (not safe)) (##fx= _g194495_ 2))
                 (apply (lambda (_stx189647_ _identifier=?189648_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx189647_
                             _identifier=?189648_)))
                        _g194496_))
                ((let () (declare (not safe)) (##fx= _g194495_ 3))
                 (apply (lambda (_stx189654_
                                 _identifier=?189655_
                                 _unwrap-e189656_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx189654_
                             _identifier=?189655_
                             _unwrap-e189656_)))
                        _g194496_))
                ((let () (declare (not safe)) (##fx= _g194495_ 4))
                 (apply (lambda (_stx189660_
                                 _identifier=?189661_
                                 _unwrap-e189662_
                                 _wrap-e189663_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx189660_
                             _identifier=?189661_
                             _unwrap-e189662_
                             _wrap-e189663_)))
                        _g194496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g194496_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx188926_)
        (if (let () (declare (not safe)) (gx#identifier? _stx188926_))
            (let ((__tmp194497
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx188926_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp194497 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd188884_ . _rest188885_)
        (let ((_len188887_ (length _hd188884_)))
          (let _lp188889_ ((_rest188891_ _rest188885_))
            (let* ((_rest188892188900_ _rest188891_)
                   (_else188894188908_ (lambda () '#!void))
                   (_K188896188914_
                    (lambda (_rest188911_ _hd188912_)
                      (if (fx= _len188887_ (length _hd188912_))
                          (let ()
                            (declare (not safe))
                            (_lp188889_ _rest188911_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd188912_))))))
              (if (let () (declare (not safe)) (##pair? _rest188892188900_))
                  (let ((_hd188897188917_
                         (let ()
                           (declare (not safe))
                           (##car _rest188892188900_)))
                        (_tl188898188919_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest188892188900_))))
                    (let* ((_hd188922_ _hd188897188917_)
                           (_rest188924_ _tl188898188919_))
                      (declare (not safe))
                      (_K188896188914_ _rest188924_ _hd188922_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx188842_ _n188843_)
        (let _lp188845_ ((_rest188847_ _stx188842_) (_r188848_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest188847_))
              (let* ((_g188849188856_
                      (let () (declare (not safe)) (gx#syntax-e _rest188847_)))
                     (_E188851188860_
                      (lambda ()
                        (error '"No clause matching" _g188849188856_)))
                     (_K188852188866_
                      (lambda (_rest188863_ _hd188864_)
                        (let ((__tmp194498
                               (let ()
                                 (declare (not safe))
                                 (cons _hd188864_ _r188848_))))
                          (declare (not safe))
                          (_lp188845_ _rest188863_ __tmp194498)))))
                (if (let () (declare (not safe)) (##pair? _g188849188856_))
                    (let ((_hd188853188869_
                           (let ()
                             (declare (not safe))
                             (##car _g188849188856_)))
                          (_tl188854188871_
                           (let ()
                             (declare (not safe))
                             (##cdr _g188849188856_))))
                      (let* ((_hd188874_ _hd188853188869_)
                             (_rest188876_ _tl188854188871_))
                        (declare (not safe))
                        (_K188852188866_ _rest188876_ _hd188874_)))
                    (let () (declare (not safe)) (_E188851188860_))))
              (let _lp188878_ ((_n188880_ _n188843_)
                               (_l188881_ _r188848_)
                               (_r188882_ _rest188847_))
                (if (let () (declare (not safe)) (null? _l188881_))
                    (values _l188881_ _r188882_)
                    (if (fxpositive? _n188880_)
                        (let ((__tmp194502
                               (let ()
                                 (declare (not safe))
                                 (fx- _n188880_ '1)))
                              (__tmp194501 (cdr _l188881_))
                              (__tmp194499
                               (let ((__tmp194500 (car _l188881_)))
                                 (declare (not safe))
                                 (cons __tmp194500 _r188882_))))
                          (declare (not safe))
                          (_lp188878_ __tmp194502 __tmp194501 __tmp194499))
                        (values (reverse _l188881_) _r188882_))))))))))
