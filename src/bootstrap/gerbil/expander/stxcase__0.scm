(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1710699091)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp98281 (list gx#expander::t))
            (__tmp98279
             (let ((__tmp98280
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp98280 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp98281
         '(id depth)
         __tmp98279
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args98276_
        (apply make-instance gx#syntax-pattern::t _$args98276_)))
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
      (lambda (_self98273_ _stx98274_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx98274_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx97755_)
        (letrec ((_generate97757_
                  (lambda (_e97984_)
                    (letrec ((_BUG97986_
                              (lambda (_q98148_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx97755_
                                         _e97984_
                                         _q98148_))))
                             (_local-pattern-e97987_
                              (lambda (_pat98146_)
                                (let ((__tmp98282
                                       (##structure-ref
                                        _pat98146_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp98282))))
                             (_getvar97988_
                              (lambda (_q98143_ _vars98144_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q98143_
                                   _vars98144_
                                   _BUG97986_))))
                             (_getarg97989_
                              (lambda (_arg98109_ _vars98110_)
                                (let* ((_arg9811198118_ _arg98109_)
                                       (_E9811398122_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9811198118_))))
                                       (_K9811498131_
                                        (lambda (_e98125_ _tag98126_)
                                          (let ((_$e98128_ _tag98126_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e98128_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar97988_
                                                   _e98125_
                                                   _vars98110_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e98128_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e97987_
                                                       _e98125_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG97986_
                                                       _arg98109_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9811198118_))
                                      (let ((_hd9811598134_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9811198118_)))
                                            (_tl9811698136_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9811198118_))))
                                        (let* ((_tag98139_ _hd9811598134_)
                                               (_e98141_ _tl9811698136_))
                                          (declare (not safe))
                                          (_K9811498131_ _e98141_ _tag98139_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9811398122_)))))))
                      (let _recur97991_ ((_e97993_ _e97984_) (_vars97994_ '()))
                        (let* ((_e9799598002_ _e97993_)
                               (_E9799798006_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9799598002_))))
                               (_K9799898097_
                                (lambda (_body98009_ _tag98010_)
                                  (let ((_$e98012_ _tag98010_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e98012_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body98009_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e98012_))
                                            (let ((_id98015_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body98009_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id98015_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks98017_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id98015_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks98017_))
                                                        (let ((__tmp98310
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body98009_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp98310))
                (let ((__tmp98309
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body98009_)))
                      (__tmp98308
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body98009_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp98309
                   __tmp98308
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id98015_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body98009_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG97986_
                                                         _e97993_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e98012_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e97987_
                                                   _body98009_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e98012_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar97988_
                                                       _body98009_
                                                       _vars97994_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e98012_))
                                                        (let ((__tmp98306
                                                               (let ((__tmp98307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body98009_)))
                         (declare (not safe))
                         (_recur97991_ __tmp98307 _vars97994_)))
                      (__tmp98304
                       (let ((__tmp98305 (cdr _body98009_)))
                         (declare (not safe))
                         (_recur97991_ __tmp98305 _vars97994_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp98306 __tmp98304))
                (if (let () (declare (not safe)) (eq? 'vector _$e98012_))
                    (let ((__tmp98303
                           (let ()
                             (declare (not safe))
                             (_recur97991_ _body98009_ _vars97994_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp98303))
                    (if (let () (declare (not safe)) (eq? 'box _$e98012_))
                        (let ((__tmp98302
                               (let ()
                                 (declare (not safe))
                                 (_recur97991_ _body98009_ _vars97994_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp98302))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e98012_))
                            (let* ((_body9801898029_ _body98009_)
                                   (_E9802098033_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9801898029_))))
                                   (_K9802198071_
                                    (lambda (_args98036_
                                             _iv98037_
                                             _hd98038_
                                             _depth98039_)
                                      (let* ((_targets98045_
                                              (map (lambda (_g9804098042_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg97989_
                                                        _g9804098042_
                                                        _vars97994_)))
                                                   _args98036_))
                                             (_fold-in98047_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args98036_)))
                                             (_fold-out98049_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args98051_
                                              (let ((__tmp98283
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out98049_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp98283
                                                        _fold-in98047_)))
                                             (_lambda-body98068_
                                              (if (fx> _depth98039_ '1)
                                                  (let ((_r-args98059_
                                                         (map (lambda (_arg98053_)
                                                                (let ((__tmp98288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg98053_)))
                          (declare (not safe))
                          (cons 'ref __tmp98288)))
                      _args98036_))
                (_r-vars98060_
                 (let ((__tmp98289
                        (lambda (_arg98055_ _var98056_ _r98057_)
                          (let ((__tmp98290
                                 (let ((__tmp98291 (cdr _arg98055_)))
                                   (declare (not safe))
                                   (cons __tmp98291 _var98056_))))
                            (declare (not safe))
                            (cons __tmp98290 _r98057_)))))
                   (declare (not safe))
                   (foldr2 __tmp98289
                           _vars97994_
                           _args98036_
                           _fold-in98047_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp98292
                                                           (let ((__tmp98293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98297
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth98039_ '1)))
                                (__tmp98294
                                 (let ((__tmp98295
                                        (let ((__tmp98296
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out98049_))))
                                          (declare (not safe))
                                          (cons __tmp98296 _r-args98059_))))
                                   (declare (not safe))
                                   (cons _hd98038_ __tmp98295))))
                            (declare (not safe))
                            (cons __tmp98297 __tmp98294))))
                     (declare (not safe))
                     (cons 'splice __tmp98293))))
              (declare (not safe))
              (_recur97991_ __tmp98292 _r-vars98060_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars98066_
                                                          (let ((__tmp98284
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg98062_ _var98063_ _r98064_)
                           (let ((__tmp98285
                                  (let ((__tmp98286 (cdr _arg98062_)))
                                    (declare (not safe))
                                    (cons __tmp98286 _var98063_))))
                             (declare (not safe))
                             (cons __tmp98285 _r98064_)))))
                    (declare (not safe))
                    (foldr2 __tmp98284
                            _vars97994_
                            _args98036_
                            _fold-in98047_)))
                 (__tmp98287
                  (let ()
                    (declare (not safe))
                    (_recur97991_ _hd98038_ _hd-vars98066_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp98287
                                                     _fold-out98049_)))))
                                        (let ((__tmp98301
                                               (if (fx> (length _targets98045_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets98045_))
                                                   '#!void))
                                              (__tmp98298
                                               (let ((__tmp98300
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args98051_
                                                         _lambda-body98068_)))
                                                     (__tmp98299
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur97991_
                                                         _iv98037_
                                                         _vars97994_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp98300
                                                  __tmp98299
                                                  _targets98045_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp98301
                                           __tmp98298))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9801898029_))
                                  (let ((_hd9802298074_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9801898029_)))
                                        (_tl9802398076_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9801898029_))))
                                    (let ((_depth98079_ _hd9802298074_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9802398076_))
                                          (let ((_hd9802498081_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9802398076_)))
                                                (_tl9802598083_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9802398076_))))
                                            (let ((_hd98086_ _hd9802498081_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9802598083_))
                                                  (let ((_hd9802698088_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9802598083_)))
                                                        (_tl9802798090_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9802598083_))))
                                                    (let* ((_iv98093_
                                                            _hd9802698088_)
                                                           (_args98095_
                                                            _tl9802798090_))
                                                      (declare (not safe))
                                                      (_K9802198071_
                                                       _args98095_
                                                       _iv98093_
                                                       _hd98086_
                                                       _depth98079_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9802098033_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9802098033_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9802098033_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e98012_))
                                _body98009_
                                (let ()
                                  (declare (not safe))
                                  (_BUG97986_ _e97993_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9799598002_))
                              (let ((_hd9799998100_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9799598002_)))
                                    (_tl9800098102_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9799598002_))))
                                (let* ((_tag98105_ _hd9799998100_)
                                       (_body98107_ _tl9800098102_))
                                  (declare (not safe))
                                  (_K9799898097_ _body98107_ _tag98105_)))
                              (let ()
                                (declare (not safe))
                                (_E9799798006_))))))))
                 (_parse97758_
                  (lambda (_e97799_)
                    (letrec ((_make-cons97801_
                              (lambda (_hd97976_ _tl97977_)
                                (let ((_g98311_ _hd97976_)
                                      (_g98313_ _tl97977_))
                                  (begin
                                    (let ((_g98312_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98311_)
                                                 (##vector-length _g98311_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98312_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98312_)))
                                    (let ((_g98314_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98313_)
                                                 (##vector-length _g98313_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98314_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98314_)))
                                    (let ((_hd-e97979_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98311_ 0)))
                                          (_hd-vars97980_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98311_ 1))))
                                      (let ((_tl-e97981_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98313_ 0)))
                                            (_tl-vars97982_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98313_ 1))))
                                        (values (let ((__tmp98315
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e97979_
                                                               _tl-e97981_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp98315))
                                                (append _hd-vars97980_
                                                        _tl-vars97982_))))))))
                             (_make-splice97802_
                              (lambda (_where97915_
                                       _depth97916_
                                       _hd97917_
                                       _tl97918_)
                                (let ((_g98316_ _hd97917_)
                                      (_g98318_ _tl97918_))
                                  (begin
                                    (let ((_g98317_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98316_)
                                                 (##vector-length _g98316_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98317_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98317_)))
                                    (let ((_g98319_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98318_)
                                                 (##vector-length _g98318_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98319_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98319_)))
                                    (let ((_hd-e97920_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98316_ 0)))
                                          (_hd-vars97921_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98316_ 1))))
                                      (let ((_tl-e97922_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98318_ 0)))
                                            (_tl-vars97923_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98318_ 1))))
                                        (let _lp97925_ ((_rest97927_
                                                         _hd-vars97921_)
                                                        (_targets97928_ '())
                                                        (_vars97929_
                                                         _tl-vars97923_))
                                          (let* ((_rest9793097940_ _rest97927_)
                                                 (_else9793297948_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets97928_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx97755_
                                                           _where97915_))
                                                        (values (let ((__tmp98320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp98321
                                      (let ((__tmp98322
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e97922_
                                                     _targets97928_))))
                                        (declare (not safe))
                                        (cons _hd-e97920_ __tmp98322))))
                                 (declare (not safe))
                                 (cons _depth97916_ __tmp98321))))
                          (declare (not safe))
                          (cons 'splice __tmp98320))
                        _vars97929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9793497957_
                                                  (lambda (_rest97951_
                                                           _hd-pat97952_
                                                           _hd-depth*97953_)
                                                    (let ((_hd-depth97955_
                                                           (fx- _hd-depth*97953_
                                                                _depth97916_)))
                                                      (if (fxpositive?
                                                           _hd-depth97955_)
                                                          (let ((__tmp98327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp98328
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat97952_))))
                           (declare (not safe))
                           (cons __tmp98328 _targets97928_)))
                        (__tmp98325
                         (let ((__tmp98326
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth97955_ _hd-pat97952_))))
                           (declare (not safe))
                           (cons __tmp98326 _vars97929_))))
                    (declare (not safe))
                    (_lp97925_ _rest97951_ __tmp98327 __tmp98325))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth97955_))
                      (let ((__tmp98323
                             (let ((__tmp98324
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat97952_))))
                               (declare (not safe))
                               (cons __tmp98324 _targets97928_))))
                        (declare (not safe))
                        (_lp97925_ _rest97951_ __tmp98323 _vars97929_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx97755_
                         _where97915_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9793097940_))
                                                (let ((_hd9793597960_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9793097940_)))
                                                      (_tl9793697962_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9793097940_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9793597960_))
                                                      (let ((_hd9793797965_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9793597960_)))
                    (_tl9793897967_
                     (let () (declare (not safe)) (##cdr _hd9793597960_))))
                (let* ((_hd-depth*97970_ _hd9793797965_)
                       (_hd-pat97972_ _tl9793897967_)
                       (_rest97974_ _tl9793697962_))
                  (declare (not safe))
                  (_K9793497957_ _rest97974_ _hd-pat97972_ _hd-depth*97970_)))
              (let () (declare (not safe)) (_else9793297948_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9793297948_)))))))))))
                             (_recur97803_
                              (lambda (_e97808_ _is-e?97809_)
                                (if (_is-e?97809_ _e97808_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx97755_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e97808_))
                                        (let* ((_pat97811_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e97808_)))
                                               (_depth97813_
                                                (##structure-ref
                                                 _pat97811_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth97813_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat97811_))
                                                      (let ((__tmp98344
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth97813_ _pat97811_))))
                (declare (not safe))
                (cons __tmp98344 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat97811_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e97808_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e97808_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e97808_))
                                                (let* ((_e9781597822_ _e97808_)
                                                       (_E9781797826_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9781597822_))))
                                                       (_E9781697905_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9781597822_))
                      (let ((_e9781897830_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9781597822_))))
                        (let ((_hd9781997833_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9781897830_)))
                              (_tl9782097835_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9781897830_))))
                          (let* ((_hd97838_ _hd9781997833_)
                                 (_rest97840_ _tl9782097835_))
                            (if '#t
                                (if (_is-e?97809_ _hd97838_)
                                    (let* ((_e9784197848_ _rest97840_)
                                           (_E9784397852_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx97755_
                                                 _e97808_))))
                                           (_E9784297866_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9784197848_))
                                                  (let ((_e9784497856_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9784197848_))))
                                                    (let ((_hd9784597859_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9784497856_)))
                                                          (_tl9784697861_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9784497856_))))
                                                      (let ((_rest97864_
                                                             _hd9784597859_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9784697861_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur97803_ _rest97864_ false))
                        (let () (declare (not safe)) (_E9784397852_)))
                    (let () (declare (not safe)) (_E9784397852_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9784397852_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9784297866_)))
                                    (let _lp97870_ ((_rest97872_ _rest97840_)
                                                    (_depth97873_ '0))
                                      (let* ((_e9787497881_ _rest97872_)
                                             (_E9787697885_
                                              (lambda ()
                                                (if (fxpositive? _depth97873_)
                                                    (let ((__tmp98338
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur97803_
                                                              _hd97838_
                                                              _is-e?97809_)))
                                                          (__tmp98337
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur97803_
                                                              _rest97872_
                                                              _is-e?97809_))))
                                                      (declare (not safe))
                                                      (_make-splice97802_
                                                       _e97808_
                                                       _depth97873_
                                                       __tmp98338
                                                       __tmp98337))
                                                    (let ((__tmp98336
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur97803_
                                                              _hd97838_
                                                              _is-e?97809_)))
                                                          (__tmp98335
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur97803_
                                                              _rest97872_
                                                              _is-e?97809_))))
                                                      (declare (not safe))
                                                      (_make-cons97801_
                                                       __tmp98336
                                                       __tmp98335)))))
                                             (_E9787597901_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9787497881_))
                                                    (let ((_e9787797889_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9787497881_))))
                                                      (let ((_hd9787897892_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9787797889_)))
                    (_tl9787997894_
                     (let () (declare (not safe)) (##cdr _e9787797889_))))
                (let* ((_rest-hd97897_ _hd9787897892_)
                       (_rest-tl97899_ _tl9787997894_))
                  (if '#t
                      (if (_is-e?97809_ _rest-hd97897_)
                          (let ((__tmp98343
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth97873_ '1))))
                            (declare (not safe))
                            (_lp97870_ _rest-tl97899_ __tmp98343))
                          (if (fxpositive? _depth97873_)
                              (let ((__tmp98342
                                     (let ()
                                       (declare (not safe))
                                       (_recur97803_ _hd97838_ _is-e?97809_)))
                                    (__tmp98341
                                     (let ()
                                       (declare (not safe))
                                       (_recur97803_
                                        _rest97872_
                                        _is-e?97809_))))
                                (declare (not safe))
                                (_make-splice97802_
                                 _e97808_
                                 _depth97873_
                                 __tmp98342
                                 __tmp98341))
                              (let ((__tmp98340
                                     (let ()
                                       (declare (not safe))
                                       (_recur97803_ _hd97838_ _is-e?97809_)))
                                    (__tmp98339
                                     (let ()
                                       (declare (not safe))
                                       (_recur97803_
                                        _rest97872_
                                        _is-e?97809_))))
                                (declare (not safe))
                                (_make-cons97801_ __tmp98340 __tmp98339))))
                      (let () (declare (not safe)) (_E9787697885_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9787697885_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9787597901_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9781797826_))))))
                      (let () (declare (not safe)) (_E9781797826_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9781697905_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e97808_))
                                                    (let ((_g98332_
                                                           (let ((__tmp98334
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e97808_)))))
                     (declare (not safe))
                     (_recur97803_ __tmp98334 _is-e?97809_))))
              (begin
                (let ((_g98333_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g98332_)
                             (##vector-length _g98332_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g98333_ 2)))
                      (error "Context expects 2 values" _g98333_)))
                (let ((_e97909_
                       (let () (declare (not safe)) (##vector-ref _g98332_ 0)))
                      (_vars97910_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g98332_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e97909_))
                          _vars97910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e97808_))
                                                        (let ((_g98329_
                                                               (let ((__tmp98331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e97808_)))))
                         (declare (not safe))
                         (_recur97803_ __tmp98331 _is-e?97809_))))
                  (begin
                    (let ((_g98330_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g98329_)
                                 (##vector-length _g98329_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g98330_ 2)))
                          (error "Context expects 2 values" _g98330_)))
                    (let ((_e97912_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98329_ 0)))
                          (_vars97913_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98329_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e97912_))
                              _vars97913_))))
                (values (let () (declare (not safe)) (cons 'datum _e97808_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g98345_
                             (let ()
                               (declare (not safe))
                               (_recur97803_ _e97799_ gx#ellipsis?))))
                        (begin
                          (let ((_g98346_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g98345_)
                                       (##vector-length _g98345_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g98346_ 2)))
                                (error "Context expects 2 values" _g98346_)))
                          (let ((_tree97805_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g98345_ 0)))
                                (_vars97806_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g98345_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars97806_))
                                _tree97805_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx97755_
                                   _vars97806_))))))))))
          (let* ((_e9775997769_ _stx97755_)
                 (_E9776197773_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx97755_))))
                 (_E9776097795_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9775997769_))
                        (let ((_e9776297777_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9775997769_))))
                          (let ((_hd9776397780_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9776297777_)))
                                (_tl9776497782_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9776297777_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9776497782_))
                                (let ((_e9776597785_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9776497782_))))
                                  (let ((_hd9776697788_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9776597785_)))
                                        (_tl9776797790_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9776597785_))))
                                    (let ((_form97793_ _hd9776697788_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9776797790_))
                                          (if '#t
                                              (let ((__tmp98348
                                                     (let ((__tmp98349
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse97758_
                                                               _form97793_))))
                                                       (declare (not safe))
                                                       (_generate97757_
                                                        __tmp98349)))
                                                    (__tmp98347
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx97755_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp98348
                                                 __tmp98347))
                                              (let ()
                                                (declare (not safe))
                                                (_E9776197773_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9776197773_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9776197773_)))))
                        (let () (declare (not safe)) (_E9776197773_))))))
            (let () (declare (not safe)) (_E9776097795_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx97019_ _identifier=?97020_ _unwrap-e97021_ _wrap-e97022_)
        (letrec ((_generate-bindings97024_
                  (lambda (_target97619_
                           _ids97620_
                           _clauses97621_
                           _clause-ids97622_
                           _E97623_)
                    (letrec ((_generate197625_
                              (lambda (_clause97722_ _clause-id97723_ _E97724_)
                                (let ((__tmp98354
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id97723_ '())))
                                      (__tmp98350
                                       (let ((__tmp98351
                                              (let ((__tmp98353
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target97619_
                                                             '())))
                                                    (__tmp98352
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause97026_
                                                        _target97619_
                                                        _ids97620_
                                                        _clause97722_
                                                        _E97724_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp98353
                                                 __tmp98352))))
                                         (declare (not safe))
                                         (cons __tmp98351 '()))))
                                  (declare (not safe))
                                  (cons __tmp98354 __tmp98350)))))
                      (let _lp97627_ ((_rest97629_ _clauses97621_)
                                      (_rest-ids97630_ _clause-ids97622_)
                                      (_bindings97631_ '()))
                        (let* ((_rest9763297640_ _rest97629_)
                               (_else9763497648_ (lambda () _bindings97631_))
                               (_K9763697710_
                                (lambda (_rest97651_ _clause97652_)
                                  (let* ((_rest-ids9765397660_ _rest-ids97630_)
                                         (_E9765597664_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9765397660_))))
                                         (_K9765697698_
                                          (lambda (_rest-ids97667_
                                                   _clause-id97668_)
                                            (let* ((_rest-ids9766997677_
                                                    _rest-ids97667_)
                                                   (_else9767197685_
                                                    (lambda ()
                                                      (let ((__tmp98355
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate197625_
                        _clause97652_
                        _clause-id97668_
                        _E97623_))))
                (declare (not safe))
                (cons __tmp98355 _bindings97631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9767397690_
                                                    (lambda (_next-clause-id97688_)
                                                      (let ((__tmp98356
                                                             (let ((__tmp98357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate197625_
                               _clause97652_
                               _clause-id97668_
                               _next-clause-id97688_))))
                       (declare (not safe))
                       (cons __tmp98357 _bindings97631_))))
                (declare (not safe))
                (_lp97627_ _rest97651_ _rest-ids97667_ __tmp98356)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9766997677_))
                                                  (let* ((_hd9767497693_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9766997677_)))
                                                         (_next-clause-id97696_
                                                          _hd9767497693_))
                                                    (declare (not safe))
                                                    (_K9767397690_
                                                     _next-clause-id97696_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9767197685_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9765397660_))
                                        (let ((_hd9765797701_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9765397660_)))
                                              (_tl9765897703_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9765397660_))))
                                          (let* ((_clause-id97706_
                                                  _hd9765797701_)
                                                 (_rest-ids97708_
                                                  _tl9765897703_))
                                            (declare (not safe))
                                            (_K9765697698_
                                             _rest-ids97708_
                                             _clause-id97706_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9765597664_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9763297640_))
                              (let ((_hd9763797713_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9763297640_)))
                                    (_tl9763897715_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9763297640_))))
                                (let* ((_clause97718_ _hd9763797713_)
                                       (_rest97720_ _tl9763897715_))
                                  (declare (not safe))
                                  (_K9763697710_ _rest97720_ _clause97718_)))
                              (let ()
                                (declare (not safe))
                                (_else9763497648_))))))))
                 (_generate-body97025_
                  (lambda (_bindings97579_ _body97580_)
                    (let _recur97582_ ((_rest97584_ _bindings97579_))
                      (let* ((_rest9758597593_ _rest97584_)
                             (_else9758797601_ (lambda () _body97580_))
                             (_K9758997607_
                              (lambda (_rest97604_ _hd97605_)
                                (let ((__tmp98359
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd97605_ '())))
                                      (__tmp98358
                                       (let ()
                                         (declare (not safe))
                                         (_recur97582_ _rest97604_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp98359
                                   __tmp98358)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9758597593_))
                            (let ((_hd9759097610_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9758597593_)))
                                  (_tl9759197612_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9758597593_))))
                              (let* ((_hd97615_ _hd9759097610_)
                                     (_rest97617_ _tl9759197612_))
                                (declare (not safe))
                                (_K9758997607_ _rest97617_ _hd97615_)))
                            (let ()
                              (declare (not safe))
                              (_else9758797601_)))))))
                 (_generate-clause97026_
                  (lambda (_target97442_ _ids97443_ _clause97444_ _E97445_)
                    (letrec ((_generate197447_
                              (lambda (_hd97534_ _fender97535_ _body97536_)
                                (let ((_g98360_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause97028_
                                          _hd97534_
                                          _ids97443_))))
                                  (begin
                                    (let ((_g98361_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98360_)
                                                 (##vector-length _g98360_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98361_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98361_)))
                                    (let ((_e97538_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98360_ 0)))
                                          (_mvars97539_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98360_ 1))))
                                      (let* ((_pvars97541_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars97539_))))
                                             (_E97543_
                                              (let ((__tmp98362
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target97442_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E97445_ __tmp98362)))
                                             (_K97576_
                                              (let ((__tmp98363
                                                     (let ((__tmp98365
                                                            (map (lambda (_mvar97545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar97546_)
                           (let* ((_mvar9754797554_ _mvar97545_)
                                  (_E9754997558_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9754797554_))))
                                  (_K9755097564_
                                   (lambda (_depth97561_ _id97562_)
                                     (let ((__tmp98366
                                            (let ((__tmp98367
                                                   (let ((__tmp98369
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id97562_)))
                                                         (__tmp98368
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar97546_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp98369
                                                      __tmp98368
                                                      _depth97561_))))
                                              (declare (not safe))
                                              (cons __tmp98367 '()))))
                                       (declare (not safe))
                                       (cons _id97562_ __tmp98366)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9754797554_))
                                 (let ((_hd9755197567_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9754797554_)))
                                       (_tl9755297569_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9754797554_))))
                                   (let* ((_id97572_ _hd9755197567_)
                                          (_depth97574_ _tl9755297569_))
                                     (declare (not safe))
                                     (_K9755097564_ _depth97574_ _id97572_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9754997558_)))))
                         _mvars97539_
                         _pvars97541_))
                   (__tmp98364
                    (if (let () (declare (not safe)) (eq? _fender97535_ '#t))
                        _body97536_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender97535_
                           _body97536_
                           _E97543_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp98365 __tmp98364))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars97541_
                                                 __tmp98363))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match97027_
                                           _hd97534_
                                           _target97442_
                                           _e97538_
                                           _mvars97539_
                                           _K97576_
                                           _E97543_)))))))))
                      (let* ((_e9744897468_ _clause97444_)
                             (_E9745797472_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9744897468_))))
                             (_E9745097506_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9744897468_))
                                    (let ((_e9745897476_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9744897468_))))
                                      (let ((_hd9745997479_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9745897476_)))
                                            (_tl9746097481_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9745897476_))))
                                        (let ((_hd97484_ _hd9745997479_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9746097481_))
                                              (let ((_e9746197486_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9746097481_))))
                                                (let ((_hd9746297489_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9746197486_)))
                                                      (_tl9746397491_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9746197486_))))
                                                  (let ((_fender97494_
                                                         _hd9746297489_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9746397491_))
                                                        (let ((_e9746497496_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9746397491_))))
                  (let ((_hd9746597499_
                         (let () (declare (not safe)) (##car _e9746497496_)))
                        (_tl9746697501_
                         (let () (declare (not safe)) (##cdr _e9746497496_))))
                    (let ((_body97504_ _hd9746597499_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9746697501_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate197447_
                                 _hd97484_
                                 _fender97494_
                                 _body97504_))
                              (let () (declare (not safe)) (_E9745797472_)))
                          (let () (declare (not safe)) (_E9745797472_))))))
                (let () (declare (not safe)) (_E9745797472_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9745797472_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9745797472_)))))
                             (_E9744997530_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9744897468_))
                                    (let ((_e9745197510_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9744897468_))))
                                      (let ((_hd9745297513_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9745197510_)))
                                            (_tl9745397515_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9745197510_))))
                                        (let ((_hd97518_ _hd9745297513_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9745397515_))
                                              (let ((_e9745497520_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9745397515_))))
                                                (let ((_hd9745597523_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9745497520_)))
                                                      (_tl9745697525_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9745497520_))))
                                                  (let ((_body97528_
                                                         _hd9745597523_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9745697525_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate197447_
                                                               _hd97518_
                                                               '#t
                                                               _body97528_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9745097506_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9745097506_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9745097506_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9745097506_))))))
                        (let () (declare (not safe)) (_E9744997530_))))))
                 (_generate-match97027_
                  (lambda (_where97191_
                           _target97192_
                           _hd97193_
                           _mvars97194_
                           _K97195_
                           _E97196_)
                    (letrec ((_BUG97198_
                              (lambda (_q97440_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx97019_
                                         _hd97193_
                                         _q97440_))))
                             (_recur97199_
                              (lambda (_e97290_
                                       _vars97291_
                                       _target97292_
                                       _E97293_
                                       _k97294_)
                                (let* ((_e9729597302_ _e97290_)
                                       (_E9729797306_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9729597302_))))
                                       (_K9729897428_
                                        (lambda (_body97309_ _tag97310_)
                                          (let ((_$e97312_ _tag97310_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e97312_))
                                                (_k97294_ _vars97291_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e97312_))
                                                    (let ((__tmp98476
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target97292_)))
                                                          (__tmp98472
                                                           (let ((__tmp98474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98475
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e97022_ _body97309_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?97020_
                             __tmp98475
                             _target97292_)))
                         (__tmp98473 (_k97294_ _vars97291_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp98474 __tmp98473 _E97293_))))
              (declare (not safe))
              (gx#core-list 'if __tmp98476 __tmp98472 _E97293_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e97312_))
                                                        (_k97294_
                                                         (let ((__tmp98471
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body97309_ _target97292_))))
                   (declare (not safe))
                   (cons __tmp98471 _vars97291_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e97312_))
                    (let ((_$e97315_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd97316_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl97317_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp98470
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target97292_)))
                            (__tmp98451
                             (let ((__tmp98465
                                    (let ((__tmp98466
                                           (let ((__tmp98469
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e97315_ '())))
                                                 (__tmp98467
                                                  (let ((__tmp98468
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e97021_
                                                            _target97292_))))
                                                    (declare (not safe))
                                                    (cons __tmp98468 '()))))
                                             (declare (not safe))
                                             (cons __tmp98469 __tmp98467))))
                                      (declare (not safe))
                                      (cons __tmp98466 '())))
                                   (__tmp98452
                                    (let ((__tmp98455
                                           (let ((__tmp98461
                                                  (let ((__tmp98464
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd97316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp98462
                 (let ((__tmp98463
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e97315_))))
                   (declare (not safe))
                   (cons __tmp98463 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98464
                                                          __tmp98462)))
                                                 (__tmp98456
                                                  (let ((__tmp98457
                                                         (let ((__tmp98460
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl97317_ '())))
                       (__tmp98458
                        (let ((__tmp98459
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e97315_))))
                          (declare (not safe))
                          (cons __tmp98459 '()))))
                   (declare (not safe))
                   (cons __tmp98460 __tmp98458))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98457 '()))))
                                             (declare (not safe))
                                             (cons __tmp98461 __tmp98456)))
                                          (__tmp98453
                                           (let* ((_body9731897325_
                                                   _body97309_)
                                                  (_E9732097329_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9731897325_))))
                                                  (_K9732197337_
                                                   (lambda (_tl97332_
                                                            _hd97333_)
                                                     (let ((__tmp98454
                                                            (lambda (_vars97335_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur97199_
                         _tl97332_
                         _vars97335_
                         _$tl97317_
                         _E97293_
                         _k97294_)))))
               (declare (not safe))
               (_recur97199_
                _hd97333_
                _vars97291_
                _$hd97316_
                _E97293_
                __tmp98454)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9731897325_))
                                                 (let ((_hd9732297340_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9731897325_)))
                                                       (_tl9732397342_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9731897325_))))
                                                   (let* ((_hd97345_
                                                           _hd9732297340_)
                                                          (_tl97347_
                                                           _tl9732397342_))
                                                     (declare (not safe))
                                                     (_K9732197337_
                                                      _tl97347_
                                                      _hd97345_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9732097329_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp98455
                                       __tmp98453))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp98465
                                __tmp98452))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp98470 __tmp98451 _E97293_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e97312_))
                        (let* ((_body9734897355_ _body97309_)
                               (_E9735097359_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9734897355_))))
                               (_K9735197410_
                                (lambda (_tl97362_ _hd97363_)
                                  (let* ((_rlen97365_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen97200_ _tl97362_)))
                                         (_$target97367_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd97369_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl97371_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp97373_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e97375_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd97377_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl97379_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars97381_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars97201_ _hd97363_)))
                                         (_lvars97383_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars97381_)))
                                         (_tlvars97385_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars97381_)))
                                         (_linit97389_
                                          (map (lambda (_var97387_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars97383_)))
                                    (letrec ((_make-loop97392_
                                              (lambda (_vars97396_)
                                                (let ((__tmp98402
                                                       (let ((__tmp98403
                                                              (let ((__tmp98439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp97373_ '())))
                            (__tmp98404
                             (let ((__tmp98405
                                    (let ((__tmp98438
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd97369_ _lvars97383_)))
                                          (__tmp98406
                                           (let ((__tmp98437
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd97369_)))
                                                 (__tmp98415
                                                  (let ((__tmp98432
                                                         (let ((__tmp98433
                                                                (let ((__tmp98436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e97375_ '())))
                              (__tmp98434
                               (let ((__tmp98435
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e97021_
                                         _$hd97369_))))
                                 (declare (not safe))
                                 (cons __tmp98435 '()))))
                          (declare (not safe))
                          (cons __tmp98436 __tmp98434))))
                   (declare (not safe))
                   (cons __tmp98433 '())))
                (__tmp98416
                 (let ((__tmp98422
                        (let ((__tmp98428
                               (let ((__tmp98431
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd97377_ '())))
                                     (__tmp98429
                                      (let ((__tmp98430
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e97375_))))
                                        (declare (not safe))
                                        (cons __tmp98430 '()))))
                                 (declare (not safe))
                                 (cons __tmp98431 __tmp98429)))
                              (__tmp98423
                               (let ((__tmp98424
                                      (let ((__tmp98427
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl97379_ '())))
                                            (__tmp98425
                                             (let ((__tmp98426
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e97375_))))
                                               (declare (not safe))
                                               (cons __tmp98426 '()))))
                                        (declare (not safe))
                                        (cons __tmp98427 __tmp98425))))
                                 (declare (not safe))
                                 (cons __tmp98424 '()))))
                          (declare (not safe))
                          (cons __tmp98428 __tmp98423)))
                       (__tmp98417
                        (let ((__tmp98418
                               (lambda (_hdvars97398_)
                                 (let ((__tmp98419
                                        (let ((__tmp98420
                                               (map (lambda (_svar97400_
                                                             _lvar97401_)
                                                      (let ((__tmp98421
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar97400_ _hdvars97398_ _BUG97198_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp98421 _lvar97401_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars97381_
                                                    _lvars97383_)))
                                          (declare (not safe))
                                          (cons _$lp-tl97379_ __tmp98420))))
                                   (declare (not safe))
                                   (cons _$lp97373_ __tmp98419)))))
                          (declare (not safe))
                          (_recur97199_
                           _hd97363_
                           '()
                           _$lp-hd97377_
                           _E97293_
                           __tmp98418))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp98422 __tmp98417))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp98432
                                                     __tmp98416)))
                                                 (__tmp98407
                                                  (let ((__tmp98411
                                                         (map (lambda (_lvar97403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar97404_)
                        (let ((__tmp98414
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar97404_ '())))
                              (__tmp98412
                               (let ((__tmp98413
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar97403_))))
                                 (declare (not safe))
                                 (cons __tmp98413 '()))))
                          (declare (not safe))
                          (cons __tmp98414 __tmp98412)))
                      _lvars97383_
                      _tlvars97385_))
                (__tmp98408
                 (_k97294_
                  (let ((__tmp98409
                         (lambda (_svar97406_ _tlvar97407_ _r97408_)
                           (let ((__tmp98410
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar97406_ _tlvar97407_))))
                             (declare (not safe))
                             (cons __tmp98410 _r97408_)))))
                    (declare (not safe))
                    (foldl2 __tmp98409
                            _vars97396_
                            _svars97381_
                            _tlvars97385_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp98411
                                                     __tmp98408))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp98437
                                              __tmp98415
                                              __tmp98407))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp98438
                                       __tmp98406))))
                               (declare (not safe))
                               (cons __tmp98405 '()))))
                        (declare (not safe))
                        (cons __tmp98439 __tmp98404))))
                 (declare (not safe))
                 (cons __tmp98403 '())))
              (__tmp98400
               (let ((__tmp98401
                      (let ()
                        (declare (not safe))
                        (cons _$target97367_ _linit97389_))))
                 (declare (not safe))
                 (cons _$lp97373_ __tmp98401))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp98402
                                                   __tmp98400)))))
                                      (let ((_body97394_
                                             (let ((__tmp98441
                                                    (let ((__tmp98442
                                                           (let ((__tmp98445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98446
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl97371_ '()))))
                            (declare (not safe))
                            (cons _$target97367_ __tmp98446)))
                         (__tmp98443
                          (let ((__tmp98444
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target97292_
                                    _rlen97365_))))
                            (declare (not safe))
                            (cons __tmp98444 '()))))
                     (declare (not safe))
                     (cons __tmp98445 __tmp98443))))
              (declare (not safe))
              (cons __tmp98442 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp98440
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur97199_
                                                       _tl97362_
                                                       _vars97291_
                                                       _$tl97371_
                                                       _E97293_
                                                       _make-loop97392_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp98441
                                                __tmp98440))))
                                        (let ((__tmp98450
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target97292_)))
                                              (__tmp98447
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen97365_))
                                                   _body97394_
                                                   (let ((__tmp98448
                                                          (let ((__tmp98449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target97292_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp98449 _rlen97365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp98448
                                                      _body97394_
                                                      _E97293_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp98450
                                           __tmp98447
                                           _E97293_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9734897355_))
                              (let ((_hd9735297413_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9734897355_)))
                                    (_tl9735397415_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9734897355_))))
                                (let* ((_hd97418_ _hd9735297413_)
                                       (_tl97420_ _tl9735397415_))
                                  (declare (not safe))
                                  (_K9735197410_ _tl97420_ _hd97418_)))
                              (let () (declare (not safe)) (_E9735097359_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e97312_))
                            (let ((__tmp98399
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target97292_)))
                                  (__tmp98398 (_k97294_ _vars97291_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp98399
                               __tmp98398
                               _E97293_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e97312_))
                                (let ((_$e97422_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp98397
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target97292_)))
                                        (__tmp98389
                                         (let ((__tmp98391
                                                (let ((__tmp98392
                                                       (let ((__tmp98396
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e97422_ '())))
                     (__tmp98393
                      (let ((__tmp98394
                             (let ((__tmp98395
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e97021_
                                       _target97292_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp98395))))
                        (declare (not safe))
                        (cons __tmp98394 '()))))
                 (declare (not safe))
                 (cons __tmp98396 __tmp98393))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp98392 '())))
                                               (__tmp98390
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur97199_
                                                   _body97309_
                                                   _vars97291_
                                                   _$e97422_
                                                   _E97293_
                                                   _k97294_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp98391
                                            __tmp98390))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp98397
                                     __tmp98389
                                     _E97293_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e97312_))
                                    (let ((_$e97424_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp98388
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target97292_)))
                                            (__tmp98380
                                             (let ((__tmp98382
                                                    (let ((__tmp98383
                                                           (let ((__tmp98387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e97424_ '())))
                         (__tmp98384
                          (let ((__tmp98385
                                 (let ((__tmp98386
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e97021_
                                           _target97292_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp98386))))
                            (declare (not safe))
                            (cons __tmp98385 '()))))
                     (declare (not safe))
                     (cons __tmp98387 __tmp98384))))
              (declare (not safe))
              (cons __tmp98383 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp98381
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur97199_
                                                       _body97309_
                                                       _vars97291_
                                                       _$e97424_
                                                       _E97293_
                                                       _k97294_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp98382
                                                __tmp98381))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp98388
                                         __tmp98380
                                         _E97293_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e97312_))
                                        (let ((_$e97426_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp98379
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target97292_)))
                                                (__tmp98370
                                                 (let ((__tmp98374
                                                        (let ((__tmp98375
                                                               (let ((__tmp98378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e97426_ '())))
                             (__tmp98376
                              (let ((__tmp98377
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target97292_))))
                                (declare (not safe))
                                (cons __tmp98377 '()))))
                         (declare (not safe))
                         (cons __tmp98378 __tmp98376))))
                  (declare (not safe))
                  (cons __tmp98375 '())))
               (__tmp98371
                (let ((__tmp98373
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e97426_ _body97309_)))
                      (__tmp98372 (_k97294_ _vars97291_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp98373 __tmp98372 _E97293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp98374
                                                    __tmp98371))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp98379
                                             __tmp98370
                                             _E97293_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG97198_ _e97290_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9729597302_))
                                      (let ((_hd9729997431_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9729597302_)))
                                            (_tl9730097433_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9729597302_))))
                                        (let* ((_tag97436_ _hd9729997431_)
                                               (_body97438_ _tl9730097433_))
                                          (declare (not safe))
                                          (_K9729897428_
                                           _body97438_
                                           _tag97436_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9729797306_))))))
                             (_splice-rlen97200_
                              (lambda (_e97252_)
                                (let _lp97254_ ((_e97256_ _e97252_)
                                                (_n97257_ '0))
                                  (let* ((_e9725897265_ _e97256_)
                                         (_E9726097269_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9725897265_))))
                                         (_K9726197278_
                                          (lambda (_body97272_ _tag97273_)
                                            (let ((_$e97275_ _tag97273_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e97275_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx97019_
                                                     _where97191_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e97275_))
                                                      (let ((__tmp98478
                                                             (cdr _body97272_))
                                                            (__tmp98477
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n97257_ '1))))
                (declare (not safe))
                (_lp97254_ __tmp98478 __tmp98477))
              _n97257_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9725897265_))
                                        (let ((_hd9726297281_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9725897265_)))
                                              (_tl9726397283_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9725897265_))))
                                          (let* ((_tag97286_ _hd9726297281_)
                                                 (_body97288_ _tl9726397283_))
                                            (declare (not safe))
                                            (_K9726197278_
                                             _body97288_
                                             _tag97286_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9726097269_)))))))
                             (_splice-vars97201_
                              (lambda (_e97208_)
                                (let _recur97210_ ((_e97212_ _e97208_)
                                                   (_vars97213_ '()))
                                  (let* ((_e9721497221_ _e97212_)
                                         (_E9721697225_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9721497221_))))
                                         (_K9721797240_
                                          (lambda (_body97228_ _tag97229_)
                                            (let ((_$e97231_ _tag97229_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e97231_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body97228_
                                                          _vars97213_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e97231_))
                  (let () (declare (not safe)) (eq? 'splice _$e97231_)))
              (let ((__tmp98481 (cdr _body97228_))
                    (__tmp98479
                     (let ((__tmp98480 (car _body97228_)))
                       (declare (not safe))
                       (_recur97210_ __tmp98480 _vars97213_))))
                (declare (not safe))
                (_recur97210_ __tmp98481 __tmp98479))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e97231_))
                      (let () (declare (not safe)) (eq? 'box _$e97231_)))
                  (let ()
                    (declare (not safe))
                    (_recur97210_ _body97228_ _vars97213_))
                  _vars97213_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9721497221_))
                                        (let ((_hd9721897243_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9721497221_)))
                                              (_tl9721997245_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9721497221_))))
                                          (let* ((_tag97248_ _hd9721897243_)
                                                 (_body97250_ _tl9721997245_))
                                            (declare (not safe))
                                            (_K9721797240_
                                             _body97250_
                                             _tag97248_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9721697225_)))))))
                             (_make-body97202_
                              (lambda (_vars97204_)
                                (let ((__tmp98482
                                       (map (lambda (_mvar97206_)
                                              (let ((__tmp98483
                                                     (car _mvar97206_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp98483
                                                 _vars97204_
                                                 _BUG97198_)))
                                            _mvars97194_)))
                                  (declare (not safe))
                                  (cons _K97195_ __tmp98482)))))
                      (let ()
                        (declare (not safe))
                        (_recur97199_
                         _hd97193_
                         '()
                         _target97192_
                         _E97196_
                         _make-body97202_)))))
                 (_parse-clause97028_
                  (lambda (_hd97097_ _ids97098_)
                    (let _recur97100_ ((_e97102_ _hd97097_)
                                       (_vars97103_ '())
                                       (_depth97104_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e97102_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e97102_))
                              (values '(any) _vars97103_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e97102_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx97019_
                                     _hd97097_))
                                  (if (let ((__tmp98499
                                             (lambda (_id97106_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e97102_
                                                  _id97106_)))))
                                        (declare (not safe))
                                        (find __tmp98499 _ids97098_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e97102_))
                                              _vars97103_)
                                      (if (let ((__tmp98497
                                                 (lambda (_var97108_)
                                                   (let ((__tmp98498
                                                          (car _var97108_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e97102_
                                                      __tmp98498)))))
                                            (declare (not safe))
                                            (find __tmp98497 _vars97103_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx97019_
                                             _e97102_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e97102_))
                                                  (let ((__tmp98496
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e97102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth97104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98496
                                                          _vars97103_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e97102_))
                              (let* ((_e9710997116_ _e97102_)
                                     (_E9711197120_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9710997116_))))
                                     (_E9711097181_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9710997116_))
                                            (let ((_e9711297124_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9710997116_))))
                                              (let ((_hd9711397127_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9711297124_)))
                                                    (_tl9711497129_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9711297124_))))
                                                (let* ((_hd97132_
                                                        _hd9711397127_)
                                                       (_rest97134_
                                                        _tl9711497129_))
                                                  (if '#t
                                                      (let* ((_make-pair97149_
                                                              (lambda (_tag97136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd97137_
                               _tl97138_)
                        (let* ((_hd-depth97140_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag97136_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth97104_ '1))
                                    _depth97104_))
                               (_g98491_
                                (let ()
                                  (declare (not safe))
                                  (_recur97100_
                                   _hd97137_
                                   _vars97103_
                                   _hd-depth97140_))))
                          (begin
                            (let ((_g98492_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g98491_)
                                         (##vector-length _g98491_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g98492_ 2)))
                                  (error "Context expects 2 values" _g98492_)))
                            (let ((_hd97142_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g98491_ 0)))
                                  (_vars97143_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g98491_ 1))))
                              (let ((_g98493_
                                     (let ()
                                       (declare (not safe))
                                       (_recur97100_
                                        _tl97138_
                                        _vars97143_
                                        _depth97104_))))
                                (begin
                                  (let ((_g98494_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g98493_)
                                               (##vector-length _g98493_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g98494_ 2)))
                                        (error "Context expects 2 values"
                                               _g98494_)))
                                  (let ((_tl97145_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g98493_ 0)))
                                        (_vars97146_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g98493_ 1))))
                                    (let ()
                                      (values (let ((__tmp98495
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd97142_
                                                             _tl97145_))))
                                                (declare (not safe))
                                                (cons _tag97136_ __tmp98495))
                                              _vars97146_))))))))))
                     (_e9715097157_ _rest97134_)
                     (_E9715297161_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair97149_ 'cons _hd97132_ _rest97134_))))
                     (_E9715197177_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9715097157_))
                            (let ((_e9715397165_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9715097157_))))
                              (let ((_hd9715497168_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9715397165_)))
                                    (_tl9715597170_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9715397165_))))
                                (let* ((_rest-hd97173_ _hd9715497168_)
                                       (_rest-tl97175_ _tl9715597170_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd97173_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair97149_
                                             'splice
                                             _hd97132_
                                             _rest-tl97175_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair97149_
                                             'cons
                                             _hd97132_
                                             _rest97134_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9715297161_))))))
                            (let () (declare (not safe)) (_E9715297161_))))))
                (let () (declare (not safe)) (_E9715197177_)))
              (let () (declare (not safe)) (_E9711197120_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9711197120_))))))
                                (let () (declare (not safe)) (_E9711097181_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e97102_))
                                  (values '(null) _vars97103_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e97102_))
                                      (let ((_g98488_
                                             (let ((__tmp98490
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e97102_)))))
                                               (declare (not safe))
                                               (_recur97100_
                                                __tmp98490
                                                _vars97103_
                                                _depth97104_))))
                                        (begin
                                          (let ((_g98489_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g98488_)
                                                       (##vector-length
                                                        _g98488_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g98489_ 2)))
                                                (error "Context expects 2 values"
                                                       _g98489_)))
                                          (let ((_e97185_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98488_ 0)))
                                                (_vars97186_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98488_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e97185_))
                                                    _vars97186_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e97102_))
                                          (let ((_g98485_
                                                 (let ((__tmp98487
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e97102_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur97100_
                                                    __tmp98487
                                                    _vars97103_
                                                    _depth97104_))))
                                            (begin
                                              (let ((_g98486_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g98485_)
                                                           (##vector-length
                                                            _g98485_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g98486_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g98486_)))
                                              (let ((_e97188_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g98485_
                                                        0)))
                                                    (_vars97189_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g98485_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e97188_))
                                                        _vars97189_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e97102_))
                                              (values (let ((__tmp98484
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e97102_))))
                (declare (not safe))
                (cons 'datum __tmp98484))
              _vars97103_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx97019_
                                                 _e97102_))))))))))))
          (let* ((_e9702997042_ _stx97019_)
                 (_E9703197046_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9702997042_))))
                 (_E9703097093_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9702997042_))
                        (let ((_e9703297050_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9702997042_))))
                          (let ((_hd9703397053_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9703297050_)))
                                (_tl9703497055_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9703297050_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9703497055_))
                                (let ((_e9703597058_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9703497055_))))
                                  (let ((_hd9703697061_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9703597058_)))
                                        (_tl9703797063_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9703597058_))))
                                    (let ((_expr97066_ _hd9703697061_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9703797063_))
                                          (let ((_e9703897068_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9703797063_))))
                                            (let ((_hd9703997071_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9703897068_)))
                                                  (_tl9704097073_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9703897068_))))
                                              (let* ((_ids97076_
                                                      _hd9703997071_)
                                                     (_clauses97078_
                                                      _tl9704097073_))
                                                (if '#t
                                                    (if (let ((__tmp98517
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids97076_))))
                  (declare (not safe))
                  (not __tmp98517))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx97019_
                   _ids97076_))
                (if (let ((__tmp98516
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses97078_))))
                      (declare (not safe))
                      (not __tmp98516))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx97019_))
                    (let* ((_ids97080_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids97076_)))
                           (_clauses97082_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses97078_)))
                           (_clause-ids97084_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses97082_)))
                           (_E97086_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target97088_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first97090_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses97082_))
                                _E97086_
                                (car _clause-ids97084_))))
                      (let ((__tmp98501
                             (let ((__tmp98502
                                    (let ((__tmp98504
                                           (let ((__tmp98509
                                                  (let ((__tmp98510
                                                         (let ((__tmp98515
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E97086_ '())))
                       (__tmp98511
                        (let ((__tmp98512
                               (let ((__tmp98514
                                      (let ()
                                        (declare (not safe))
                                        (cons _target97088_ '())))
                                     (__tmp98513
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target97088_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp98514
                                  __tmp98513))))
                          (declare (not safe))
                          (cons __tmp98512 '()))))
                   (declare (not safe))
                   (cons __tmp98515 __tmp98511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98510 '())))
                                                 (__tmp98505
                                                  (let ((__tmp98508
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings97024_
                                                            _target97088_
                                                            _ids97080_
                                                            _clauses97082_
                                                            _clause-ids97084_
                                                            _E97086_)))
                                                        (__tmp98506
                                                         (let ((__tmp98507
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr97066_ '()))))
                   (declare (not safe))
                   (cons _first97090_ __tmp98507))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body97025_
                                                     __tmp98508
                                                     __tmp98506))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp98509
                                              __tmp98505)))
                                          (__tmp98503
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx97019_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp98504
                                       __tmp98503))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp98502)))
                            (__tmp98500
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx97019_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp98501 __tmp98500)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9703197046_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9703197046_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9703197046_)))))
                        (let () (declare (not safe)) (_E9703197046_))))))
            (let () (declare (not safe)) (_E9703097093_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx97729_)
        (let* ((_identifier=?97731_ 'free-identifier=?)
               (_unwrap-e97733_ 'syntax-e)
               (_wrap-e97735_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx97729_
           _identifier=?97731_
           _unwrap-e97733_
           _wrap-e97735_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx97737_ _identifier=?97738_)
        (let* ((_unwrap-e97740_ 'syntax-e) (_wrap-e97742_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx97737_
           _identifier=?97738_
           _unwrap-e97740_
           _wrap-e97742_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx97744_ _identifier=?97745_ _unwrap-e97746_)
        (let ((_wrap-e97748_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx97744_
           _identifier=?97745_
           _unwrap-e97746_
           _wrap-e97748_))))
    (define gx#macro-expand-syntax-case
      (lambda _g98519_
        (let ((_g98518_ (let () (declare (not safe)) (##length _g98519_))))
          (cond ((let () (declare (not safe)) (##fx= _g98518_ 1))
                 (apply (lambda (_stx97729_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx97729_)))
                        _g98519_))
                ((let () (declare (not safe)) (##fx= _g98518_ 2))
                 (apply (lambda (_stx97737_ _identifier=?97738_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx97737_
                             _identifier=?97738_)))
                        _g98519_))
                ((let () (declare (not safe)) (##fx= _g98518_ 3))
                 (apply (lambda (_stx97744_
                                 _identifier=?97745_
                                 _unwrap-e97746_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx97744_
                             _identifier=?97745_
                             _unwrap-e97746_)))
                        _g98519_))
                ((let () (declare (not safe)) (##fx= _g98518_ 4))
                 (apply (lambda (_stx97750_
                                 _identifier=?97751_
                                 _unwrap-e97752_
                                 _wrap-e97753_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx97750_
                             _identifier=?97751_
                             _unwrap-e97752_
                             _wrap-e97753_)))
                        _g98519_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g98519_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx97016_)
        (if (let () (declare (not safe)) (gx#identifier? _stx97016_))
            (let ((__tmp98520
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx97016_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp98520 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd96974_ . _rest96975_)
        (let ((_len96977_ (length _hd96974_)))
          (let _lp96979_ ((_rest96981_ _rest96975_))
            (let* ((_rest9698296990_ _rest96981_)
                   (_else9698496998_ (lambda () '#!void))
                   (_K9698697004_
                    (lambda (_rest97001_ _hd97002_)
                      (if (fx= _len96977_ (length _hd97002_))
                          (let () (declare (not safe)) (_lp96979_ _rest97001_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd97002_))))))
              (if (let () (declare (not safe)) (##pair? _rest9698296990_))
                  (let ((_hd9698797007_
                         (let ()
                           (declare (not safe))
                           (##car _rest9698296990_)))
                        (_tl9698897009_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9698296990_))))
                    (let* ((_hd97012_ _hd9698797007_)
                           (_rest97014_ _tl9698897009_))
                      (declare (not safe))
                      (_K9698697004_ _rest97014_ _hd97012_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx96932_ _n96933_)
        (let _lp96935_ ((_rest96937_ _stx96932_) (_r96938_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest96937_))
              (let* ((_g9693996946_
                      (let () (declare (not safe)) (gx#syntax-e _rest96937_)))
                     (_E9694196950_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9693996946_))))
                     (_K9694296956_
                      (lambda (_rest96953_ _hd96954_)
                        (let ((__tmp98525
                               (let ()
                                 (declare (not safe))
                                 (cons _hd96954_ _r96938_))))
                          (declare (not safe))
                          (_lp96935_ _rest96953_ __tmp98525)))))
                (if (let () (declare (not safe)) (##pair? _g9693996946_))
                    (let ((_hd9694396959_
                           (let () (declare (not safe)) (##car _g9693996946_)))
                          (_tl9694496961_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9693996946_))))
                      (let* ((_hd96964_ _hd9694396959_)
                             (_rest96966_ _tl9694496961_))
                        (declare (not safe))
                        (_K9694296956_ _rest96966_ _hd96964_)))
                    (let () (declare (not safe)) (_E9694196950_))))
              (let _lp96968_ ((_n96970_ _n96933_)
                              (_l96971_ _r96938_)
                              (_r96972_ _rest96937_))
                (if (let () (declare (not safe)) (null? _l96971_))
                    (values _l96971_ _r96972_)
                    (if (fxpositive? _n96970_)
                        (let ((__tmp98524
                               (let () (declare (not safe)) (fx- _n96970_ '1)))
                              (__tmp98523 (cdr _l96971_))
                              (__tmp98521
                               (let ((__tmp98522 (car _l96971_)))
                                 (declare (not safe))
                                 (cons __tmp98522 _r96972_))))
                          (declare (not safe))
                          (_lp96968_ __tmp98524 __tmp98523 __tmp98521))
                        (values (reverse _l96971_) _r96972_))))))))))
