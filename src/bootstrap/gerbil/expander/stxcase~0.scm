(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1710715075)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp98271 (list gx#expander::t))
            (__tmp98269
             (let ((__tmp98270
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp98270 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp98271
         '(id depth)
         __tmp98269
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args98266_
        (apply make-instance gx#syntax-pattern::t _$args98266_)))
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
      (lambda (_self98263_ _stx98264_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx98264_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx97745_)
        (letrec ((_generate97747_
                  (lambda (_e97974_)
                    (letrec ((_BUG97976_
                              (lambda (_q98138_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx97745_
                                         _e97974_
                                         _q98138_))))
                             (_local-pattern-e97977_
                              (lambda (_pat98136_)
                                (let ((__tmp98272
                                       (##structure-ref
                                        _pat98136_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp98272))))
                             (_getvar97978_
                              (lambda (_q98133_ _vars98134_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q98133_
                                   _vars98134_
                                   _BUG97976_))))
                             (_getarg97979_
                              (lambda (_arg98099_ _vars98100_)
                                (let* ((_arg9810198108_ _arg98099_)
                                       (_E9810398112_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9810198108_))))
                                       (_K9810498121_
                                        (lambda (_e98115_ _tag98116_)
                                          (let ((_$e98118_ _tag98116_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e98118_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar97978_
                                                   _e98115_
                                                   _vars98100_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e98118_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e97977_
                                                       _e98115_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG97976_
                                                       _arg98099_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9810198108_))
                                      (let ((_hd9810598124_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9810198108_)))
                                            (_tl9810698126_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9810198108_))))
                                        (let* ((_tag98129_ _hd9810598124_)
                                               (_e98131_ _tl9810698126_))
                                          (declare (not safe))
                                          (_K9810498121_ _e98131_ _tag98129_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9810398112_)))))))
                      (let _recur97981_ ((_e97983_ _e97974_) (_vars97984_ '()))
                        (let* ((_e9798597992_ _e97983_)
                               (_E9798797996_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9798597992_))))
                               (_K9798898087_
                                (lambda (_body97999_ _tag98000_)
                                  (let ((_$e98002_ _tag98000_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e98002_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body97999_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e98002_))
                                            (let ((_id98005_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body97999_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id98005_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks98007_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id98005_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks98007_))
                                                        (let ((__tmp98300
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body97999_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp98300))
                (let ((__tmp98299
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body97999_)))
                      (__tmp98298
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body97999_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp98299
                   __tmp98298
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id98005_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body97999_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG97976_
                                                         _e97983_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e98002_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e97977_
                                                   _body97999_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e98002_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar97978_
                                                       _body97999_
                                                       _vars97984_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e98002_))
                                                        (let ((__tmp98296
                                                               (let ((__tmp98297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body97999_)))
                         (declare (not safe))
                         (_recur97981_ __tmp98297 _vars97984_)))
                      (__tmp98294
                       (let ((__tmp98295 (cdr _body97999_)))
                         (declare (not safe))
                         (_recur97981_ __tmp98295 _vars97984_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp98296 __tmp98294))
                (if (let () (declare (not safe)) (eq? 'vector _$e98002_))
                    (let ((__tmp98293
                           (let ()
                             (declare (not safe))
                             (_recur97981_ _body97999_ _vars97984_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp98293))
                    (if (let () (declare (not safe)) (eq? 'box _$e98002_))
                        (let ((__tmp98292
                               (let ()
                                 (declare (not safe))
                                 (_recur97981_ _body97999_ _vars97984_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp98292))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e98002_))
                            (let* ((_body9800898019_ _body97999_)
                                   (_E9801098023_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9800898019_))))
                                   (_K9801198061_
                                    (lambda (_args98026_
                                             _iv98027_
                                             _hd98028_
                                             _depth98029_)
                                      (let* ((_targets98035_
                                              (map (lambda (_g9803098032_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg97979_
                                                        _g9803098032_
                                                        _vars97984_)))
                                                   _args98026_))
                                             (_fold-in98037_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args98026_)))
                                             (_fold-out98039_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args98041_
                                              (let ((__tmp98273
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out98039_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp98273
                                                        _fold-in98037_)))
                                             (_lambda-body98058_
                                              (if (fx> _depth98029_ '1)
                                                  (let ((_r-args98049_
                                                         (map (lambda (_arg98043_)
                                                                (let ((__tmp98278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg98043_)))
                          (declare (not safe))
                          (cons 'ref __tmp98278)))
                      _args98026_))
                (_r-vars98050_
                 (let ((__tmp98279
                        (lambda (_arg98045_ _var98046_ _r98047_)
                          (let ((__tmp98280
                                 (let ((__tmp98281 (cdr _arg98045_)))
                                   (declare (not safe))
                                   (cons __tmp98281 _var98046_))))
                            (declare (not safe))
                            (cons __tmp98280 _r98047_)))))
                   (declare (not safe))
                   (foldr2 __tmp98279
                           _vars97984_
                           _args98026_
                           _fold-in98037_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp98282
                                                           (let ((__tmp98283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98287
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth98029_ '1)))
                                (__tmp98284
                                 (let ((__tmp98285
                                        (let ((__tmp98286
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out98039_))))
                                          (declare (not safe))
                                          (cons __tmp98286 _r-args98049_))))
                                   (declare (not safe))
                                   (cons _hd98028_ __tmp98285))))
                            (declare (not safe))
                            (cons __tmp98287 __tmp98284))))
                     (declare (not safe))
                     (cons 'splice __tmp98283))))
              (declare (not safe))
              (_recur97981_ __tmp98282 _r-vars98050_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars98056_
                                                          (let ((__tmp98274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg98052_ _var98053_ _r98054_)
                           (let ((__tmp98275
                                  (let ((__tmp98276 (cdr _arg98052_)))
                                    (declare (not safe))
                                    (cons __tmp98276 _var98053_))))
                             (declare (not safe))
                             (cons __tmp98275 _r98054_)))))
                    (declare (not safe))
                    (foldr2 __tmp98274
                            _vars97984_
                            _args98026_
                            _fold-in98037_)))
                 (__tmp98277
                  (let ()
                    (declare (not safe))
                    (_recur97981_ _hd98028_ _hd-vars98056_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp98277
                                                     _fold-out98039_)))))
                                        (let ((__tmp98291
                                               (if (fx> (length _targets98035_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets98035_))
                                                   '#!void))
                                              (__tmp98288
                                               (let ((__tmp98290
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args98041_
                                                         _lambda-body98058_)))
                                                     (__tmp98289
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur97981_
                                                         _iv98027_
                                                         _vars97984_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp98290
                                                  __tmp98289
                                                  _targets98035_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp98291
                                           __tmp98288))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9800898019_))
                                  (let ((_hd9801298064_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9800898019_)))
                                        (_tl9801398066_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9800898019_))))
                                    (let ((_depth98069_ _hd9801298064_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9801398066_))
                                          (let ((_hd9801498071_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9801398066_)))
                                                (_tl9801598073_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9801398066_))))
                                            (let ((_hd98076_ _hd9801498071_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9801598073_))
                                                  (let ((_hd9801698078_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9801598073_)))
                                                        (_tl9801798080_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9801598073_))))
                                                    (let* ((_iv98083_
                                                            _hd9801698078_)
                                                           (_args98085_
                                                            _tl9801798080_))
                                                      (declare (not safe))
                                                      (_K9801198061_
                                                       _args98085_
                                                       _iv98083_
                                                       _hd98076_
                                                       _depth98069_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9801098023_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9801098023_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9801098023_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e98002_))
                                _body97999_
                                (let ()
                                  (declare (not safe))
                                  (_BUG97976_ _e97983_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9798597992_))
                              (let ((_hd9798998090_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9798597992_)))
                                    (_tl9799098092_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9798597992_))))
                                (let* ((_tag98095_ _hd9798998090_)
                                       (_body98097_ _tl9799098092_))
                                  (declare (not safe))
                                  (_K9798898087_ _body98097_ _tag98095_)))
                              (let ()
                                (declare (not safe))
                                (_E9798797996_))))))))
                 (_parse97748_
                  (lambda (_e97789_)
                    (letrec ((_make-cons97791_
                              (lambda (_hd97966_ _tl97967_)
                                (let ((_g98301_ _hd97966_)
                                      (_g98303_ _tl97967_))
                                  (begin
                                    (let ((_g98302_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98301_)
                                                 (##vector-length _g98301_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98302_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98302_)))
                                    (let ((_g98304_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98303_)
                                                 (##vector-length _g98303_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98304_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98304_)))
                                    (let ((_hd-e97969_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98301_ 0)))
                                          (_hd-vars97970_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98301_ 1))))
                                      (let ((_tl-e97971_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98303_ 0)))
                                            (_tl-vars97972_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98303_ 1))))
                                        (values (let ((__tmp98305
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e97969_
                                                               _tl-e97971_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp98305))
                                                (append _hd-vars97970_
                                                        _tl-vars97972_))))))))
                             (_make-splice97792_
                              (lambda (_where97905_
                                       _depth97906_
                                       _hd97907_
                                       _tl97908_)
                                (let ((_g98306_ _hd97907_)
                                      (_g98308_ _tl97908_))
                                  (begin
                                    (let ((_g98307_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98306_)
                                                 (##vector-length _g98306_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98307_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98307_)))
                                    (let ((_g98309_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98308_)
                                                 (##vector-length _g98308_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98309_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98309_)))
                                    (let ((_hd-e97910_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98306_ 0)))
                                          (_hd-vars97911_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98306_ 1))))
                                      (let ((_tl-e97912_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98308_ 0)))
                                            (_tl-vars97913_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98308_ 1))))
                                        (let _lp97915_ ((_rest97917_
                                                         _hd-vars97911_)
                                                        (_targets97918_ '())
                                                        (_vars97919_
                                                         _tl-vars97913_))
                                          (let* ((_rest9792097930_ _rest97917_)
                                                 (_else9792297938_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets97918_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx97745_
                                                           _where97905_))
                                                        (values (let ((__tmp98310
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp98311
                                      (let ((__tmp98312
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e97912_
                                                     _targets97918_))))
                                        (declare (not safe))
                                        (cons _hd-e97910_ __tmp98312))))
                                 (declare (not safe))
                                 (cons _depth97906_ __tmp98311))))
                          (declare (not safe))
                          (cons 'splice __tmp98310))
                        _vars97919_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9792497947_
                                                  (lambda (_rest97941_
                                                           _hd-pat97942_
                                                           _hd-depth*97943_)
                                                    (let ((_hd-depth97945_
                                                           (fx- _hd-depth*97943_
                                                                _depth97906_)))
                                                      (if (fxpositive?
                                                           _hd-depth97945_)
                                                          (let ((__tmp98317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp98318
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat97942_))))
                           (declare (not safe))
                           (cons __tmp98318 _targets97918_)))
                        (__tmp98315
                         (let ((__tmp98316
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth97945_ _hd-pat97942_))))
                           (declare (not safe))
                           (cons __tmp98316 _vars97919_))))
                    (declare (not safe))
                    (_lp97915_ _rest97941_ __tmp98317 __tmp98315))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth97945_))
                      (let ((__tmp98313
                             (let ((__tmp98314
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat97942_))))
                               (declare (not safe))
                               (cons __tmp98314 _targets97918_))))
                        (declare (not safe))
                        (_lp97915_ _rest97941_ __tmp98313 _vars97919_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx97745_
                         _where97905_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9792097930_))
                                                (let ((_hd9792597950_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9792097930_)))
                                                      (_tl9792697952_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9792097930_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9792597950_))
                                                      (let ((_hd9792797955_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9792597950_)))
                    (_tl9792897957_
                     (let () (declare (not safe)) (##cdr _hd9792597950_))))
                (let* ((_hd-depth*97960_ _hd9792797955_)
                       (_hd-pat97962_ _tl9792897957_)
                       (_rest97964_ _tl9792697952_))
                  (declare (not safe))
                  (_K9792497947_ _rest97964_ _hd-pat97962_ _hd-depth*97960_)))
              (let () (declare (not safe)) (_else9792297938_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9792297938_)))))))))))
                             (_recur97793_
                              (lambda (_e97798_ _is-e?97799_)
                                (if (_is-e?97799_ _e97798_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx97745_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e97798_))
                                        (let* ((_pat97801_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e97798_)))
                                               (_depth97803_
                                                (##structure-ref
                                                 _pat97801_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth97803_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat97801_))
                                                      (let ((__tmp98334
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth97803_ _pat97801_))))
                (declare (not safe))
                (cons __tmp98334 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat97801_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e97798_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e97798_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e97798_))
                                                (let* ((_e9780597812_ _e97798_)
                                                       (_E9780797816_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9780597812_))))
                                                       (_E9780697895_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9780597812_))
                      (let ((_e9780897820_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9780597812_))))
                        (let ((_hd9780997823_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9780897820_)))
                              (_tl9781097825_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9780897820_))))
                          (let* ((_hd97828_ _hd9780997823_)
                                 (_rest97830_ _tl9781097825_))
                            (if '#t
                                (if (_is-e?97799_ _hd97828_)
                                    (let* ((_e9783197838_ _rest97830_)
                                           (_E9783397842_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx97745_
                                                 _e97798_))))
                                           (_E9783297856_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9783197838_))
                                                  (let ((_e9783497846_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9783197838_))))
                                                    (let ((_hd9783597849_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9783497846_)))
                                                          (_tl9783697851_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9783497846_))))
                                                      (let ((_rest97854_
                                                             _hd9783597849_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9783697851_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur97793_ _rest97854_ false))
                        (let () (declare (not safe)) (_E9783397842_)))
                    (let () (declare (not safe)) (_E9783397842_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9783397842_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9783297856_)))
                                    (let _lp97860_ ((_rest97862_ _rest97830_)
                                                    (_depth97863_ '0))
                                      (let* ((_e9786497871_ _rest97862_)
                                             (_E9786697875_
                                              (lambda ()
                                                (if (fxpositive? _depth97863_)
                                                    (let ((__tmp98328
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur97793_
                                                              _hd97828_
                                                              _is-e?97799_)))
                                                          (__tmp98327
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur97793_
                                                              _rest97862_
                                                              _is-e?97799_))))
                                                      (declare (not safe))
                                                      (_make-splice97792_
                                                       _e97798_
                                                       _depth97863_
                                                       __tmp98328
                                                       __tmp98327))
                                                    (let ((__tmp98326
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur97793_
                                                              _hd97828_
                                                              _is-e?97799_)))
                                                          (__tmp98325
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur97793_
                                                              _rest97862_
                                                              _is-e?97799_))))
                                                      (declare (not safe))
                                                      (_make-cons97791_
                                                       __tmp98326
                                                       __tmp98325)))))
                                             (_E9786597891_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9786497871_))
                                                    (let ((_e9786797879_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9786497871_))))
                                                      (let ((_hd9786897882_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9786797879_)))
                    (_tl9786997884_
                     (let () (declare (not safe)) (##cdr _e9786797879_))))
                (let* ((_rest-hd97887_ _hd9786897882_)
                       (_rest-tl97889_ _tl9786997884_))
                  (if '#t
                      (if (_is-e?97799_ _rest-hd97887_)
                          (let ((__tmp98333
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth97863_ '1))))
                            (declare (not safe))
                            (_lp97860_ _rest-tl97889_ __tmp98333))
                          (if (fxpositive? _depth97863_)
                              (let ((__tmp98332
                                     (let ()
                                       (declare (not safe))
                                       (_recur97793_ _hd97828_ _is-e?97799_)))
                                    (__tmp98331
                                     (let ()
                                       (declare (not safe))
                                       (_recur97793_
                                        _rest97862_
                                        _is-e?97799_))))
                                (declare (not safe))
                                (_make-splice97792_
                                 _e97798_
                                 _depth97863_
                                 __tmp98332
                                 __tmp98331))
                              (let ((__tmp98330
                                     (let ()
                                       (declare (not safe))
                                       (_recur97793_ _hd97828_ _is-e?97799_)))
                                    (__tmp98329
                                     (let ()
                                       (declare (not safe))
                                       (_recur97793_
                                        _rest97862_
                                        _is-e?97799_))))
                                (declare (not safe))
                                (_make-cons97791_ __tmp98330 __tmp98329))))
                      (let () (declare (not safe)) (_E9786697875_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9786697875_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9786597891_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9780797816_))))))
                      (let () (declare (not safe)) (_E9780797816_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9780697895_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e97798_))
                                                    (let ((_g98322_
                                                           (let ((__tmp98324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e97798_)))))
                     (declare (not safe))
                     (_recur97793_ __tmp98324 _is-e?97799_))))
              (begin
                (let ((_g98323_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g98322_)
                             (##vector-length _g98322_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g98323_ 2)))
                      (error "Context expects 2 values" _g98323_)))
                (let ((_e97899_
                       (let () (declare (not safe)) (##vector-ref _g98322_ 0)))
                      (_vars97900_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g98322_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e97899_))
                          _vars97900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e97798_))
                                                        (let ((_g98319_
                                                               (let ((__tmp98321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e97798_)))))
                         (declare (not safe))
                         (_recur97793_ __tmp98321 _is-e?97799_))))
                  (begin
                    (let ((_g98320_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g98319_)
                                 (##vector-length _g98319_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g98320_ 2)))
                          (error "Context expects 2 values" _g98320_)))
                    (let ((_e97902_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98319_ 0)))
                          (_vars97903_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98319_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e97902_))
                              _vars97903_))))
                (values (let () (declare (not safe)) (cons 'datum _e97798_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g98335_
                             (let ()
                               (declare (not safe))
                               (_recur97793_ _e97789_ gx#ellipsis?))))
                        (begin
                          (let ((_g98336_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g98335_)
                                       (##vector-length _g98335_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g98336_ 2)))
                                (error "Context expects 2 values" _g98336_)))
                          (let ((_tree97795_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g98335_ 0)))
                                (_vars97796_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g98335_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars97796_))
                                _tree97795_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx97745_
                                   _vars97796_))))))))))
          (let* ((_e9774997759_ _stx97745_)
                 (_E9775197763_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx97745_))))
                 (_E9775097785_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9774997759_))
                        (let ((_e9775297767_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9774997759_))))
                          (let ((_hd9775397770_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9775297767_)))
                                (_tl9775497772_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9775297767_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9775497772_))
                                (let ((_e9775597775_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9775497772_))))
                                  (let ((_hd9775697778_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9775597775_)))
                                        (_tl9775797780_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9775597775_))))
                                    (let ((_form97783_ _hd9775697778_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9775797780_))
                                          (if '#t
                                              (let ((__tmp98338
                                                     (let ((__tmp98339
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse97748_
                                                               _form97783_))))
                                                       (declare (not safe))
                                                       (_generate97747_
                                                        __tmp98339)))
                                                    (__tmp98337
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx97745_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp98338
                                                 __tmp98337))
                                              (let ()
                                                (declare (not safe))
                                                (_E9775197763_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9775197763_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9775197763_)))))
                        (let () (declare (not safe)) (_E9775197763_))))))
            (let () (declare (not safe)) (_E9775097785_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx97009_ _identifier=?97010_ _unwrap-e97011_ _wrap-e97012_)
        (letrec ((_generate-bindings97014_
                  (lambda (_target97609_
                           _ids97610_
                           _clauses97611_
                           _clause-ids97612_
                           _E97613_)
                    (letrec ((_generate197615_
                              (lambda (_clause97712_ _clause-id97713_ _E97714_)
                                (let ((__tmp98344
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id97713_ '())))
                                      (__tmp98340
                                       (let ((__tmp98341
                                              (let ((__tmp98343
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target97609_
                                                             '())))
                                                    (__tmp98342
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause97016_
                                                        _target97609_
                                                        _ids97610_
                                                        _clause97712_
                                                        _E97714_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp98343
                                                 __tmp98342))))
                                         (declare (not safe))
                                         (cons __tmp98341 '()))))
                                  (declare (not safe))
                                  (cons __tmp98344 __tmp98340)))))
                      (let _lp97617_ ((_rest97619_ _clauses97611_)
                                      (_rest-ids97620_ _clause-ids97612_)
                                      (_bindings97621_ '()))
                        (let* ((_rest9762297630_ _rest97619_)
                               (_else9762497638_ (lambda () _bindings97621_))
                               (_K9762697700_
                                (lambda (_rest97641_ _clause97642_)
                                  (let* ((_rest-ids9764397650_ _rest-ids97620_)
                                         (_E9764597654_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9764397650_))))
                                         (_K9764697688_
                                          (lambda (_rest-ids97657_
                                                   _clause-id97658_)
                                            (let* ((_rest-ids9765997667_
                                                    _rest-ids97657_)
                                                   (_else9766197675_
                                                    (lambda ()
                                                      (let ((__tmp98345
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate197615_
                        _clause97642_
                        _clause-id97658_
                        _E97613_))))
                (declare (not safe))
                (cons __tmp98345 _bindings97621_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9766397680_
                                                    (lambda (_next-clause-id97678_)
                                                      (let ((__tmp98346
                                                             (let ((__tmp98347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate197615_
                               _clause97642_
                               _clause-id97658_
                               _next-clause-id97678_))))
                       (declare (not safe))
                       (cons __tmp98347 _bindings97621_))))
                (declare (not safe))
                (_lp97617_ _rest97641_ _rest-ids97657_ __tmp98346)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9765997667_))
                                                  (let* ((_hd9766497683_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9765997667_)))
                                                         (_next-clause-id97686_
                                                          _hd9766497683_))
                                                    (declare (not safe))
                                                    (_K9766397680_
                                                     _next-clause-id97686_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9766197675_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9764397650_))
                                        (let ((_hd9764797691_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9764397650_)))
                                              (_tl9764897693_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9764397650_))))
                                          (let* ((_clause-id97696_
                                                  _hd9764797691_)
                                                 (_rest-ids97698_
                                                  _tl9764897693_))
                                            (declare (not safe))
                                            (_K9764697688_
                                             _rest-ids97698_
                                             _clause-id97696_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9764597654_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9762297630_))
                              (let ((_hd9762797703_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9762297630_)))
                                    (_tl9762897705_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9762297630_))))
                                (let* ((_clause97708_ _hd9762797703_)
                                       (_rest97710_ _tl9762897705_))
                                  (declare (not safe))
                                  (_K9762697700_ _rest97710_ _clause97708_)))
                              (let ()
                                (declare (not safe))
                                (_else9762497638_))))))))
                 (_generate-body97015_
                  (lambda (_bindings97569_ _body97570_)
                    (let _recur97572_ ((_rest97574_ _bindings97569_))
                      (let* ((_rest9757597583_ _rest97574_)
                             (_else9757797591_ (lambda () _body97570_))
                             (_K9757997597_
                              (lambda (_rest97594_ _hd97595_)
                                (let ((__tmp98349
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd97595_ '())))
                                      (__tmp98348
                                       (let ()
                                         (declare (not safe))
                                         (_recur97572_ _rest97594_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp98349
                                   __tmp98348)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9757597583_))
                            (let ((_hd9758097600_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9757597583_)))
                                  (_tl9758197602_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9757597583_))))
                              (let* ((_hd97605_ _hd9758097600_)
                                     (_rest97607_ _tl9758197602_))
                                (declare (not safe))
                                (_K9757997597_ _rest97607_ _hd97605_)))
                            (let ()
                              (declare (not safe))
                              (_else9757797591_)))))))
                 (_generate-clause97016_
                  (lambda (_target97432_ _ids97433_ _clause97434_ _E97435_)
                    (letrec ((_generate197437_
                              (lambda (_hd97524_ _fender97525_ _body97526_)
                                (let ((_g98350_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause97018_
                                          _hd97524_
                                          _ids97433_))))
                                  (begin
                                    (let ((_g98351_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98350_)
                                                 (##vector-length _g98350_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98351_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98351_)))
                                    (let ((_e97528_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98350_ 0)))
                                          (_mvars97529_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98350_ 1))))
                                      (let* ((_pvars97531_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars97529_))))
                                             (_E97533_
                                              (let ((__tmp98352
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target97432_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E97435_ __tmp98352)))
                                             (_K97566_
                                              (let ((__tmp98353
                                                     (let ((__tmp98355
                                                            (map (lambda (_mvar97535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar97536_)
                           (let* ((_mvar9753797544_ _mvar97535_)
                                  (_E9753997548_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9753797544_))))
                                  (_K9754097554_
                                   (lambda (_depth97551_ _id97552_)
                                     (let ((__tmp98356
                                            (let ((__tmp98357
                                                   (let ((__tmp98359
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id97552_)))
                                                         (__tmp98358
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar97536_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp98359
                                                      __tmp98358
                                                      _depth97551_))))
                                              (declare (not safe))
                                              (cons __tmp98357 '()))))
                                       (declare (not safe))
                                       (cons _id97552_ __tmp98356)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9753797544_))
                                 (let ((_hd9754197557_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9753797544_)))
                                       (_tl9754297559_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9753797544_))))
                                   (let* ((_id97562_ _hd9754197557_)
                                          (_depth97564_ _tl9754297559_))
                                     (declare (not safe))
                                     (_K9754097554_ _depth97564_ _id97562_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9753997548_)))))
                         _mvars97529_
                         _pvars97531_))
                   (__tmp98354
                    (if (let () (declare (not safe)) (eq? _fender97525_ '#t))
                        _body97526_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender97525_
                           _body97526_
                           _E97533_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp98355 __tmp98354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars97531_
                                                 __tmp98353))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match97017_
                                           _hd97524_
                                           _target97432_
                                           _e97528_
                                           _mvars97529_
                                           _K97566_
                                           _E97533_)))))))))
                      (let* ((_e9743897458_ _clause97434_)
                             (_E9744797462_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9743897458_))))
                             (_E9744097496_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9743897458_))
                                    (let ((_e9744897466_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9743897458_))))
                                      (let ((_hd9744997469_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9744897466_)))
                                            (_tl9745097471_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9744897466_))))
                                        (let ((_hd97474_ _hd9744997469_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9745097471_))
                                              (let ((_e9745197476_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9745097471_))))
                                                (let ((_hd9745297479_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9745197476_)))
                                                      (_tl9745397481_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9745197476_))))
                                                  (let ((_fender97484_
                                                         _hd9745297479_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9745397481_))
                                                        (let ((_e9745497486_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9745397481_))))
                  (let ((_hd9745597489_
                         (let () (declare (not safe)) (##car _e9745497486_)))
                        (_tl9745697491_
                         (let () (declare (not safe)) (##cdr _e9745497486_))))
                    (let ((_body97494_ _hd9745597489_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9745697491_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate197437_
                                 _hd97474_
                                 _fender97484_
                                 _body97494_))
                              (let () (declare (not safe)) (_E9744797462_)))
                          (let () (declare (not safe)) (_E9744797462_))))))
                (let () (declare (not safe)) (_E9744797462_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9744797462_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9744797462_)))))
                             (_E9743997520_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9743897458_))
                                    (let ((_e9744197500_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9743897458_))))
                                      (let ((_hd9744297503_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9744197500_)))
                                            (_tl9744397505_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9744197500_))))
                                        (let ((_hd97508_ _hd9744297503_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9744397505_))
                                              (let ((_e9744497510_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9744397505_))))
                                                (let ((_hd9744597513_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9744497510_)))
                                                      (_tl9744697515_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9744497510_))))
                                                  (let ((_body97518_
                                                         _hd9744597513_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9744697515_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate197437_
                                                               _hd97508_
                                                               '#t
                                                               _body97518_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9744097496_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9744097496_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9744097496_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9744097496_))))))
                        (let () (declare (not safe)) (_E9743997520_))))))
                 (_generate-match97017_
                  (lambda (_where97181_
                           _target97182_
                           _hd97183_
                           _mvars97184_
                           _K97185_
                           _E97186_)
                    (letrec ((_BUG97188_
                              (lambda (_q97430_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx97009_
                                         _hd97183_
                                         _q97430_))))
                             (_recur97189_
                              (lambda (_e97280_
                                       _vars97281_
                                       _target97282_
                                       _E97283_
                                       _k97284_)
                                (let* ((_e9728597292_ _e97280_)
                                       (_E9728797296_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9728597292_))))
                                       (_K9728897418_
                                        (lambda (_body97299_ _tag97300_)
                                          (let ((_$e97302_ _tag97300_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e97302_))
                                                (_k97284_ _vars97281_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e97302_))
                                                    (let ((__tmp98466
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target97282_)))
                                                          (__tmp98462
                                                           (let ((__tmp98464
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98465
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e97012_ _body97299_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?97010_
                             __tmp98465
                             _target97282_)))
                         (__tmp98463 (_k97284_ _vars97281_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp98464 __tmp98463 _E97283_))))
              (declare (not safe))
              (gx#core-list 'if __tmp98466 __tmp98462 _E97283_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e97302_))
                                                        (_k97284_
                                                         (let ((__tmp98461
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body97299_ _target97282_))))
                   (declare (not safe))
                   (cons __tmp98461 _vars97281_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e97302_))
                    (let ((_$e97305_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd97306_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl97307_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp98460
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target97282_)))
                            (__tmp98441
                             (let ((__tmp98455
                                    (let ((__tmp98456
                                           (let ((__tmp98459
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e97305_ '())))
                                                 (__tmp98457
                                                  (let ((__tmp98458
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e97011_
                                                            _target97282_))))
                                                    (declare (not safe))
                                                    (cons __tmp98458 '()))))
                                             (declare (not safe))
                                             (cons __tmp98459 __tmp98457))))
                                      (declare (not safe))
                                      (cons __tmp98456 '())))
                                   (__tmp98442
                                    (let ((__tmp98445
                                           (let ((__tmp98451
                                                  (let ((__tmp98454
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd97306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp98452
                 (let ((__tmp98453
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e97305_))))
                   (declare (not safe))
                   (cons __tmp98453 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98454
                                                          __tmp98452)))
                                                 (__tmp98446
                                                  (let ((__tmp98447
                                                         (let ((__tmp98450
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl97307_ '())))
                       (__tmp98448
                        (let ((__tmp98449
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e97305_))))
                          (declare (not safe))
                          (cons __tmp98449 '()))))
                   (declare (not safe))
                   (cons __tmp98450 __tmp98448))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98447 '()))))
                                             (declare (not safe))
                                             (cons __tmp98451 __tmp98446)))
                                          (__tmp98443
                                           (let* ((_body9730897315_
                                                   _body97299_)
                                                  (_E9731097319_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9730897315_))))
                                                  (_K9731197327_
                                                   (lambda (_tl97322_
                                                            _hd97323_)
                                                     (let ((__tmp98444
                                                            (lambda (_vars97325_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur97189_
                         _tl97322_
                         _vars97325_
                         _$tl97307_
                         _E97283_
                         _k97284_)))))
               (declare (not safe))
               (_recur97189_
                _hd97323_
                _vars97281_
                _$hd97306_
                _E97283_
                __tmp98444)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9730897315_))
                                                 (let ((_hd9731297330_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9730897315_)))
                                                       (_tl9731397332_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9730897315_))))
                                                   (let* ((_hd97335_
                                                           _hd9731297330_)
                                                          (_tl97337_
                                                           _tl9731397332_))
                                                     (declare (not safe))
                                                     (_K9731197327_
                                                      _tl97337_
                                                      _hd97335_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9731097319_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp98445
                                       __tmp98443))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp98455
                                __tmp98442))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp98460 __tmp98441 _E97283_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e97302_))
                        (let* ((_body9733897345_ _body97299_)
                               (_E9734097349_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9733897345_))))
                               (_K9734197400_
                                (lambda (_tl97352_ _hd97353_)
                                  (let* ((_rlen97355_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen97190_ _tl97352_)))
                                         (_$target97357_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd97359_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl97361_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp97363_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e97365_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd97367_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl97369_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars97371_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars97191_ _hd97353_)))
                                         (_lvars97373_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars97371_)))
                                         (_tlvars97375_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars97371_)))
                                         (_linit97379_
                                          (map (lambda (_var97377_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars97373_)))
                                    (letrec ((_make-loop97382_
                                              (lambda (_vars97386_)
                                                (let ((__tmp98392
                                                       (let ((__tmp98393
                                                              (let ((__tmp98429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp97363_ '())))
                            (__tmp98394
                             (let ((__tmp98395
                                    (let ((__tmp98428
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd97359_ _lvars97373_)))
                                          (__tmp98396
                                           (let ((__tmp98427
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd97359_)))
                                                 (__tmp98405
                                                  (let ((__tmp98422
                                                         (let ((__tmp98423
                                                                (let ((__tmp98426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e97365_ '())))
                              (__tmp98424
                               (let ((__tmp98425
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e97011_
                                         _$hd97359_))))
                                 (declare (not safe))
                                 (cons __tmp98425 '()))))
                          (declare (not safe))
                          (cons __tmp98426 __tmp98424))))
                   (declare (not safe))
                   (cons __tmp98423 '())))
                (__tmp98406
                 (let ((__tmp98412
                        (let ((__tmp98418
                               (let ((__tmp98421
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd97367_ '())))
                                     (__tmp98419
                                      (let ((__tmp98420
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e97365_))))
                                        (declare (not safe))
                                        (cons __tmp98420 '()))))
                                 (declare (not safe))
                                 (cons __tmp98421 __tmp98419)))
                              (__tmp98413
                               (let ((__tmp98414
                                      (let ((__tmp98417
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl97369_ '())))
                                            (__tmp98415
                                             (let ((__tmp98416
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e97365_))))
                                               (declare (not safe))
                                               (cons __tmp98416 '()))))
                                        (declare (not safe))
                                        (cons __tmp98417 __tmp98415))))
                                 (declare (not safe))
                                 (cons __tmp98414 '()))))
                          (declare (not safe))
                          (cons __tmp98418 __tmp98413)))
                       (__tmp98407
                        (let ((__tmp98408
                               (lambda (_hdvars97388_)
                                 (let ((__tmp98409
                                        (let ((__tmp98410
                                               (map (lambda (_svar97390_
                                                             _lvar97391_)
                                                      (let ((__tmp98411
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar97390_ _hdvars97388_ _BUG97188_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp98411 _lvar97391_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars97371_
                                                    _lvars97373_)))
                                          (declare (not safe))
                                          (cons _$lp-tl97369_ __tmp98410))))
                                   (declare (not safe))
                                   (cons _$lp97363_ __tmp98409)))))
                          (declare (not safe))
                          (_recur97189_
                           _hd97353_
                           '()
                           _$lp-hd97367_
                           _E97283_
                           __tmp98408))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp98412 __tmp98407))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp98422
                                                     __tmp98406)))
                                                 (__tmp98397
                                                  (let ((__tmp98401
                                                         (map (lambda (_lvar97393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar97394_)
                        (let ((__tmp98404
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar97394_ '())))
                              (__tmp98402
                               (let ((__tmp98403
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar97393_))))
                                 (declare (not safe))
                                 (cons __tmp98403 '()))))
                          (declare (not safe))
                          (cons __tmp98404 __tmp98402)))
                      _lvars97373_
                      _tlvars97375_))
                (__tmp98398
                 (_k97284_
                  (let ((__tmp98399
                         (lambda (_svar97396_ _tlvar97397_ _r97398_)
                           (let ((__tmp98400
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar97396_ _tlvar97397_))))
                             (declare (not safe))
                             (cons __tmp98400 _r97398_)))))
                    (declare (not safe))
                    (foldl2 __tmp98399
                            _vars97386_
                            _svars97371_
                            _tlvars97375_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp98401
                                                     __tmp98398))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp98427
                                              __tmp98405
                                              __tmp98397))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp98428
                                       __tmp98396))))
                               (declare (not safe))
                               (cons __tmp98395 '()))))
                        (declare (not safe))
                        (cons __tmp98429 __tmp98394))))
                 (declare (not safe))
                 (cons __tmp98393 '())))
              (__tmp98390
               (let ((__tmp98391
                      (let ()
                        (declare (not safe))
                        (cons _$target97357_ _linit97379_))))
                 (declare (not safe))
                 (cons _$lp97363_ __tmp98391))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp98392
                                                   __tmp98390)))))
                                      (let ((_body97384_
                                             (let ((__tmp98431
                                                    (let ((__tmp98432
                                                           (let ((__tmp98435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98436
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl97361_ '()))))
                            (declare (not safe))
                            (cons _$target97357_ __tmp98436)))
                         (__tmp98433
                          (let ((__tmp98434
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target97282_
                                    _rlen97355_))))
                            (declare (not safe))
                            (cons __tmp98434 '()))))
                     (declare (not safe))
                     (cons __tmp98435 __tmp98433))))
              (declare (not safe))
              (cons __tmp98432 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp98430
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur97189_
                                                       _tl97352_
                                                       _vars97281_
                                                       _$tl97361_
                                                       _E97283_
                                                       _make-loop97382_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp98431
                                                __tmp98430))))
                                        (let ((__tmp98440
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target97282_)))
                                              (__tmp98437
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen97355_))
                                                   _body97384_
                                                   (let ((__tmp98438
                                                          (let ((__tmp98439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target97282_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp98439 _rlen97355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp98438
                                                      _body97384_
                                                      _E97283_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp98440
                                           __tmp98437
                                           _E97283_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9733897345_))
                              (let ((_hd9734297403_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9733897345_)))
                                    (_tl9734397405_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9733897345_))))
                                (let* ((_hd97408_ _hd9734297403_)
                                       (_tl97410_ _tl9734397405_))
                                  (declare (not safe))
                                  (_K9734197400_ _tl97410_ _hd97408_)))
                              (let () (declare (not safe)) (_E9734097349_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e97302_))
                            (let ((__tmp98389
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target97282_)))
                                  (__tmp98388 (_k97284_ _vars97281_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp98389
                               __tmp98388
                               _E97283_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e97302_))
                                (let ((_$e97412_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp98387
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target97282_)))
                                        (__tmp98379
                                         (let ((__tmp98381
                                                (let ((__tmp98382
                                                       (let ((__tmp98386
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e97412_ '())))
                     (__tmp98383
                      (let ((__tmp98384
                             (let ((__tmp98385
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e97011_
                                       _target97282_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp98385))))
                        (declare (not safe))
                        (cons __tmp98384 '()))))
                 (declare (not safe))
                 (cons __tmp98386 __tmp98383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp98382 '())))
                                               (__tmp98380
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur97189_
                                                   _body97299_
                                                   _vars97281_
                                                   _$e97412_
                                                   _E97283_
                                                   _k97284_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp98381
                                            __tmp98380))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp98387
                                     __tmp98379
                                     _E97283_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e97302_))
                                    (let ((_$e97414_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp98378
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target97282_)))
                                            (__tmp98370
                                             (let ((__tmp98372
                                                    (let ((__tmp98373
                                                           (let ((__tmp98377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e97414_ '())))
                         (__tmp98374
                          (let ((__tmp98375
                                 (let ((__tmp98376
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e97011_
                                           _target97282_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp98376))))
                            (declare (not safe))
                            (cons __tmp98375 '()))))
                     (declare (not safe))
                     (cons __tmp98377 __tmp98374))))
              (declare (not safe))
              (cons __tmp98373 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp98371
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur97189_
                                                       _body97299_
                                                       _vars97281_
                                                       _$e97414_
                                                       _E97283_
                                                       _k97284_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp98372
                                                __tmp98371))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp98378
                                         __tmp98370
                                         _E97283_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e97302_))
                                        (let ((_$e97416_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp98369
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target97282_)))
                                                (__tmp98360
                                                 (let ((__tmp98364
                                                        (let ((__tmp98365
                                                               (let ((__tmp98368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e97416_ '())))
                             (__tmp98366
                              (let ((__tmp98367
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target97282_))))
                                (declare (not safe))
                                (cons __tmp98367 '()))))
                         (declare (not safe))
                         (cons __tmp98368 __tmp98366))))
                  (declare (not safe))
                  (cons __tmp98365 '())))
               (__tmp98361
                (let ((__tmp98363
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e97416_ _body97299_)))
                      (__tmp98362 (_k97284_ _vars97281_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp98363 __tmp98362 _E97283_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp98364
                                                    __tmp98361))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp98369
                                             __tmp98360
                                             _E97283_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG97188_ _e97280_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9728597292_))
                                      (let ((_hd9728997421_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9728597292_)))
                                            (_tl9729097423_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9728597292_))))
                                        (let* ((_tag97426_ _hd9728997421_)
                                               (_body97428_ _tl9729097423_))
                                          (declare (not safe))
                                          (_K9728897418_
                                           _body97428_
                                           _tag97426_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9728797296_))))))
                             (_splice-rlen97190_
                              (lambda (_e97242_)
                                (let _lp97244_ ((_e97246_ _e97242_)
                                                (_n97247_ '0))
                                  (let* ((_e9724897255_ _e97246_)
                                         (_E9725097259_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9724897255_))))
                                         (_K9725197268_
                                          (lambda (_body97262_ _tag97263_)
                                            (let ((_$e97265_ _tag97263_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e97265_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx97009_
                                                     _where97181_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e97265_))
                                                      (let ((__tmp98468
                                                             (cdr _body97262_))
                                                            (__tmp98467
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n97247_ '1))))
                (declare (not safe))
                (_lp97244_ __tmp98468 __tmp98467))
              _n97247_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9724897255_))
                                        (let ((_hd9725297271_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9724897255_)))
                                              (_tl9725397273_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9724897255_))))
                                          (let* ((_tag97276_ _hd9725297271_)
                                                 (_body97278_ _tl9725397273_))
                                            (declare (not safe))
                                            (_K9725197268_
                                             _body97278_
                                             _tag97276_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9725097259_)))))))
                             (_splice-vars97191_
                              (lambda (_e97198_)
                                (let _recur97200_ ((_e97202_ _e97198_)
                                                   (_vars97203_ '()))
                                  (let* ((_e9720497211_ _e97202_)
                                         (_E9720697215_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9720497211_))))
                                         (_K9720797230_
                                          (lambda (_body97218_ _tag97219_)
                                            (let ((_$e97221_ _tag97219_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e97221_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body97218_
                                                          _vars97203_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e97221_))
                  (let () (declare (not safe)) (eq? 'splice _$e97221_)))
              (let ((__tmp98471 (cdr _body97218_))
                    (__tmp98469
                     (let ((__tmp98470 (car _body97218_)))
                       (declare (not safe))
                       (_recur97200_ __tmp98470 _vars97203_))))
                (declare (not safe))
                (_recur97200_ __tmp98471 __tmp98469))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e97221_))
                      (let () (declare (not safe)) (eq? 'box _$e97221_)))
                  (let ()
                    (declare (not safe))
                    (_recur97200_ _body97218_ _vars97203_))
                  _vars97203_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9720497211_))
                                        (let ((_hd9720897233_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9720497211_)))
                                              (_tl9720997235_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9720497211_))))
                                          (let* ((_tag97238_ _hd9720897233_)
                                                 (_body97240_ _tl9720997235_))
                                            (declare (not safe))
                                            (_K9720797230_
                                             _body97240_
                                             _tag97238_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9720697215_)))))))
                             (_make-body97192_
                              (lambda (_vars97194_)
                                (let ((__tmp98472
                                       (map (lambda (_mvar97196_)
                                              (let ((__tmp98473
                                                     (car _mvar97196_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp98473
                                                 _vars97194_
                                                 _BUG97188_)))
                                            _mvars97184_)))
                                  (declare (not safe))
                                  (cons _K97185_ __tmp98472)))))
                      (let ()
                        (declare (not safe))
                        (_recur97189_
                         _hd97183_
                         '()
                         _target97182_
                         _E97186_
                         _make-body97192_)))))
                 (_parse-clause97018_
                  (lambda (_hd97087_ _ids97088_)
                    (let _recur97090_ ((_e97092_ _hd97087_)
                                       (_vars97093_ '())
                                       (_depth97094_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e97092_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e97092_))
                              (values '(any) _vars97093_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e97092_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx97009_
                                     _hd97087_))
                                  (if (let ((__tmp98489
                                             (lambda (_id97096_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e97092_
                                                  _id97096_)))))
                                        (declare (not safe))
                                        (find __tmp98489 _ids97088_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e97092_))
                                              _vars97093_)
                                      (if (let ((__tmp98487
                                                 (lambda (_var97098_)
                                                   (let ((__tmp98488
                                                          (car _var97098_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e97092_
                                                      __tmp98488)))))
                                            (declare (not safe))
                                            (find __tmp98487 _vars97093_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx97009_
                                             _e97092_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e97092_))
                                                  (let ((__tmp98486
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e97092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth97094_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98486
                                                          _vars97093_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e97092_))
                              (let* ((_e9709997106_ _e97092_)
                                     (_E9710197110_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9709997106_))))
                                     (_E9710097171_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9709997106_))
                                            (let ((_e9710297114_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9709997106_))))
                                              (let ((_hd9710397117_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9710297114_)))
                                                    (_tl9710497119_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9710297114_))))
                                                (let* ((_hd97122_
                                                        _hd9710397117_)
                                                       (_rest97124_
                                                        _tl9710497119_))
                                                  (if '#t
                                                      (let* ((_make-pair97139_
                                                              (lambda (_tag97126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd97127_
                               _tl97128_)
                        (let* ((_hd-depth97130_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag97126_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth97094_ '1))
                                    _depth97094_))
                               (_g98481_
                                (let ()
                                  (declare (not safe))
                                  (_recur97090_
                                   _hd97127_
                                   _vars97093_
                                   _hd-depth97130_))))
                          (begin
                            (let ((_g98482_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g98481_)
                                         (##vector-length _g98481_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g98482_ 2)))
                                  (error "Context expects 2 values" _g98482_)))
                            (let ((_hd97132_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g98481_ 0)))
                                  (_vars97133_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g98481_ 1))))
                              (let ((_g98483_
                                     (let ()
                                       (declare (not safe))
                                       (_recur97090_
                                        _tl97128_
                                        _vars97133_
                                        _depth97094_))))
                                (begin
                                  (let ((_g98484_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g98483_)
                                               (##vector-length _g98483_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g98484_ 2)))
                                        (error "Context expects 2 values"
                                               _g98484_)))
                                  (let ((_tl97135_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g98483_ 0)))
                                        (_vars97136_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g98483_ 1))))
                                    (let ()
                                      (values (let ((__tmp98485
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd97132_
                                                             _tl97135_))))
                                                (declare (not safe))
                                                (cons _tag97126_ __tmp98485))
                                              _vars97136_))))))))))
                     (_e9714097147_ _rest97124_)
                     (_E9714297151_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair97139_ 'cons _hd97122_ _rest97124_))))
                     (_E9714197167_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9714097147_))
                            (let ((_e9714397155_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9714097147_))))
                              (let ((_hd9714497158_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9714397155_)))
                                    (_tl9714597160_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9714397155_))))
                                (let* ((_rest-hd97163_ _hd9714497158_)
                                       (_rest-tl97165_ _tl9714597160_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd97163_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair97139_
                                             'splice
                                             _hd97122_
                                             _rest-tl97165_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair97139_
                                             'cons
                                             _hd97122_
                                             _rest97124_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9714297151_))))))
                            (let () (declare (not safe)) (_E9714297151_))))))
                (let () (declare (not safe)) (_E9714197167_)))
              (let () (declare (not safe)) (_E9710197110_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9710197110_))))))
                                (let () (declare (not safe)) (_E9710097171_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e97092_))
                                  (values '(null) _vars97093_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e97092_))
                                      (let ((_g98478_
                                             (let ((__tmp98480
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e97092_)))))
                                               (declare (not safe))
                                               (_recur97090_
                                                __tmp98480
                                                _vars97093_
                                                _depth97094_))))
                                        (begin
                                          (let ((_g98479_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g98478_)
                                                       (##vector-length
                                                        _g98478_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g98479_ 2)))
                                                (error "Context expects 2 values"
                                                       _g98479_)))
                                          (let ((_e97175_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98478_ 0)))
                                                (_vars97176_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98478_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e97175_))
                                                    _vars97176_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e97092_))
                                          (let ((_g98475_
                                                 (let ((__tmp98477
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e97092_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur97090_
                                                    __tmp98477
                                                    _vars97093_
                                                    _depth97094_))))
                                            (begin
                                              (let ((_g98476_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g98475_)
                                                           (##vector-length
                                                            _g98475_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g98476_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g98476_)))
                                              (let ((_e97178_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g98475_
                                                        0)))
                                                    (_vars97179_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g98475_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e97178_))
                                                        _vars97179_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e97092_))
                                              (values (let ((__tmp98474
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e97092_))))
                (declare (not safe))
                (cons 'datum __tmp98474))
              _vars97093_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx97009_
                                                 _e97092_))))))))))))
          (let* ((_e9701997032_ _stx97009_)
                 (_E9702197036_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9701997032_))))
                 (_E9702097083_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9701997032_))
                        (let ((_e9702297040_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9701997032_))))
                          (let ((_hd9702397043_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9702297040_)))
                                (_tl9702497045_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9702297040_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9702497045_))
                                (let ((_e9702597048_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9702497045_))))
                                  (let ((_hd9702697051_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9702597048_)))
                                        (_tl9702797053_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9702597048_))))
                                    (let ((_expr97056_ _hd9702697051_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9702797053_))
                                          (let ((_e9702897058_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9702797053_))))
                                            (let ((_hd9702997061_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9702897058_)))
                                                  (_tl9703097063_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9702897058_))))
                                              (let* ((_ids97066_
                                                      _hd9702997061_)
                                                     (_clauses97068_
                                                      _tl9703097063_))
                                                (if '#t
                                                    (if (let ((__tmp98507
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids97066_))))
                  (declare (not safe))
                  (not __tmp98507))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx97009_
                   _ids97066_))
                (if (let ((__tmp98506
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses97068_))))
                      (declare (not safe))
                      (not __tmp98506))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx97009_))
                    (let* ((_ids97070_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids97066_)))
                           (_clauses97072_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses97068_)))
                           (_clause-ids97074_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses97072_)))
                           (_E97076_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target97078_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first97080_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses97072_))
                                _E97076_
                                (car _clause-ids97074_))))
                      (let ((__tmp98491
                             (let ((__tmp98492
                                    (let ((__tmp98494
                                           (let ((__tmp98499
                                                  (let ((__tmp98500
                                                         (let ((__tmp98505
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E97076_ '())))
                       (__tmp98501
                        (let ((__tmp98502
                               (let ((__tmp98504
                                      (let ()
                                        (declare (not safe))
                                        (cons _target97078_ '())))
                                     (__tmp98503
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target97078_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp98504
                                  __tmp98503))))
                          (declare (not safe))
                          (cons __tmp98502 '()))))
                   (declare (not safe))
                   (cons __tmp98505 __tmp98501))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98500 '())))
                                                 (__tmp98495
                                                  (let ((__tmp98498
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings97014_
                                                            _target97078_
                                                            _ids97070_
                                                            _clauses97072_
                                                            _clause-ids97074_
                                                            _E97076_)))
                                                        (__tmp98496
                                                         (let ((__tmp98497
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr97056_ '()))))
                   (declare (not safe))
                   (cons _first97080_ __tmp98497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body97015_
                                                     __tmp98498
                                                     __tmp98496))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp98499
                                              __tmp98495)))
                                          (__tmp98493
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx97009_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp98494
                                       __tmp98493))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp98492)))
                            (__tmp98490
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx97009_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp98491 __tmp98490)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9702197036_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9702197036_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9702197036_)))))
                        (let () (declare (not safe)) (_E9702197036_))))))
            (let () (declare (not safe)) (_E9702097083_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx97719_)
        (let* ((_identifier=?97721_ 'free-identifier=?)
               (_unwrap-e97723_ 'syntax-e)
               (_wrap-e97725_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx97719_
           _identifier=?97721_
           _unwrap-e97723_
           _wrap-e97725_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx97727_ _identifier=?97728_)
        (let* ((_unwrap-e97730_ 'syntax-e) (_wrap-e97732_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx97727_
           _identifier=?97728_
           _unwrap-e97730_
           _wrap-e97732_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx97734_ _identifier=?97735_ _unwrap-e97736_)
        (let ((_wrap-e97738_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx97734_
           _identifier=?97735_
           _unwrap-e97736_
           _wrap-e97738_))))
    (define gx#macro-expand-syntax-case
      (lambda _g98509_
        (let ((_g98508_ (let () (declare (not safe)) (##length _g98509_))))
          (cond ((let () (declare (not safe)) (##fx= _g98508_ 1))
                 (apply (lambda (_stx97719_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx97719_)))
                        _g98509_))
                ((let () (declare (not safe)) (##fx= _g98508_ 2))
                 (apply (lambda (_stx97727_ _identifier=?97728_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx97727_
                             _identifier=?97728_)))
                        _g98509_))
                ((let () (declare (not safe)) (##fx= _g98508_ 3))
                 (apply (lambda (_stx97734_
                                 _identifier=?97735_
                                 _unwrap-e97736_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx97734_
                             _identifier=?97735_
                             _unwrap-e97736_)))
                        _g98509_))
                ((let () (declare (not safe)) (##fx= _g98508_ 4))
                 (apply (lambda (_stx97740_
                                 _identifier=?97741_
                                 _unwrap-e97742_
                                 _wrap-e97743_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx97740_
                             _identifier=?97741_
                             _unwrap-e97742_
                             _wrap-e97743_)))
                        _g98509_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g98509_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx97006_)
        (if (let () (declare (not safe)) (gx#identifier? _stx97006_))
            (let ((__tmp98510
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx97006_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp98510 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd96964_ . _rest96965_)
        (let ((_len96967_ (length _hd96964_)))
          (let _lp96969_ ((_rest96971_ _rest96965_))
            (let* ((_rest9697296980_ _rest96971_)
                   (_else9697496988_ (lambda () '#!void))
                   (_K9697696994_
                    (lambda (_rest96991_ _hd96992_)
                      (if (fx= _len96967_ (length _hd96992_))
                          (let () (declare (not safe)) (_lp96969_ _rest96991_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd96992_))))))
              (if (let () (declare (not safe)) (##pair? _rest9697296980_))
                  (let ((_hd9697796997_
                         (let ()
                           (declare (not safe))
                           (##car _rest9697296980_)))
                        (_tl9697896999_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9697296980_))))
                    (let* ((_hd97002_ _hd9697796997_)
                           (_rest97004_ _tl9697896999_))
                      (declare (not safe))
                      (_K9697696994_ _rest97004_ _hd97002_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx96922_ _n96923_)
        (let _lp96925_ ((_rest96927_ _stx96922_) (_r96928_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest96927_))
              (let* ((_g9692996936_
                      (let () (declare (not safe)) (gx#syntax-e _rest96927_)))
                     (_E9693196940_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9692996936_))))
                     (_K9693296946_
                      (lambda (_rest96943_ _hd96944_)
                        (let ((__tmp98515
                               (let ()
                                 (declare (not safe))
                                 (cons _hd96944_ _r96928_))))
                          (declare (not safe))
                          (_lp96925_ _rest96943_ __tmp98515)))))
                (if (let () (declare (not safe)) (##pair? _g9692996936_))
                    (let ((_hd9693396949_
                           (let () (declare (not safe)) (##car _g9692996936_)))
                          (_tl9693496951_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9692996936_))))
                      (let* ((_hd96954_ _hd9693396949_)
                             (_rest96956_ _tl9693496951_))
                        (declare (not safe))
                        (_K9693296946_ _rest96956_ _hd96954_)))
                    (let () (declare (not safe)) (_E9693196940_))))
              (let _lp96958_ ((_n96960_ _n96923_)
                              (_l96961_ _r96928_)
                              (_r96962_ _rest96927_))
                (if (let () (declare (not safe)) (null? _l96961_))
                    (values _l96961_ _r96962_)
                    (if (fxpositive? _n96960_)
                        (let ((__tmp98514
                               (let () (declare (not safe)) (fx- _n96960_ '1)))
                              (__tmp98513 (cdr _l96961_))
                              (__tmp98511
                               (let ((__tmp98512 (car _l96961_)))
                                 (declare (not safe))
                                 (cons __tmp98512 _r96962_))))
                          (declare (not safe))
                          (_lp96958_ __tmp98514 __tmp98513 __tmp98511))
                        (values (reverse _l96961_) _r96962_))))))))))
