(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1708418155)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp96340 (list gx#expander::t))
            (__tmp96338
             (let ((__tmp96339
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp96339 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp96340
         '(id depth)
         __tmp96338
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args96335_
        (apply make-instance gx#syntax-pattern::t _$args96335_)))
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
      (lambda (_self96332_ _stx96333_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx96333_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx95814_)
        (letrec ((_generate95816_
                  (lambda (_e96043_)
                    (letrec ((_BUG96045_
                              (lambda (_q96207_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx95814_
                                         _e96043_
                                         _q96207_))))
                             (_local-pattern-e96046_
                              (lambda (_pat96205_)
                                (let ((__tmp96341
                                       (##structure-ref
                                        _pat96205_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp96341))))
                             (_getvar96047_
                              (lambda (_q96202_ _vars96203_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q96202_
                                   _vars96203_
                                   _BUG96045_))))
                             (_getarg96048_
                              (lambda (_arg96168_ _vars96169_)
                                (let* ((_arg9617096177_ _arg96168_)
                                       (_E9617296181_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9617096177_))))
                                       (_K9617396190_
                                        (lambda (_e96184_ _tag96185_)
                                          (let ((_$e96187_ _tag96185_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e96187_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar96047_
                                                   _e96184_
                                                   _vars96169_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e96187_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e96046_
                                                       _e96184_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG96045_
                                                       _arg96168_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9617096177_))
                                      (let ((_hd9617496193_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9617096177_)))
                                            (_tl9617596195_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9617096177_))))
                                        (let* ((_tag96198_ _hd9617496193_)
                                               (_e96200_ _tl9617596195_))
                                          (declare (not safe))
                                          (_K9617396190_ _e96200_ _tag96198_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9617296181_)))))))
                      (let _recur96050_ ((_e96052_ _e96043_) (_vars96053_ '()))
                        (let* ((_e9605496061_ _e96052_)
                               (_E9605696065_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9605496061_))))
                               (_K9605796156_
                                (lambda (_body96068_ _tag96069_)
                                  (let ((_$e96071_ _tag96069_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e96071_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body96068_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e96071_))
                                            (let ((_id96074_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body96068_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id96074_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks96076_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id96074_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks96076_))
                                                        (let ((__tmp96369
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body96068_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp96369))
                (let ((__tmp96368
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body96068_)))
                      (__tmp96367
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body96068_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp96368
                   __tmp96367
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id96074_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body96068_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG96045_
                                                         _e96052_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e96071_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e96046_
                                                   _body96068_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e96071_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar96047_
                                                       _body96068_
                                                       _vars96053_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e96071_))
                                                        (let ((__tmp96365
                                                               (let ((__tmp96366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body96068_)))
                         (declare (not safe))
                         (_recur96050_ __tmp96366 _vars96053_)))
                      (__tmp96363
                       (let ((__tmp96364 (cdr _body96068_)))
                         (declare (not safe))
                         (_recur96050_ __tmp96364 _vars96053_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp96365 __tmp96363))
                (if (let () (declare (not safe)) (eq? 'vector _$e96071_))
                    (let ((__tmp96362
                           (let ()
                             (declare (not safe))
                             (_recur96050_ _body96068_ _vars96053_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp96362))
                    (if (let () (declare (not safe)) (eq? 'box _$e96071_))
                        (let ((__tmp96361
                               (let ()
                                 (declare (not safe))
                                 (_recur96050_ _body96068_ _vars96053_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp96361))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e96071_))
                            (let* ((_body9607796088_ _body96068_)
                                   (_E9607996092_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9607796088_))))
                                   (_K9608096130_
                                    (lambda (_args96095_
                                             _iv96096_
                                             _hd96097_
                                             _depth96098_)
                                      (let* ((_targets96104_
                                              (map (lambda (_g9609996101_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg96048_
                                                        _g9609996101_
                                                        _vars96053_)))
                                                   _args96095_))
                                             (_fold-in96106_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args96095_)))
                                             (_fold-out96108_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args96110_
                                              (let ((__tmp96342
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out96108_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp96342
                                                        _fold-in96106_)))
                                             (_lambda-body96127_
                                              (if (fx> _depth96098_ '1)
                                                  (let ((_r-args96118_
                                                         (map (lambda (_arg96112_)
                                                                (let ((__tmp96347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg96112_)))
                          (declare (not safe))
                          (cons 'ref __tmp96347)))
                      _args96095_))
                (_r-vars96119_
                 (let ((__tmp96348
                        (lambda (_arg96114_ _var96115_ _r96116_)
                          (let ((__tmp96349
                                 (let ((__tmp96350 (cdr _arg96114_)))
                                   (declare (not safe))
                                   (cons __tmp96350 _var96115_))))
                            (declare (not safe))
                            (cons __tmp96349 _r96116_)))))
                   (declare (not safe))
                   (foldr2 __tmp96348
                           _vars96053_
                           _args96095_
                           _fold-in96106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp96351
                                                           (let ((__tmp96352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp96356
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth96098_ '1)))
                                (__tmp96353
                                 (let ((__tmp96354
                                        (let ((__tmp96355
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out96108_))))
                                          (declare (not safe))
                                          (cons __tmp96355 _r-args96118_))))
                                   (declare (not safe))
                                   (cons _hd96097_ __tmp96354))))
                            (declare (not safe))
                            (cons __tmp96356 __tmp96353))))
                     (declare (not safe))
                     (cons 'splice __tmp96352))))
              (declare (not safe))
              (_recur96050_ __tmp96351 _r-vars96119_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars96125_
                                                          (let ((__tmp96343
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg96121_ _var96122_ _r96123_)
                           (let ((__tmp96344
                                  (let ((__tmp96345 (cdr _arg96121_)))
                                    (declare (not safe))
                                    (cons __tmp96345 _var96122_))))
                             (declare (not safe))
                             (cons __tmp96344 _r96123_)))))
                    (declare (not safe))
                    (foldr2 __tmp96343
                            _vars96053_
                            _args96095_
                            _fold-in96106_)))
                 (__tmp96346
                  (let ()
                    (declare (not safe))
                    (_recur96050_ _hd96097_ _hd-vars96125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp96346
                                                     _fold-out96108_)))))
                                        (let ((__tmp96360
                                               (if (fx> (length _targets96104_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets96104_))
                                                   '#!void))
                                              (__tmp96357
                                               (let ((__tmp96359
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args96110_
                                                         _lambda-body96127_)))
                                                     (__tmp96358
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur96050_
                                                         _iv96096_
                                                         _vars96053_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp96359
                                                  __tmp96358
                                                  _targets96104_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp96360
                                           __tmp96357))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9607796088_))
                                  (let ((_hd9608196133_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9607796088_)))
                                        (_tl9608296135_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9607796088_))))
                                    (let ((_depth96138_ _hd9608196133_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9608296135_))
                                          (let ((_hd9608396140_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9608296135_)))
                                                (_tl9608496142_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9608296135_))))
                                            (let ((_hd96145_ _hd9608396140_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9608496142_))
                                                  (let ((_hd9608596147_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9608496142_)))
                                                        (_tl9608696149_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9608496142_))))
                                                    (let* ((_iv96152_
                                                            _hd9608596147_)
                                                           (_args96154_
                                                            _tl9608696149_))
                                                      (declare (not safe))
                                                      (_K9608096130_
                                                       _args96154_
                                                       _iv96152_
                                                       _hd96145_
                                                       _depth96138_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9607996092_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9607996092_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9607996092_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e96071_))
                                _body96068_
                                (let ()
                                  (declare (not safe))
                                  (_BUG96045_ _e96052_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9605496061_))
                              (let ((_hd9605896159_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9605496061_)))
                                    (_tl9605996161_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9605496061_))))
                                (let* ((_tag96164_ _hd9605896159_)
                                       (_body96166_ _tl9605996161_))
                                  (declare (not safe))
                                  (_K9605796156_ _body96166_ _tag96164_)))
                              (let ()
                                (declare (not safe))
                                (_E9605696065_))))))))
                 (_parse95817_
                  (lambda (_e95858_)
                    (letrec ((_make-cons95860_
                              (lambda (_hd96035_ _tl96036_)
                                (let ((_g96370_ _hd96035_)
                                      (_g96372_ _tl96036_))
                                  (begin
                                    (let ((_g96371_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96370_)
                                                 (##vector-length _g96370_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96371_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96371_)))
                                    (let ((_g96373_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96372_)
                                                 (##vector-length _g96372_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96373_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96373_)))
                                    (let ((_hd-e96038_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96370_ 0)))
                                          (_hd-vars96039_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96370_ 1))))
                                      (let ((_tl-e96040_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96372_ 0)))
                                            (_tl-vars96041_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96372_ 1))))
                                        (values (let ((__tmp96374
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e96038_
                                                               _tl-e96040_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp96374))
                                                (append _hd-vars96039_
                                                        _tl-vars96041_))))))))
                             (_make-splice95861_
                              (lambda (_where95974_
                                       _depth95975_
                                       _hd95976_
                                       _tl95977_)
                                (let ((_g96375_ _hd95976_)
                                      (_g96377_ _tl95977_))
                                  (begin
                                    (let ((_g96376_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96375_)
                                                 (##vector-length _g96375_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96376_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96376_)))
                                    (let ((_g96378_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96377_)
                                                 (##vector-length _g96377_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96378_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96378_)))
                                    (let ((_hd-e95979_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96375_ 0)))
                                          (_hd-vars95980_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96375_ 1))))
                                      (let ((_tl-e95981_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96377_ 0)))
                                            (_tl-vars95982_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96377_ 1))))
                                        (let _lp95984_ ((_rest95986_
                                                         _hd-vars95980_)
                                                        (_targets95987_ '())
                                                        (_vars95988_
                                                         _tl-vars95982_))
                                          (let* ((_rest9598995999_ _rest95986_)
                                                 (_else9599196007_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets95987_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx95814_
                                                           _where95974_))
                                                        (values (let ((__tmp96379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp96380
                                      (let ((__tmp96381
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e95981_
                                                     _targets95987_))))
                                        (declare (not safe))
                                        (cons _hd-e95979_ __tmp96381))))
                                 (declare (not safe))
                                 (cons _depth95975_ __tmp96380))))
                          (declare (not safe))
                          (cons 'splice __tmp96379))
                        _vars95988_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9599396016_
                                                  (lambda (_rest96010_
                                                           _hd-pat96011_
                                                           _hd-depth*96012_)
                                                    (let ((_hd-depth96014_
                                                           (fx- _hd-depth*96012_
                                                                _depth95975_)))
                                                      (if (fxpositive?
                                                           _hd-depth96014_)
                                                          (let ((__tmp96386
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp96387
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat96011_))))
                           (declare (not safe))
                           (cons __tmp96387 _targets95987_)))
                        (__tmp96384
                         (let ((__tmp96385
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth96014_ _hd-pat96011_))))
                           (declare (not safe))
                           (cons __tmp96385 _vars95988_))))
                    (declare (not safe))
                    (_lp95984_ _rest96010_ __tmp96386 __tmp96384))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth96014_))
                      (let ((__tmp96382
                             (let ((__tmp96383
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat96011_))))
                               (declare (not safe))
                               (cons __tmp96383 _targets95987_))))
                        (declare (not safe))
                        (_lp95984_ _rest96010_ __tmp96382 _vars95988_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx95814_
                         _where95974_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9598995999_))
                                                (let ((_hd9599496019_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9598995999_)))
                                                      (_tl9599596021_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9598995999_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9599496019_))
                                                      (let ((_hd9599696024_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9599496019_)))
                    (_tl9599796026_
                     (let () (declare (not safe)) (##cdr _hd9599496019_))))
                (let* ((_hd-depth*96029_ _hd9599696024_)
                       (_hd-pat96031_ _tl9599796026_)
                       (_rest96033_ _tl9599596021_))
                  (declare (not safe))
                  (_K9599396016_ _rest96033_ _hd-pat96031_ _hd-depth*96029_)))
              (let () (declare (not safe)) (_else9599196007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9599196007_)))))))))))
                             (_recur95862_
                              (lambda (_e95867_ _is-e?95868_)
                                (if (_is-e?95868_ _e95867_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx95814_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e95867_))
                                        (let* ((_pat95870_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e95867_)))
                                               (_depth95872_
                                                (##structure-ref
                                                 _pat95870_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth95872_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat95870_))
                                                      (let ((__tmp96403
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth95872_ _pat95870_))))
                (declare (not safe))
                (cons __tmp96403 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat95870_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e95867_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e95867_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e95867_))
                                                (let* ((_e9587495881_ _e95867_)
                                                       (_E9587695885_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9587495881_))))
                                                       (_E9587595964_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9587495881_))
                      (let ((_e9587795889_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9587495881_))))
                        (let ((_hd9587895892_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9587795889_)))
                              (_tl9587995894_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9587795889_))))
                          (let* ((_hd95897_ _hd9587895892_)
                                 (_rest95899_ _tl9587995894_))
                            (if '#t
                                (if (_is-e?95868_ _hd95897_)
                                    (let* ((_e9590095907_ _rest95899_)
                                           (_E9590295911_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx95814_
                                                 _e95867_))))
                                           (_E9590195925_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9590095907_))
                                                  (let ((_e9590395915_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9590095907_))))
                                                    (let ((_hd9590495918_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9590395915_)))
                                                          (_tl9590595920_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9590395915_))))
                                                      (let ((_rest95923_
                                                             _hd9590495918_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9590595920_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur95862_ _rest95923_ false))
                        (let () (declare (not safe)) (_E9590295911_)))
                    (let () (declare (not safe)) (_E9590295911_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9590295911_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9590195925_)))
                                    (let _lp95929_ ((_rest95931_ _rest95899_)
                                                    (_depth95932_ '0))
                                      (let* ((_e9593395940_ _rest95931_)
                                             (_E9593595944_
                                              (lambda ()
                                                (if (fxpositive? _depth95932_)
                                                    (let ((__tmp96397
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95862_
                                                              _hd95897_
                                                              _is-e?95868_)))
                                                          (__tmp96396
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95862_
                                                              _rest95931_
                                                              _is-e?95868_))))
                                                      (declare (not safe))
                                                      (_make-splice95861_
                                                       _e95867_
                                                       _depth95932_
                                                       __tmp96397
                                                       __tmp96396))
                                                    (let ((__tmp96395
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95862_
                                                              _hd95897_
                                                              _is-e?95868_)))
                                                          (__tmp96394
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95862_
                                                              _rest95931_
                                                              _is-e?95868_))))
                                                      (declare (not safe))
                                                      (_make-cons95860_
                                                       __tmp96395
                                                       __tmp96394)))))
                                             (_E9593495960_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9593395940_))
                                                    (let ((_e9593695948_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9593395940_))))
                                                      (let ((_hd9593795951_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9593695948_)))
                    (_tl9593895953_
                     (let () (declare (not safe)) (##cdr _e9593695948_))))
                (let* ((_rest-hd95956_ _hd9593795951_)
                       (_rest-tl95958_ _tl9593895953_))
                  (if '#t
                      (if (_is-e?95868_ _rest-hd95956_)
                          (let ((__tmp96402
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth95932_ '1))))
                            (declare (not safe))
                            (_lp95929_ _rest-tl95958_ __tmp96402))
                          (if (fxpositive? _depth95932_)
                              (let ((__tmp96401
                                     (let ()
                                       (declare (not safe))
                                       (_recur95862_ _hd95897_ _is-e?95868_)))
                                    (__tmp96400
                                     (let ()
                                       (declare (not safe))
                                       (_recur95862_
                                        _rest95931_
                                        _is-e?95868_))))
                                (declare (not safe))
                                (_make-splice95861_
                                 _e95867_
                                 _depth95932_
                                 __tmp96401
                                 __tmp96400))
                              (let ((__tmp96399
                                     (let ()
                                       (declare (not safe))
                                       (_recur95862_ _hd95897_ _is-e?95868_)))
                                    (__tmp96398
                                     (let ()
                                       (declare (not safe))
                                       (_recur95862_
                                        _rest95931_
                                        _is-e?95868_))))
                                (declare (not safe))
                                (_make-cons95860_ __tmp96399 __tmp96398))))
                      (let () (declare (not safe)) (_E9593595944_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9593595944_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9593495960_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9587695885_))))))
                      (let () (declare (not safe)) (_E9587695885_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9587595964_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e95867_))
                                                    (let ((_g96391_
                                                           (let ((__tmp96393
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e95867_)))))
                     (declare (not safe))
                     (_recur95862_ __tmp96393 _is-e?95868_))))
              (begin
                (let ((_g96392_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g96391_)
                             (##vector-length _g96391_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g96392_ 2)))
                      (error "Context expects 2 values" _g96392_)))
                (let ((_e95968_
                       (let () (declare (not safe)) (##vector-ref _g96391_ 0)))
                      (_vars95969_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g96391_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e95968_))
                          _vars95969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e95867_))
                                                        (let ((_g96388_
                                                               (let ((__tmp96390
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e95867_)))))
                         (declare (not safe))
                         (_recur95862_ __tmp96390 _is-e?95868_))))
                  (begin
                    (let ((_g96389_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g96388_)
                                 (##vector-length _g96388_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g96389_ 2)))
                          (error "Context expects 2 values" _g96389_)))
                    (let ((_e95971_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g96388_ 0)))
                          (_vars95972_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g96388_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e95971_))
                              _vars95972_))))
                (values (let () (declare (not safe)) (cons 'datum _e95867_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g96404_
                             (let ()
                               (declare (not safe))
                               (_recur95862_ _e95858_ gx#ellipsis?))))
                        (begin
                          (let ((_g96405_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g96404_)
                                       (##vector-length _g96404_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g96405_ 2)))
                                (error "Context expects 2 values" _g96405_)))
                          (let ((_tree95864_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g96404_ 0)))
                                (_vars95865_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g96404_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars95865_))
                                _tree95864_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx95814_
                                   _vars95865_))))))))))
          (let* ((_e9581895828_ _stx95814_)
                 (_E9582095832_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx95814_))))
                 (_E9581995854_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9581895828_))
                        (let ((_e9582195836_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9581895828_))))
                          (let ((_hd9582295839_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9582195836_)))
                                (_tl9582395841_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9582195836_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9582395841_))
                                (let ((_e9582495844_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9582395841_))))
                                  (let ((_hd9582595847_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9582495844_)))
                                        (_tl9582695849_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9582495844_))))
                                    (let ((_form95852_ _hd9582595847_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9582695849_))
                                          (if '#t
                                              (let ((__tmp96407
                                                     (let ((__tmp96408
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse95817_
                                                               _form95852_))))
                                                       (declare (not safe))
                                                       (_generate95816_
                                                        __tmp96408)))
                                                    (__tmp96406
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx95814_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp96407
                                                 __tmp96406))
                                              (let ()
                                                (declare (not safe))
                                                (_E9582095832_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9582095832_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9582095832_)))))
                        (let () (declare (not safe)) (_E9582095832_))))))
            (let () (declare (not safe)) (_E9581995854_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx95078_ _identifier=?95079_ _unwrap-e95080_ _wrap-e95081_)
        (letrec ((_generate-bindings95083_
                  (lambda (_target95678_
                           _ids95679_
                           _clauses95680_
                           _clause-ids95681_
                           _E95682_)
                    (letrec ((_generate195684_
                              (lambda (_clause95781_ _clause-id95782_ _E95783_)
                                (let ((__tmp96413
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id95782_ '())))
                                      (__tmp96409
                                       (let ((__tmp96410
                                              (let ((__tmp96412
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target95678_
                                                             '())))
                                                    (__tmp96411
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause95085_
                                                        _target95678_
                                                        _ids95679_
                                                        _clause95781_
                                                        _E95783_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp96412
                                                 __tmp96411))))
                                         (declare (not safe))
                                         (cons __tmp96410 '()))))
                                  (declare (not safe))
                                  (cons __tmp96413 __tmp96409)))))
                      (let _lp95686_ ((_rest95688_ _clauses95680_)
                                      (_rest-ids95689_ _clause-ids95681_)
                                      (_bindings95690_ '()))
                        (let* ((_rest9569195699_ _rest95688_)
                               (_else9569395707_ (lambda () _bindings95690_))
                               (_K9569595769_
                                (lambda (_rest95710_ _clause95711_)
                                  (let* ((_rest-ids9571295719_ _rest-ids95689_)
                                         (_E9571495723_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9571295719_))))
                                         (_K9571595757_
                                          (lambda (_rest-ids95726_
                                                   _clause-id95727_)
                                            (let* ((_rest-ids9572895736_
                                                    _rest-ids95726_)
                                                   (_else9573095744_
                                                    (lambda ()
                                                      (let ((__tmp96414
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate195684_
                        _clause95711_
                        _clause-id95727_
                        _E95682_))))
                (declare (not safe))
                (cons __tmp96414 _bindings95690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9573295749_
                                                    (lambda (_next-clause-id95747_)
                                                      (let ((__tmp96415
                                                             (let ((__tmp96416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate195684_
                               _clause95711_
                               _clause-id95727_
                               _next-clause-id95747_))))
                       (declare (not safe))
                       (cons __tmp96416 _bindings95690_))))
                (declare (not safe))
                (_lp95686_ _rest95710_ _rest-ids95726_ __tmp96415)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9572895736_))
                                                  (let* ((_hd9573395752_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9572895736_)))
                                                         (_next-clause-id95755_
                                                          _hd9573395752_))
                                                    (declare (not safe))
                                                    (_K9573295749_
                                                     _next-clause-id95755_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9573095744_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9571295719_))
                                        (let ((_hd9571695760_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9571295719_)))
                                              (_tl9571795762_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9571295719_))))
                                          (let* ((_clause-id95765_
                                                  _hd9571695760_)
                                                 (_rest-ids95767_
                                                  _tl9571795762_))
                                            (declare (not safe))
                                            (_K9571595757_
                                             _rest-ids95767_
                                             _clause-id95765_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9571495723_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9569195699_))
                              (let ((_hd9569695772_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9569195699_)))
                                    (_tl9569795774_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9569195699_))))
                                (let* ((_clause95777_ _hd9569695772_)
                                       (_rest95779_ _tl9569795774_))
                                  (declare (not safe))
                                  (_K9569595769_ _rest95779_ _clause95777_)))
                              (let ()
                                (declare (not safe))
                                (_else9569395707_))))))))
                 (_generate-body95084_
                  (lambda (_bindings95638_ _body95639_)
                    (let _recur95641_ ((_rest95643_ _bindings95638_))
                      (let* ((_rest9564495652_ _rest95643_)
                             (_else9564695660_ (lambda () _body95639_))
                             (_K9564895666_
                              (lambda (_rest95663_ _hd95664_)
                                (let ((__tmp96418
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd95664_ '())))
                                      (__tmp96417
                                       (let ()
                                         (declare (not safe))
                                         (_recur95641_ _rest95663_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp96418
                                   __tmp96417)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9564495652_))
                            (let ((_hd9564995669_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9564495652_)))
                                  (_tl9565095671_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9564495652_))))
                              (let* ((_hd95674_ _hd9564995669_)
                                     (_rest95676_ _tl9565095671_))
                                (declare (not safe))
                                (_K9564895666_ _rest95676_ _hd95674_)))
                            (let ()
                              (declare (not safe))
                              (_else9564695660_)))))))
                 (_generate-clause95085_
                  (lambda (_target95501_ _ids95502_ _clause95503_ _E95504_)
                    (letrec ((_generate195506_
                              (lambda (_hd95593_ _fender95594_ _body95595_)
                                (let ((_g96419_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause95087_
                                          _hd95593_
                                          _ids95502_))))
                                  (begin
                                    (let ((_g96420_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96419_)
                                                 (##vector-length _g96419_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96420_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96420_)))
                                    (let ((_e95597_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96419_ 0)))
                                          (_mvars95598_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96419_ 1))))
                                      (let* ((_pvars95600_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars95598_))))
                                             (_E95602_
                                              (let ((__tmp96421
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target95501_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E95504_ __tmp96421)))
                                             (_K95635_
                                              (let ((__tmp96422
                                                     (let ((__tmp96424
                                                            (map (lambda (_mvar95604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar95605_)
                           (let* ((_mvar9560695613_ _mvar95604_)
                                  (_E9560895617_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9560695613_))))
                                  (_K9560995623_
                                   (lambda (_depth95620_ _id95621_)
                                     (let ((__tmp96425
                                            (let ((__tmp96426
                                                   (let ((__tmp96428
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id95621_)))
                                                         (__tmp96427
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar95605_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp96428
                                                      __tmp96427
                                                      _depth95620_))))
                                              (declare (not safe))
                                              (cons __tmp96426 '()))))
                                       (declare (not safe))
                                       (cons _id95621_ __tmp96425)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9560695613_))
                                 (let ((_hd9561095626_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9560695613_)))
                                       (_tl9561195628_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9560695613_))))
                                   (let* ((_id95631_ _hd9561095626_)
                                          (_depth95633_ _tl9561195628_))
                                     (declare (not safe))
                                     (_K9560995623_ _depth95633_ _id95631_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9560895617_)))))
                         _mvars95598_
                         _pvars95600_))
                   (__tmp96423
                    (if (let () (declare (not safe)) (eq? _fender95594_ '#t))
                        _body95595_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender95594_
                           _body95595_
                           _E95602_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp96424 __tmp96423))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars95600_
                                                 __tmp96422))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match95086_
                                           _hd95593_
                                           _target95501_
                                           _e95597_
                                           _mvars95598_
                                           _K95635_
                                           _E95602_)))))))))
                      (let* ((_e9550795527_ _clause95503_)
                             (_E9551695531_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9550795527_))))
                             (_E9550995565_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9550795527_))
                                    (let ((_e9551795535_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9550795527_))))
                                      (let ((_hd9551895538_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9551795535_)))
                                            (_tl9551995540_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9551795535_))))
                                        (let ((_hd95543_ _hd9551895538_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9551995540_))
                                              (let ((_e9552095545_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9551995540_))))
                                                (let ((_hd9552195548_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9552095545_)))
                                                      (_tl9552295550_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9552095545_))))
                                                  (let ((_fender95553_
                                                         _hd9552195548_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9552295550_))
                                                        (let ((_e9552395555_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9552295550_))))
                  (let ((_hd9552495558_
                         (let () (declare (not safe)) (##car _e9552395555_)))
                        (_tl9552595560_
                         (let () (declare (not safe)) (##cdr _e9552395555_))))
                    (let ((_body95563_ _hd9552495558_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9552595560_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate195506_
                                 _hd95543_
                                 _fender95553_
                                 _body95563_))
                              (let () (declare (not safe)) (_E9551695531_)))
                          (let () (declare (not safe)) (_E9551695531_))))))
                (let () (declare (not safe)) (_E9551695531_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9551695531_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9551695531_)))))
                             (_E9550895589_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9550795527_))
                                    (let ((_e9551095569_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9550795527_))))
                                      (let ((_hd9551195572_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9551095569_)))
                                            (_tl9551295574_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9551095569_))))
                                        (let ((_hd95577_ _hd9551195572_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9551295574_))
                                              (let ((_e9551395579_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9551295574_))))
                                                (let ((_hd9551495582_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9551395579_)))
                                                      (_tl9551595584_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9551395579_))))
                                                  (let ((_body95587_
                                                         _hd9551495582_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9551595584_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate195506_
                                                               _hd95577_
                                                               '#t
                                                               _body95587_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9550995565_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9550995565_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9550995565_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9550995565_))))))
                        (let () (declare (not safe)) (_E9550895589_))))))
                 (_generate-match95086_
                  (lambda (_where95250_
                           _target95251_
                           _hd95252_
                           _mvars95253_
                           _K95254_
                           _E95255_)
                    (letrec ((_BUG95257_
                              (lambda (_q95499_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx95078_
                                         _hd95252_
                                         _q95499_))))
                             (_recur95258_
                              (lambda (_e95349_
                                       _vars95350_
                                       _target95351_
                                       _E95352_
                                       _k95353_)
                                (let* ((_e9535495361_ _e95349_)
                                       (_E9535695365_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9535495361_))))
                                       (_K9535795487_
                                        (lambda (_body95368_ _tag95369_)
                                          (let ((_$e95371_ _tag95369_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e95371_))
                                                (_k95353_ _vars95350_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e95371_))
                                                    (let ((__tmp96535
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target95351_)))
                                                          (__tmp96531
                                                           (let ((__tmp96533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp96534
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e95081_ _body95368_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?95079_
                             __tmp96534
                             _target95351_)))
                         (__tmp96532 (_k95353_ _vars95350_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp96533 __tmp96532 _E95352_))))
              (declare (not safe))
              (gx#core-list 'if __tmp96535 __tmp96531 _E95352_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e95371_))
                                                        (_k95353_
                                                         (let ((__tmp96530
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body95368_ _target95351_))))
                   (declare (not safe))
                   (cons __tmp96530 _vars95350_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e95371_))
                    (let ((_$e95374_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd95375_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl95376_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp96529
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target95351_)))
                            (__tmp96510
                             (let ((__tmp96524
                                    (let ((__tmp96525
                                           (let ((__tmp96528
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e95374_ '())))
                                                 (__tmp96526
                                                  (let ((__tmp96527
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e95080_
                                                            _target95351_))))
                                                    (declare (not safe))
                                                    (cons __tmp96527 '()))))
                                             (declare (not safe))
                                             (cons __tmp96528 __tmp96526))))
                                      (declare (not safe))
                                      (cons __tmp96525 '())))
                                   (__tmp96511
                                    (let ((__tmp96514
                                           (let ((__tmp96520
                                                  (let ((__tmp96523
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd95375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp96521
                 (let ((__tmp96522
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e95374_))))
                   (declare (not safe))
                   (cons __tmp96522 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp96523
                                                          __tmp96521)))
                                                 (__tmp96515
                                                  (let ((__tmp96516
                                                         (let ((__tmp96519
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl95376_ '())))
                       (__tmp96517
                        (let ((__tmp96518
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e95374_))))
                          (declare (not safe))
                          (cons __tmp96518 '()))))
                   (declare (not safe))
                   (cons __tmp96519 __tmp96517))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp96516 '()))))
                                             (declare (not safe))
                                             (cons __tmp96520 __tmp96515)))
                                          (__tmp96512
                                           (let* ((_body9537795384_
                                                   _body95368_)
                                                  (_E9537995388_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9537795384_))))
                                                  (_K9538095396_
                                                   (lambda (_tl95391_
                                                            _hd95392_)
                                                     (let ((__tmp96513
                                                            (lambda (_vars95394_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur95258_
                         _tl95391_
                         _vars95394_
                         _$tl95376_
                         _E95352_
                         _k95353_)))))
               (declare (not safe))
               (_recur95258_
                _hd95392_
                _vars95350_
                _$hd95375_
                _E95352_
                __tmp96513)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9537795384_))
                                                 (let ((_hd9538195399_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9537795384_)))
                                                       (_tl9538295401_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9537795384_))))
                                                   (let* ((_hd95404_
                                                           _hd9538195399_)
                                                          (_tl95406_
                                                           _tl9538295401_))
                                                     (declare (not safe))
                                                     (_K9538095396_
                                                      _tl95406_
                                                      _hd95404_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9537995388_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp96514
                                       __tmp96512))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp96524
                                __tmp96511))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp96529 __tmp96510 _E95352_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e95371_))
                        (let* ((_body9540795414_ _body95368_)
                               (_E9540995418_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9540795414_))))
                               (_K9541095469_
                                (lambda (_tl95421_ _hd95422_)
                                  (let* ((_rlen95424_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen95259_ _tl95421_)))
                                         (_$target95426_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd95428_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl95430_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp95432_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e95434_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd95436_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl95438_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars95440_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars95260_ _hd95422_)))
                                         (_lvars95442_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars95440_)))
                                         (_tlvars95444_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars95440_)))
                                         (_linit95448_
                                          (map (lambda (_var95446_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars95442_)))
                                    (letrec ((_make-loop95451_
                                              (lambda (_vars95455_)
                                                (let ((__tmp96461
                                                       (let ((__tmp96462
                                                              (let ((__tmp96498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp95432_ '())))
                            (__tmp96463
                             (let ((__tmp96464
                                    (let ((__tmp96497
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd95428_ _lvars95442_)))
                                          (__tmp96465
                                           (let ((__tmp96496
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd95428_)))
                                                 (__tmp96474
                                                  (let ((__tmp96491
                                                         (let ((__tmp96492
                                                                (let ((__tmp96495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e95434_ '())))
                              (__tmp96493
                               (let ((__tmp96494
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e95080_
                                         _$hd95428_))))
                                 (declare (not safe))
                                 (cons __tmp96494 '()))))
                          (declare (not safe))
                          (cons __tmp96495 __tmp96493))))
                   (declare (not safe))
                   (cons __tmp96492 '())))
                (__tmp96475
                 (let ((__tmp96481
                        (let ((__tmp96487
                               (let ((__tmp96490
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd95436_ '())))
                                     (__tmp96488
                                      (let ((__tmp96489
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e95434_))))
                                        (declare (not safe))
                                        (cons __tmp96489 '()))))
                                 (declare (not safe))
                                 (cons __tmp96490 __tmp96488)))
                              (__tmp96482
                               (let ((__tmp96483
                                      (let ((__tmp96486
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl95438_ '())))
                                            (__tmp96484
                                             (let ((__tmp96485
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e95434_))))
                                               (declare (not safe))
                                               (cons __tmp96485 '()))))
                                        (declare (not safe))
                                        (cons __tmp96486 __tmp96484))))
                                 (declare (not safe))
                                 (cons __tmp96483 '()))))
                          (declare (not safe))
                          (cons __tmp96487 __tmp96482)))
                       (__tmp96476
                        (let ((__tmp96477
                               (lambda (_hdvars95457_)
                                 (let ((__tmp96478
                                        (let ((__tmp96479
                                               (map (lambda (_svar95459_
                                                             _lvar95460_)
                                                      (let ((__tmp96480
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar95459_ _hdvars95457_ _BUG95257_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp96480 _lvar95460_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars95440_
                                                    _lvars95442_)))
                                          (declare (not safe))
                                          (cons _$lp-tl95438_ __tmp96479))))
                                   (declare (not safe))
                                   (cons _$lp95432_ __tmp96478)))))
                          (declare (not safe))
                          (_recur95258_
                           _hd95422_
                           '()
                           _$lp-hd95436_
                           _E95352_
                           __tmp96477))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp96481 __tmp96476))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp96491
                                                     __tmp96475)))
                                                 (__tmp96466
                                                  (let ((__tmp96470
                                                         (map (lambda (_lvar95462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar95463_)
                        (let ((__tmp96473
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar95463_ '())))
                              (__tmp96471
                               (let ((__tmp96472
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar95462_))))
                                 (declare (not safe))
                                 (cons __tmp96472 '()))))
                          (declare (not safe))
                          (cons __tmp96473 __tmp96471)))
                      _lvars95442_
                      _tlvars95444_))
                (__tmp96467
                 (_k95353_
                  (let ((__tmp96468
                         (lambda (_svar95465_ _tlvar95466_ _r95467_)
                           (let ((__tmp96469
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar95465_ _tlvar95466_))))
                             (declare (not safe))
                             (cons __tmp96469 _r95467_)))))
                    (declare (not safe))
                    (foldl2 __tmp96468
                            _vars95455_
                            _svars95440_
                            _tlvars95444_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp96470
                                                     __tmp96467))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp96496
                                              __tmp96474
                                              __tmp96466))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp96497
                                       __tmp96465))))
                               (declare (not safe))
                               (cons __tmp96464 '()))))
                        (declare (not safe))
                        (cons __tmp96498 __tmp96463))))
                 (declare (not safe))
                 (cons __tmp96462 '())))
              (__tmp96459
               (let ((__tmp96460
                      (let ()
                        (declare (not safe))
                        (cons _$target95426_ _linit95448_))))
                 (declare (not safe))
                 (cons _$lp95432_ __tmp96460))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp96461
                                                   __tmp96459)))))
                                      (let ((_body95453_
                                             (let ((__tmp96500
                                                    (let ((__tmp96501
                                                           (let ((__tmp96504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp96505
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl95430_ '()))))
                            (declare (not safe))
                            (cons _$target95426_ __tmp96505)))
                         (__tmp96502
                          (let ((__tmp96503
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target95351_
                                    _rlen95424_))))
                            (declare (not safe))
                            (cons __tmp96503 '()))))
                     (declare (not safe))
                     (cons __tmp96504 __tmp96502))))
              (declare (not safe))
              (cons __tmp96501 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp96499
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur95258_
                                                       _tl95421_
                                                       _vars95350_
                                                       _$tl95430_
                                                       _E95352_
                                                       _make-loop95451_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp96500
                                                __tmp96499))))
                                        (let ((__tmp96509
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target95351_)))
                                              (__tmp96506
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen95424_))
                                                   _body95453_
                                                   (let ((__tmp96507
                                                          (let ((__tmp96508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target95351_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp96508 _rlen95424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp96507
                                                      _body95453_
                                                      _E95352_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp96509
                                           __tmp96506
                                           _E95352_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9540795414_))
                              (let ((_hd9541195472_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9540795414_)))
                                    (_tl9541295474_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9540795414_))))
                                (let* ((_hd95477_ _hd9541195472_)
                                       (_tl95479_ _tl9541295474_))
                                  (declare (not safe))
                                  (_K9541095469_ _tl95479_ _hd95477_)))
                              (let () (declare (not safe)) (_E9540995418_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e95371_))
                            (let ((__tmp96458
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target95351_)))
                                  (__tmp96457 (_k95353_ _vars95350_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp96458
                               __tmp96457
                               _E95352_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e95371_))
                                (let ((_$e95481_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp96456
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target95351_)))
                                        (__tmp96448
                                         (let ((__tmp96450
                                                (let ((__tmp96451
                                                       (let ((__tmp96455
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e95481_ '())))
                     (__tmp96452
                      (let ((__tmp96453
                             (let ((__tmp96454
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e95080_
                                       _target95351_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp96454))))
                        (declare (not safe))
                        (cons __tmp96453 '()))))
                 (declare (not safe))
                 (cons __tmp96455 __tmp96452))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp96451 '())))
                                               (__tmp96449
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur95258_
                                                   _body95368_
                                                   _vars95350_
                                                   _$e95481_
                                                   _E95352_
                                                   _k95353_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp96450
                                            __tmp96449))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp96456
                                     __tmp96448
                                     _E95352_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e95371_))
                                    (let ((_$e95483_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp96447
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target95351_)))
                                            (__tmp96439
                                             (let ((__tmp96441
                                                    (let ((__tmp96442
                                                           (let ((__tmp96446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e95483_ '())))
                         (__tmp96443
                          (let ((__tmp96444
                                 (let ((__tmp96445
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e95080_
                                           _target95351_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp96445))))
                            (declare (not safe))
                            (cons __tmp96444 '()))))
                     (declare (not safe))
                     (cons __tmp96446 __tmp96443))))
              (declare (not safe))
              (cons __tmp96442 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp96440
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur95258_
                                                       _body95368_
                                                       _vars95350_
                                                       _$e95483_
                                                       _E95352_
                                                       _k95353_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp96441
                                                __tmp96440))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp96447
                                         __tmp96439
                                         _E95352_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e95371_))
                                        (let ((_$e95485_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp96438
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target95351_)))
                                                (__tmp96429
                                                 (let ((__tmp96433
                                                        (let ((__tmp96434
                                                               (let ((__tmp96437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e95485_ '())))
                             (__tmp96435
                              (let ((__tmp96436
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target95351_))))
                                (declare (not safe))
                                (cons __tmp96436 '()))))
                         (declare (not safe))
                         (cons __tmp96437 __tmp96435))))
                  (declare (not safe))
                  (cons __tmp96434 '())))
               (__tmp96430
                (let ((__tmp96432
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e95485_ _body95368_)))
                      (__tmp96431 (_k95353_ _vars95350_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp96432 __tmp96431 _E95352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp96433
                                                    __tmp96430))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp96438
                                             __tmp96429
                                             _E95352_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG95257_ _e95349_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9535495361_))
                                      (let ((_hd9535895490_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9535495361_)))
                                            (_tl9535995492_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9535495361_))))
                                        (let* ((_tag95495_ _hd9535895490_)
                                               (_body95497_ _tl9535995492_))
                                          (declare (not safe))
                                          (_K9535795487_
                                           _body95497_
                                           _tag95495_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9535695365_))))))
                             (_splice-rlen95259_
                              (lambda (_e95311_)
                                (let _lp95313_ ((_e95315_ _e95311_)
                                                (_n95316_ '0))
                                  (let* ((_e9531795324_ _e95315_)
                                         (_E9531995328_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9531795324_))))
                                         (_K9532095337_
                                          (lambda (_body95331_ _tag95332_)
                                            (let ((_$e95334_ _tag95332_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e95334_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx95078_
                                                     _where95250_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e95334_))
                                                      (let ((__tmp96537
                                                             (cdr _body95331_))
                                                            (__tmp96536
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n95316_ '1))))
                (declare (not safe))
                (_lp95313_ __tmp96537 __tmp96536))
              _n95316_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9531795324_))
                                        (let ((_hd9532195340_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9531795324_)))
                                              (_tl9532295342_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9531795324_))))
                                          (let* ((_tag95345_ _hd9532195340_)
                                                 (_body95347_ _tl9532295342_))
                                            (declare (not safe))
                                            (_K9532095337_
                                             _body95347_
                                             _tag95345_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9531995328_)))))))
                             (_splice-vars95260_
                              (lambda (_e95267_)
                                (let _recur95269_ ((_e95271_ _e95267_)
                                                   (_vars95272_ '()))
                                  (let* ((_e9527395280_ _e95271_)
                                         (_E9527595284_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9527395280_))))
                                         (_K9527695299_
                                          (lambda (_body95287_ _tag95288_)
                                            (let ((_$e95290_ _tag95288_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e95290_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body95287_
                                                          _vars95272_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e95290_))
                  (let () (declare (not safe)) (eq? 'splice _$e95290_)))
              (let ((__tmp96540 (cdr _body95287_))
                    (__tmp96538
                     (let ((__tmp96539 (car _body95287_)))
                       (declare (not safe))
                       (_recur95269_ __tmp96539 _vars95272_))))
                (declare (not safe))
                (_recur95269_ __tmp96540 __tmp96538))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e95290_))
                      (let () (declare (not safe)) (eq? 'box _$e95290_)))
                  (let ()
                    (declare (not safe))
                    (_recur95269_ _body95287_ _vars95272_))
                  _vars95272_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9527395280_))
                                        (let ((_hd9527795302_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9527395280_)))
                                              (_tl9527895304_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9527395280_))))
                                          (let* ((_tag95307_ _hd9527795302_)
                                                 (_body95309_ _tl9527895304_))
                                            (declare (not safe))
                                            (_K9527695299_
                                             _body95309_
                                             _tag95307_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9527595284_)))))))
                             (_make-body95261_
                              (lambda (_vars95263_)
                                (let ((__tmp96541
                                       (map (lambda (_mvar95265_)
                                              (let ((__tmp96542
                                                     (car _mvar95265_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp96542
                                                 _vars95263_
                                                 _BUG95257_)))
                                            _mvars95253_)))
                                  (declare (not safe))
                                  (cons _K95254_ __tmp96541)))))
                      (let ()
                        (declare (not safe))
                        (_recur95258_
                         _hd95252_
                         '()
                         _target95251_
                         _E95255_
                         _make-body95261_)))))
                 (_parse-clause95087_
                  (lambda (_hd95156_ _ids95157_)
                    (let _recur95159_ ((_e95161_ _hd95156_)
                                       (_vars95162_ '())
                                       (_depth95163_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e95161_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e95161_))
                              (values '(any) _vars95162_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e95161_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx95078_
                                     _hd95156_))
                                  (if (let ((__tmp96558
                                             (lambda (_id95165_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e95161_
                                                  _id95165_)))))
                                        (declare (not safe))
                                        (find __tmp96558 _ids95157_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e95161_))
                                              _vars95162_)
                                      (if (let ((__tmp96556
                                                 (lambda (_var95167_)
                                                   (let ((__tmp96557
                                                          (car _var95167_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e95161_
                                                      __tmp96557)))))
                                            (declare (not safe))
                                            (find __tmp96556 _vars95162_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx95078_
                                             _e95161_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e95161_))
                                                  (let ((__tmp96555
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e95161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth95163_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp96555
                                                          _vars95162_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e95161_))
                              (let* ((_e9516895175_ _e95161_)
                                     (_E9517095179_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9516895175_))))
                                     (_E9516995240_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9516895175_))
                                            (let ((_e9517195183_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9516895175_))))
                                              (let ((_hd9517295186_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9517195183_)))
                                                    (_tl9517395188_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9517195183_))))
                                                (let* ((_hd95191_
                                                        _hd9517295186_)
                                                       (_rest95193_
                                                        _tl9517395188_))
                                                  (if '#t
                                                      (let* ((_make-pair95208_
                                                              (lambda (_tag95195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd95196_
                               _tl95197_)
                        (let* ((_hd-depth95199_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag95195_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth95163_ '1))
                                    _depth95163_))
                               (_g96550_
                                (let ()
                                  (declare (not safe))
                                  (_recur95159_
                                   _hd95196_
                                   _vars95162_
                                   _hd-depth95199_))))
                          (begin
                            (let ((_g96551_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g96550_)
                                         (##vector-length _g96550_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g96551_ 2)))
                                  (error "Context expects 2 values" _g96551_)))
                            (let ((_hd95201_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g96550_ 0)))
                                  (_vars95202_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g96550_ 1))))
                              (let ((_g96552_
                                     (let ()
                                       (declare (not safe))
                                       (_recur95159_
                                        _tl95197_
                                        _vars95202_
                                        _depth95163_))))
                                (begin
                                  (let ((_g96553_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g96552_)
                                               (##vector-length _g96552_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g96553_ 2)))
                                        (error "Context expects 2 values"
                                               _g96553_)))
                                  (let ((_tl95204_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g96552_ 0)))
                                        (_vars95205_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g96552_ 1))))
                                    (let ()
                                      (values (let ((__tmp96554
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd95201_
                                                             _tl95204_))))
                                                (declare (not safe))
                                                (cons _tag95195_ __tmp96554))
                                              _vars95205_))))))))))
                     (_e9520995216_ _rest95193_)
                     (_E9521195220_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair95208_ 'cons _hd95191_ _rest95193_))))
                     (_E9521095236_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9520995216_))
                            (let ((_e9521295224_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9520995216_))))
                              (let ((_hd9521395227_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9521295224_)))
                                    (_tl9521495229_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9521295224_))))
                                (let* ((_rest-hd95232_ _hd9521395227_)
                                       (_rest-tl95234_ _tl9521495229_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd95232_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair95208_
                                             'splice
                                             _hd95191_
                                             _rest-tl95234_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair95208_
                                             'cons
                                             _hd95191_
                                             _rest95193_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9521195220_))))))
                            (let () (declare (not safe)) (_E9521195220_))))))
                (let () (declare (not safe)) (_E9521095236_)))
              (let () (declare (not safe)) (_E9517095179_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9517095179_))))))
                                (let () (declare (not safe)) (_E9516995240_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e95161_))
                                  (values '(null) _vars95162_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e95161_))
                                      (let ((_g96547_
                                             (let ((__tmp96549
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e95161_)))))
                                               (declare (not safe))
                                               (_recur95159_
                                                __tmp96549
                                                _vars95162_
                                                _depth95163_))))
                                        (begin
                                          (let ((_g96548_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g96547_)
                                                       (##vector-length
                                                        _g96547_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g96548_ 2)))
                                                (error "Context expects 2 values"
                                                       _g96548_)))
                                          (let ((_e95244_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g96547_ 0)))
                                                (_vars95245_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g96547_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e95244_))
                                                    _vars95245_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e95161_))
                                          (let ((_g96544_
                                                 (let ((__tmp96546
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e95161_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur95159_
                                                    __tmp96546
                                                    _vars95162_
                                                    _depth95163_))))
                                            (begin
                                              (let ((_g96545_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g96544_)
                                                           (##vector-length
                                                            _g96544_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g96545_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g96545_)))
                                              (let ((_e95247_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g96544_
                                                        0)))
                                                    (_vars95248_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g96544_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e95247_))
                                                        _vars95248_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e95161_))
                                              (values (let ((__tmp96543
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e95161_))))
                (declare (not safe))
                (cons 'datum __tmp96543))
              _vars95162_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx95078_
                                                 _e95161_))))))))))))
          (let* ((_e9508895101_ _stx95078_)
                 (_E9509095105_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9508895101_))))
                 (_E9508995152_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9508895101_))
                        (let ((_e9509195109_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9508895101_))))
                          (let ((_hd9509295112_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9509195109_)))
                                (_tl9509395114_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9509195109_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9509395114_))
                                (let ((_e9509495117_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9509395114_))))
                                  (let ((_hd9509595120_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9509495117_)))
                                        (_tl9509695122_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9509495117_))))
                                    (let ((_expr95125_ _hd9509595120_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9509695122_))
                                          (let ((_e9509795127_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9509695122_))))
                                            (let ((_hd9509895130_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9509795127_)))
                                                  (_tl9509995132_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9509795127_))))
                                              (let* ((_ids95135_
                                                      _hd9509895130_)
                                                     (_clauses95137_
                                                      _tl9509995132_))
                                                (if '#t
                                                    (if (let ((__tmp96576
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids95135_))))
                  (declare (not safe))
                  (not __tmp96576))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx95078_
                   _ids95135_))
                (if (let ((__tmp96575
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses95137_))))
                      (declare (not safe))
                      (not __tmp96575))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx95078_))
                    (let* ((_ids95139_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids95135_)))
                           (_clauses95141_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses95137_)))
                           (_clause-ids95143_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses95141_)))
                           (_E95145_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target95147_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first95149_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses95141_))
                                _E95145_
                                (car _clause-ids95143_))))
                      (let ((__tmp96560
                             (let ((__tmp96561
                                    (let ((__tmp96563
                                           (let ((__tmp96568
                                                  (let ((__tmp96569
                                                         (let ((__tmp96574
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E95145_ '())))
                       (__tmp96570
                        (let ((__tmp96571
                               (let ((__tmp96573
                                      (let ()
                                        (declare (not safe))
                                        (cons _target95147_ '())))
                                     (__tmp96572
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target95147_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp96573
                                  __tmp96572))))
                          (declare (not safe))
                          (cons __tmp96571 '()))))
                   (declare (not safe))
                   (cons __tmp96574 __tmp96570))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp96569 '())))
                                                 (__tmp96564
                                                  (let ((__tmp96567
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings95083_
                                                            _target95147_
                                                            _ids95139_
                                                            _clauses95141_
                                                            _clause-ids95143_
                                                            _E95145_)))
                                                        (__tmp96565
                                                         (let ((__tmp96566
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr95125_ '()))))
                   (declare (not safe))
                   (cons _first95149_ __tmp96566))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body95084_
                                                     __tmp96567
                                                     __tmp96565))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp96568
                                              __tmp96564)))
                                          (__tmp96562
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx95078_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp96563
                                       __tmp96562))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp96561)))
                            (__tmp96559
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx95078_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp96560 __tmp96559)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9509095105_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9509095105_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9509095105_)))))
                        (let () (declare (not safe)) (_E9509095105_))))))
            (let () (declare (not safe)) (_E9508995152_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx95788_)
        (let* ((_identifier=?95790_ 'free-identifier=?)
               (_unwrap-e95792_ 'syntax-e)
               (_wrap-e95794_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx95788_
           _identifier=?95790_
           _unwrap-e95792_
           _wrap-e95794_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx95796_ _identifier=?95797_)
        (let* ((_unwrap-e95799_ 'syntax-e) (_wrap-e95801_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx95796_
           _identifier=?95797_
           _unwrap-e95799_
           _wrap-e95801_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx95803_ _identifier=?95804_ _unwrap-e95805_)
        (let ((_wrap-e95807_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx95803_
           _identifier=?95804_
           _unwrap-e95805_
           _wrap-e95807_))))
    (define gx#macro-expand-syntax-case
      (lambda _g96578_
        (let ((_g96577_ (let () (declare (not safe)) (##length _g96578_))))
          (cond ((let () (declare (not safe)) (##fx= _g96577_ 1))
                 (apply (lambda (_stx95788_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx95788_)))
                        _g96578_))
                ((let () (declare (not safe)) (##fx= _g96577_ 2))
                 (apply (lambda (_stx95796_ _identifier=?95797_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx95796_
                             _identifier=?95797_)))
                        _g96578_))
                ((let () (declare (not safe)) (##fx= _g96577_ 3))
                 (apply (lambda (_stx95803_
                                 _identifier=?95804_
                                 _unwrap-e95805_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx95803_
                             _identifier=?95804_
                             _unwrap-e95805_)))
                        _g96578_))
                ((let () (declare (not safe)) (##fx= _g96577_ 4))
                 (apply (lambda (_stx95809_
                                 _identifier=?95810_
                                 _unwrap-e95811_
                                 _wrap-e95812_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx95809_
                             _identifier=?95810_
                             _unwrap-e95811_
                             _wrap-e95812_)))
                        _g96578_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g96578_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx95075_)
        (if (let () (declare (not safe)) (gx#identifier? _stx95075_))
            (let ((__tmp96579
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx95075_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp96579 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd95033_ . _rest95034_)
        (let ((_len95036_ (length _hd95033_)))
          (let _lp95038_ ((_rest95040_ _rest95034_))
            (let* ((_rest9504195049_ _rest95040_)
                   (_else9504395057_ (lambda () '#!void))
                   (_K9504595063_
                    (lambda (_rest95060_ _hd95061_)
                      (if (fx= _len95036_ (length _hd95061_))
                          (let () (declare (not safe)) (_lp95038_ _rest95060_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd95061_))))))
              (if (let () (declare (not safe)) (##pair? _rest9504195049_))
                  (let ((_hd9504695066_
                         (let ()
                           (declare (not safe))
                           (##car _rest9504195049_)))
                        (_tl9504795068_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9504195049_))))
                    (let* ((_hd95071_ _hd9504695066_)
                           (_rest95073_ _tl9504795068_))
                      (declare (not safe))
                      (_K9504595063_ _rest95073_ _hd95071_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx94991_ _n94992_)
        (let _lp94994_ ((_rest94996_ _stx94991_) (_r94997_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest94996_))
              (let* ((_g9499895005_
                      (let () (declare (not safe)) (gx#syntax-e _rest94996_)))
                     (_E9500095009_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9499895005_))))
                     (_K9500195015_
                      (lambda (_rest95012_ _hd95013_)
                        (let ((__tmp96584
                               (let ()
                                 (declare (not safe))
                                 (cons _hd95013_ _r94997_))))
                          (declare (not safe))
                          (_lp94994_ _rest95012_ __tmp96584)))))
                (if (let () (declare (not safe)) (##pair? _g9499895005_))
                    (let ((_hd9500295018_
                           (let () (declare (not safe)) (##car _g9499895005_)))
                          (_tl9500395020_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9499895005_))))
                      (let* ((_hd95023_ _hd9500295018_)
                             (_rest95025_ _tl9500395020_))
                        (declare (not safe))
                        (_K9500195015_ _rest95025_ _hd95023_)))
                    (let () (declare (not safe)) (_E9500095009_))))
              (let _lp95027_ ((_n95029_ _n94992_)
                              (_l95030_ _r94997_)
                              (_r95031_ _rest94996_))
                (if (let () (declare (not safe)) (null? _l95030_))
                    (values _l95030_ _r95031_)
                    (if (fxpositive? _n95029_)
                        (let ((__tmp96583
                               (let () (declare (not safe)) (fx- _n95029_ '1)))
                              (__tmp96582 (cdr _l95030_))
                              (__tmp96580
                               (let ((__tmp96581 (car _l95030_)))
                                 (declare (not safe))
                                 (cons __tmp96581 _r95031_))))
                          (declare (not safe))
                          (_lp95027_ __tmp96583 __tmp96582 __tmp96580))
                        (values (reverse _l95030_) _r95031_))))))))))
