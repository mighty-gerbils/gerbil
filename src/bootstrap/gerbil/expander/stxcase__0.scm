(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1710677338)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp98353 (list gx#expander::t))
            (__tmp98351
             (let ((__tmp98352
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp98352 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp98353
         '(id depth)
         __tmp98351
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args98348_
        (apply make-instance gx#syntax-pattern::t _$args98348_)))
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
      (lambda (_self98345_ _stx98346_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx98346_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx97827_)
        (letrec ((_generate97829_
                  (lambda (_e98056_)
                    (letrec ((_BUG98058_
                              (lambda (_q98220_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx97827_
                                         _e98056_
                                         _q98220_))))
                             (_local-pattern-e98059_
                              (lambda (_pat98218_)
                                (let ((__tmp98354
                                       (##structure-ref
                                        _pat98218_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp98354))))
                             (_getvar98060_
                              (lambda (_q98215_ _vars98216_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q98215_
                                   _vars98216_
                                   _BUG98058_))))
                             (_getarg98061_
                              (lambda (_arg98181_ _vars98182_)
                                (let* ((_arg9818398190_ _arg98181_)
                                       (_E9818598194_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9818398190_))))
                                       (_K9818698203_
                                        (lambda (_e98197_ _tag98198_)
                                          (let ((_$e98200_ _tag98198_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e98200_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar98060_
                                                   _e98197_
                                                   _vars98182_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e98200_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e98059_
                                                       _e98197_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG98058_
                                                       _arg98181_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9818398190_))
                                      (let ((_hd9818798206_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9818398190_)))
                                            (_tl9818898208_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9818398190_))))
                                        (let* ((_tag98211_ _hd9818798206_)
                                               (_e98213_ _tl9818898208_))
                                          (declare (not safe))
                                          (_K9818698203_ _e98213_ _tag98211_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9818598194_)))))))
                      (let _recur98063_ ((_e98065_ _e98056_) (_vars98066_ '()))
                        (let* ((_e9806798074_ _e98065_)
                               (_E9806998078_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9806798074_))))
                               (_K9807098169_
                                (lambda (_body98081_ _tag98082_)
                                  (let ((_$e98084_ _tag98082_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e98084_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body98081_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e98084_))
                                            (let ((_id98087_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body98081_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id98087_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks98089_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id98087_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks98089_))
                                                        (let ((__tmp98382
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body98081_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp98382))
                (let ((__tmp98381
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body98081_)))
                      (__tmp98380
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body98081_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp98381
                   __tmp98380
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id98087_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body98081_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG98058_
                                                         _e98065_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e98084_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e98059_
                                                   _body98081_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e98084_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar98060_
                                                       _body98081_
                                                       _vars98066_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e98084_))
                                                        (let ((__tmp98378
                                                               (let ((__tmp98379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body98081_)))
                         (declare (not safe))
                         (_recur98063_ __tmp98379 _vars98066_)))
                      (__tmp98376
                       (let ((__tmp98377 (cdr _body98081_)))
                         (declare (not safe))
                         (_recur98063_ __tmp98377 _vars98066_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp98378 __tmp98376))
                (if (let () (declare (not safe)) (eq? 'vector _$e98084_))
                    (let ((__tmp98375
                           (let ()
                             (declare (not safe))
                             (_recur98063_ _body98081_ _vars98066_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp98375))
                    (if (let () (declare (not safe)) (eq? 'box _$e98084_))
                        (let ((__tmp98374
                               (let ()
                                 (declare (not safe))
                                 (_recur98063_ _body98081_ _vars98066_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp98374))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e98084_))
                            (let* ((_body9809098101_ _body98081_)
                                   (_E9809298105_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9809098101_))))
                                   (_K9809398143_
                                    (lambda (_args98108_
                                             _iv98109_
                                             _hd98110_
                                             _depth98111_)
                                      (let* ((_targets98117_
                                              (map (lambda (_g9811298114_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg98061_
                                                        _g9811298114_
                                                        _vars98066_)))
                                                   _args98108_))
                                             (_fold-in98119_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args98108_)))
                                             (_fold-out98121_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args98123_
                                              (let ((__tmp98355
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out98121_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp98355
                                                        _fold-in98119_)))
                                             (_lambda-body98140_
                                              (if (fx> _depth98111_ '1)
                                                  (let ((_r-args98131_
                                                         (map (lambda (_arg98125_)
                                                                (let ((__tmp98360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg98125_)))
                          (declare (not safe))
                          (cons 'ref __tmp98360)))
                      _args98108_))
                (_r-vars98132_
                 (let ((__tmp98361
                        (lambda (_arg98127_ _var98128_ _r98129_)
                          (let ((__tmp98362
                                 (let ((__tmp98363 (cdr _arg98127_)))
                                   (declare (not safe))
                                   (cons __tmp98363 _var98128_))))
                            (declare (not safe))
                            (cons __tmp98362 _r98129_)))))
                   (declare (not safe))
                   (foldr2 __tmp98361
                           _vars98066_
                           _args98108_
                           _fold-in98119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp98364
                                                           (let ((__tmp98365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98369
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth98111_ '1)))
                                (__tmp98366
                                 (let ((__tmp98367
                                        (let ((__tmp98368
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out98121_))))
                                          (declare (not safe))
                                          (cons __tmp98368 _r-args98131_))))
                                   (declare (not safe))
                                   (cons _hd98110_ __tmp98367))))
                            (declare (not safe))
                            (cons __tmp98369 __tmp98366))))
                     (declare (not safe))
                     (cons 'splice __tmp98365))))
              (declare (not safe))
              (_recur98063_ __tmp98364 _r-vars98132_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars98138_
                                                          (let ((__tmp98356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg98134_ _var98135_ _r98136_)
                           (let ((__tmp98357
                                  (let ((__tmp98358 (cdr _arg98134_)))
                                    (declare (not safe))
                                    (cons __tmp98358 _var98135_))))
                             (declare (not safe))
                             (cons __tmp98357 _r98136_)))))
                    (declare (not safe))
                    (foldr2 __tmp98356
                            _vars98066_
                            _args98108_
                            _fold-in98119_)))
                 (__tmp98359
                  (let ()
                    (declare (not safe))
                    (_recur98063_ _hd98110_ _hd-vars98138_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp98359
                                                     _fold-out98121_)))))
                                        (let ((__tmp98373
                                               (if (fx> (length _targets98117_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets98117_))
                                                   '#!void))
                                              (__tmp98370
                                               (let ((__tmp98372
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args98123_
                                                         _lambda-body98140_)))
                                                     (__tmp98371
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur98063_
                                                         _iv98109_
                                                         _vars98066_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp98372
                                                  __tmp98371
                                                  _targets98117_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp98373
                                           __tmp98370))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9809098101_))
                                  (let ((_hd9809498146_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9809098101_)))
                                        (_tl9809598148_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9809098101_))))
                                    (let ((_depth98151_ _hd9809498146_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9809598148_))
                                          (let ((_hd9809698153_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9809598148_)))
                                                (_tl9809798155_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9809598148_))))
                                            (let ((_hd98158_ _hd9809698153_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9809798155_))
                                                  (let ((_hd9809898160_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9809798155_)))
                                                        (_tl9809998162_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9809798155_))))
                                                    (let* ((_iv98165_
                                                            _hd9809898160_)
                                                           (_args98167_
                                                            _tl9809998162_))
                                                      (declare (not safe))
                                                      (_K9809398143_
                                                       _args98167_
                                                       _iv98165_
                                                       _hd98158_
                                                       _depth98151_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9809298105_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9809298105_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9809298105_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e98084_))
                                _body98081_
                                (let ()
                                  (declare (not safe))
                                  (_BUG98058_ _e98065_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9806798074_))
                              (let ((_hd9807198172_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9806798074_)))
                                    (_tl9807298174_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9806798074_))))
                                (let* ((_tag98177_ _hd9807198172_)
                                       (_body98179_ _tl9807298174_))
                                  (declare (not safe))
                                  (_K9807098169_ _body98179_ _tag98177_)))
                              (let ()
                                (declare (not safe))
                                (_E9806998078_))))))))
                 (_parse97830_
                  (lambda (_e97871_)
                    (letrec ((_make-cons97873_
                              (lambda (_hd98048_ _tl98049_)
                                (let ((_g98383_ _hd98048_)
                                      (_g98385_ _tl98049_))
                                  (begin
                                    (let ((_g98384_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98383_)
                                                 (##vector-length _g98383_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98384_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98384_)))
                                    (let ((_g98386_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98385_)
                                                 (##vector-length _g98385_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98386_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98386_)))
                                    (let ((_hd-e98051_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98383_ 0)))
                                          (_hd-vars98052_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98383_ 1))))
                                      (let ((_tl-e98053_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98385_ 0)))
                                            (_tl-vars98054_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98385_ 1))))
                                        (values (let ((__tmp98387
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e98051_
                                                               _tl-e98053_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp98387))
                                                (append _hd-vars98052_
                                                        _tl-vars98054_))))))))
                             (_make-splice97874_
                              (lambda (_where97987_
                                       _depth97988_
                                       _hd97989_
                                       _tl97990_)
                                (let ((_g98388_ _hd97989_)
                                      (_g98390_ _tl97990_))
                                  (begin
                                    (let ((_g98389_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98388_)
                                                 (##vector-length _g98388_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98389_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98389_)))
                                    (let ((_g98391_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98390_)
                                                 (##vector-length _g98390_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98391_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98391_)))
                                    (let ((_hd-e97992_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98388_ 0)))
                                          (_hd-vars97993_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98388_ 1))))
                                      (let ((_tl-e97994_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98390_ 0)))
                                            (_tl-vars97995_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98390_ 1))))
                                        (let _lp97997_ ((_rest97999_
                                                         _hd-vars97993_)
                                                        (_targets98000_ '())
                                                        (_vars98001_
                                                         _tl-vars97995_))
                                          (let* ((_rest9800298012_ _rest97999_)
                                                 (_else9800498020_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets98000_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx97827_
                                                           _where97987_))
                                                        (values (let ((__tmp98392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp98393
                                      (let ((__tmp98394
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e97994_
                                                     _targets98000_))))
                                        (declare (not safe))
                                        (cons _hd-e97992_ __tmp98394))))
                                 (declare (not safe))
                                 (cons _depth97988_ __tmp98393))))
                          (declare (not safe))
                          (cons 'splice __tmp98392))
                        _vars98001_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9800698029_
                                                  (lambda (_rest98023_
                                                           _hd-pat98024_
                                                           _hd-depth*98025_)
                                                    (let ((_hd-depth98027_
                                                           (fx- _hd-depth*98025_
                                                                _depth97988_)))
                                                      (if (fxpositive?
                                                           _hd-depth98027_)
                                                          (let ((__tmp98399
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp98400
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat98024_))))
                           (declare (not safe))
                           (cons __tmp98400 _targets98000_)))
                        (__tmp98397
                         (let ((__tmp98398
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth98027_ _hd-pat98024_))))
                           (declare (not safe))
                           (cons __tmp98398 _vars98001_))))
                    (declare (not safe))
                    (_lp97997_ _rest98023_ __tmp98399 __tmp98397))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth98027_))
                      (let ((__tmp98395
                             (let ((__tmp98396
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat98024_))))
                               (declare (not safe))
                               (cons __tmp98396 _targets98000_))))
                        (declare (not safe))
                        (_lp97997_ _rest98023_ __tmp98395 _vars98001_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx97827_
                         _where97987_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9800298012_))
                                                (let ((_hd9800798032_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9800298012_)))
                                                      (_tl9800898034_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9800298012_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9800798032_))
                                                      (let ((_hd9800998037_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9800798032_)))
                    (_tl9801098039_
                     (let () (declare (not safe)) (##cdr _hd9800798032_))))
                (let* ((_hd-depth*98042_ _hd9800998037_)
                       (_hd-pat98044_ _tl9801098039_)
                       (_rest98046_ _tl9800898034_))
                  (declare (not safe))
                  (_K9800698029_ _rest98046_ _hd-pat98044_ _hd-depth*98042_)))
              (let () (declare (not safe)) (_else9800498020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9800498020_)))))))))))
                             (_recur97875_
                              (lambda (_e97880_ _is-e?97881_)
                                (if (_is-e?97881_ _e97880_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx97827_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e97880_))
                                        (let* ((_pat97883_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e97880_)))
                                               (_depth97885_
                                                (##structure-ref
                                                 _pat97883_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth97885_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat97883_))
                                                      (let ((__tmp98416
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth97885_ _pat97883_))))
                (declare (not safe))
                (cons __tmp98416 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat97883_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e97880_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e97880_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e97880_))
                                                (let* ((_e9788797894_ _e97880_)
                                                       (_E9788997898_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9788797894_))))
                                                       (_E9788897977_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9788797894_))
                      (let ((_e9789097902_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9788797894_))))
                        (let ((_hd9789197905_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9789097902_)))
                              (_tl9789297907_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9789097902_))))
                          (let* ((_hd97910_ _hd9789197905_)
                                 (_rest97912_ _tl9789297907_))
                            (if '#t
                                (if (_is-e?97881_ _hd97910_)
                                    (let* ((_e9791397920_ _rest97912_)
                                           (_E9791597924_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx97827_
                                                 _e97880_))))
                                           (_E9791497938_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9791397920_))
                                                  (let ((_e9791697928_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9791397920_))))
                                                    (let ((_hd9791797931_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9791697928_)))
                                                          (_tl9791897933_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9791697928_))))
                                                      (let ((_rest97936_
                                                             _hd9791797931_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9791897933_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur97875_ _rest97936_ false))
                        (let () (declare (not safe)) (_E9791597924_)))
                    (let () (declare (not safe)) (_E9791597924_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9791597924_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9791497938_)))
                                    (let _lp97942_ ((_rest97944_ _rest97912_)
                                                    (_depth97945_ '0))
                                      (let* ((_e9794697953_ _rest97944_)
                                             (_E9794897957_
                                              (lambda ()
                                                (if (fxpositive? _depth97945_)
                                                    (let ((__tmp98410
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur97875_
                                                              _hd97910_
                                                              _is-e?97881_)))
                                                          (__tmp98409
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur97875_
                                                              _rest97944_
                                                              _is-e?97881_))))
                                                      (declare (not safe))
                                                      (_make-splice97874_
                                                       _e97880_
                                                       _depth97945_
                                                       __tmp98410
                                                       __tmp98409))
                                                    (let ((__tmp98408
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur97875_
                                                              _hd97910_
                                                              _is-e?97881_)))
                                                          (__tmp98407
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur97875_
                                                              _rest97944_
                                                              _is-e?97881_))))
                                                      (declare (not safe))
                                                      (_make-cons97873_
                                                       __tmp98408
                                                       __tmp98407)))))
                                             (_E9794797973_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9794697953_))
                                                    (let ((_e9794997961_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9794697953_))))
                                                      (let ((_hd9795097964_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9794997961_)))
                    (_tl9795197966_
                     (let () (declare (not safe)) (##cdr _e9794997961_))))
                (let* ((_rest-hd97969_ _hd9795097964_)
                       (_rest-tl97971_ _tl9795197966_))
                  (if '#t
                      (if (_is-e?97881_ _rest-hd97969_)
                          (let ((__tmp98415
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth97945_ '1))))
                            (declare (not safe))
                            (_lp97942_ _rest-tl97971_ __tmp98415))
                          (if (fxpositive? _depth97945_)
                              (let ((__tmp98414
                                     (let ()
                                       (declare (not safe))
                                       (_recur97875_ _hd97910_ _is-e?97881_)))
                                    (__tmp98413
                                     (let ()
                                       (declare (not safe))
                                       (_recur97875_
                                        _rest97944_
                                        _is-e?97881_))))
                                (declare (not safe))
                                (_make-splice97874_
                                 _e97880_
                                 _depth97945_
                                 __tmp98414
                                 __tmp98413))
                              (let ((__tmp98412
                                     (let ()
                                       (declare (not safe))
                                       (_recur97875_ _hd97910_ _is-e?97881_)))
                                    (__tmp98411
                                     (let ()
                                       (declare (not safe))
                                       (_recur97875_
                                        _rest97944_
                                        _is-e?97881_))))
                                (declare (not safe))
                                (_make-cons97873_ __tmp98412 __tmp98411))))
                      (let () (declare (not safe)) (_E9794897957_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9794897957_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9794797973_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9788997898_))))))
                      (let () (declare (not safe)) (_E9788997898_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9788897977_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e97880_))
                                                    (let ((_g98404_
                                                           (let ((__tmp98406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e97880_)))))
                     (declare (not safe))
                     (_recur97875_ __tmp98406 _is-e?97881_))))
              (begin
                (let ((_g98405_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g98404_)
                             (##vector-length _g98404_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g98405_ 2)))
                      (error "Context expects 2 values" _g98405_)))
                (let ((_e97981_
                       (let () (declare (not safe)) (##vector-ref _g98404_ 0)))
                      (_vars97982_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g98404_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e97981_))
                          _vars97982_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e97880_))
                                                        (let ((_g98401_
                                                               (let ((__tmp98403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e97880_)))))
                         (declare (not safe))
                         (_recur97875_ __tmp98403 _is-e?97881_))))
                  (begin
                    (let ((_g98402_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g98401_)
                                 (##vector-length _g98401_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g98402_ 2)))
                          (error "Context expects 2 values" _g98402_)))
                    (let ((_e97984_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98401_ 0)))
                          (_vars97985_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98401_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e97984_))
                              _vars97985_))))
                (values (let () (declare (not safe)) (cons 'datum _e97880_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g98417_
                             (let ()
                               (declare (not safe))
                               (_recur97875_ _e97871_ gx#ellipsis?))))
                        (begin
                          (let ((_g98418_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g98417_)
                                       (##vector-length _g98417_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g98418_ 2)))
                                (error "Context expects 2 values" _g98418_)))
                          (let ((_tree97877_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g98417_ 0)))
                                (_vars97878_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g98417_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars97878_))
                                _tree97877_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx97827_
                                   _vars97878_))))))))))
          (let* ((_e9783197841_ _stx97827_)
                 (_E9783397845_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx97827_))))
                 (_E9783297867_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9783197841_))
                        (let ((_e9783497849_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9783197841_))))
                          (let ((_hd9783597852_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9783497849_)))
                                (_tl9783697854_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9783497849_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9783697854_))
                                (let ((_e9783797857_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9783697854_))))
                                  (let ((_hd9783897860_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9783797857_)))
                                        (_tl9783997862_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9783797857_))))
                                    (let ((_form97865_ _hd9783897860_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9783997862_))
                                          (if '#t
                                              (let ((__tmp98420
                                                     (let ((__tmp98421
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse97830_
                                                               _form97865_))))
                                                       (declare (not safe))
                                                       (_generate97829_
                                                        __tmp98421)))
                                                    (__tmp98419
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx97827_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp98420
                                                 __tmp98419))
                                              (let ()
                                                (declare (not safe))
                                                (_E9783397845_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9783397845_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9783397845_)))))
                        (let () (declare (not safe)) (_E9783397845_))))))
            (let () (declare (not safe)) (_E9783297867_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx97091_ _identifier=?97092_ _unwrap-e97093_ _wrap-e97094_)
        (letrec ((_generate-bindings97096_
                  (lambda (_target97691_
                           _ids97692_
                           _clauses97693_
                           _clause-ids97694_
                           _E97695_)
                    (letrec ((_generate197697_
                              (lambda (_clause97794_ _clause-id97795_ _E97796_)
                                (let ((__tmp98426
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id97795_ '())))
                                      (__tmp98422
                                       (let ((__tmp98423
                                              (let ((__tmp98425
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target97691_
                                                             '())))
                                                    (__tmp98424
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause97098_
                                                        _target97691_
                                                        _ids97692_
                                                        _clause97794_
                                                        _E97796_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp98425
                                                 __tmp98424))))
                                         (declare (not safe))
                                         (cons __tmp98423 '()))))
                                  (declare (not safe))
                                  (cons __tmp98426 __tmp98422)))))
                      (let _lp97699_ ((_rest97701_ _clauses97693_)
                                      (_rest-ids97702_ _clause-ids97694_)
                                      (_bindings97703_ '()))
                        (let* ((_rest9770497712_ _rest97701_)
                               (_else9770697720_ (lambda () _bindings97703_))
                               (_K9770897782_
                                (lambda (_rest97723_ _clause97724_)
                                  (let* ((_rest-ids9772597732_ _rest-ids97702_)
                                         (_E9772797736_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9772597732_))))
                                         (_K9772897770_
                                          (lambda (_rest-ids97739_
                                                   _clause-id97740_)
                                            (let* ((_rest-ids9774197749_
                                                    _rest-ids97739_)
                                                   (_else9774397757_
                                                    (lambda ()
                                                      (let ((__tmp98427
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate197697_
                        _clause97724_
                        _clause-id97740_
                        _E97695_))))
                (declare (not safe))
                (cons __tmp98427 _bindings97703_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9774597762_
                                                    (lambda (_next-clause-id97760_)
                                                      (let ((__tmp98428
                                                             (let ((__tmp98429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate197697_
                               _clause97724_
                               _clause-id97740_
                               _next-clause-id97760_))))
                       (declare (not safe))
                       (cons __tmp98429 _bindings97703_))))
                (declare (not safe))
                (_lp97699_ _rest97723_ _rest-ids97739_ __tmp98428)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9774197749_))
                                                  (let* ((_hd9774697765_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9774197749_)))
                                                         (_next-clause-id97768_
                                                          _hd9774697765_))
                                                    (declare (not safe))
                                                    (_K9774597762_
                                                     _next-clause-id97768_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9774397757_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9772597732_))
                                        (let ((_hd9772997773_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9772597732_)))
                                              (_tl9773097775_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9772597732_))))
                                          (let* ((_clause-id97778_
                                                  _hd9772997773_)
                                                 (_rest-ids97780_
                                                  _tl9773097775_))
                                            (declare (not safe))
                                            (_K9772897770_
                                             _rest-ids97780_
                                             _clause-id97778_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9772797736_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9770497712_))
                              (let ((_hd9770997785_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9770497712_)))
                                    (_tl9771097787_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9770497712_))))
                                (let* ((_clause97790_ _hd9770997785_)
                                       (_rest97792_ _tl9771097787_))
                                  (declare (not safe))
                                  (_K9770897782_ _rest97792_ _clause97790_)))
                              (let ()
                                (declare (not safe))
                                (_else9770697720_))))))))
                 (_generate-body97097_
                  (lambda (_bindings97651_ _body97652_)
                    (let _recur97654_ ((_rest97656_ _bindings97651_))
                      (let* ((_rest9765797665_ _rest97656_)
                             (_else9765997673_ (lambda () _body97652_))
                             (_K9766197679_
                              (lambda (_rest97676_ _hd97677_)
                                (let ((__tmp98431
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd97677_ '())))
                                      (__tmp98430
                                       (let ()
                                         (declare (not safe))
                                         (_recur97654_ _rest97676_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp98431
                                   __tmp98430)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9765797665_))
                            (let ((_hd9766297682_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9765797665_)))
                                  (_tl9766397684_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9765797665_))))
                              (let* ((_hd97687_ _hd9766297682_)
                                     (_rest97689_ _tl9766397684_))
                                (declare (not safe))
                                (_K9766197679_ _rest97689_ _hd97687_)))
                            (let ()
                              (declare (not safe))
                              (_else9765997673_)))))))
                 (_generate-clause97098_
                  (lambda (_target97514_ _ids97515_ _clause97516_ _E97517_)
                    (letrec ((_generate197519_
                              (lambda (_hd97606_ _fender97607_ _body97608_)
                                (let ((_g98432_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause97100_
                                          _hd97606_
                                          _ids97515_))))
                                  (begin
                                    (let ((_g98433_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98432_)
                                                 (##vector-length _g98432_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98433_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98433_)))
                                    (let ((_e97610_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98432_ 0)))
                                          (_mvars97611_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98432_ 1))))
                                      (let* ((_pvars97613_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars97611_))))
                                             (_E97615_
                                              (let ((__tmp98434
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target97514_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E97517_ __tmp98434)))
                                             (_K97648_
                                              (let ((__tmp98435
                                                     (let ((__tmp98437
                                                            (map (lambda (_mvar97617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar97618_)
                           (let* ((_mvar9761997626_ _mvar97617_)
                                  (_E9762197630_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9761997626_))))
                                  (_K9762297636_
                                   (lambda (_depth97633_ _id97634_)
                                     (let ((__tmp98438
                                            (let ((__tmp98439
                                                   (let ((__tmp98441
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id97634_)))
                                                         (__tmp98440
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar97618_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp98441
                                                      __tmp98440
                                                      _depth97633_))))
                                              (declare (not safe))
                                              (cons __tmp98439 '()))))
                                       (declare (not safe))
                                       (cons _id97634_ __tmp98438)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9761997626_))
                                 (let ((_hd9762397639_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9761997626_)))
                                       (_tl9762497641_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9761997626_))))
                                   (let* ((_id97644_ _hd9762397639_)
                                          (_depth97646_ _tl9762497641_))
                                     (declare (not safe))
                                     (_K9762297636_ _depth97646_ _id97644_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9762197630_)))))
                         _mvars97611_
                         _pvars97613_))
                   (__tmp98436
                    (if (let () (declare (not safe)) (eq? _fender97607_ '#t))
                        _body97608_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender97607_
                           _body97608_
                           _E97615_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp98437 __tmp98436))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars97613_
                                                 __tmp98435))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match97099_
                                           _hd97606_
                                           _target97514_
                                           _e97610_
                                           _mvars97611_
                                           _K97648_
                                           _E97615_)))))))))
                      (let* ((_e9752097540_ _clause97516_)
                             (_E9752997544_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9752097540_))))
                             (_E9752297578_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9752097540_))
                                    (let ((_e9753097548_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9752097540_))))
                                      (let ((_hd9753197551_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9753097548_)))
                                            (_tl9753297553_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9753097548_))))
                                        (let ((_hd97556_ _hd9753197551_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9753297553_))
                                              (let ((_e9753397558_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9753297553_))))
                                                (let ((_hd9753497561_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9753397558_)))
                                                      (_tl9753597563_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9753397558_))))
                                                  (let ((_fender97566_
                                                         _hd9753497561_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9753597563_))
                                                        (let ((_e9753697568_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9753597563_))))
                  (let ((_hd9753797571_
                         (let () (declare (not safe)) (##car _e9753697568_)))
                        (_tl9753897573_
                         (let () (declare (not safe)) (##cdr _e9753697568_))))
                    (let ((_body97576_ _hd9753797571_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9753897573_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate197519_
                                 _hd97556_
                                 _fender97566_
                                 _body97576_))
                              (let () (declare (not safe)) (_E9752997544_)))
                          (let () (declare (not safe)) (_E9752997544_))))))
                (let () (declare (not safe)) (_E9752997544_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9752997544_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9752997544_)))))
                             (_E9752197602_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9752097540_))
                                    (let ((_e9752397582_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9752097540_))))
                                      (let ((_hd9752497585_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9752397582_)))
                                            (_tl9752597587_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9752397582_))))
                                        (let ((_hd97590_ _hd9752497585_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9752597587_))
                                              (let ((_e9752697592_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9752597587_))))
                                                (let ((_hd9752797595_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9752697592_)))
                                                      (_tl9752897597_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9752697592_))))
                                                  (let ((_body97600_
                                                         _hd9752797595_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9752897597_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate197519_
                                                               _hd97590_
                                                               '#t
                                                               _body97600_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9752297578_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9752297578_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9752297578_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9752297578_))))))
                        (let () (declare (not safe)) (_E9752197602_))))))
                 (_generate-match97099_
                  (lambda (_where97263_
                           _target97264_
                           _hd97265_
                           _mvars97266_
                           _K97267_
                           _E97268_)
                    (letrec ((_BUG97270_
                              (lambda (_q97512_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx97091_
                                         _hd97265_
                                         _q97512_))))
                             (_recur97271_
                              (lambda (_e97362_
                                       _vars97363_
                                       _target97364_
                                       _E97365_
                                       _k97366_)
                                (let* ((_e9736797374_ _e97362_)
                                       (_E9736997378_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9736797374_))))
                                       (_K9737097500_
                                        (lambda (_body97381_ _tag97382_)
                                          (let ((_$e97384_ _tag97382_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e97384_))
                                                (_k97366_ _vars97363_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e97384_))
                                                    (let ((__tmp98548
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target97364_)))
                                                          (__tmp98544
                                                           (let ((__tmp98546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98547
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e97094_ _body97381_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?97092_
                             __tmp98547
                             _target97364_)))
                         (__tmp98545 (_k97366_ _vars97363_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp98546 __tmp98545 _E97365_))))
              (declare (not safe))
              (gx#core-list 'if __tmp98548 __tmp98544 _E97365_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e97384_))
                                                        (_k97366_
                                                         (let ((__tmp98543
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body97381_ _target97364_))))
                   (declare (not safe))
                   (cons __tmp98543 _vars97363_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e97384_))
                    (let ((_$e97387_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd97388_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl97389_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp98542
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target97364_)))
                            (__tmp98523
                             (let ((__tmp98537
                                    (let ((__tmp98538
                                           (let ((__tmp98541
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e97387_ '())))
                                                 (__tmp98539
                                                  (let ((__tmp98540
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e97093_
                                                            _target97364_))))
                                                    (declare (not safe))
                                                    (cons __tmp98540 '()))))
                                             (declare (not safe))
                                             (cons __tmp98541 __tmp98539))))
                                      (declare (not safe))
                                      (cons __tmp98538 '())))
                                   (__tmp98524
                                    (let ((__tmp98527
                                           (let ((__tmp98533
                                                  (let ((__tmp98536
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd97388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp98534
                 (let ((__tmp98535
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e97387_))))
                   (declare (not safe))
                   (cons __tmp98535 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98536
                                                          __tmp98534)))
                                                 (__tmp98528
                                                  (let ((__tmp98529
                                                         (let ((__tmp98532
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl97389_ '())))
                       (__tmp98530
                        (let ((__tmp98531
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e97387_))))
                          (declare (not safe))
                          (cons __tmp98531 '()))))
                   (declare (not safe))
                   (cons __tmp98532 __tmp98530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98529 '()))))
                                             (declare (not safe))
                                             (cons __tmp98533 __tmp98528)))
                                          (__tmp98525
                                           (let* ((_body9739097397_
                                                   _body97381_)
                                                  (_E9739297401_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9739097397_))))
                                                  (_K9739397409_
                                                   (lambda (_tl97404_
                                                            _hd97405_)
                                                     (let ((__tmp98526
                                                            (lambda (_vars97407_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur97271_
                         _tl97404_
                         _vars97407_
                         _$tl97389_
                         _E97365_
                         _k97366_)))))
               (declare (not safe))
               (_recur97271_
                _hd97405_
                _vars97363_
                _$hd97388_
                _E97365_
                __tmp98526)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9739097397_))
                                                 (let ((_hd9739497412_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9739097397_)))
                                                       (_tl9739597414_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9739097397_))))
                                                   (let* ((_hd97417_
                                                           _hd9739497412_)
                                                          (_tl97419_
                                                           _tl9739597414_))
                                                     (declare (not safe))
                                                     (_K9739397409_
                                                      _tl97419_
                                                      _hd97417_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9739297401_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp98527
                                       __tmp98525))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp98537
                                __tmp98524))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp98542 __tmp98523 _E97365_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e97384_))
                        (let* ((_body9742097427_ _body97381_)
                               (_E9742297431_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9742097427_))))
                               (_K9742397482_
                                (lambda (_tl97434_ _hd97435_)
                                  (let* ((_rlen97437_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen97272_ _tl97434_)))
                                         (_$target97439_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd97441_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl97443_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp97445_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e97447_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd97449_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl97451_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars97453_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars97273_ _hd97435_)))
                                         (_lvars97455_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars97453_)))
                                         (_tlvars97457_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars97453_)))
                                         (_linit97461_
                                          (map (lambda (_var97459_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars97455_)))
                                    (letrec ((_make-loop97464_
                                              (lambda (_vars97468_)
                                                (let ((__tmp98474
                                                       (let ((__tmp98475
                                                              (let ((__tmp98511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp97445_ '())))
                            (__tmp98476
                             (let ((__tmp98477
                                    (let ((__tmp98510
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd97441_ _lvars97455_)))
                                          (__tmp98478
                                           (let ((__tmp98509
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd97441_)))
                                                 (__tmp98487
                                                  (let ((__tmp98504
                                                         (let ((__tmp98505
                                                                (let ((__tmp98508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e97447_ '())))
                              (__tmp98506
                               (let ((__tmp98507
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e97093_
                                         _$hd97441_))))
                                 (declare (not safe))
                                 (cons __tmp98507 '()))))
                          (declare (not safe))
                          (cons __tmp98508 __tmp98506))))
                   (declare (not safe))
                   (cons __tmp98505 '())))
                (__tmp98488
                 (let ((__tmp98494
                        (let ((__tmp98500
                               (let ((__tmp98503
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd97449_ '())))
                                     (__tmp98501
                                      (let ((__tmp98502
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e97447_))))
                                        (declare (not safe))
                                        (cons __tmp98502 '()))))
                                 (declare (not safe))
                                 (cons __tmp98503 __tmp98501)))
                              (__tmp98495
                               (let ((__tmp98496
                                      (let ((__tmp98499
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl97451_ '())))
                                            (__tmp98497
                                             (let ((__tmp98498
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e97447_))))
                                               (declare (not safe))
                                               (cons __tmp98498 '()))))
                                        (declare (not safe))
                                        (cons __tmp98499 __tmp98497))))
                                 (declare (not safe))
                                 (cons __tmp98496 '()))))
                          (declare (not safe))
                          (cons __tmp98500 __tmp98495)))
                       (__tmp98489
                        (let ((__tmp98490
                               (lambda (_hdvars97470_)
                                 (let ((__tmp98491
                                        (let ((__tmp98492
                                               (map (lambda (_svar97472_
                                                             _lvar97473_)
                                                      (let ((__tmp98493
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar97472_ _hdvars97470_ _BUG97270_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp98493 _lvar97473_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars97453_
                                                    _lvars97455_)))
                                          (declare (not safe))
                                          (cons _$lp-tl97451_ __tmp98492))))
                                   (declare (not safe))
                                   (cons _$lp97445_ __tmp98491)))))
                          (declare (not safe))
                          (_recur97271_
                           _hd97435_
                           '()
                           _$lp-hd97449_
                           _E97365_
                           __tmp98490))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp98494 __tmp98489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp98504
                                                     __tmp98488)))
                                                 (__tmp98479
                                                  (let ((__tmp98483
                                                         (map (lambda (_lvar97475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar97476_)
                        (let ((__tmp98486
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar97476_ '())))
                              (__tmp98484
                               (let ((__tmp98485
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar97475_))))
                                 (declare (not safe))
                                 (cons __tmp98485 '()))))
                          (declare (not safe))
                          (cons __tmp98486 __tmp98484)))
                      _lvars97455_
                      _tlvars97457_))
                (__tmp98480
                 (_k97366_
                  (let ((__tmp98481
                         (lambda (_svar97478_ _tlvar97479_ _r97480_)
                           (let ((__tmp98482
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar97478_ _tlvar97479_))))
                             (declare (not safe))
                             (cons __tmp98482 _r97480_)))))
                    (declare (not safe))
                    (foldl2 __tmp98481
                            _vars97468_
                            _svars97453_
                            _tlvars97457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp98483
                                                     __tmp98480))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp98509
                                              __tmp98487
                                              __tmp98479))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp98510
                                       __tmp98478))))
                               (declare (not safe))
                               (cons __tmp98477 '()))))
                        (declare (not safe))
                        (cons __tmp98511 __tmp98476))))
                 (declare (not safe))
                 (cons __tmp98475 '())))
              (__tmp98472
               (let ((__tmp98473
                      (let ()
                        (declare (not safe))
                        (cons _$target97439_ _linit97461_))))
                 (declare (not safe))
                 (cons _$lp97445_ __tmp98473))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp98474
                                                   __tmp98472)))))
                                      (let ((_body97466_
                                             (let ((__tmp98513
                                                    (let ((__tmp98514
                                                           (let ((__tmp98517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98518
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl97443_ '()))))
                            (declare (not safe))
                            (cons _$target97439_ __tmp98518)))
                         (__tmp98515
                          (let ((__tmp98516
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target97364_
                                    _rlen97437_))))
                            (declare (not safe))
                            (cons __tmp98516 '()))))
                     (declare (not safe))
                     (cons __tmp98517 __tmp98515))))
              (declare (not safe))
              (cons __tmp98514 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp98512
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur97271_
                                                       _tl97434_
                                                       _vars97363_
                                                       _$tl97443_
                                                       _E97365_
                                                       _make-loop97464_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp98513
                                                __tmp98512))))
                                        (let ((__tmp98522
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target97364_)))
                                              (__tmp98519
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen97437_))
                                                   _body97466_
                                                   (let ((__tmp98520
                                                          (let ((__tmp98521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target97364_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp98521 _rlen97437_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp98520
                                                      _body97466_
                                                      _E97365_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp98522
                                           __tmp98519
                                           _E97365_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9742097427_))
                              (let ((_hd9742497485_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9742097427_)))
                                    (_tl9742597487_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9742097427_))))
                                (let* ((_hd97490_ _hd9742497485_)
                                       (_tl97492_ _tl9742597487_))
                                  (declare (not safe))
                                  (_K9742397482_ _tl97492_ _hd97490_)))
                              (let () (declare (not safe)) (_E9742297431_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e97384_))
                            (let ((__tmp98471
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target97364_)))
                                  (__tmp98470 (_k97366_ _vars97363_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp98471
                               __tmp98470
                               _E97365_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e97384_))
                                (let ((_$e97494_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp98469
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target97364_)))
                                        (__tmp98461
                                         (let ((__tmp98463
                                                (let ((__tmp98464
                                                       (let ((__tmp98468
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e97494_ '())))
                     (__tmp98465
                      (let ((__tmp98466
                             (let ((__tmp98467
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e97093_
                                       _target97364_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp98467))))
                        (declare (not safe))
                        (cons __tmp98466 '()))))
                 (declare (not safe))
                 (cons __tmp98468 __tmp98465))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp98464 '())))
                                               (__tmp98462
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur97271_
                                                   _body97381_
                                                   _vars97363_
                                                   _$e97494_
                                                   _E97365_
                                                   _k97366_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp98463
                                            __tmp98462))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp98469
                                     __tmp98461
                                     _E97365_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e97384_))
                                    (let ((_$e97496_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp98460
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target97364_)))
                                            (__tmp98452
                                             (let ((__tmp98454
                                                    (let ((__tmp98455
                                                           (let ((__tmp98459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e97496_ '())))
                         (__tmp98456
                          (let ((__tmp98457
                                 (let ((__tmp98458
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e97093_
                                           _target97364_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp98458))))
                            (declare (not safe))
                            (cons __tmp98457 '()))))
                     (declare (not safe))
                     (cons __tmp98459 __tmp98456))))
              (declare (not safe))
              (cons __tmp98455 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp98453
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur97271_
                                                       _body97381_
                                                       _vars97363_
                                                       _$e97496_
                                                       _E97365_
                                                       _k97366_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp98454
                                                __tmp98453))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp98460
                                         __tmp98452
                                         _E97365_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e97384_))
                                        (let ((_$e97498_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp98451
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target97364_)))
                                                (__tmp98442
                                                 (let ((__tmp98446
                                                        (let ((__tmp98447
                                                               (let ((__tmp98450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e97498_ '())))
                             (__tmp98448
                              (let ((__tmp98449
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target97364_))))
                                (declare (not safe))
                                (cons __tmp98449 '()))))
                         (declare (not safe))
                         (cons __tmp98450 __tmp98448))))
                  (declare (not safe))
                  (cons __tmp98447 '())))
               (__tmp98443
                (let ((__tmp98445
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e97498_ _body97381_)))
                      (__tmp98444 (_k97366_ _vars97363_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp98445 __tmp98444 _E97365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp98446
                                                    __tmp98443))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp98451
                                             __tmp98442
                                             _E97365_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG97270_ _e97362_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9736797374_))
                                      (let ((_hd9737197503_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9736797374_)))
                                            (_tl9737297505_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9736797374_))))
                                        (let* ((_tag97508_ _hd9737197503_)
                                               (_body97510_ _tl9737297505_))
                                          (declare (not safe))
                                          (_K9737097500_
                                           _body97510_
                                           _tag97508_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9736997378_))))))
                             (_splice-rlen97272_
                              (lambda (_e97324_)
                                (let _lp97326_ ((_e97328_ _e97324_)
                                                (_n97329_ '0))
                                  (let* ((_e9733097337_ _e97328_)
                                         (_E9733297341_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9733097337_))))
                                         (_K9733397350_
                                          (lambda (_body97344_ _tag97345_)
                                            (let ((_$e97347_ _tag97345_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e97347_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx97091_
                                                     _where97263_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e97347_))
                                                      (let ((__tmp98550
                                                             (cdr _body97344_))
                                                            (__tmp98549
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n97329_ '1))))
                (declare (not safe))
                (_lp97326_ __tmp98550 __tmp98549))
              _n97329_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9733097337_))
                                        (let ((_hd9733497353_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9733097337_)))
                                              (_tl9733597355_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9733097337_))))
                                          (let* ((_tag97358_ _hd9733497353_)
                                                 (_body97360_ _tl9733597355_))
                                            (declare (not safe))
                                            (_K9733397350_
                                             _body97360_
                                             _tag97358_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9733297341_)))))))
                             (_splice-vars97273_
                              (lambda (_e97280_)
                                (let _recur97282_ ((_e97284_ _e97280_)
                                                   (_vars97285_ '()))
                                  (let* ((_e9728697293_ _e97284_)
                                         (_E9728897297_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9728697293_))))
                                         (_K9728997312_
                                          (lambda (_body97300_ _tag97301_)
                                            (let ((_$e97303_ _tag97301_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e97303_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body97300_
                                                          _vars97285_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e97303_))
                  (let () (declare (not safe)) (eq? 'splice _$e97303_)))
              (let ((__tmp98553 (cdr _body97300_))
                    (__tmp98551
                     (let ((__tmp98552 (car _body97300_)))
                       (declare (not safe))
                       (_recur97282_ __tmp98552 _vars97285_))))
                (declare (not safe))
                (_recur97282_ __tmp98553 __tmp98551))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e97303_))
                      (let () (declare (not safe)) (eq? 'box _$e97303_)))
                  (let ()
                    (declare (not safe))
                    (_recur97282_ _body97300_ _vars97285_))
                  _vars97285_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9728697293_))
                                        (let ((_hd9729097315_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9728697293_)))
                                              (_tl9729197317_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9728697293_))))
                                          (let* ((_tag97320_ _hd9729097315_)
                                                 (_body97322_ _tl9729197317_))
                                            (declare (not safe))
                                            (_K9728997312_
                                             _body97322_
                                             _tag97320_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9728897297_)))))))
                             (_make-body97274_
                              (lambda (_vars97276_)
                                (let ((__tmp98554
                                       (map (lambda (_mvar97278_)
                                              (let ((__tmp98555
                                                     (car _mvar97278_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp98555
                                                 _vars97276_
                                                 _BUG97270_)))
                                            _mvars97266_)))
                                  (declare (not safe))
                                  (cons _K97267_ __tmp98554)))))
                      (let ()
                        (declare (not safe))
                        (_recur97271_
                         _hd97265_
                         '()
                         _target97264_
                         _E97268_
                         _make-body97274_)))))
                 (_parse-clause97100_
                  (lambda (_hd97169_ _ids97170_)
                    (let _recur97172_ ((_e97174_ _hd97169_)
                                       (_vars97175_ '())
                                       (_depth97176_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e97174_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e97174_))
                              (values '(any) _vars97175_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e97174_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx97091_
                                     _hd97169_))
                                  (if (let ((__tmp98571
                                             (lambda (_id97178_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e97174_
                                                  _id97178_)))))
                                        (declare (not safe))
                                        (find __tmp98571 _ids97170_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e97174_))
                                              _vars97175_)
                                      (if (let ((__tmp98569
                                                 (lambda (_var97180_)
                                                   (let ((__tmp98570
                                                          (car _var97180_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e97174_
                                                      __tmp98570)))))
                                            (declare (not safe))
                                            (find __tmp98569 _vars97175_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx97091_
                                             _e97174_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e97174_))
                                                  (let ((__tmp98568
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e97174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth97176_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98568
                                                          _vars97175_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e97174_))
                              (let* ((_e9718197188_ _e97174_)
                                     (_E9718397192_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9718197188_))))
                                     (_E9718297253_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9718197188_))
                                            (let ((_e9718497196_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9718197188_))))
                                              (let ((_hd9718597199_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9718497196_)))
                                                    (_tl9718697201_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9718497196_))))
                                                (let* ((_hd97204_
                                                        _hd9718597199_)
                                                       (_rest97206_
                                                        _tl9718697201_))
                                                  (if '#t
                                                      (let* ((_make-pair97221_
                                                              (lambda (_tag97208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd97209_
                               _tl97210_)
                        (let* ((_hd-depth97212_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag97208_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth97176_ '1))
                                    _depth97176_))
                               (_g98563_
                                (let ()
                                  (declare (not safe))
                                  (_recur97172_
                                   _hd97209_
                                   _vars97175_
                                   _hd-depth97212_))))
                          (begin
                            (let ((_g98564_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g98563_)
                                         (##vector-length _g98563_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g98564_ 2)))
                                  (error "Context expects 2 values" _g98564_)))
                            (let ((_hd97214_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g98563_ 0)))
                                  (_vars97215_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g98563_ 1))))
                              (let ((_g98565_
                                     (let ()
                                       (declare (not safe))
                                       (_recur97172_
                                        _tl97210_
                                        _vars97215_
                                        _depth97176_))))
                                (begin
                                  (let ((_g98566_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g98565_)
                                               (##vector-length _g98565_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g98566_ 2)))
                                        (error "Context expects 2 values"
                                               _g98566_)))
                                  (let ((_tl97217_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g98565_ 0)))
                                        (_vars97218_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g98565_ 1))))
                                    (let ()
                                      (values (let ((__tmp98567
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd97214_
                                                             _tl97217_))))
                                                (declare (not safe))
                                                (cons _tag97208_ __tmp98567))
                                              _vars97218_))))))))))
                     (_e9722297229_ _rest97206_)
                     (_E9722497233_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair97221_ 'cons _hd97204_ _rest97206_))))
                     (_E9722397249_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9722297229_))
                            (let ((_e9722597237_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9722297229_))))
                              (let ((_hd9722697240_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9722597237_)))
                                    (_tl9722797242_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9722597237_))))
                                (let* ((_rest-hd97245_ _hd9722697240_)
                                       (_rest-tl97247_ _tl9722797242_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd97245_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair97221_
                                             'splice
                                             _hd97204_
                                             _rest-tl97247_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair97221_
                                             'cons
                                             _hd97204_
                                             _rest97206_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9722497233_))))))
                            (let () (declare (not safe)) (_E9722497233_))))))
                (let () (declare (not safe)) (_E9722397249_)))
              (let () (declare (not safe)) (_E9718397192_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9718397192_))))))
                                (let () (declare (not safe)) (_E9718297253_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e97174_))
                                  (values '(null) _vars97175_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e97174_))
                                      (let ((_g98560_
                                             (let ((__tmp98562
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e97174_)))))
                                               (declare (not safe))
                                               (_recur97172_
                                                __tmp98562
                                                _vars97175_
                                                _depth97176_))))
                                        (begin
                                          (let ((_g98561_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g98560_)
                                                       (##vector-length
                                                        _g98560_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g98561_ 2)))
                                                (error "Context expects 2 values"
                                                       _g98561_)))
                                          (let ((_e97257_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98560_ 0)))
                                                (_vars97258_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98560_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e97257_))
                                                    _vars97258_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e97174_))
                                          (let ((_g98557_
                                                 (let ((__tmp98559
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e97174_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur97172_
                                                    __tmp98559
                                                    _vars97175_
                                                    _depth97176_))))
                                            (begin
                                              (let ((_g98558_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g98557_)
                                                           (##vector-length
                                                            _g98557_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g98558_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g98558_)))
                                              (let ((_e97260_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g98557_
                                                        0)))
                                                    (_vars97261_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g98557_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e97260_))
                                                        _vars97261_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e97174_))
                                              (values (let ((__tmp98556
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e97174_))))
                (declare (not safe))
                (cons 'datum __tmp98556))
              _vars97175_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx97091_
                                                 _e97174_))))))))))))
          (let* ((_e9710197114_ _stx97091_)
                 (_E9710397118_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9710197114_))))
                 (_E9710297165_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9710197114_))
                        (let ((_e9710497122_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9710197114_))))
                          (let ((_hd9710597125_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9710497122_)))
                                (_tl9710697127_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9710497122_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9710697127_))
                                (let ((_e9710797130_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9710697127_))))
                                  (let ((_hd9710897133_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9710797130_)))
                                        (_tl9710997135_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9710797130_))))
                                    (let ((_expr97138_ _hd9710897133_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9710997135_))
                                          (let ((_e9711097140_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9710997135_))))
                                            (let ((_hd9711197143_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9711097140_)))
                                                  (_tl9711297145_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9711097140_))))
                                              (let* ((_ids97148_
                                                      _hd9711197143_)
                                                     (_clauses97150_
                                                      _tl9711297145_))
                                                (if '#t
                                                    (if (let ((__tmp98589
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids97148_))))
                  (declare (not safe))
                  (not __tmp98589))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx97091_
                   _ids97148_))
                (if (let ((__tmp98588
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses97150_))))
                      (declare (not safe))
                      (not __tmp98588))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx97091_))
                    (let* ((_ids97152_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids97148_)))
                           (_clauses97154_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses97150_)))
                           (_clause-ids97156_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses97154_)))
                           (_E97158_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target97160_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first97162_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses97154_))
                                _E97158_
                                (car _clause-ids97156_))))
                      (let ((__tmp98573
                             (let ((__tmp98574
                                    (let ((__tmp98576
                                           (let ((__tmp98581
                                                  (let ((__tmp98582
                                                         (let ((__tmp98587
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E97158_ '())))
                       (__tmp98583
                        (let ((__tmp98584
                               (let ((__tmp98586
                                      (let ()
                                        (declare (not safe))
                                        (cons _target97160_ '())))
                                     (__tmp98585
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target97160_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp98586
                                  __tmp98585))))
                          (declare (not safe))
                          (cons __tmp98584 '()))))
                   (declare (not safe))
                   (cons __tmp98587 __tmp98583))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98582 '())))
                                                 (__tmp98577
                                                  (let ((__tmp98580
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings97096_
                                                            _target97160_
                                                            _ids97152_
                                                            _clauses97154_
                                                            _clause-ids97156_
                                                            _E97158_)))
                                                        (__tmp98578
                                                         (let ((__tmp98579
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr97138_ '()))))
                   (declare (not safe))
                   (cons _first97162_ __tmp98579))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body97097_
                                                     __tmp98580
                                                     __tmp98578))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp98581
                                              __tmp98577)))
                                          (__tmp98575
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx97091_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp98576
                                       __tmp98575))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp98574)))
                            (__tmp98572
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx97091_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp98573 __tmp98572)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9710397118_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9710397118_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9710397118_)))))
                        (let () (declare (not safe)) (_E9710397118_))))))
            (let () (declare (not safe)) (_E9710297165_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx97801_)
        (let* ((_identifier=?97803_ 'free-identifier=?)
               (_unwrap-e97805_ 'syntax-e)
               (_wrap-e97807_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx97801_
           _identifier=?97803_
           _unwrap-e97805_
           _wrap-e97807_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx97809_ _identifier=?97810_)
        (let* ((_unwrap-e97812_ 'syntax-e) (_wrap-e97814_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx97809_
           _identifier=?97810_
           _unwrap-e97812_
           _wrap-e97814_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx97816_ _identifier=?97817_ _unwrap-e97818_)
        (let ((_wrap-e97820_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx97816_
           _identifier=?97817_
           _unwrap-e97818_
           _wrap-e97820_))))
    (define gx#macro-expand-syntax-case
      (lambda _g98591_
        (let ((_g98590_ (let () (declare (not safe)) (##length _g98591_))))
          (cond ((let () (declare (not safe)) (##fx= _g98590_ 1))
                 (apply (lambda (_stx97801_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx97801_)))
                        _g98591_))
                ((let () (declare (not safe)) (##fx= _g98590_ 2))
                 (apply (lambda (_stx97809_ _identifier=?97810_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx97809_
                             _identifier=?97810_)))
                        _g98591_))
                ((let () (declare (not safe)) (##fx= _g98590_ 3))
                 (apply (lambda (_stx97816_
                                 _identifier=?97817_
                                 _unwrap-e97818_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx97816_
                             _identifier=?97817_
                             _unwrap-e97818_)))
                        _g98591_))
                ((let () (declare (not safe)) (##fx= _g98590_ 4))
                 (apply (lambda (_stx97822_
                                 _identifier=?97823_
                                 _unwrap-e97824_
                                 _wrap-e97825_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx97822_
                             _identifier=?97823_
                             _unwrap-e97824_
                             _wrap-e97825_)))
                        _g98591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g98591_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx97088_)
        (if (let () (declare (not safe)) (gx#identifier? _stx97088_))
            (let ((__tmp98592
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx97088_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp98592 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd97046_ . _rest97047_)
        (let ((_len97049_ (length _hd97046_)))
          (let _lp97051_ ((_rest97053_ _rest97047_))
            (let* ((_rest9705497062_ _rest97053_)
                   (_else9705697070_ (lambda () '#!void))
                   (_K9705897076_
                    (lambda (_rest97073_ _hd97074_)
                      (if (fx= _len97049_ (length _hd97074_))
                          (let () (declare (not safe)) (_lp97051_ _rest97073_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd97074_))))))
              (if (let () (declare (not safe)) (##pair? _rest9705497062_))
                  (let ((_hd9705997079_
                         (let ()
                           (declare (not safe))
                           (##car _rest9705497062_)))
                        (_tl9706097081_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9705497062_))))
                    (let* ((_hd97084_ _hd9705997079_)
                           (_rest97086_ _tl9706097081_))
                      (declare (not safe))
                      (_K9705897076_ _rest97086_ _hd97084_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx97004_ _n97005_)
        (let _lp97007_ ((_rest97009_ _stx97004_) (_r97010_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest97009_))
              (let* ((_g9701197018_
                      (let () (declare (not safe)) (gx#syntax-e _rest97009_)))
                     (_E9701397022_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9701197018_))))
                     (_K9701497028_
                      (lambda (_rest97025_ _hd97026_)
                        (let ((__tmp98597
                               (let ()
                                 (declare (not safe))
                                 (cons _hd97026_ _r97010_))))
                          (declare (not safe))
                          (_lp97007_ _rest97025_ __tmp98597)))))
                (if (let () (declare (not safe)) (##pair? _g9701197018_))
                    (let ((_hd9701597031_
                           (let () (declare (not safe)) (##car _g9701197018_)))
                          (_tl9701697033_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9701197018_))))
                      (let* ((_hd97036_ _hd9701597031_)
                             (_rest97038_ _tl9701697033_))
                        (declare (not safe))
                        (_K9701497028_ _rest97038_ _hd97036_)))
                    (let () (declare (not safe)) (_E9701397022_))))
              (let _lp97040_ ((_n97042_ _n97005_)
                              (_l97043_ _r97010_)
                              (_r97044_ _rest97009_))
                (if (let () (declare (not safe)) (null? _l97043_))
                    (values _l97043_ _r97044_)
                    (if (fxpositive? _n97042_)
                        (let ((__tmp98596
                               (let () (declare (not safe)) (fx- _n97042_ '1)))
                              (__tmp98595 (cdr _l97043_))
                              (__tmp98593
                               (let ((__tmp98594 (car _l97043_)))
                                 (declare (not safe))
                                 (cons __tmp98594 _r97044_))))
                          (declare (not safe))
                          (_lp97040_ __tmp98596 __tmp98595 __tmp98593))
                        (values (reverse _l97043_) _r97044_))))))))))
