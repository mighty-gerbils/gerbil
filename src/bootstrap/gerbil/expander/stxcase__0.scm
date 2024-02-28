(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1709125255)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp97319 (list gx#expander::t))
            (__tmp97317
             (let ((__tmp97318
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp97318 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp97319
         '(id depth)
         __tmp97317
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args97314_
        (apply make-instance gx#syntax-pattern::t _$args97314_)))
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
      (lambda (_self97311_ _stx97312_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx97312_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx96793_)
        (letrec ((_generate96795_
                  (lambda (_e97022_)
                    (letrec ((_BUG97024_
                              (lambda (_q97186_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx96793_
                                         _e97022_
                                         _q97186_))))
                             (_local-pattern-e97025_
                              (lambda (_pat97184_)
                                (let ((__tmp97320
                                       (##structure-ref
                                        _pat97184_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp97320))))
                             (_getvar97026_
                              (lambda (_q97181_ _vars97182_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q97181_
                                   _vars97182_
                                   _BUG97024_))))
                             (_getarg97027_
                              (lambda (_arg97147_ _vars97148_)
                                (let* ((_arg9714997156_ _arg97147_)
                                       (_E9715197160_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9714997156_))))
                                       (_K9715297169_
                                        (lambda (_e97163_ _tag97164_)
                                          (let ((_$e97166_ _tag97164_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e97166_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar97026_
                                                   _e97163_
                                                   _vars97148_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e97166_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e97025_
                                                       _e97163_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG97024_
                                                       _arg97147_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9714997156_))
                                      (let ((_hd9715397172_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9714997156_)))
                                            (_tl9715497174_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9714997156_))))
                                        (let* ((_tag97177_ _hd9715397172_)
                                               (_e97179_ _tl9715497174_))
                                          (declare (not safe))
                                          (_K9715297169_ _e97179_ _tag97177_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9715197160_)))))))
                      (let _recur97029_ ((_e97031_ _e97022_) (_vars97032_ '()))
                        (let* ((_e9703397040_ _e97031_)
                               (_E9703597044_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9703397040_))))
                               (_K9703697135_
                                (lambda (_body97047_ _tag97048_)
                                  (let ((_$e97050_ _tag97048_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e97050_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body97047_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e97050_))
                                            (let ((_id97053_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body97047_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id97053_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks97055_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id97053_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks97055_))
                                                        (let ((__tmp97348
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body97047_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp97348))
                (let ((__tmp97347
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body97047_)))
                      (__tmp97346
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body97047_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp97347
                   __tmp97346
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id97053_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body97047_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG97024_
                                                         _e97031_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e97050_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e97025_
                                                   _body97047_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e97050_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar97026_
                                                       _body97047_
                                                       _vars97032_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e97050_))
                                                        (let ((__tmp97344
                                                               (let ((__tmp97345
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body97047_)))
                         (declare (not safe))
                         (_recur97029_ __tmp97345 _vars97032_)))
                      (__tmp97342
                       (let ((__tmp97343 (cdr _body97047_)))
                         (declare (not safe))
                         (_recur97029_ __tmp97343 _vars97032_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp97344 __tmp97342))
                (if (let () (declare (not safe)) (eq? 'vector _$e97050_))
                    (let ((__tmp97341
                           (let ()
                             (declare (not safe))
                             (_recur97029_ _body97047_ _vars97032_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp97341))
                    (if (let () (declare (not safe)) (eq? 'box _$e97050_))
                        (let ((__tmp97340
                               (let ()
                                 (declare (not safe))
                                 (_recur97029_ _body97047_ _vars97032_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp97340))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e97050_))
                            (let* ((_body9705697067_ _body97047_)
                                   (_E9705897071_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9705697067_))))
                                   (_K9705997109_
                                    (lambda (_args97074_
                                             _iv97075_
                                             _hd97076_
                                             _depth97077_)
                                      (let* ((_targets97083_
                                              (map (lambda (_g9707897080_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg97027_
                                                        _g9707897080_
                                                        _vars97032_)))
                                                   _args97074_))
                                             (_fold-in97085_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args97074_)))
                                             (_fold-out97087_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args97089_
                                              (let ((__tmp97321
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out97087_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp97321
                                                        _fold-in97085_)))
                                             (_lambda-body97106_
                                              (if (fx> _depth97077_ '1)
                                                  (let ((_r-args97097_
                                                         (map (lambda (_arg97091_)
                                                                (let ((__tmp97326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg97091_)))
                          (declare (not safe))
                          (cons 'ref __tmp97326)))
                      _args97074_))
                (_r-vars97098_
                 (let ((__tmp97327
                        (lambda (_arg97093_ _var97094_ _r97095_)
                          (let ((__tmp97328
                                 (let ((__tmp97329 (cdr _arg97093_)))
                                   (declare (not safe))
                                   (cons __tmp97329 _var97094_))))
                            (declare (not safe))
                            (cons __tmp97328 _r97095_)))))
                   (declare (not safe))
                   (foldr2 __tmp97327
                           _vars97032_
                           _args97074_
                           _fold-in97085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp97330
                                                           (let ((__tmp97331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97335
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth97077_ '1)))
                                (__tmp97332
                                 (let ((__tmp97333
                                        (let ((__tmp97334
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out97087_))))
                                          (declare (not safe))
                                          (cons __tmp97334 _r-args97097_))))
                                   (declare (not safe))
                                   (cons _hd97076_ __tmp97333))))
                            (declare (not safe))
                            (cons __tmp97335 __tmp97332))))
                     (declare (not safe))
                     (cons 'splice __tmp97331))))
              (declare (not safe))
              (_recur97029_ __tmp97330 _r-vars97098_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars97104_
                                                          (let ((__tmp97322
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg97100_ _var97101_ _r97102_)
                           (let ((__tmp97323
                                  (let ((__tmp97324 (cdr _arg97100_)))
                                    (declare (not safe))
                                    (cons __tmp97324 _var97101_))))
                             (declare (not safe))
                             (cons __tmp97323 _r97102_)))))
                    (declare (not safe))
                    (foldr2 __tmp97322
                            _vars97032_
                            _args97074_
                            _fold-in97085_)))
                 (__tmp97325
                  (let ()
                    (declare (not safe))
                    (_recur97029_ _hd97076_ _hd-vars97104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp97325
                                                     _fold-out97087_)))))
                                        (let ((__tmp97339
                                               (if (fx> (length _targets97083_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets97083_))
                                                   '#!void))
                                              (__tmp97336
                                               (let ((__tmp97338
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args97089_
                                                         _lambda-body97106_)))
                                                     (__tmp97337
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur97029_
                                                         _iv97075_
                                                         _vars97032_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp97338
                                                  __tmp97337
                                                  _targets97083_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp97339
                                           __tmp97336))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9705697067_))
                                  (let ((_hd9706097112_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9705697067_)))
                                        (_tl9706197114_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9705697067_))))
                                    (let ((_depth97117_ _hd9706097112_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9706197114_))
                                          (let ((_hd9706297119_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9706197114_)))
                                                (_tl9706397121_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9706197114_))))
                                            (let ((_hd97124_ _hd9706297119_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9706397121_))
                                                  (let ((_hd9706497126_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9706397121_)))
                                                        (_tl9706597128_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9706397121_))))
                                                    (let* ((_iv97131_
                                                            _hd9706497126_)
                                                           (_args97133_
                                                            _tl9706597128_))
                                                      (declare (not safe))
                                                      (_K9705997109_
                                                       _args97133_
                                                       _iv97131_
                                                       _hd97124_
                                                       _depth97117_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9705897071_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9705897071_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9705897071_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e97050_))
                                _body97047_
                                (let ()
                                  (declare (not safe))
                                  (_BUG97024_ _e97031_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9703397040_))
                              (let ((_hd9703797138_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9703397040_)))
                                    (_tl9703897140_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9703397040_))))
                                (let* ((_tag97143_ _hd9703797138_)
                                       (_body97145_ _tl9703897140_))
                                  (declare (not safe))
                                  (_K9703697135_ _body97145_ _tag97143_)))
                              (let ()
                                (declare (not safe))
                                (_E9703597044_))))))))
                 (_parse96796_
                  (lambda (_e96837_)
                    (letrec ((_make-cons96839_
                              (lambda (_hd97014_ _tl97015_)
                                (let ((_g97349_ _hd97014_)
                                      (_g97351_ _tl97015_))
                                  (begin
                                    (let ((_g97350_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97349_)
                                                 (##vector-length _g97349_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97350_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97350_)))
                                    (let ((_g97352_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97351_)
                                                 (##vector-length _g97351_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97352_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97352_)))
                                    (let ((_hd-e97017_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97349_ 0)))
                                          (_hd-vars97018_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97349_ 1))))
                                      (let ((_tl-e97019_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97351_ 0)))
                                            (_tl-vars97020_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97351_ 1))))
                                        (values (let ((__tmp97353
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e97017_
                                                               _tl-e97019_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp97353))
                                                (append _hd-vars97018_
                                                        _tl-vars97020_))))))))
                             (_make-splice96840_
                              (lambda (_where96953_
                                       _depth96954_
                                       _hd96955_
                                       _tl96956_)
                                (let ((_g97354_ _hd96955_)
                                      (_g97356_ _tl96956_))
                                  (begin
                                    (let ((_g97355_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97354_)
                                                 (##vector-length _g97354_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97355_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97355_)))
                                    (let ((_g97357_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97356_)
                                                 (##vector-length _g97356_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97357_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97357_)))
                                    (let ((_hd-e96958_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97354_ 0)))
                                          (_hd-vars96959_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97354_ 1))))
                                      (let ((_tl-e96960_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97356_ 0)))
                                            (_tl-vars96961_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97356_ 1))))
                                        (let _lp96963_ ((_rest96965_
                                                         _hd-vars96959_)
                                                        (_targets96966_ '())
                                                        (_vars96967_
                                                         _tl-vars96961_))
                                          (let* ((_rest9696896978_ _rest96965_)
                                                 (_else9697096986_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets96966_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx96793_
                                                           _where96953_))
                                                        (values (let ((__tmp97358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp97359
                                      (let ((__tmp97360
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e96960_
                                                     _targets96966_))))
                                        (declare (not safe))
                                        (cons _hd-e96958_ __tmp97360))))
                                 (declare (not safe))
                                 (cons _depth96954_ __tmp97359))))
                          (declare (not safe))
                          (cons 'splice __tmp97358))
                        _vars96967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9697296995_
                                                  (lambda (_rest96989_
                                                           _hd-pat96990_
                                                           _hd-depth*96991_)
                                                    (let ((_hd-depth96993_
                                                           (fx- _hd-depth*96991_
                                                                _depth96954_)))
                                                      (if (fxpositive?
                                                           _hd-depth96993_)
                                                          (let ((__tmp97365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp97366
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat96990_))))
                           (declare (not safe))
                           (cons __tmp97366 _targets96966_)))
                        (__tmp97363
                         (let ((__tmp97364
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth96993_ _hd-pat96990_))))
                           (declare (not safe))
                           (cons __tmp97364 _vars96967_))))
                    (declare (not safe))
                    (_lp96963_ _rest96989_ __tmp97365 __tmp97363))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth96993_))
                      (let ((__tmp97361
                             (let ((__tmp97362
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat96990_))))
                               (declare (not safe))
                               (cons __tmp97362 _targets96966_))))
                        (declare (not safe))
                        (_lp96963_ _rest96989_ __tmp97361 _vars96967_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx96793_
                         _where96953_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9696896978_))
                                                (let ((_hd9697396998_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9696896978_)))
                                                      (_tl9697497000_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9696896978_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9697396998_))
                                                      (let ((_hd9697597003_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9697396998_)))
                    (_tl9697697005_
                     (let () (declare (not safe)) (##cdr _hd9697396998_))))
                (let* ((_hd-depth*97008_ _hd9697597003_)
                       (_hd-pat97010_ _tl9697697005_)
                       (_rest97012_ _tl9697497000_))
                  (declare (not safe))
                  (_K9697296995_ _rest97012_ _hd-pat97010_ _hd-depth*97008_)))
              (let () (declare (not safe)) (_else9697096986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9697096986_)))))))))))
                             (_recur96841_
                              (lambda (_e96846_ _is-e?96847_)
                                (if (_is-e?96847_ _e96846_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx96793_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e96846_))
                                        (let* ((_pat96849_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e96846_)))
                                               (_depth96851_
                                                (##structure-ref
                                                 _pat96849_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth96851_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat96849_))
                                                      (let ((__tmp97382
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth96851_ _pat96849_))))
                (declare (not safe))
                (cons __tmp97382 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat96849_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e96846_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e96846_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e96846_))
                                                (let* ((_e9685396860_ _e96846_)
                                                       (_E9685596864_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9685396860_))))
                                                       (_E9685496943_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9685396860_))
                      (let ((_e9685696868_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9685396860_))))
                        (let ((_hd9685796871_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9685696868_)))
                              (_tl9685896873_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9685696868_))))
                          (let* ((_hd96876_ _hd9685796871_)
                                 (_rest96878_ _tl9685896873_))
                            (if '#t
                                (if (_is-e?96847_ _hd96876_)
                                    (let* ((_e9687996886_ _rest96878_)
                                           (_E9688196890_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx96793_
                                                 _e96846_))))
                                           (_E9688096904_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9687996886_))
                                                  (let ((_e9688296894_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9687996886_))))
                                                    (let ((_hd9688396897_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9688296894_)))
                                                          (_tl9688496899_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9688296894_))))
                                                      (let ((_rest96902_
                                                             _hd9688396897_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9688496899_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur96841_ _rest96902_ false))
                        (let () (declare (not safe)) (_E9688196890_)))
                    (let () (declare (not safe)) (_E9688196890_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9688196890_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9688096904_)))
                                    (let _lp96908_ ((_rest96910_ _rest96878_)
                                                    (_depth96911_ '0))
                                      (let* ((_e9691296919_ _rest96910_)
                                             (_E9691496923_
                                              (lambda ()
                                                (if (fxpositive? _depth96911_)
                                                    (let ((__tmp97376
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96841_
                                                              _hd96876_
                                                              _is-e?96847_)))
                                                          (__tmp97375
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96841_
                                                              _rest96910_
                                                              _is-e?96847_))))
                                                      (declare (not safe))
                                                      (_make-splice96840_
                                                       _e96846_
                                                       _depth96911_
                                                       __tmp97376
                                                       __tmp97375))
                                                    (let ((__tmp97374
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96841_
                                                              _hd96876_
                                                              _is-e?96847_)))
                                                          (__tmp97373
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96841_
                                                              _rest96910_
                                                              _is-e?96847_))))
                                                      (declare (not safe))
                                                      (_make-cons96839_
                                                       __tmp97374
                                                       __tmp97373)))))
                                             (_E9691396939_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9691296919_))
                                                    (let ((_e9691596927_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9691296919_))))
                                                      (let ((_hd9691696930_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9691596927_)))
                    (_tl9691796932_
                     (let () (declare (not safe)) (##cdr _e9691596927_))))
                (let* ((_rest-hd96935_ _hd9691696930_)
                       (_rest-tl96937_ _tl9691796932_))
                  (if '#t
                      (if (_is-e?96847_ _rest-hd96935_)
                          (let ((__tmp97381
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth96911_ '1))))
                            (declare (not safe))
                            (_lp96908_ _rest-tl96937_ __tmp97381))
                          (if (fxpositive? _depth96911_)
                              (let ((__tmp97380
                                     (let ()
                                       (declare (not safe))
                                       (_recur96841_ _hd96876_ _is-e?96847_)))
                                    (__tmp97379
                                     (let ()
                                       (declare (not safe))
                                       (_recur96841_
                                        _rest96910_
                                        _is-e?96847_))))
                                (declare (not safe))
                                (_make-splice96840_
                                 _e96846_
                                 _depth96911_
                                 __tmp97380
                                 __tmp97379))
                              (let ((__tmp97378
                                     (let ()
                                       (declare (not safe))
                                       (_recur96841_ _hd96876_ _is-e?96847_)))
                                    (__tmp97377
                                     (let ()
                                       (declare (not safe))
                                       (_recur96841_
                                        _rest96910_
                                        _is-e?96847_))))
                                (declare (not safe))
                                (_make-cons96839_ __tmp97378 __tmp97377))))
                      (let () (declare (not safe)) (_E9691496923_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9691496923_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9691396939_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9685596864_))))))
                      (let () (declare (not safe)) (_E9685596864_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9685496943_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e96846_))
                                                    (let ((_g97370_
                                                           (let ((__tmp97372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e96846_)))))
                     (declare (not safe))
                     (_recur96841_ __tmp97372 _is-e?96847_))))
              (begin
                (let ((_g97371_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g97370_)
                             (##vector-length _g97370_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g97371_ 2)))
                      (error "Context expects 2 values" _g97371_)))
                (let ((_e96947_
                       (let () (declare (not safe)) (##vector-ref _g97370_ 0)))
                      (_vars96948_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g97370_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e96947_))
                          _vars96948_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e96846_))
                                                        (let ((_g97367_
                                                               (let ((__tmp97369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e96846_)))))
                         (declare (not safe))
                         (_recur96841_ __tmp97369 _is-e?96847_))))
                  (begin
                    (let ((_g97368_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g97367_)
                                 (##vector-length _g97367_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g97368_ 2)))
                          (error "Context expects 2 values" _g97368_)))
                    (let ((_e96950_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g97367_ 0)))
                          (_vars96951_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g97367_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e96950_))
                              _vars96951_))))
                (values (let () (declare (not safe)) (cons 'datum _e96846_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g97383_
                             (let ()
                               (declare (not safe))
                               (_recur96841_ _e96837_ gx#ellipsis?))))
                        (begin
                          (let ((_g97384_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g97383_)
                                       (##vector-length _g97383_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g97384_ 2)))
                                (error "Context expects 2 values" _g97384_)))
                          (let ((_tree96843_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g97383_ 0)))
                                (_vars96844_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g97383_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars96844_))
                                _tree96843_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx96793_
                                   _vars96844_))))))))))
          (let* ((_e9679796807_ _stx96793_)
                 (_E9679996811_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx96793_))))
                 (_E9679896833_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9679796807_))
                        (let ((_e9680096815_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9679796807_))))
                          (let ((_hd9680196818_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9680096815_)))
                                (_tl9680296820_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9680096815_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9680296820_))
                                (let ((_e9680396823_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9680296820_))))
                                  (let ((_hd9680496826_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9680396823_)))
                                        (_tl9680596828_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9680396823_))))
                                    (let ((_form96831_ _hd9680496826_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9680596828_))
                                          (if '#t
                                              (let ((__tmp97386
                                                     (let ((__tmp97387
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse96796_
                                                               _form96831_))))
                                                       (declare (not safe))
                                                       (_generate96795_
                                                        __tmp97387)))
                                                    (__tmp97385
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx96793_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp97386
                                                 __tmp97385))
                                              (let ()
                                                (declare (not safe))
                                                (_E9679996811_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9679996811_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9679996811_)))))
                        (let () (declare (not safe)) (_E9679996811_))))))
            (let () (declare (not safe)) (_E9679896833_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx96057_ _identifier=?96058_ _unwrap-e96059_ _wrap-e96060_)
        (letrec ((_generate-bindings96062_
                  (lambda (_target96657_
                           _ids96658_
                           _clauses96659_
                           _clause-ids96660_
                           _E96661_)
                    (letrec ((_generate196663_
                              (lambda (_clause96760_ _clause-id96761_ _E96762_)
                                (let ((__tmp97392
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id96761_ '())))
                                      (__tmp97388
                                       (let ((__tmp97389
                                              (let ((__tmp97391
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target96657_
                                                             '())))
                                                    (__tmp97390
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause96064_
                                                        _target96657_
                                                        _ids96658_
                                                        _clause96760_
                                                        _E96762_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp97391
                                                 __tmp97390))))
                                         (declare (not safe))
                                         (cons __tmp97389 '()))))
                                  (declare (not safe))
                                  (cons __tmp97392 __tmp97388)))))
                      (let _lp96665_ ((_rest96667_ _clauses96659_)
                                      (_rest-ids96668_ _clause-ids96660_)
                                      (_bindings96669_ '()))
                        (let* ((_rest9667096678_ _rest96667_)
                               (_else9667296686_ (lambda () _bindings96669_))
                               (_K9667496748_
                                (lambda (_rest96689_ _clause96690_)
                                  (let* ((_rest-ids9669196698_ _rest-ids96668_)
                                         (_E9669396702_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9669196698_))))
                                         (_K9669496736_
                                          (lambda (_rest-ids96705_
                                                   _clause-id96706_)
                                            (let* ((_rest-ids9670796715_
                                                    _rest-ids96705_)
                                                   (_else9670996723_
                                                    (lambda ()
                                                      (let ((__tmp97393
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate196663_
                        _clause96690_
                        _clause-id96706_
                        _E96661_))))
                (declare (not safe))
                (cons __tmp97393 _bindings96669_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9671196728_
                                                    (lambda (_next-clause-id96726_)
                                                      (let ((__tmp97394
                                                             (let ((__tmp97395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate196663_
                               _clause96690_
                               _clause-id96706_
                               _next-clause-id96726_))))
                       (declare (not safe))
                       (cons __tmp97395 _bindings96669_))))
                (declare (not safe))
                (_lp96665_ _rest96689_ _rest-ids96705_ __tmp97394)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9670796715_))
                                                  (let* ((_hd9671296731_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9670796715_)))
                                                         (_next-clause-id96734_
                                                          _hd9671296731_))
                                                    (declare (not safe))
                                                    (_K9671196728_
                                                     _next-clause-id96734_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9670996723_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9669196698_))
                                        (let ((_hd9669596739_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9669196698_)))
                                              (_tl9669696741_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9669196698_))))
                                          (let* ((_clause-id96744_
                                                  _hd9669596739_)
                                                 (_rest-ids96746_
                                                  _tl9669696741_))
                                            (declare (not safe))
                                            (_K9669496736_
                                             _rest-ids96746_
                                             _clause-id96744_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9669396702_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9667096678_))
                              (let ((_hd9667596751_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9667096678_)))
                                    (_tl9667696753_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9667096678_))))
                                (let* ((_clause96756_ _hd9667596751_)
                                       (_rest96758_ _tl9667696753_))
                                  (declare (not safe))
                                  (_K9667496748_ _rest96758_ _clause96756_)))
                              (let ()
                                (declare (not safe))
                                (_else9667296686_))))))))
                 (_generate-body96063_
                  (lambda (_bindings96617_ _body96618_)
                    (let _recur96620_ ((_rest96622_ _bindings96617_))
                      (let* ((_rest9662396631_ _rest96622_)
                             (_else9662596639_ (lambda () _body96618_))
                             (_K9662796645_
                              (lambda (_rest96642_ _hd96643_)
                                (let ((__tmp97397
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd96643_ '())))
                                      (__tmp97396
                                       (let ()
                                         (declare (not safe))
                                         (_recur96620_ _rest96642_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp97397
                                   __tmp97396)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9662396631_))
                            (let ((_hd9662896648_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9662396631_)))
                                  (_tl9662996650_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9662396631_))))
                              (let* ((_hd96653_ _hd9662896648_)
                                     (_rest96655_ _tl9662996650_))
                                (declare (not safe))
                                (_K9662796645_ _rest96655_ _hd96653_)))
                            (let ()
                              (declare (not safe))
                              (_else9662596639_)))))))
                 (_generate-clause96064_
                  (lambda (_target96480_ _ids96481_ _clause96482_ _E96483_)
                    (letrec ((_generate196485_
                              (lambda (_hd96572_ _fender96573_ _body96574_)
                                (let ((_g97398_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause96066_
                                          _hd96572_
                                          _ids96481_))))
                                  (begin
                                    (let ((_g97399_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97398_)
                                                 (##vector-length _g97398_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97399_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97399_)))
                                    (let ((_e96576_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97398_ 0)))
                                          (_mvars96577_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97398_ 1))))
                                      (let* ((_pvars96579_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars96577_))))
                                             (_E96581_
                                              (let ((__tmp97400
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target96480_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E96483_ __tmp97400)))
                                             (_K96614_
                                              (let ((__tmp97401
                                                     (let ((__tmp97403
                                                            (map (lambda (_mvar96583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar96584_)
                           (let* ((_mvar9658596592_ _mvar96583_)
                                  (_E9658796596_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9658596592_))))
                                  (_K9658896602_
                                   (lambda (_depth96599_ _id96600_)
                                     (let ((__tmp97404
                                            (let ((__tmp97405
                                                   (let ((__tmp97407
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id96600_)))
                                                         (__tmp97406
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar96584_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp97407
                                                      __tmp97406
                                                      _depth96599_))))
                                              (declare (not safe))
                                              (cons __tmp97405 '()))))
                                       (declare (not safe))
                                       (cons _id96600_ __tmp97404)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9658596592_))
                                 (let ((_hd9658996605_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9658596592_)))
                                       (_tl9659096607_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9658596592_))))
                                   (let* ((_id96610_ _hd9658996605_)
                                          (_depth96612_ _tl9659096607_))
                                     (declare (not safe))
                                     (_K9658896602_ _depth96612_ _id96610_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9658796596_)))))
                         _mvars96577_
                         _pvars96579_))
                   (__tmp97402
                    (if (let () (declare (not safe)) (eq? _fender96573_ '#t))
                        _body96574_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender96573_
                           _body96574_
                           _E96581_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp97403 __tmp97402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars96579_
                                                 __tmp97401))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match96065_
                                           _hd96572_
                                           _target96480_
                                           _e96576_
                                           _mvars96577_
                                           _K96614_
                                           _E96581_)))))))))
                      (let* ((_e9648696506_ _clause96482_)
                             (_E9649596510_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9648696506_))))
                             (_E9648896544_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9648696506_))
                                    (let ((_e9649696514_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9648696506_))))
                                      (let ((_hd9649796517_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9649696514_)))
                                            (_tl9649896519_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9649696514_))))
                                        (let ((_hd96522_ _hd9649796517_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9649896519_))
                                              (let ((_e9649996524_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9649896519_))))
                                                (let ((_hd9650096527_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9649996524_)))
                                                      (_tl9650196529_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9649996524_))))
                                                  (let ((_fender96532_
                                                         _hd9650096527_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9650196529_))
                                                        (let ((_e9650296534_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9650196529_))))
                  (let ((_hd9650396537_
                         (let () (declare (not safe)) (##car _e9650296534_)))
                        (_tl9650496539_
                         (let () (declare (not safe)) (##cdr _e9650296534_))))
                    (let ((_body96542_ _hd9650396537_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9650496539_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate196485_
                                 _hd96522_
                                 _fender96532_
                                 _body96542_))
                              (let () (declare (not safe)) (_E9649596510_)))
                          (let () (declare (not safe)) (_E9649596510_))))))
                (let () (declare (not safe)) (_E9649596510_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9649596510_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9649596510_)))))
                             (_E9648796568_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9648696506_))
                                    (let ((_e9648996548_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9648696506_))))
                                      (let ((_hd9649096551_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9648996548_)))
                                            (_tl9649196553_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9648996548_))))
                                        (let ((_hd96556_ _hd9649096551_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9649196553_))
                                              (let ((_e9649296558_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9649196553_))))
                                                (let ((_hd9649396561_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9649296558_)))
                                                      (_tl9649496563_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9649296558_))))
                                                  (let ((_body96566_
                                                         _hd9649396561_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9649496563_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate196485_
                                                               _hd96556_
                                                               '#t
                                                               _body96566_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9648896544_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9648896544_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9648896544_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9648896544_))))))
                        (let () (declare (not safe)) (_E9648796568_))))))
                 (_generate-match96065_
                  (lambda (_where96229_
                           _target96230_
                           _hd96231_
                           _mvars96232_
                           _K96233_
                           _E96234_)
                    (letrec ((_BUG96236_
                              (lambda (_q96478_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx96057_
                                         _hd96231_
                                         _q96478_))))
                             (_recur96237_
                              (lambda (_e96328_
                                       _vars96329_
                                       _target96330_
                                       _E96331_
                                       _k96332_)
                                (let* ((_e9633396340_ _e96328_)
                                       (_E9633596344_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9633396340_))))
                                       (_K9633696466_
                                        (lambda (_body96347_ _tag96348_)
                                          (let ((_$e96350_ _tag96348_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e96350_))
                                                (_k96332_ _vars96329_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e96350_))
                                                    (let ((__tmp97514
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target96330_)))
                                                          (__tmp97510
                                                           (let ((__tmp97512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97513
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e96060_ _body96347_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?96058_
                             __tmp97513
                             _target96330_)))
                         (__tmp97511 (_k96332_ _vars96329_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp97512 __tmp97511 _E96331_))))
              (declare (not safe))
              (gx#core-list 'if __tmp97514 __tmp97510 _E96331_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e96350_))
                                                        (_k96332_
                                                         (let ((__tmp97509
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body96347_ _target96330_))))
                   (declare (not safe))
                   (cons __tmp97509 _vars96329_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e96350_))
                    (let ((_$e96353_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd96354_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl96355_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp97508
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target96330_)))
                            (__tmp97489
                             (let ((__tmp97503
                                    (let ((__tmp97504
                                           (let ((__tmp97507
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e96353_ '())))
                                                 (__tmp97505
                                                  (let ((__tmp97506
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e96059_
                                                            _target96330_))))
                                                    (declare (not safe))
                                                    (cons __tmp97506 '()))))
                                             (declare (not safe))
                                             (cons __tmp97507 __tmp97505))))
                                      (declare (not safe))
                                      (cons __tmp97504 '())))
                                   (__tmp97490
                                    (let ((__tmp97493
                                           (let ((__tmp97499
                                                  (let ((__tmp97502
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd96354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp97500
                 (let ((__tmp97501
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e96353_))))
                   (declare (not safe))
                   (cons __tmp97501 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97502
                                                          __tmp97500)))
                                                 (__tmp97494
                                                  (let ((__tmp97495
                                                         (let ((__tmp97498
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl96355_ '())))
                       (__tmp97496
                        (let ((__tmp97497
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e96353_))))
                          (declare (not safe))
                          (cons __tmp97497 '()))))
                   (declare (not safe))
                   (cons __tmp97498 __tmp97496))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97495 '()))))
                                             (declare (not safe))
                                             (cons __tmp97499 __tmp97494)))
                                          (__tmp97491
                                           (let* ((_body9635696363_
                                                   _body96347_)
                                                  (_E9635896367_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9635696363_))))
                                                  (_K9635996375_
                                                   (lambda (_tl96370_
                                                            _hd96371_)
                                                     (let ((__tmp97492
                                                            (lambda (_vars96373_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur96237_
                         _tl96370_
                         _vars96373_
                         _$tl96355_
                         _E96331_
                         _k96332_)))))
               (declare (not safe))
               (_recur96237_
                _hd96371_
                _vars96329_
                _$hd96354_
                _E96331_
                __tmp97492)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9635696363_))
                                                 (let ((_hd9636096378_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9635696363_)))
                                                       (_tl9636196380_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9635696363_))))
                                                   (let* ((_hd96383_
                                                           _hd9636096378_)
                                                          (_tl96385_
                                                           _tl9636196380_))
                                                     (declare (not safe))
                                                     (_K9635996375_
                                                      _tl96385_
                                                      _hd96383_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9635896367_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp97493
                                       __tmp97491))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp97503
                                __tmp97490))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp97508 __tmp97489 _E96331_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e96350_))
                        (let* ((_body9638696393_ _body96347_)
                               (_E9638896397_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9638696393_))))
                               (_K9638996448_
                                (lambda (_tl96400_ _hd96401_)
                                  (let* ((_rlen96403_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen96238_ _tl96400_)))
                                         (_$target96405_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd96407_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl96409_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp96411_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e96413_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd96415_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl96417_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars96419_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars96239_ _hd96401_)))
                                         (_lvars96421_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars96419_)))
                                         (_tlvars96423_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars96419_)))
                                         (_linit96427_
                                          (map (lambda (_var96425_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars96421_)))
                                    (letrec ((_make-loop96430_
                                              (lambda (_vars96434_)
                                                (let ((__tmp97440
                                                       (let ((__tmp97441
                                                              (let ((__tmp97477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp96411_ '())))
                            (__tmp97442
                             (let ((__tmp97443
                                    (let ((__tmp97476
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd96407_ _lvars96421_)))
                                          (__tmp97444
                                           (let ((__tmp97475
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd96407_)))
                                                 (__tmp97453
                                                  (let ((__tmp97470
                                                         (let ((__tmp97471
                                                                (let ((__tmp97474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e96413_ '())))
                              (__tmp97472
                               (let ((__tmp97473
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e96059_
                                         _$hd96407_))))
                                 (declare (not safe))
                                 (cons __tmp97473 '()))))
                          (declare (not safe))
                          (cons __tmp97474 __tmp97472))))
                   (declare (not safe))
                   (cons __tmp97471 '())))
                (__tmp97454
                 (let ((__tmp97460
                        (let ((__tmp97466
                               (let ((__tmp97469
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd96415_ '())))
                                     (__tmp97467
                                      (let ((__tmp97468
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e96413_))))
                                        (declare (not safe))
                                        (cons __tmp97468 '()))))
                                 (declare (not safe))
                                 (cons __tmp97469 __tmp97467)))
                              (__tmp97461
                               (let ((__tmp97462
                                      (let ((__tmp97465
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl96417_ '())))
                                            (__tmp97463
                                             (let ((__tmp97464
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e96413_))))
                                               (declare (not safe))
                                               (cons __tmp97464 '()))))
                                        (declare (not safe))
                                        (cons __tmp97465 __tmp97463))))
                                 (declare (not safe))
                                 (cons __tmp97462 '()))))
                          (declare (not safe))
                          (cons __tmp97466 __tmp97461)))
                       (__tmp97455
                        (let ((__tmp97456
                               (lambda (_hdvars96436_)
                                 (let ((__tmp97457
                                        (let ((__tmp97458
                                               (map (lambda (_svar96438_
                                                             _lvar96439_)
                                                      (let ((__tmp97459
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar96438_ _hdvars96436_ _BUG96236_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp97459 _lvar96439_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars96419_
                                                    _lvars96421_)))
                                          (declare (not safe))
                                          (cons _$lp-tl96417_ __tmp97458))))
                                   (declare (not safe))
                                   (cons _$lp96411_ __tmp97457)))))
                          (declare (not safe))
                          (_recur96237_
                           _hd96401_
                           '()
                           _$lp-hd96415_
                           _E96331_
                           __tmp97456))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp97460 __tmp97455))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp97470
                                                     __tmp97454)))
                                                 (__tmp97445
                                                  (let ((__tmp97449
                                                         (map (lambda (_lvar96441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar96442_)
                        (let ((__tmp97452
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar96442_ '())))
                              (__tmp97450
                               (let ((__tmp97451
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar96441_))))
                                 (declare (not safe))
                                 (cons __tmp97451 '()))))
                          (declare (not safe))
                          (cons __tmp97452 __tmp97450)))
                      _lvars96421_
                      _tlvars96423_))
                (__tmp97446
                 (_k96332_
                  (let ((__tmp97447
                         (lambda (_svar96444_ _tlvar96445_ _r96446_)
                           (let ((__tmp97448
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar96444_ _tlvar96445_))))
                             (declare (not safe))
                             (cons __tmp97448 _r96446_)))))
                    (declare (not safe))
                    (foldl2 __tmp97447
                            _vars96434_
                            _svars96419_
                            _tlvars96423_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp97449
                                                     __tmp97446))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp97475
                                              __tmp97453
                                              __tmp97445))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp97476
                                       __tmp97444))))
                               (declare (not safe))
                               (cons __tmp97443 '()))))
                        (declare (not safe))
                        (cons __tmp97477 __tmp97442))))
                 (declare (not safe))
                 (cons __tmp97441 '())))
              (__tmp97438
               (let ((__tmp97439
                      (let ()
                        (declare (not safe))
                        (cons _$target96405_ _linit96427_))))
                 (declare (not safe))
                 (cons _$lp96411_ __tmp97439))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp97440
                                                   __tmp97438)))))
                                      (let ((_body96432_
                                             (let ((__tmp97479
                                                    (let ((__tmp97480
                                                           (let ((__tmp97483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97484
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl96409_ '()))))
                            (declare (not safe))
                            (cons _$target96405_ __tmp97484)))
                         (__tmp97481
                          (let ((__tmp97482
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target96330_
                                    _rlen96403_))))
                            (declare (not safe))
                            (cons __tmp97482 '()))))
                     (declare (not safe))
                     (cons __tmp97483 __tmp97481))))
              (declare (not safe))
              (cons __tmp97480 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp97478
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur96237_
                                                       _tl96400_
                                                       _vars96329_
                                                       _$tl96409_
                                                       _E96331_
                                                       _make-loop96430_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp97479
                                                __tmp97478))))
                                        (let ((__tmp97488
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target96330_)))
                                              (__tmp97485
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen96403_))
                                                   _body96432_
                                                   (let ((__tmp97486
                                                          (let ((__tmp97487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target96330_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp97487 _rlen96403_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp97486
                                                      _body96432_
                                                      _E96331_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp97488
                                           __tmp97485
                                           _E96331_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9638696393_))
                              (let ((_hd9639096451_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9638696393_)))
                                    (_tl9639196453_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9638696393_))))
                                (let* ((_hd96456_ _hd9639096451_)
                                       (_tl96458_ _tl9639196453_))
                                  (declare (not safe))
                                  (_K9638996448_ _tl96458_ _hd96456_)))
                              (let () (declare (not safe)) (_E9638896397_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e96350_))
                            (let ((__tmp97437
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target96330_)))
                                  (__tmp97436 (_k96332_ _vars96329_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp97437
                               __tmp97436
                               _E96331_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e96350_))
                                (let ((_$e96460_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp97435
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target96330_)))
                                        (__tmp97427
                                         (let ((__tmp97429
                                                (let ((__tmp97430
                                                       (let ((__tmp97434
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e96460_ '())))
                     (__tmp97431
                      (let ((__tmp97432
                             (let ((__tmp97433
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e96059_
                                       _target96330_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp97433))))
                        (declare (not safe))
                        (cons __tmp97432 '()))))
                 (declare (not safe))
                 (cons __tmp97434 __tmp97431))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp97430 '())))
                                               (__tmp97428
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur96237_
                                                   _body96347_
                                                   _vars96329_
                                                   _$e96460_
                                                   _E96331_
                                                   _k96332_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp97429
                                            __tmp97428))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp97435
                                     __tmp97427
                                     _E96331_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e96350_))
                                    (let ((_$e96462_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp97426
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target96330_)))
                                            (__tmp97418
                                             (let ((__tmp97420
                                                    (let ((__tmp97421
                                                           (let ((__tmp97425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e96462_ '())))
                         (__tmp97422
                          (let ((__tmp97423
                                 (let ((__tmp97424
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e96059_
                                           _target96330_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp97424))))
                            (declare (not safe))
                            (cons __tmp97423 '()))))
                     (declare (not safe))
                     (cons __tmp97425 __tmp97422))))
              (declare (not safe))
              (cons __tmp97421 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp97419
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur96237_
                                                       _body96347_
                                                       _vars96329_
                                                       _$e96462_
                                                       _E96331_
                                                       _k96332_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp97420
                                                __tmp97419))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp97426
                                         __tmp97418
                                         _E96331_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e96350_))
                                        (let ((_$e96464_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp97417
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target96330_)))
                                                (__tmp97408
                                                 (let ((__tmp97412
                                                        (let ((__tmp97413
                                                               (let ((__tmp97416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e96464_ '())))
                             (__tmp97414
                              (let ((__tmp97415
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target96330_))))
                                (declare (not safe))
                                (cons __tmp97415 '()))))
                         (declare (not safe))
                         (cons __tmp97416 __tmp97414))))
                  (declare (not safe))
                  (cons __tmp97413 '())))
               (__tmp97409
                (let ((__tmp97411
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e96464_ _body96347_)))
                      (__tmp97410 (_k96332_ _vars96329_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp97411 __tmp97410 _E96331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp97412
                                                    __tmp97409))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp97417
                                             __tmp97408
                                             _E96331_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG96236_ _e96328_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9633396340_))
                                      (let ((_hd9633796469_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9633396340_)))
                                            (_tl9633896471_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9633396340_))))
                                        (let* ((_tag96474_ _hd9633796469_)
                                               (_body96476_ _tl9633896471_))
                                          (declare (not safe))
                                          (_K9633696466_
                                           _body96476_
                                           _tag96474_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9633596344_))))))
                             (_splice-rlen96238_
                              (lambda (_e96290_)
                                (let _lp96292_ ((_e96294_ _e96290_)
                                                (_n96295_ '0))
                                  (let* ((_e9629696303_ _e96294_)
                                         (_E9629896307_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9629696303_))))
                                         (_K9629996316_
                                          (lambda (_body96310_ _tag96311_)
                                            (let ((_$e96313_ _tag96311_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e96313_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx96057_
                                                     _where96229_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e96313_))
                                                      (let ((__tmp97516
                                                             (cdr _body96310_))
                                                            (__tmp97515
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n96295_ '1))))
                (declare (not safe))
                (_lp96292_ __tmp97516 __tmp97515))
              _n96295_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9629696303_))
                                        (let ((_hd9630096319_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9629696303_)))
                                              (_tl9630196321_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9629696303_))))
                                          (let* ((_tag96324_ _hd9630096319_)
                                                 (_body96326_ _tl9630196321_))
                                            (declare (not safe))
                                            (_K9629996316_
                                             _body96326_
                                             _tag96324_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9629896307_)))))))
                             (_splice-vars96239_
                              (lambda (_e96246_)
                                (let _recur96248_ ((_e96250_ _e96246_)
                                                   (_vars96251_ '()))
                                  (let* ((_e9625296259_ _e96250_)
                                         (_E9625496263_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9625296259_))))
                                         (_K9625596278_
                                          (lambda (_body96266_ _tag96267_)
                                            (let ((_$e96269_ _tag96267_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e96269_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body96266_
                                                          _vars96251_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e96269_))
                  (let () (declare (not safe)) (eq? 'splice _$e96269_)))
              (let ((__tmp97519 (cdr _body96266_))
                    (__tmp97517
                     (let ((__tmp97518 (car _body96266_)))
                       (declare (not safe))
                       (_recur96248_ __tmp97518 _vars96251_))))
                (declare (not safe))
                (_recur96248_ __tmp97519 __tmp97517))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e96269_))
                      (let () (declare (not safe)) (eq? 'box _$e96269_)))
                  (let ()
                    (declare (not safe))
                    (_recur96248_ _body96266_ _vars96251_))
                  _vars96251_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9625296259_))
                                        (let ((_hd9625696281_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9625296259_)))
                                              (_tl9625796283_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9625296259_))))
                                          (let* ((_tag96286_ _hd9625696281_)
                                                 (_body96288_ _tl9625796283_))
                                            (declare (not safe))
                                            (_K9625596278_
                                             _body96288_
                                             _tag96286_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9625496263_)))))))
                             (_make-body96240_
                              (lambda (_vars96242_)
                                (let ((__tmp97520
                                       (map (lambda (_mvar96244_)
                                              (let ((__tmp97521
                                                     (car _mvar96244_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp97521
                                                 _vars96242_
                                                 _BUG96236_)))
                                            _mvars96232_)))
                                  (declare (not safe))
                                  (cons _K96233_ __tmp97520)))))
                      (let ()
                        (declare (not safe))
                        (_recur96237_
                         _hd96231_
                         '()
                         _target96230_
                         _E96234_
                         _make-body96240_)))))
                 (_parse-clause96066_
                  (lambda (_hd96135_ _ids96136_)
                    (let _recur96138_ ((_e96140_ _hd96135_)
                                       (_vars96141_ '())
                                       (_depth96142_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e96140_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e96140_))
                              (values '(any) _vars96141_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e96140_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx96057_
                                     _hd96135_))
                                  (if (let ((__tmp97537
                                             (lambda (_id96144_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e96140_
                                                  _id96144_)))))
                                        (declare (not safe))
                                        (find __tmp97537 _ids96136_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e96140_))
                                              _vars96141_)
                                      (if (let ((__tmp97535
                                                 (lambda (_var96146_)
                                                   (let ((__tmp97536
                                                          (car _var96146_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e96140_
                                                      __tmp97536)))))
                                            (declare (not safe))
                                            (find __tmp97535 _vars96141_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx96057_
                                             _e96140_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e96140_))
                                                  (let ((__tmp97534
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e96140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth96142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97534
                                                          _vars96141_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e96140_))
                              (let* ((_e9614796154_ _e96140_)
                                     (_E9614996158_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9614796154_))))
                                     (_E9614896219_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9614796154_))
                                            (let ((_e9615096162_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9614796154_))))
                                              (let ((_hd9615196165_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9615096162_)))
                                                    (_tl9615296167_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9615096162_))))
                                                (let* ((_hd96170_
                                                        _hd9615196165_)
                                                       (_rest96172_
                                                        _tl9615296167_))
                                                  (if '#t
                                                      (let* ((_make-pair96187_
                                                              (lambda (_tag96174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd96175_
                               _tl96176_)
                        (let* ((_hd-depth96178_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag96174_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth96142_ '1))
                                    _depth96142_))
                               (_g97529_
                                (let ()
                                  (declare (not safe))
                                  (_recur96138_
                                   _hd96175_
                                   _vars96141_
                                   _hd-depth96178_))))
                          (begin
                            (let ((_g97530_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g97529_)
                                         (##vector-length _g97529_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g97530_ 2)))
                                  (error "Context expects 2 values" _g97530_)))
                            (let ((_hd96180_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97529_ 0)))
                                  (_vars96181_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97529_ 1))))
                              (let ((_g97531_
                                     (let ()
                                       (declare (not safe))
                                       (_recur96138_
                                        _tl96176_
                                        _vars96181_
                                        _depth96142_))))
                                (begin
                                  (let ((_g97532_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g97531_)
                                               (##vector-length _g97531_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g97532_ 2)))
                                        (error "Context expects 2 values"
                                               _g97532_)))
                                  (let ((_tl96183_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97531_ 0)))
                                        (_vars96184_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97531_ 1))))
                                    (let ()
                                      (values (let ((__tmp97533
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd96180_
                                                             _tl96183_))))
                                                (declare (not safe))
                                                (cons _tag96174_ __tmp97533))
                                              _vars96184_))))))))))
                     (_e9618896195_ _rest96172_)
                     (_E9619096199_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair96187_ 'cons _hd96170_ _rest96172_))))
                     (_E9618996215_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9618896195_))
                            (let ((_e9619196203_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9618896195_))))
                              (let ((_hd9619296206_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9619196203_)))
                                    (_tl9619396208_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9619196203_))))
                                (let* ((_rest-hd96211_ _hd9619296206_)
                                       (_rest-tl96213_ _tl9619396208_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd96211_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair96187_
                                             'splice
                                             _hd96170_
                                             _rest-tl96213_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair96187_
                                             'cons
                                             _hd96170_
                                             _rest96172_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9619096199_))))))
                            (let () (declare (not safe)) (_E9619096199_))))))
                (let () (declare (not safe)) (_E9618996215_)))
              (let () (declare (not safe)) (_E9614996158_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9614996158_))))))
                                (let () (declare (not safe)) (_E9614896219_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e96140_))
                                  (values '(null) _vars96141_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e96140_))
                                      (let ((_g97526_
                                             (let ((__tmp97528
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e96140_)))))
                                               (declare (not safe))
                                               (_recur96138_
                                                __tmp97528
                                                _vars96141_
                                                _depth96142_))))
                                        (begin
                                          (let ((_g97527_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g97526_)
                                                       (##vector-length
                                                        _g97526_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g97527_ 2)))
                                                (error "Context expects 2 values"
                                                       _g97527_)))
                                          (let ((_e96223_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97526_ 0)))
                                                (_vars96224_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97526_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e96223_))
                                                    _vars96224_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e96140_))
                                          (let ((_g97523_
                                                 (let ((__tmp97525
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e96140_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur96138_
                                                    __tmp97525
                                                    _vars96141_
                                                    _depth96142_))))
                                            (begin
                                              (let ((_g97524_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g97523_)
                                                           (##vector-length
                                                            _g97523_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g97524_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g97524_)))
                                              (let ((_e96226_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g97523_
                                                        0)))
                                                    (_vars96227_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g97523_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e96226_))
                                                        _vars96227_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e96140_))
                                              (values (let ((__tmp97522
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e96140_))))
                (declare (not safe))
                (cons 'datum __tmp97522))
              _vars96141_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx96057_
                                                 _e96140_))))))))))))
          (let* ((_e9606796080_ _stx96057_)
                 (_E9606996084_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9606796080_))))
                 (_E9606896131_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9606796080_))
                        (let ((_e9607096088_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9606796080_))))
                          (let ((_hd9607196091_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9607096088_)))
                                (_tl9607296093_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9607096088_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9607296093_))
                                (let ((_e9607396096_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9607296093_))))
                                  (let ((_hd9607496099_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9607396096_)))
                                        (_tl9607596101_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9607396096_))))
                                    (let ((_expr96104_ _hd9607496099_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9607596101_))
                                          (let ((_e9607696106_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9607596101_))))
                                            (let ((_hd9607796109_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9607696106_)))
                                                  (_tl9607896111_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9607696106_))))
                                              (let* ((_ids96114_
                                                      _hd9607796109_)
                                                     (_clauses96116_
                                                      _tl9607896111_))
                                                (if '#t
                                                    (if (let ((__tmp97555
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids96114_))))
                  (declare (not safe))
                  (not __tmp97555))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx96057_
                   _ids96114_))
                (if (let ((__tmp97554
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses96116_))))
                      (declare (not safe))
                      (not __tmp97554))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx96057_))
                    (let* ((_ids96118_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids96114_)))
                           (_clauses96120_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses96116_)))
                           (_clause-ids96122_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses96120_)))
                           (_E96124_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target96126_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first96128_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses96120_))
                                _E96124_
                                (car _clause-ids96122_))))
                      (let ((__tmp97539
                             (let ((__tmp97540
                                    (let ((__tmp97542
                                           (let ((__tmp97547
                                                  (let ((__tmp97548
                                                         (let ((__tmp97553
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E96124_ '())))
                       (__tmp97549
                        (let ((__tmp97550
                               (let ((__tmp97552
                                      (let ()
                                        (declare (not safe))
                                        (cons _target96126_ '())))
                                     (__tmp97551
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target96126_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp97552
                                  __tmp97551))))
                          (declare (not safe))
                          (cons __tmp97550 '()))))
                   (declare (not safe))
                   (cons __tmp97553 __tmp97549))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97548 '())))
                                                 (__tmp97543
                                                  (let ((__tmp97546
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings96062_
                                                            _target96126_
                                                            _ids96118_
                                                            _clauses96120_
                                                            _clause-ids96122_
                                                            _E96124_)))
                                                        (__tmp97544
                                                         (let ((__tmp97545
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr96104_ '()))))
                   (declare (not safe))
                   (cons _first96128_ __tmp97545))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body96063_
                                                     __tmp97546
                                                     __tmp97544))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp97547
                                              __tmp97543)))
                                          (__tmp97541
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx96057_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp97542
                                       __tmp97541))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp97540)))
                            (__tmp97538
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx96057_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp97539 __tmp97538)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9606996084_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9606996084_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9606996084_)))))
                        (let () (declare (not safe)) (_E9606996084_))))))
            (let () (declare (not safe)) (_E9606896131_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx96767_)
        (let* ((_identifier=?96769_ 'free-identifier=?)
               (_unwrap-e96771_ 'syntax-e)
               (_wrap-e96773_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96767_
           _identifier=?96769_
           _unwrap-e96771_
           _wrap-e96773_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx96775_ _identifier=?96776_)
        (let* ((_unwrap-e96778_ 'syntax-e) (_wrap-e96780_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96775_
           _identifier=?96776_
           _unwrap-e96778_
           _wrap-e96780_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx96782_ _identifier=?96783_ _unwrap-e96784_)
        (let ((_wrap-e96786_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96782_
           _identifier=?96783_
           _unwrap-e96784_
           _wrap-e96786_))))
    (define gx#macro-expand-syntax-case
      (lambda _g97557_
        (let ((_g97556_ (let () (declare (not safe)) (##length _g97557_))))
          (cond ((let () (declare (not safe)) (##fx= _g97556_ 1))
                 (apply (lambda (_stx96767_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx96767_)))
                        _g97557_))
                ((let () (declare (not safe)) (##fx= _g97556_ 2))
                 (apply (lambda (_stx96775_ _identifier=?96776_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx96775_
                             _identifier=?96776_)))
                        _g97557_))
                ((let () (declare (not safe)) (##fx= _g97556_ 3))
                 (apply (lambda (_stx96782_
                                 _identifier=?96783_
                                 _unwrap-e96784_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx96782_
                             _identifier=?96783_
                             _unwrap-e96784_)))
                        _g97557_))
                ((let () (declare (not safe)) (##fx= _g97556_ 4))
                 (apply (lambda (_stx96788_
                                 _identifier=?96789_
                                 _unwrap-e96790_
                                 _wrap-e96791_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx96788_
                             _identifier=?96789_
                             _unwrap-e96790_
                             _wrap-e96791_)))
                        _g97557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g97557_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx96054_)
        (if (let () (declare (not safe)) (gx#identifier? _stx96054_))
            (let ((__tmp97558
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx96054_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp97558 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd96012_ . _rest96013_)
        (let ((_len96015_ (length _hd96012_)))
          (let _lp96017_ ((_rest96019_ _rest96013_))
            (let* ((_rest9602096028_ _rest96019_)
                   (_else9602296036_ (lambda () '#!void))
                   (_K9602496042_
                    (lambda (_rest96039_ _hd96040_)
                      (if (fx= _len96015_ (length _hd96040_))
                          (let () (declare (not safe)) (_lp96017_ _rest96039_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd96040_))))))
              (if (let () (declare (not safe)) (##pair? _rest9602096028_))
                  (let ((_hd9602596045_
                         (let ()
                           (declare (not safe))
                           (##car _rest9602096028_)))
                        (_tl9602696047_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9602096028_))))
                    (let* ((_hd96050_ _hd9602596045_)
                           (_rest96052_ _tl9602696047_))
                      (declare (not safe))
                      (_K9602496042_ _rest96052_ _hd96050_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx95970_ _n95971_)
        (let _lp95973_ ((_rest95975_ _stx95970_) (_r95976_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest95975_))
              (let* ((_g9597795984_
                      (let () (declare (not safe)) (gx#syntax-e _rest95975_)))
                     (_E9597995988_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9597795984_))))
                     (_K9598095994_
                      (lambda (_rest95991_ _hd95992_)
                        (let ((__tmp97563
                               (let ()
                                 (declare (not safe))
                                 (cons _hd95992_ _r95976_))))
                          (declare (not safe))
                          (_lp95973_ _rest95991_ __tmp97563)))))
                (if (let () (declare (not safe)) (##pair? _g9597795984_))
                    (let ((_hd9598195997_
                           (let () (declare (not safe)) (##car _g9597795984_)))
                          (_tl9598295999_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9597795984_))))
                      (let* ((_hd96002_ _hd9598195997_)
                             (_rest96004_ _tl9598295999_))
                        (declare (not safe))
                        (_K9598095994_ _rest96004_ _hd96002_)))
                    (let () (declare (not safe)) (_E9597995988_))))
              (let _lp96006_ ((_n96008_ _n95971_)
                              (_l96009_ _r95976_)
                              (_r96010_ _rest95975_))
                (if (let () (declare (not safe)) (null? _l96009_))
                    (values _l96009_ _r96010_)
                    (if (fxpositive? _n96008_)
                        (let ((__tmp97562
                               (let () (declare (not safe)) (fx- _n96008_ '1)))
                              (__tmp97561 (cdr _l96009_))
                              (__tmp97559
                               (let ((__tmp97560 (car _l96009_)))
                                 (declare (not safe))
                                 (cons __tmp97560 _r96010_))))
                          (declare (not safe))
                          (_lp96006_ __tmp97562 __tmp97561 __tmp97559))
                        (values (reverse _l96009_) _r96010_))))))))))
