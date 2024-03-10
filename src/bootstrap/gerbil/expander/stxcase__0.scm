(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1710064748)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp94216 (list gx#expander::t))
            (__tmp94214
             (let ((__tmp94215
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp94215 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp94216
         '(id depth)
         __tmp94214
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args94211_
        (apply make-instance gx#syntax-pattern::t _$args94211_)))
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
      (lambda (_self94208_ _stx94209_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx94209_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx93690_)
        (letrec ((_generate93692_
                  (lambda (_e93919_)
                    (letrec ((_BUG93921_
                              (lambda (_q94083_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx93690_
                                         _e93919_
                                         _q94083_))))
                             (_local-pattern-e93922_
                              (lambda (_pat94081_)
                                (let ((__tmp94217
                                       (##structure-ref
                                        _pat94081_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp94217))))
                             (_getvar93923_
                              (lambda (_q94078_ _vars94079_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q94078_
                                   _vars94079_
                                   _BUG93921_))))
                             (_getarg93924_
                              (lambda (_arg94044_ _vars94045_)
                                (let* ((_arg9404694053_ _arg94044_)
                                       (_E9404894057_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9404694053_))))
                                       (_K9404994066_
                                        (lambda (_e94060_ _tag94061_)
                                          (let ((_$e94063_ _tag94061_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e94063_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar93923_
                                                   _e94060_
                                                   _vars94045_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e94063_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e93922_
                                                       _e94060_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG93921_
                                                       _arg94044_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9404694053_))
                                      (let ((_hd9405094069_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9404694053_)))
                                            (_tl9405194071_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9404694053_))))
                                        (let* ((_tag94074_ _hd9405094069_)
                                               (_e94076_ _tl9405194071_))
                                          (declare (not safe))
                                          (_K9404994066_ _e94076_ _tag94074_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9404894057_)))))))
                      (let _recur93926_ ((_e93928_ _e93919_) (_vars93929_ '()))
                        (let* ((_e9393093937_ _e93928_)
                               (_E9393293941_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9393093937_))))
                               (_K9393394032_
                                (lambda (_body93944_ _tag93945_)
                                  (let ((_$e93947_ _tag93945_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e93947_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body93944_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e93947_))
                                            (let ((_id93950_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body93944_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id93950_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks93952_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id93950_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks93952_))
                                                        (let ((__tmp94218
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body93944_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp94218))
                (let ((__tmp94220
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body93944_)))
                      (__tmp94219
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body93944_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp94220
                   __tmp94219
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id93950_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body93944_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG93921_
                                                         _e93928_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e93947_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e93922_
                                                   _body93944_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e93947_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar93923_
                                                       _body93944_
                                                       _vars93929_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e93947_))
                                                        (let ((__tmp94223
                                                               (let ((__tmp94224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body93944_)))
                         (declare (not safe))
                         (_recur93926_ __tmp94224 _vars93929_)))
                      (__tmp94221
                       (let ((__tmp94222 (cdr _body93944_)))
                         (declare (not safe))
                         (_recur93926_ __tmp94222 _vars93929_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp94223 __tmp94221))
                (if (let () (declare (not safe)) (eq? 'vector _$e93947_))
                    (let ((__tmp94225
                           (let ()
                             (declare (not safe))
                             (_recur93926_ _body93944_ _vars93929_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp94225))
                    (if (let () (declare (not safe)) (eq? 'box _$e93947_))
                        (let ((__tmp94226
                               (let ()
                                 (declare (not safe))
                                 (_recur93926_ _body93944_ _vars93929_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp94226))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e93947_))
                            (let* ((_body9395393964_ _body93944_)
                                   (_E9395593968_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9395393964_))))
                                   (_K9395694006_
                                    (lambda (_args93971_
                                             _iv93972_
                                             _hd93973_
                                             _depth93974_)
                                      (let* ((_targets93980_
                                              (map (lambda (_g9397593977_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg93924_
                                                        _g9397593977_
                                                        _vars93929_)))
                                                   _args93971_))
                                             (_fold-in93982_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args93971_)))
                                             (_fold-out93984_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args93986_
                                              (let ((__tmp94227
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out93984_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp94227
                                                        _fold-in93982_)))
                                             (_lambda-body94003_
                                              (if (fx> _depth93974_ '1)
                                                  (let ((_r-args93994_
                                                         (map (lambda (_arg93988_)
                                                                (let ((__tmp94228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg93988_)))
                          (declare (not safe))
                          (cons 'ref __tmp94228)))
                      _args93971_))
                (_r-vars93995_
                 (let ((__tmp94229
                        (lambda (_arg93990_ _var93991_ _r93992_)
                          (let ((__tmp94230
                                 (let ((__tmp94231 (cdr _arg93990_)))
                                   (declare (not safe))
                                   (cons __tmp94231 _var93991_))))
                            (declare (not safe))
                            (cons __tmp94230 _r93992_)))))
                   (declare (not safe))
                   (foldr2 __tmp94229
                           _vars93929_
                           _args93971_
                           _fold-in93982_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp94232
                                                           (let ((__tmp94233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp94237
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth93974_ '1)))
                                (__tmp94234
                                 (let ((__tmp94235
                                        (let ((__tmp94236
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out93984_))))
                                          (declare (not safe))
                                          (cons __tmp94236 _r-args93994_))))
                                   (declare (not safe))
                                   (cons _hd93973_ __tmp94235))))
                            (declare (not safe))
                            (cons __tmp94237 __tmp94234))))
                     (declare (not safe))
                     (cons 'splice __tmp94233))))
              (declare (not safe))
              (_recur93926_ __tmp94232 _r-vars93995_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars94001_
                                                          (let ((__tmp94238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg93997_ _var93998_ _r93999_)
                           (let ((__tmp94239
                                  (let ((__tmp94240 (cdr _arg93997_)))
                                    (declare (not safe))
                                    (cons __tmp94240 _var93998_))))
                             (declare (not safe))
                             (cons __tmp94239 _r93999_)))))
                    (declare (not safe))
                    (foldr2 __tmp94238
                            _vars93929_
                            _args93971_
                            _fold-in93982_)))
                 (__tmp94241
                  (let ()
                    (declare (not safe))
                    (_recur93926_ _hd93973_ _hd-vars94001_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp94241
                                                     _fold-out93984_)))))
                                        (let ((__tmp94245
                                               (if (fx> (length _targets93980_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets93980_))
                                                   '#!void))
                                              (__tmp94242
                                               (let ((__tmp94244
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args93986_
                                                         _lambda-body94003_)))
                                                     (__tmp94243
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur93926_
                                                         _iv93972_
                                                         _vars93929_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp94244
                                                  __tmp94243
                                                  _targets93980_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp94245
                                           __tmp94242))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9395393964_))
                                  (let ((_hd9395794009_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9395393964_)))
                                        (_tl9395894011_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9395393964_))))
                                    (let ((_depth94014_ _hd9395794009_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9395894011_))
                                          (let ((_hd9395994016_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9395894011_)))
                                                (_tl9396094018_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9395894011_))))
                                            (let ((_hd94021_ _hd9395994016_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9396094018_))
                                                  (let ((_hd9396194023_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9396094018_)))
                                                        (_tl9396294025_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9396094018_))))
                                                    (let* ((_iv94028_
                                                            _hd9396194023_)
                                                           (_args94030_
                                                            _tl9396294025_))
                                                      (declare (not safe))
                                                      (_K9395694006_
                                                       _args94030_
                                                       _iv94028_
                                                       _hd94021_
                                                       _depth94014_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9395593968_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9395593968_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9395593968_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e93947_))
                                _body93944_
                                (let ()
                                  (declare (not safe))
                                  (_BUG93921_ _e93928_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9393093937_))
                              (let ((_hd9393494035_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9393093937_)))
                                    (_tl9393594037_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9393093937_))))
                                (let* ((_tag94040_ _hd9393494035_)
                                       (_body94042_ _tl9393594037_))
                                  (declare (not safe))
                                  (_K9393394032_ _body94042_ _tag94040_)))
                              (let ()
                                (declare (not safe))
                                (_E9393293941_))))))))
                 (_parse93693_
                  (lambda (_e93734_)
                    (letrec ((_make-cons93736_
                              (lambda (_hd93911_ _tl93912_)
                                (let ((_g94246_ _hd93911_)
                                      (_g94248_ _tl93912_))
                                  (begin
                                    (let ((_g94247_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g94246_)
                                                 (##vector-length _g94246_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g94247_ 2)))
                                          (error "Context expects 2 values"
                                                 _g94247_)))
                                    (let ((_g94249_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g94248_)
                                                 (##vector-length _g94248_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g94249_ 2)))
                                          (error "Context expects 2 values"
                                                 _g94249_)))
                                    (let ((_hd-e93914_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g94246_ 0)))
                                          (_hd-vars93915_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g94246_ 1))))
                                      (let ((_tl-e93916_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g94248_ 0)))
                                            (_tl-vars93917_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g94248_ 1))))
                                        (values (let ((__tmp94250
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e93914_
                                                               _tl-e93916_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp94250))
                                                (append _hd-vars93915_
                                                        _tl-vars93917_))))))))
                             (_make-splice93737_
                              (lambda (_where93850_
                                       _depth93851_
                                       _hd93852_
                                       _tl93853_)
                                (let ((_g94251_ _hd93852_)
                                      (_g94253_ _tl93853_))
                                  (begin
                                    (let ((_g94252_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g94251_)
                                                 (##vector-length _g94251_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g94252_ 2)))
                                          (error "Context expects 2 values"
                                                 _g94252_)))
                                    (let ((_g94254_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g94253_)
                                                 (##vector-length _g94253_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g94254_ 2)))
                                          (error "Context expects 2 values"
                                                 _g94254_)))
                                    (let ((_hd-e93855_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g94251_ 0)))
                                          (_hd-vars93856_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g94251_ 1))))
                                      (let ((_tl-e93857_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g94253_ 0)))
                                            (_tl-vars93858_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g94253_ 1))))
                                        (let _lp93860_ ((_rest93862_
                                                         _hd-vars93856_)
                                                        (_targets93863_ '())
                                                        (_vars93864_
                                                         _tl-vars93858_))
                                          (let* ((_rest9386593875_ _rest93862_)
                                                 (_else9386793883_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets93863_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx93690_
                                                           _where93850_))
                                                        (values (let ((__tmp94255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp94256
                                      (let ((__tmp94257
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e93857_
                                                     _targets93863_))))
                                        (declare (not safe))
                                        (cons _hd-e93855_ __tmp94257))))
                                 (declare (not safe))
                                 (cons _depth93851_ __tmp94256))))
                          (declare (not safe))
                          (cons 'splice __tmp94255))
                        _vars93864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9386993892_
                                                  (lambda (_rest93886_
                                                           _hd-pat93887_
                                                           _hd-depth*93888_)
                                                    (let ((_hd-depth93890_
                                                           (fx- _hd-depth*93888_
                                                                _depth93851_)))
                                                      (if (fxpositive?
                                                           _hd-depth93890_)
                                                          (let ((__tmp94260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp94261
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat93887_))))
                           (declare (not safe))
                           (cons __tmp94261 _targets93863_)))
                        (__tmp94258
                         (let ((__tmp94259
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth93890_ _hd-pat93887_))))
                           (declare (not safe))
                           (cons __tmp94259 _vars93864_))))
                    (declare (not safe))
                    (_lp93860_ _rest93886_ __tmp94260 __tmp94258))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth93890_))
                      (let ((__tmp94262
                             (let ((__tmp94263
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat93887_))))
                               (declare (not safe))
                               (cons __tmp94263 _targets93863_))))
                        (declare (not safe))
                        (_lp93860_ _rest93886_ __tmp94262 _vars93864_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx93690_
                         _where93850_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9386593875_))
                                                (let ((_hd9387093895_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9386593875_)))
                                                      (_tl9387193897_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9386593875_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9387093895_))
                                                      (let ((_hd9387293900_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9387093895_)))
                    (_tl9387393902_
                     (let () (declare (not safe)) (##cdr _hd9387093895_))))
                (let* ((_hd-depth*93905_ _hd9387293900_)
                       (_hd-pat93907_ _tl9387393902_)
                       (_rest93909_ _tl9387193897_))
                  (declare (not safe))
                  (_K9386993892_ _rest93909_ _hd-pat93907_ _hd-depth*93905_)))
              (let () (declare (not safe)) (_else9386793883_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9386793883_)))))))))))
                             (_recur93738_
                              (lambda (_e93743_ _is-e?93744_)
                                (if (_is-e?93744_ _e93743_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx93690_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e93743_))
                                        (let* ((_pat93746_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e93743_)))
                                               (_depth93748_
                                                (##structure-ref
                                                 _pat93746_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth93748_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat93746_))
                                                      (let ((__tmp94264
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth93748_ _pat93746_))))
                (declare (not safe))
                (cons __tmp94264 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat93746_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e93743_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e93743_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e93743_))
                                                (let* ((_e9375093757_ _e93743_)
                                                       (_E9375293761_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9375093757_))))
                                                       (_E9375193840_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9375093757_))
                      (let ((_e9375393765_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9375093757_))))
                        (let ((_hd9375493768_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9375393765_)))
                              (_tl9375593770_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9375393765_))))
                          (let* ((_hd93773_ _hd9375493768_)
                                 (_rest93775_ _tl9375593770_))
                            (if '#t
                                (if (_is-e?93744_ _hd93773_)
                                    (let* ((_e9377693783_ _rest93775_)
                                           (_E9377893787_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx93690_
                                                 _e93743_))))
                                           (_E9377793801_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9377693783_))
                                                  (let ((_e9377993791_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9377693783_))))
                                                    (let ((_hd9378093794_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9377993791_)))
                                                          (_tl9378193796_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9377993791_))))
                                                      (let ((_rest93799_
                                                             _hd9378093794_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9378193796_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur93738_ _rest93799_ false))
                        (let () (declare (not safe)) (_E9377893787_)))
                    (let () (declare (not safe)) (_E9377893787_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9377893787_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9377793801_)))
                                    (let _lp93805_ ((_rest93807_ _rest93775_)
                                                    (_depth93808_ '0))
                                      (let* ((_e9380993816_ _rest93807_)
                                             (_E9381193820_
                                              (lambda ()
                                                (if (fxpositive? _depth93808_)
                                                    (let ((__tmp94266
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur93738_
                                                              _hd93773_
                                                              _is-e?93744_)))
                                                          (__tmp94265
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur93738_
                                                              _rest93807_
                                                              _is-e?93744_))))
                                                      (declare (not safe))
                                                      (_make-splice93737_
                                                       _e93743_
                                                       _depth93808_
                                                       __tmp94266
                                                       __tmp94265))
                                                    (let ((__tmp94268
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur93738_
                                                              _hd93773_
                                                              _is-e?93744_)))
                                                          (__tmp94267
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur93738_
                                                              _rest93807_
                                                              _is-e?93744_))))
                                                      (declare (not safe))
                                                      (_make-cons93736_
                                                       __tmp94268
                                                       __tmp94267)))))
                                             (_E9381093836_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9380993816_))
                                                    (let ((_e9381293824_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9380993816_))))
                                                      (let ((_hd9381393827_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9381293824_)))
                    (_tl9381493829_
                     (let () (declare (not safe)) (##cdr _e9381293824_))))
                (let* ((_rest-hd93832_ _hd9381393827_)
                       (_rest-tl93834_ _tl9381493829_))
                  (if '#t
                      (if (_is-e?93744_ _rest-hd93832_)
                          (let ((__tmp94269
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth93808_ '1))))
                            (declare (not safe))
                            (_lp93805_ _rest-tl93834_ __tmp94269))
                          (if (fxpositive? _depth93808_)
                              (let ((__tmp94271
                                     (let ()
                                       (declare (not safe))
                                       (_recur93738_ _hd93773_ _is-e?93744_)))
                                    (__tmp94270
                                     (let ()
                                       (declare (not safe))
                                       (_recur93738_
                                        _rest93807_
                                        _is-e?93744_))))
                                (declare (not safe))
                                (_make-splice93737_
                                 _e93743_
                                 _depth93808_
                                 __tmp94271
                                 __tmp94270))
                              (let ((__tmp94273
                                     (let ()
                                       (declare (not safe))
                                       (_recur93738_ _hd93773_ _is-e?93744_)))
                                    (__tmp94272
                                     (let ()
                                       (declare (not safe))
                                       (_recur93738_
                                        _rest93807_
                                        _is-e?93744_))))
                                (declare (not safe))
                                (_make-cons93736_ __tmp94273 __tmp94272))))
                      (let () (declare (not safe)) (_E9381193820_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9381193820_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9381093836_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9375293761_))))))
                      (let () (declare (not safe)) (_E9375293761_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9375193840_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e93743_))
                                                    (let ((_g94274_
                                                           (let ((__tmp94276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e93743_)))))
                     (declare (not safe))
                     (_recur93738_ __tmp94276 _is-e?93744_))))
              (begin
                (let ((_g94275_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g94274_)
                             (##vector-length _g94274_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g94275_ 2)))
                      (error "Context expects 2 values" _g94275_)))
                (let ((_e93844_
                       (let () (declare (not safe)) (##vector-ref _g94274_ 0)))
                      (_vars93845_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g94274_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e93844_))
                          _vars93845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e93743_))
                                                        (let ((_g94277_
                                                               (let ((__tmp94279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e93743_)))))
                         (declare (not safe))
                         (_recur93738_ __tmp94279 _is-e?93744_))))
                  (begin
                    (let ((_g94278_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g94277_)
                                 (##vector-length _g94277_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g94278_ 2)))
                          (error "Context expects 2 values" _g94278_)))
                    (let ((_e93847_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g94277_ 0)))
                          (_vars93848_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g94277_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e93847_))
                              _vars93848_))))
                (values (let () (declare (not safe)) (cons 'datum _e93743_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g94280_
                             (let ()
                               (declare (not safe))
                               (_recur93738_ _e93734_ gx#ellipsis?))))
                        (begin
                          (let ((_g94281_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g94280_)
                                       (##vector-length _g94280_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g94281_ 2)))
                                (error "Context expects 2 values" _g94281_)))
                          (let ((_tree93740_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g94280_ 0)))
                                (_vars93741_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g94280_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars93741_))
                                _tree93740_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx93690_
                                   _vars93741_))))))))))
          (let* ((_e9369493704_ _stx93690_)
                 (_E9369693708_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx93690_))))
                 (_E9369593730_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9369493704_))
                        (let ((_e9369793712_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9369493704_))))
                          (let ((_hd9369893715_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9369793712_)))
                                (_tl9369993717_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9369793712_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9369993717_))
                                (let ((_e9370093720_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9369993717_))))
                                  (let ((_hd9370193723_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9370093720_)))
                                        (_tl9370293725_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9370093720_))))
                                    (let ((_form93728_ _hd9370193723_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9370293725_))
                                          (if '#t
                                              (let ((__tmp94283
                                                     (let ((__tmp94284
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse93693_
                                                               _form93728_))))
                                                       (declare (not safe))
                                                       (_generate93692_
                                                        __tmp94284)))
                                                    (__tmp94282
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx93690_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp94283
                                                 __tmp94282))
                                              (let ()
                                                (declare (not safe))
                                                (_E9369693708_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9369693708_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9369693708_)))))
                        (let () (declare (not safe)) (_E9369693708_))))))
            (let () (declare (not safe)) (_E9369593730_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx92954_ _identifier=?92955_ _unwrap-e92956_ _wrap-e92957_)
        (letrec ((_generate-bindings92959_
                  (lambda (_target93554_
                           _ids93555_
                           _clauses93556_
                           _clause-ids93557_
                           _E93558_)
                    (letrec ((_generate193560_
                              (lambda (_clause93657_ _clause-id93658_ _E93659_)
                                (let ((__tmp94289
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id93658_ '())))
                                      (__tmp94285
                                       (let ((__tmp94286
                                              (let ((__tmp94288
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target93554_
                                                             '())))
                                                    (__tmp94287
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause92961_
                                                        _target93554_
                                                        _ids93555_
                                                        _clause93657_
                                                        _E93659_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp94288
                                                 __tmp94287))))
                                         (declare (not safe))
                                         (cons __tmp94286 '()))))
                                  (declare (not safe))
                                  (cons __tmp94289 __tmp94285)))))
                      (let _lp93562_ ((_rest93564_ _clauses93556_)
                                      (_rest-ids93565_ _clause-ids93557_)
                                      (_bindings93566_ '()))
                        (let* ((_rest9356793575_ _rest93564_)
                               (_else9356993583_ (lambda () _bindings93566_))
                               (_K9357193645_
                                (lambda (_rest93586_ _clause93587_)
                                  (let* ((_rest-ids9358893595_ _rest-ids93565_)
                                         (_E9359093599_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9358893595_))))
                                         (_K9359193633_
                                          (lambda (_rest-ids93602_
                                                   _clause-id93603_)
                                            (let* ((_rest-ids9360493612_
                                                    _rest-ids93602_)
                                                   (_else9360693620_
                                                    (lambda ()
                                                      (let ((__tmp94290
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate193560_
                        _clause93587_
                        _clause-id93603_
                        _E93558_))))
                (declare (not safe))
                (cons __tmp94290 _bindings93566_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9360893625_
                                                    (lambda (_next-clause-id93623_)
                                                      (let ((__tmp94291
                                                             (let ((__tmp94292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate193560_
                               _clause93587_
                               _clause-id93603_
                               _next-clause-id93623_))))
                       (declare (not safe))
                       (cons __tmp94292 _bindings93566_))))
                (declare (not safe))
                (_lp93562_ _rest93586_ _rest-ids93602_ __tmp94291)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9360493612_))
                                                  (let* ((_hd9360993628_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9360493612_)))
                                                         (_next-clause-id93631_
                                                          _hd9360993628_))
                                                    (declare (not safe))
                                                    (_K9360893625_
                                                     _next-clause-id93631_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9360693620_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9358893595_))
                                        (let ((_hd9359293636_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9358893595_)))
                                              (_tl9359393638_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9358893595_))))
                                          (let* ((_clause-id93641_
                                                  _hd9359293636_)
                                                 (_rest-ids93643_
                                                  _tl9359393638_))
                                            (declare (not safe))
                                            (_K9359193633_
                                             _rest-ids93643_
                                             _clause-id93641_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9359093599_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9356793575_))
                              (let ((_hd9357293648_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9356793575_)))
                                    (_tl9357393650_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9356793575_))))
                                (let* ((_clause93653_ _hd9357293648_)
                                       (_rest93655_ _tl9357393650_))
                                  (declare (not safe))
                                  (_K9357193645_ _rest93655_ _clause93653_)))
                              (let ()
                                (declare (not safe))
                                (_else9356993583_))))))))
                 (_generate-body92960_
                  (lambda (_bindings93514_ _body93515_)
                    (let _recur93517_ ((_rest93519_ _bindings93514_))
                      (let* ((_rest9352093528_ _rest93519_)
                             (_else9352293536_ (lambda () _body93515_))
                             (_K9352493542_
                              (lambda (_rest93539_ _hd93540_)
                                (let ((__tmp94294
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd93540_ '())))
                                      (__tmp94293
                                       (let ()
                                         (declare (not safe))
                                         (_recur93517_ _rest93539_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp94294
                                   __tmp94293)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9352093528_))
                            (let ((_hd9352593545_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9352093528_)))
                                  (_tl9352693547_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9352093528_))))
                              (let* ((_hd93550_ _hd9352593545_)
                                     (_rest93552_ _tl9352693547_))
                                (declare (not safe))
                                (_K9352493542_ _rest93552_ _hd93550_)))
                            (let ()
                              (declare (not safe))
                              (_else9352293536_)))))))
                 (_generate-clause92961_
                  (lambda (_target93377_ _ids93378_ _clause93379_ _E93380_)
                    (letrec ((_generate193382_
                              (lambda (_hd93469_ _fender93470_ _body93471_)
                                (let ((_g94295_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause92963_
                                          _hd93469_
                                          _ids93378_))))
                                  (begin
                                    (let ((_g94296_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g94295_)
                                                 (##vector-length _g94295_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g94296_ 2)))
                                          (error "Context expects 2 values"
                                                 _g94296_)))
                                    (let ((_e93473_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g94295_ 0)))
                                          (_mvars93474_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g94295_ 1))))
                                      (let* ((_pvars93476_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars93474_))))
                                             (_E93478_
                                              (let ((__tmp94297
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target93377_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E93380_ __tmp94297)))
                                             (_K93511_
                                              (let ((__tmp94298
                                                     (let ((__tmp94300
                                                            (map (lambda (_mvar93480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar93481_)
                           (let* ((_mvar9348293489_ _mvar93480_)
                                  (_E9348493493_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9348293489_))))
                                  (_K9348593499_
                                   (lambda (_depth93496_ _id93497_)
                                     (let ((__tmp94301
                                            (let ((__tmp94302
                                                   (let ((__tmp94304
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id93497_)))
                                                         (__tmp94303
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar93481_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp94304
                                                      __tmp94303
                                                      _depth93496_))))
                                              (declare (not safe))
                                              (cons __tmp94302 '()))))
                                       (declare (not safe))
                                       (cons _id93497_ __tmp94301)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9348293489_))
                                 (let ((_hd9348693502_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9348293489_)))
                                       (_tl9348793504_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9348293489_))))
                                   (let* ((_id93507_ _hd9348693502_)
                                          (_depth93509_ _tl9348793504_))
                                     (declare (not safe))
                                     (_K9348593499_ _depth93509_ _id93507_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9348493493_)))))
                         _mvars93474_
                         _pvars93476_))
                   (__tmp94299
                    (if (let () (declare (not safe)) (eq? _fender93470_ '#t))
                        _body93471_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender93470_
                           _body93471_
                           _E93478_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp94300 __tmp94299))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars93476_
                                                 __tmp94298))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match92962_
                                           _hd93469_
                                           _target93377_
                                           _e93473_
                                           _mvars93474_
                                           _K93511_
                                           _E93478_)))))))))
                      (let* ((_e9338393403_ _clause93379_)
                             (_E9339293407_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9338393403_))))
                             (_E9338593441_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9338393403_))
                                    (let ((_e9339393411_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9338393403_))))
                                      (let ((_hd9339493414_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9339393411_)))
                                            (_tl9339593416_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9339393411_))))
                                        (let ((_hd93419_ _hd9339493414_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9339593416_))
                                              (let ((_e9339693421_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9339593416_))))
                                                (let ((_hd9339793424_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9339693421_)))
                                                      (_tl9339893426_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9339693421_))))
                                                  (let ((_fender93429_
                                                         _hd9339793424_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9339893426_))
                                                        (let ((_e9339993431_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9339893426_))))
                  (let ((_hd9340093434_
                         (let () (declare (not safe)) (##car _e9339993431_)))
                        (_tl9340193436_
                         (let () (declare (not safe)) (##cdr _e9339993431_))))
                    (let ((_body93439_ _hd9340093434_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9340193436_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate193382_
                                 _hd93419_
                                 _fender93429_
                                 _body93439_))
                              (let () (declare (not safe)) (_E9339293407_)))
                          (let () (declare (not safe)) (_E9339293407_))))))
                (let () (declare (not safe)) (_E9339293407_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9339293407_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9339293407_)))))
                             (_E9338493465_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9338393403_))
                                    (let ((_e9338693445_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9338393403_))))
                                      (let ((_hd9338793448_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9338693445_)))
                                            (_tl9338893450_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9338693445_))))
                                        (let ((_hd93453_ _hd9338793448_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9338893450_))
                                              (let ((_e9338993455_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9338893450_))))
                                                (let ((_hd9339093458_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9338993455_)))
                                                      (_tl9339193460_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9338993455_))))
                                                  (let ((_body93463_
                                                         _hd9339093458_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9339193460_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate193382_
                                                               _hd93453_
                                                               '#t
                                                               _body93463_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9338593441_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9338593441_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9338593441_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9338593441_))))))
                        (let () (declare (not safe)) (_E9338493465_))))))
                 (_generate-match92962_
                  (lambda (_where93126_
                           _target93127_
                           _hd93128_
                           _mvars93129_
                           _K93130_
                           _E93131_)
                    (letrec ((_BUG93133_
                              (lambda (_q93375_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx92954_
                                         _hd93128_
                                         _q93375_))))
                             (_recur93134_
                              (lambda (_e93225_
                                       _vars93226_
                                       _target93227_
                                       _E93228_
                                       _k93229_)
                                (let* ((_e9323093237_ _e93225_)
                                       (_E9323293241_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9323093237_))))
                                       (_K9323393363_
                                        (lambda (_body93244_ _tag93245_)
                                          (let ((_$e93247_ _tag93245_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e93247_))
                                                (_k93229_ _vars93226_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e93247_))
                                                    (let ((__tmp94309
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target93227_)))
                                                          (__tmp94305
                                                           (let ((__tmp94307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp94308
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e92957_ _body93244_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?92955_
                             __tmp94308
                             _target93227_)))
                         (__tmp94306 (_k93229_ _vars93226_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp94307 __tmp94306 _E93228_))))
              (declare (not safe))
              (gx#core-list 'if __tmp94309 __tmp94305 _E93228_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e93247_))
                                                        (_k93229_
                                                         (let ((__tmp94310
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body93244_ _target93227_))))
                   (declare (not safe))
                   (cons __tmp94310 _vars93226_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e93247_))
                    (let ((_$e93250_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd93251_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl93252_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp94330
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target93227_)))
                            (__tmp94311
                             (let ((__tmp94325
                                    (let ((__tmp94326
                                           (let ((__tmp94329
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e93250_ '())))
                                                 (__tmp94327
                                                  (let ((__tmp94328
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e92956_
                                                            _target93227_))))
                                                    (declare (not safe))
                                                    (cons __tmp94328 '()))))
                                             (declare (not safe))
                                             (cons __tmp94329 __tmp94327))))
                                      (declare (not safe))
                                      (cons __tmp94326 '())))
                                   (__tmp94312
                                    (let ((__tmp94315
                                           (let ((__tmp94321
                                                  (let ((__tmp94324
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd93251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp94322
                 (let ((__tmp94323
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e93250_))))
                   (declare (not safe))
                   (cons __tmp94323 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp94324
                                                          __tmp94322)))
                                                 (__tmp94316
                                                  (let ((__tmp94317
                                                         (let ((__tmp94320
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl93252_ '())))
                       (__tmp94318
                        (let ((__tmp94319
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e93250_))))
                          (declare (not safe))
                          (cons __tmp94319 '()))))
                   (declare (not safe))
                   (cons __tmp94320 __tmp94318))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp94317 '()))))
                                             (declare (not safe))
                                             (cons __tmp94321 __tmp94316)))
                                          (__tmp94313
                                           (let* ((_body9325393260_
                                                   _body93244_)
                                                  (_E9325593264_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9325393260_))))
                                                  (_K9325693272_
                                                   (lambda (_tl93267_
                                                            _hd93268_)
                                                     (let ((__tmp94314
                                                            (lambda (_vars93270_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur93134_
                         _tl93267_
                         _vars93270_
                         _$tl93252_
                         _E93228_
                         _k93229_)))))
               (declare (not safe))
               (_recur93134_
                _hd93268_
                _vars93226_
                _$hd93251_
                _E93228_
                __tmp94314)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9325393260_))
                                                 (let ((_hd9325793275_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9325393260_)))
                                                       (_tl9325893277_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9325393260_))))
                                                   (let* ((_hd93280_
                                                           _hd9325793275_)
                                                          (_tl93282_
                                                           _tl9325893277_))
                                                     (declare (not safe))
                                                     (_K9325693272_
                                                      _tl93282_
                                                      _hd93280_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9325593264_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp94315
                                       __tmp94313))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp94325
                                __tmp94312))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp94330 __tmp94311 _E93228_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e93247_))
                        (let* ((_body9328393290_ _body93244_)
                               (_E9328593294_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9328393290_))))
                               (_K9328693345_
                                (lambda (_tl93297_ _hd93298_)
                                  (let* ((_rlen93300_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen93135_ _tl93297_)))
                                         (_$target93302_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd93304_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl93306_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp93308_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e93310_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd93312_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl93314_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars93316_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars93136_ _hd93298_)))
                                         (_lvars93318_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars93316_)))
                                         (_tlvars93320_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars93316_)))
                                         (_linit93324_
                                          (map (lambda (_var93322_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars93318_)))
                                    (letrec ((_make-loop93327_
                                              (lambda (_vars93331_)
                                                (let ((__tmp94333
                                                       (let ((__tmp94334
                                                              (let ((__tmp94370
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp93308_ '())))
                            (__tmp94335
                             (let ((__tmp94336
                                    (let ((__tmp94369
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd93304_ _lvars93318_)))
                                          (__tmp94337
                                           (let ((__tmp94368
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd93304_)))
                                                 (__tmp94346
                                                  (let ((__tmp94363
                                                         (let ((__tmp94364
                                                                (let ((__tmp94367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e93310_ '())))
                              (__tmp94365
                               (let ((__tmp94366
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e92956_
                                         _$hd93304_))))
                                 (declare (not safe))
                                 (cons __tmp94366 '()))))
                          (declare (not safe))
                          (cons __tmp94367 __tmp94365))))
                   (declare (not safe))
                   (cons __tmp94364 '())))
                (__tmp94347
                 (let ((__tmp94353
                        (let ((__tmp94359
                               (let ((__tmp94362
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd93312_ '())))
                                     (__tmp94360
                                      (let ((__tmp94361
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e93310_))))
                                        (declare (not safe))
                                        (cons __tmp94361 '()))))
                                 (declare (not safe))
                                 (cons __tmp94362 __tmp94360)))
                              (__tmp94354
                               (let ((__tmp94355
                                      (let ((__tmp94358
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl93314_ '())))
                                            (__tmp94356
                                             (let ((__tmp94357
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e93310_))))
                                               (declare (not safe))
                                               (cons __tmp94357 '()))))
                                        (declare (not safe))
                                        (cons __tmp94358 __tmp94356))))
                                 (declare (not safe))
                                 (cons __tmp94355 '()))))
                          (declare (not safe))
                          (cons __tmp94359 __tmp94354)))
                       (__tmp94348
                        (let ((__tmp94349
                               (lambda (_hdvars93333_)
                                 (let ((__tmp94350
                                        (let ((__tmp94351
                                               (map (lambda (_svar93335_
                                                             _lvar93336_)
                                                      (let ((__tmp94352
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar93335_ _hdvars93333_ _BUG93133_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp94352 _lvar93336_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars93316_
                                                    _lvars93318_)))
                                          (declare (not safe))
                                          (cons _$lp-tl93314_ __tmp94351))))
                                   (declare (not safe))
                                   (cons _$lp93308_ __tmp94350)))))
                          (declare (not safe))
                          (_recur93134_
                           _hd93298_
                           '()
                           _$lp-hd93312_
                           _E93228_
                           __tmp94349))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp94353 __tmp94348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp94363
                                                     __tmp94347)))
                                                 (__tmp94338
                                                  (let ((__tmp94342
                                                         (map (lambda (_lvar93338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar93339_)
                        (let ((__tmp94345
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar93339_ '())))
                              (__tmp94343
                               (let ((__tmp94344
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar93338_))))
                                 (declare (not safe))
                                 (cons __tmp94344 '()))))
                          (declare (not safe))
                          (cons __tmp94345 __tmp94343)))
                      _lvars93318_
                      _tlvars93320_))
                (__tmp94339
                 (_k93229_
                  (let ((__tmp94340
                         (lambda (_svar93341_ _tlvar93342_ _r93343_)
                           (let ((__tmp94341
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar93341_ _tlvar93342_))))
                             (declare (not safe))
                             (cons __tmp94341 _r93343_)))))
                    (declare (not safe))
                    (foldl2 __tmp94340
                            _vars93331_
                            _svars93316_
                            _tlvars93320_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp94342
                                                     __tmp94339))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp94368
                                              __tmp94346
                                              __tmp94338))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp94369
                                       __tmp94337))))
                               (declare (not safe))
                               (cons __tmp94336 '()))))
                        (declare (not safe))
                        (cons __tmp94370 __tmp94335))))
                 (declare (not safe))
                 (cons __tmp94334 '())))
              (__tmp94331
               (let ((__tmp94332
                      (let ()
                        (declare (not safe))
                        (cons _$target93302_ _linit93324_))))
                 (declare (not safe))
                 (cons _$lp93308_ __tmp94332))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp94333
                                                   __tmp94331)))))
                                      (let ((_body93329_
                                             (let ((__tmp94372
                                                    (let ((__tmp94373
                                                           (let ((__tmp94376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp94377
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl93306_ '()))))
                            (declare (not safe))
                            (cons _$target93302_ __tmp94377)))
                         (__tmp94374
                          (let ((__tmp94375
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target93227_
                                    _rlen93300_))))
                            (declare (not safe))
                            (cons __tmp94375 '()))))
                     (declare (not safe))
                     (cons __tmp94376 __tmp94374))))
              (declare (not safe))
              (cons __tmp94373 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp94371
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur93134_
                                                       _tl93297_
                                                       _vars93226_
                                                       _$tl93306_
                                                       _E93228_
                                                       _make-loop93327_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp94372
                                                __tmp94371))))
                                        (let ((__tmp94381
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target93227_)))
                                              (__tmp94378
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen93300_))
                                                   _body93329_
                                                   (let ((__tmp94379
                                                          (let ((__tmp94380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target93227_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp94380 _rlen93300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp94379
                                                      _body93329_
                                                      _E93228_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp94381
                                           __tmp94378
                                           _E93228_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9328393290_))
                              (let ((_hd9328793348_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9328393290_)))
                                    (_tl9328893350_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9328393290_))))
                                (let* ((_hd93353_ _hd9328793348_)
                                       (_tl93355_ _tl9328893350_))
                                  (declare (not safe))
                                  (_K9328693345_ _tl93355_ _hd93353_)))
                              (let () (declare (not safe)) (_E9328593294_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e93247_))
                            (let ((__tmp94383
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target93227_)))
                                  (__tmp94382 (_k93229_ _vars93226_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp94383
                               __tmp94382
                               _E93228_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e93247_))
                                (let ((_$e93357_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp94392
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target93227_)))
                                        (__tmp94384
                                         (let ((__tmp94386
                                                (let ((__tmp94387
                                                       (let ((__tmp94391
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e93357_ '())))
                     (__tmp94388
                      (let ((__tmp94389
                             (let ((__tmp94390
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e92956_
                                       _target93227_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp94390))))
                        (declare (not safe))
                        (cons __tmp94389 '()))))
                 (declare (not safe))
                 (cons __tmp94391 __tmp94388))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp94387 '())))
                                               (__tmp94385
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur93134_
                                                   _body93244_
                                                   _vars93226_
                                                   _$e93357_
                                                   _E93228_
                                                   _k93229_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp94386
                                            __tmp94385))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp94392
                                     __tmp94384
                                     _E93228_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e93247_))
                                    (let ((_$e93359_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp94401
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target93227_)))
                                            (__tmp94393
                                             (let ((__tmp94395
                                                    (let ((__tmp94396
                                                           (let ((__tmp94400
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e93359_ '())))
                         (__tmp94397
                          (let ((__tmp94398
                                 (let ((__tmp94399
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e92956_
                                           _target93227_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp94399))))
                            (declare (not safe))
                            (cons __tmp94398 '()))))
                     (declare (not safe))
                     (cons __tmp94400 __tmp94397))))
              (declare (not safe))
              (cons __tmp94396 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp94394
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur93134_
                                                       _body93244_
                                                       _vars93226_
                                                       _$e93359_
                                                       _E93228_
                                                       _k93229_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp94395
                                                __tmp94394))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp94401
                                         __tmp94393
                                         _E93228_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e93247_))
                                        (let ((_$e93361_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp94411
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target93227_)))
                                                (__tmp94402
                                                 (let ((__tmp94406
                                                        (let ((__tmp94407
                                                               (let ((__tmp94410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e93361_ '())))
                             (__tmp94408
                              (let ((__tmp94409
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target93227_))))
                                (declare (not safe))
                                (cons __tmp94409 '()))))
                         (declare (not safe))
                         (cons __tmp94410 __tmp94408))))
                  (declare (not safe))
                  (cons __tmp94407 '())))
               (__tmp94403
                (let ((__tmp94405
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e93361_ _body93244_)))
                      (__tmp94404 (_k93229_ _vars93226_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp94405 __tmp94404 _E93228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp94406
                                                    __tmp94403))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp94411
                                             __tmp94402
                                             _E93228_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG93133_ _e93225_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9323093237_))
                                      (let ((_hd9323493366_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9323093237_)))
                                            (_tl9323593368_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9323093237_))))
                                        (let* ((_tag93371_ _hd9323493366_)
                                               (_body93373_ _tl9323593368_))
                                          (declare (not safe))
                                          (_K9323393363_
                                           _body93373_
                                           _tag93371_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9323293241_))))))
                             (_splice-rlen93135_
                              (lambda (_e93187_)
                                (let _lp93189_ ((_e93191_ _e93187_)
                                                (_n93192_ '0))
                                  (let* ((_e9319393200_ _e93191_)
                                         (_E9319593204_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9319393200_))))
                                         (_K9319693213_
                                          (lambda (_body93207_ _tag93208_)
                                            (let ((_$e93210_ _tag93208_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e93210_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx92954_
                                                     _where93126_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e93210_))
                                                      (let ((__tmp94413
                                                             (cdr _body93207_))
                                                            (__tmp94412
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n93192_ '1))))
                (declare (not safe))
                (_lp93189_ __tmp94413 __tmp94412))
              _n93192_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9319393200_))
                                        (let ((_hd9319793216_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9319393200_)))
                                              (_tl9319893218_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9319393200_))))
                                          (let* ((_tag93221_ _hd9319793216_)
                                                 (_body93223_ _tl9319893218_))
                                            (declare (not safe))
                                            (_K9319693213_
                                             _body93223_
                                             _tag93221_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9319593204_)))))))
                             (_splice-vars93136_
                              (lambda (_e93143_)
                                (let _recur93145_ ((_e93147_ _e93143_)
                                                   (_vars93148_ '()))
                                  (let* ((_e9314993156_ _e93147_)
                                         (_E9315193160_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9314993156_))))
                                         (_K9315293175_
                                          (lambda (_body93163_ _tag93164_)
                                            (let ((_$e93166_ _tag93164_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e93166_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body93163_
                                                          _vars93148_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e93166_))
                  (let () (declare (not safe)) (eq? 'splice _$e93166_)))
              (let ((__tmp94416 (cdr _body93163_))
                    (__tmp94414
                     (let ((__tmp94415 (car _body93163_)))
                       (declare (not safe))
                       (_recur93145_ __tmp94415 _vars93148_))))
                (declare (not safe))
                (_recur93145_ __tmp94416 __tmp94414))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e93166_))
                      (let () (declare (not safe)) (eq? 'box _$e93166_)))
                  (let ()
                    (declare (not safe))
                    (_recur93145_ _body93163_ _vars93148_))
                  _vars93148_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9314993156_))
                                        (let ((_hd9315393178_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9314993156_)))
                                              (_tl9315493180_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9314993156_))))
                                          (let* ((_tag93183_ _hd9315393178_)
                                                 (_body93185_ _tl9315493180_))
                                            (declare (not safe))
                                            (_K9315293175_
                                             _body93185_
                                             _tag93183_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9315193160_)))))))
                             (_make-body93137_
                              (lambda (_vars93139_)
                                (let ((__tmp94417
                                       (map (lambda (_mvar93141_)
                                              (let ((__tmp94418
                                                     (car _mvar93141_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp94418
                                                 _vars93139_
                                                 _BUG93133_)))
                                            _mvars93129_)))
                                  (declare (not safe))
                                  (cons _K93130_ __tmp94417)))))
                      (let ()
                        (declare (not safe))
                        (_recur93134_
                         _hd93128_
                         '()
                         _target93127_
                         _E93131_
                         _make-body93137_)))))
                 (_parse-clause92963_
                  (lambda (_hd93032_ _ids93033_)
                    (let _recur93035_ ((_e93037_ _hd93032_)
                                       (_vars93038_ '())
                                       (_depth93039_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e93037_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e93037_))
                              (values '(any) _vars93038_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e93037_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx92954_
                                     _hd93032_))
                                  (if (let ((__tmp94419
                                             (lambda (_id93041_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e93037_
                                                  _id93041_)))))
                                        (declare (not safe))
                                        (find __tmp94419 _ids93033_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e93037_))
                                              _vars93038_)
                                      (if (let ((__tmp94420
                                                 (lambda (_var93043_)
                                                   (let ((__tmp94421
                                                          (car _var93043_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e93037_
                                                      __tmp94421)))))
                                            (declare (not safe))
                                            (find __tmp94420 _vars93038_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx92954_
                                             _e93037_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e93037_))
                                                  (let ((__tmp94422
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e93037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth93039_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp94422
                                                          _vars93038_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e93037_))
                              (let* ((_e9304493051_ _e93037_)
                                     (_E9304693055_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9304493051_))))
                                     (_E9304593116_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9304493051_))
                                            (let ((_e9304793059_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9304493051_))))
                                              (let ((_hd9304893062_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9304793059_)))
                                                    (_tl9304993064_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9304793059_))))
                                                (let* ((_hd93067_
                                                        _hd9304893062_)
                                                       (_rest93069_
                                                        _tl9304993064_))
                                                  (if '#t
                                                      (let* ((_make-pair93084_
                                                              (lambda (_tag93071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd93072_
                               _tl93073_)
                        (let* ((_hd-depth93075_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag93071_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth93039_ '1))
                                    _depth93039_))
                               (_g94423_
                                (let ()
                                  (declare (not safe))
                                  (_recur93035_
                                   _hd93072_
                                   _vars93038_
                                   _hd-depth93075_))))
                          (begin
                            (let ((_g94424_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g94423_)
                                         (##vector-length _g94423_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g94424_ 2)))
                                  (error "Context expects 2 values" _g94424_)))
                            (let ((_hd93077_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g94423_ 0)))
                                  (_vars93078_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g94423_ 1))))
                              (let ((_g94425_
                                     (let ()
                                       (declare (not safe))
                                       (_recur93035_
                                        _tl93073_
                                        _vars93078_
                                        _depth93039_))))
                                (begin
                                  (let ((_g94426_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g94425_)
                                               (##vector-length _g94425_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g94426_ 2)))
                                        (error "Context expects 2 values"
                                               _g94426_)))
                                  (let ((_tl93080_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g94425_ 0)))
                                        (_vars93081_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g94425_ 1))))
                                    (let ()
                                      (values (let ((__tmp94427
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd93077_
                                                             _tl93080_))))
                                                (declare (not safe))
                                                (cons _tag93071_ __tmp94427))
                                              _vars93081_))))))))))
                     (_e9308593092_ _rest93069_)
                     (_E9308793096_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair93084_ 'cons _hd93067_ _rest93069_))))
                     (_E9308693112_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9308593092_))
                            (let ((_e9308893100_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9308593092_))))
                              (let ((_hd9308993103_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9308893100_)))
                                    (_tl9309093105_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9308893100_))))
                                (let* ((_rest-hd93108_ _hd9308993103_)
                                       (_rest-tl93110_ _tl9309093105_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd93108_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair93084_
                                             'splice
                                             _hd93067_
                                             _rest-tl93110_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair93084_
                                             'cons
                                             _hd93067_
                                             _rest93069_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9308793096_))))))
                            (let () (declare (not safe)) (_E9308793096_))))))
                (let () (declare (not safe)) (_E9308693112_)))
              (let () (declare (not safe)) (_E9304693055_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9304693055_))))))
                                (let () (declare (not safe)) (_E9304593116_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e93037_))
                                  (values '(null) _vars93038_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e93037_))
                                      (let ((_g94428_
                                             (let ((__tmp94430
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e93037_)))))
                                               (declare (not safe))
                                               (_recur93035_
                                                __tmp94430
                                                _vars93038_
                                                _depth93039_))))
                                        (begin
                                          (let ((_g94429_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g94428_)
                                                       (##vector-length
                                                        _g94428_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g94429_ 2)))
                                                (error "Context expects 2 values"
                                                       _g94429_)))
                                          (let ((_e93120_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g94428_ 0)))
                                                (_vars93121_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g94428_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e93120_))
                                                    _vars93121_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e93037_))
                                          (let ((_g94431_
                                                 (let ((__tmp94433
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e93037_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur93035_
                                                    __tmp94433
                                                    _vars93038_
                                                    _depth93039_))))
                                            (begin
                                              (let ((_g94432_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g94431_)
                                                           (##vector-length
                                                            _g94431_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g94432_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g94432_)))
                                              (let ((_e93123_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g94431_
                                                        0)))
                                                    (_vars93124_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g94431_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e93123_))
                                                        _vars93124_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e93037_))
                                              (values (let ((__tmp94434
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e93037_))))
                (declare (not safe))
                (cons 'datum __tmp94434))
              _vars93038_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx92954_
                                                 _e93037_))))))))))))
          (let* ((_e9296492977_ _stx92954_)
                 (_E9296692981_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9296492977_))))
                 (_E9296593028_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9296492977_))
                        (let ((_e9296792985_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9296492977_))))
                          (let ((_hd9296892988_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9296792985_)))
                                (_tl9296992990_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9296792985_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9296992990_))
                                (let ((_e9297092993_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9296992990_))))
                                  (let ((_hd9297192996_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9297092993_)))
                                        (_tl9297292998_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9297092993_))))
                                    (let ((_expr93001_ _hd9297192996_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9297292998_))
                                          (let ((_e9297393003_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9297292998_))))
                                            (let ((_hd9297493006_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9297393003_)))
                                                  (_tl9297593008_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9297393003_))))
                                              (let* ((_ids93011_
                                                      _hd9297493006_)
                                                     (_clauses93013_
                                                      _tl9297593008_))
                                                (if '#t
                                                    (if (let ((__tmp94435
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids93011_))))
                  (declare (not safe))
                  (not __tmp94435))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx92954_
                   _ids93011_))
                (if (let ((__tmp94436
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses93013_))))
                      (declare (not safe))
                      (not __tmp94436))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx92954_))
                    (let* ((_ids93015_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids93011_)))
                           (_clauses93017_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses93013_)))
                           (_clause-ids93019_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses93017_)))
                           (_E93021_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target93023_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first93025_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses93017_))
                                _E93021_
                                (car _clause-ids93019_))))
                      (let ((__tmp94438
                             (let ((__tmp94439
                                    (let ((__tmp94441
                                           (let ((__tmp94446
                                                  (let ((__tmp94447
                                                         (let ((__tmp94452
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E93021_ '())))
                       (__tmp94448
                        (let ((__tmp94449
                               (let ((__tmp94451
                                      (let ()
                                        (declare (not safe))
                                        (cons _target93023_ '())))
                                     (__tmp94450
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target93023_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp94451
                                  __tmp94450))))
                          (declare (not safe))
                          (cons __tmp94449 '()))))
                   (declare (not safe))
                   (cons __tmp94452 __tmp94448))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp94447 '())))
                                                 (__tmp94442
                                                  (let ((__tmp94445
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings92959_
                                                            _target93023_
                                                            _ids93015_
                                                            _clauses93017_
                                                            _clause-ids93019_
                                                            _E93021_)))
                                                        (__tmp94443
                                                         (let ((__tmp94444
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr93001_ '()))))
                   (declare (not safe))
                   (cons _first93025_ __tmp94444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body92960_
                                                     __tmp94445
                                                     __tmp94443))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp94446
                                              __tmp94442)))
                                          (__tmp94440
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx92954_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp94441
                                       __tmp94440))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp94439)))
                            (__tmp94437
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx92954_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp94438 __tmp94437)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9296692981_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9296692981_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9296692981_)))))
                        (let () (declare (not safe)) (_E9296692981_))))))
            (let () (declare (not safe)) (_E9296593028_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx93664_)
        (let* ((_identifier=?93666_ 'free-identifier=?)
               (_unwrap-e93668_ 'syntax-e)
               (_wrap-e93670_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx93664_
           _identifier=?93666_
           _unwrap-e93668_
           _wrap-e93670_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx93672_ _identifier=?93673_)
        (let* ((_unwrap-e93675_ 'syntax-e) (_wrap-e93677_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx93672_
           _identifier=?93673_
           _unwrap-e93675_
           _wrap-e93677_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx93679_ _identifier=?93680_ _unwrap-e93681_)
        (let ((_wrap-e93683_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx93679_
           _identifier=?93680_
           _unwrap-e93681_
           _wrap-e93683_))))
    (define gx#macro-expand-syntax-case
      (lambda _g94454_
        (let ((_g94453_ (let () (declare (not safe)) (##length _g94454_))))
          (cond ((let () (declare (not safe)) (##fx= _g94453_ 1))
                 (apply (lambda (_stx93664_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx93664_)))
                        _g94454_))
                ((let () (declare (not safe)) (##fx= _g94453_ 2))
                 (apply (lambda (_stx93672_ _identifier=?93673_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx93672_
                             _identifier=?93673_)))
                        _g94454_))
                ((let () (declare (not safe)) (##fx= _g94453_ 3))
                 (apply (lambda (_stx93679_
                                 _identifier=?93680_
                                 _unwrap-e93681_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx93679_
                             _identifier=?93680_
                             _unwrap-e93681_)))
                        _g94454_))
                ((let () (declare (not safe)) (##fx= _g94453_ 4))
                 (apply (lambda (_stx93685_
                                 _identifier=?93686_
                                 _unwrap-e93687_
                                 _wrap-e93688_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx93685_
                             _identifier=?93686_
                             _unwrap-e93687_
                             _wrap-e93688_)))
                        _g94454_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g94454_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx92951_)
        (if (let () (declare (not safe)) (gx#identifier? _stx92951_))
            (let ((__tmp94455
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx92951_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp94455 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd92909_ . _rest92910_)
        (let ((_len92912_ (length _hd92909_)))
          (let _lp92914_ ((_rest92916_ _rest92910_))
            (let* ((_rest9291792925_ _rest92916_)
                   (_else9291992933_ (lambda () '#!void))
                   (_K9292192939_
                    (lambda (_rest92936_ _hd92937_)
                      (if (fx= _len92912_ (length _hd92937_))
                          (let () (declare (not safe)) (_lp92914_ _rest92936_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd92937_))))))
              (if (let () (declare (not safe)) (##pair? _rest9291792925_))
                  (let ((_hd9292292942_
                         (let ()
                           (declare (not safe))
                           (##car _rest9291792925_)))
                        (_tl9292392944_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9291792925_))))
                    (let* ((_hd92947_ _hd9292292942_)
                           (_rest92949_ _tl9292392944_))
                      (declare (not safe))
                      (_K9292192939_ _rest92949_ _hd92947_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx92867_ _n92868_)
        (let _lp92870_ ((_rest92872_ _stx92867_) (_r92873_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest92872_))
              (let* ((_g9287492881_
                      (let () (declare (not safe)) (gx#syntax-e _rest92872_)))
                     (_E9287692885_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9287492881_))))
                     (_K9287792891_
                      (lambda (_rest92888_ _hd92889_)
                        (let ((__tmp94456
                               (let ()
                                 (declare (not safe))
                                 (cons _hd92889_ _r92873_))))
                          (declare (not safe))
                          (_lp92870_ _rest92888_ __tmp94456)))))
                (if (let () (declare (not safe)) (##pair? _g9287492881_))
                    (let ((_hd9287892894_
                           (let () (declare (not safe)) (##car _g9287492881_)))
                          (_tl9287992896_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9287492881_))))
                      (let* ((_hd92899_ _hd9287892894_)
                             (_rest92901_ _tl9287992896_))
                        (declare (not safe))
                        (_K9287792891_ _rest92901_ _hd92899_)))
                    (let () (declare (not safe)) (_E9287692885_))))
              (let _lp92903_ ((_n92905_ _n92868_)
                              (_l92906_ _r92873_)
                              (_r92907_ _rest92872_))
                (if (let () (declare (not safe)) (null? _l92906_))
                    (values _l92906_ _r92907_)
                    (if (fxpositive? _n92905_)
                        (let ((__tmp94460
                               (let () (declare (not safe)) (fx- _n92905_ '1)))
                              (__tmp94459 (cdr _l92906_))
                              (__tmp94457
                               (let ((__tmp94458 (car _l92906_)))
                                 (declare (not safe))
                                 (cons __tmp94458 _r92907_))))
                          (declare (not safe))
                          (_lp92903_ __tmp94460 __tmp94459 __tmp94457))
                        (values (reverse _l92906_) _r92907_))))))))))
