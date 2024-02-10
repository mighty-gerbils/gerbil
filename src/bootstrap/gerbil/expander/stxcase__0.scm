(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707556027)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp176429
             (let ((__tmp176430
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp176430 '()))))
        (declare (not safe))
        (make-struct-type
         'gx#syntax-pattern::t
         'syntax-pattern
         gx#expander::t
         '(id depth)
         __tmp176429
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-struct-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args172232_
        (apply make-struct-instance gx#syntax-pattern::t _$args172232_)))
    (define gx#syntax-pattern-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern::apply-macro-expander
      (lambda (_self172229_ _stx172230_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx172230_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx171711_)
        (letrec ((_generate171713_
                  (lambda (_e171940_)
                    (letrec ((_BUG171942_
                              (lambda (_q172104_)
                                (error '"BUG: syntax; generate"
                                       _stx171711_
                                       _e171940_
                                       _q172104_)))
                             (_local-pattern-e171943_
                              (lambda (_pat172102_)
                                (let ((__tmp176431
                                       (##structure-ref
                                        _pat172102_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp176431))))
                             (_getvar171944_
                              (lambda (_q172099_ _vars172100_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q172099_
                                           _vars172100_
                                           _BUG171942_))))
                             (_getarg171945_
                              (lambda (_arg172065_ _vars172066_)
                                (let* ((_arg172067172074_ _arg172065_)
                                       (_E172069172078_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg172067172074_)))
                                       (_K172070172087_
                                        (lambda (_e172081_ _tag172082_)
                                          (let ((_$e172084_ _tag172082_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e172084_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar171944_
                                                   _e172081_
                                                   _vars172066_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e172084_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e171943_
                                                       _e172081_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG171942_
                                                       _arg172065_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg172067172074_))
                                      (let ((_hd172071172090_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg172067172074_)))
                                            (_tl172072172092_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg172067172074_))))
                                        (let* ((_tag172095_ _hd172071172090_)
                                               (_e172097_ _tl172072172092_))
                                          (declare (not safe))
                                          (_K172070172087_
                                           _e172097_
                                           _tag172095_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E172069172078_)))))))
                      (let _recur171947_ ((_e171949_ _e171940_)
                                          (_vars171950_ '()))
                        (let* ((_e171951171958_ _e171949_)
                               (_E171953171962_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e171951171958_)))
                               (_K171954172053_
                                (lambda (_body171965_ _tag171966_)
                                  (let ((_$e171968_ _tag171966_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e171968_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body171965_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e171968_))
                                            (let ((_id171971_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body171965_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id171971_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks171973_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id171971_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks171973_))
                                                        (let ((__tmp176459
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body171965_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp176459))
                (let ((__tmp176458
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body171965_)))
                      (__tmp176457
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body171965_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp176458
                   __tmp176457
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id171971_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body171965_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG171942_
                                                         _e171949_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e171968_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e171943_
                                                   _body171965_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e171968_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar171944_
                                                       _body171965_
                                                       _vars171950_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e171968_))
                                                        (let ((__tmp176455
                                                               (let ((__tmp176456
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body171965_)))
                         (declare (not safe))
                         (_recur171947_ __tmp176456 _vars171950_)))
                      (__tmp176453
                       (let ((__tmp176454 (cdr _body171965_)))
                         (declare (not safe))
                         (_recur171947_ __tmp176454 _vars171950_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp176455 __tmp176453))
                (if (let () (declare (not safe)) (eq? 'vector _$e171968_))
                    (let ((__tmp176452
                           (let ()
                             (declare (not safe))
                             (_recur171947_ _body171965_ _vars171950_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp176452))
                    (if (let () (declare (not safe)) (eq? 'box _$e171968_))
                        (let ((__tmp176451
                               (let ()
                                 (declare (not safe))
                                 (_recur171947_ _body171965_ _vars171950_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp176451))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e171968_))
                            (let* ((_body171974171985_ _body171965_)
                                   (_E171976171989_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body171974171985_)))
                                   (_K171977172027_
                                    (lambda (_args171992_
                                             _iv171993_
                                             _hd171994_
                                             _depth171995_)
                                      (let* ((_targets172001_
                                              (map (lambda (_g171996171998_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg171945_
                                                        _g171996171998_
                                                        _vars171950_)))
                                                   _args171992_))
                                             (_fold-in172003_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args171992_)))
                                             (_fold-out172005_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args172007_
                                              (let ((__tmp176432
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out172005_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp176432
                                                        _fold-in172003_)))
                                             (_lambda-body172024_
                                              (if (fx> _depth171995_ '1)
                                                  (let ((_r-args172015_
                                                         (map (lambda (_arg172009_)
                                                                (let ((__tmp176437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg172009_)))
                          (declare (not safe))
                          (cons 'ref __tmp176437)))
                      _args171992_))
                (_r-vars172016_
                 (let ((__tmp176438
                        (lambda (_arg172011_ _var172012_ _r172013_)
                          (let ((__tmp176439
                                 (let ((__tmp176440 (cdr _arg172011_)))
                                   (declare (not safe))
                                   (cons __tmp176440 _var172012_))))
                            (declare (not safe))
                            (cons __tmp176439 _r172013_)))))
                   (declare (not safe))
                   (foldr2 __tmp176438
                           _vars171950_
                           _args171992_
                           _fold-in172003_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp176441
                                                           (let ((__tmp176442
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176446
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth171995_ '1)))
                                (__tmp176443
                                 (let ((__tmp176444
                                        (let ((__tmp176445
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out172005_))))
                                          (declare (not safe))
                                          (cons __tmp176445 _r-args172015_))))
                                   (declare (not safe))
                                   (cons _hd171994_ __tmp176444))))
                            (declare (not safe))
                            (cons __tmp176446 __tmp176443))))
                     (declare (not safe))
                     (cons 'splice __tmp176442))))
              (declare (not safe))
              (_recur171947_ __tmp176441 _r-vars172016_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars172022_
                                                          (let ((__tmp176433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg172018_ _var172019_ _r172020_)
                           (let ((__tmp176434
                                  (let ((__tmp176435 (cdr _arg172018_)))
                                    (declare (not safe))
                                    (cons __tmp176435 _var172019_))))
                             (declare (not safe))
                             (cons __tmp176434 _r172020_)))))
                    (declare (not safe))
                    (foldr2 __tmp176433
                            _vars171950_
                            _args171992_
                            _fold-in172003_)))
                 (__tmp176436
                  (let ()
                    (declare (not safe))
                    (_recur171947_ _hd171994_ _hd-vars172022_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp176436
                                                     _fold-out172005_)))))
                                        (let ((__tmp176450
                                               (if (fx> (length _targets172001_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets172001_))
                                                   '#!void))
                                              (__tmp176447
                                               (let ((__tmp176449
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args172007_
                                                         _lambda-body172024_)))
                                                     (__tmp176448
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur171947_
                                                         _iv171993_
                                                         _vars171950_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp176449
                                                  __tmp176448
                                                  _targets172001_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp176450
                                           __tmp176447))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body171974171985_))
                                  (let ((_hd171978172030_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body171974171985_)))
                                        (_tl171979172032_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body171974171985_))))
                                    (let ((_depth172035_ _hd171978172030_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl171979172032_))
                                          (let ((_hd171980172037_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl171979172032_)))
                                                (_tl171981172039_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl171979172032_))))
                                            (let ((_hd172042_
                                                   _hd171980172037_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl171981172039_))
                                                  (let ((_hd171982172044_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl171981172039_)))
                                                        (_tl171983172046_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl171981172039_))))
                                                    (let* ((_iv172049_
                                                            _hd171982172044_)
                                                           (_args172051_
                                                            _tl171983172046_))
                                                      (declare (not safe))
                                                      (_K171977172027_
                                                       _args172051_
                                                       _iv172049_
                                                       _hd172042_
                                                       _depth172035_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E171976171989_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E171976171989_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E171976171989_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e171968_))
                                _body171965_
                                (let ()
                                  (declare (not safe))
                                  (_BUG171942_ _e171949_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e171951171958_))
                              (let ((_hd171955172056_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e171951171958_)))
                                    (_tl171956172058_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e171951171958_))))
                                (let* ((_tag172061_ _hd171955172056_)
                                       (_body172063_ _tl171956172058_))
                                  (declare (not safe))
                                  (_K171954172053_ _body172063_ _tag172061_)))
                              (let ()
                                (declare (not safe))
                                (_E171953171962_))))))))
                 (_parse171714_
                  (lambda (_e171755_)
                    (letrec ((_make-cons171757_
                              (lambda (_hd171932_ _tl171933_)
                                (let ((_g176460_ _hd171932_)
                                      (_g176462_ _tl171933_))
                                  (begin
                                    (let ((_g176461_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176460_)
                                                 (##vector-length _g176460_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176461_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176461_)))
                                    (let ((_g176463_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176462_)
                                                 (##vector-length _g176462_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176463_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176463_)))
                                    (let ((_hd-e171935_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176460_ 0)))
                                          (_hd-vars171936_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176460_ 1))))
                                      (let ((_tl-e171937_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g176462_ 0)))
                                            (_tl-vars171938_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g176462_ 1))))
                                        (values (let ((__tmp176464
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e171935_
                                                               _tl-e171937_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp176464))
                                                (append _hd-vars171936_
                                                        _tl-vars171938_))))))))
                             (_make-splice171758_
                              (lambda (_where171871_
                                       _depth171872_
                                       _hd171873_
                                       _tl171874_)
                                (let ((_g176465_ _hd171873_)
                                      (_g176467_ _tl171874_))
                                  (begin
                                    (let ((_g176466_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176465_)
                                                 (##vector-length _g176465_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176466_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176466_)))
                                    (let ((_g176468_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176467_)
                                                 (##vector-length _g176467_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176468_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176468_)))
                                    (let ((_hd-e171876_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176465_ 0)))
                                          (_hd-vars171877_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176465_ 1))))
                                      (let ((_tl-e171878_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g176467_ 0)))
                                            (_tl-vars171879_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g176467_ 1))))
                                        (let _lp171881_ ((_rest171883_
                                                          _hd-vars171877_)
                                                         (_targets171884_ '())
                                                         (_vars171885_
                                                          _tl-vars171879_))
                                          (let* ((_rest171886171896_
                                                  _rest171883_)
                                                 (_else171888171904_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets171884_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx171711_
                                                           _where171871_))
                                                        (values (let ((__tmp176469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp176470
                                      (let ((__tmp176471
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e171878_
                                                     _targets171884_))))
                                        (declare (not safe))
                                        (cons _hd-e171876_ __tmp176471))))
                                 (declare (not safe))
                                 (cons _depth171872_ __tmp176470))))
                          (declare (not safe))
                          (cons 'splice __tmp176469))
                        _vars171885_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K171890171913_
                                                  (lambda (_rest171907_
                                                           _hd-pat171908_
                                                           _hd-depth*171909_)
                                                    (let ((_hd-depth171911_
                                                           (fx- _hd-depth*171909_
                                                                _depth171872_)))
                                                      (if (fxpositive?
                                                           _hd-depth171911_)
                                                          (let ((__tmp176476
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp176477
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat171908_))))
                           (declare (not safe))
                           (cons __tmp176477 _targets171884_)))
                        (__tmp176474
                         (let ((__tmp176475
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth171911_ _hd-pat171908_))))
                           (declare (not safe))
                           (cons __tmp176475 _vars171885_))))
                    (declare (not safe))
                    (_lp171881_ _rest171907_ __tmp176476 __tmp176474))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth171911_))
                      (let ((__tmp176472
                             (let ((__tmp176473
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat171908_))))
                               (declare (not safe))
                               (cons __tmp176473 _targets171884_))))
                        (declare (not safe))
                        (_lp171881_ _rest171907_ __tmp176472 _vars171885_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx171711_
                         _where171871_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest171886171896_))
                                                (let ((_hd171891171916_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest171886171896_)))
                                                      (_tl171892171918_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest171886171896_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd171891171916_))
                                                      (let ((_hd171893171921_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd171891171916_)))
                    (_tl171894171923_
                     (let () (declare (not safe)) (##cdr _hd171891171916_))))
                (let* ((_hd-depth*171926_ _hd171893171921_)
                       (_hd-pat171928_ _tl171894171923_)
                       (_rest171930_ _tl171892171918_))
                  (declare (not safe))
                  (_K171890171913_
                   _rest171930_
                   _hd-pat171928_
                   _hd-depth*171926_)))
              (let () (declare (not safe)) (_else171888171904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else171888171904_)))))))))))
                             (_recur171759_
                              (lambda (_e171764_ _is-e?171765_)
                                (if (_is-e?171765_ _e171764_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx171711_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e171764_))
                                        (let* ((_pat171767_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e171764_)))
                                               (_depth171769_
                                                (##structure-ref
                                                 _pat171767_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth171769_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat171767_))
                                                      (let ((__tmp176493
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth171769_ _pat171767_))))
                (declare (not safe))
                (cons __tmp176493 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat171767_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e171764_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e171764_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e171764_))
                                                (let* ((_e171771171778_
                                                        _e171764_)
                                                       (_E171773171782_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e171771171778_))))
                                                       (_E171772171861_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e171771171778_))
                      (let ((_e171774171786_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e171771171778_))))
                        (let ((_hd171775171789_
                               (let ()
                                 (declare (not safe))
                                 (##car _e171774171786_)))
                              (_tl171776171791_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e171774171786_))))
                          (let* ((_hd171794_ _hd171775171789_)
                                 (_rest171796_ _tl171776171791_))
                            (if '#t
                                (if (_is-e?171765_ _hd171794_)
                                    (let* ((_e171797171804_ _rest171796_)
                                           (_E171799171808_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx171711_
                                                 _e171764_))))
                                           (_E171798171822_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e171797171804_))
                                                  (let ((_e171800171812_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e171797171804_))))
                                                    (let ((_hd171801171815_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e171800171812_)))
                                                          (_tl171802171817_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e171800171812_))))
                                                      (let ((_rest171820_
                                                             _hd171801171815_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl171802171817_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur171759_ _rest171820_ false))
                        (let () (declare (not safe)) (_E171799171808_)))
                    (let () (declare (not safe)) (_E171799171808_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E171799171808_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E171798171822_)))
                                    (let _lp171826_ ((_rest171828_
                                                      _rest171796_)
                                                     (_depth171829_ '0))
                                      (let* ((_e171830171837_ _rest171828_)
                                             (_E171832171841_
                                              (lambda ()
                                                (if (fxpositive? _depth171829_)
                                                    (let ((__tmp176487
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur171759_
                                                              _hd171794_
                                                              _is-e?171765_)))
                                                          (__tmp176486
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur171759_
                                                              _rest171828_
                                                              _is-e?171765_))))
                                                      (declare (not safe))
                                                      (_make-splice171758_
                                                       _e171764_
                                                       _depth171829_
                                                       __tmp176487
                                                       __tmp176486))
                                                    (let ((__tmp176485
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur171759_
                                                              _hd171794_
                                                              _is-e?171765_)))
                                                          (__tmp176484
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur171759_
                                                              _rest171828_
                                                              _is-e?171765_))))
                                                      (declare (not safe))
                                                      (_make-cons171757_
                                                       __tmp176485
                                                       __tmp176484)))))
                                             (_E171831171857_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e171830171837_))
                                                    (let ((_e171833171845_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e171830171837_))))
                                                      (let ((_hd171834171848_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e171833171845_)))
                    (_tl171835171850_
                     (let () (declare (not safe)) (##cdr _e171833171845_))))
                (let* ((_rest-hd171853_ _hd171834171848_)
                       (_rest-tl171855_ _tl171835171850_))
                  (if '#t
                      (if (_is-e?171765_ _rest-hd171853_)
                          (let ((__tmp176492
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth171829_ '1))))
                            (declare (not safe))
                            (_lp171826_ _rest-tl171855_ __tmp176492))
                          (if (fxpositive? _depth171829_)
                              (let ((__tmp176491
                                     (let ()
                                       (declare (not safe))
                                       (_recur171759_
                                        _hd171794_
                                        _is-e?171765_)))
                                    (__tmp176490
                                     (let ()
                                       (declare (not safe))
                                       (_recur171759_
                                        _rest171828_
                                        _is-e?171765_))))
                                (declare (not safe))
                                (_make-splice171758_
                                 _e171764_
                                 _depth171829_
                                 __tmp176491
                                 __tmp176490))
                              (let ((__tmp176489
                                     (let ()
                                       (declare (not safe))
                                       (_recur171759_
                                        _hd171794_
                                        _is-e?171765_)))
                                    (__tmp176488
                                     (let ()
                                       (declare (not safe))
                                       (_recur171759_
                                        _rest171828_
                                        _is-e?171765_))))
                                (declare (not safe))
                                (_make-cons171757_ __tmp176489 __tmp176488))))
                      (let () (declare (not safe)) (_E171832171841_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E171832171841_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E171831171857_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E171773171782_))))))
                      (let () (declare (not safe)) (_E171773171782_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E171772171861_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e171764_))
                                                    (let ((_g176481_
                                                           (let ((__tmp176483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e171764_)))))
                     (declare (not safe))
                     (_recur171759_ __tmp176483 _is-e?171765_))))
              (begin
                (let ((_g176482_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g176481_)
                             (##vector-length _g176481_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g176482_ 2)))
                      (error "Context expects 2 values" _g176482_)))
                (let ((_e171865_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g176481_ 0)))
                      (_vars171866_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g176481_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e171865_))
                          _vars171866_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e171764_))
                                                        (let ((_g176478_
                                                               (let ((__tmp176480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e171764_)))))
                         (declare (not safe))
                         (_recur171759_ __tmp176480 _is-e?171765_))))
                  (begin
                    (let ((_g176479_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g176478_)
                                 (##vector-length _g176478_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g176479_ 2)))
                          (error "Context expects 2 values" _g176479_)))
                    (let ((_e171868_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g176478_ 0)))
                          (_vars171869_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g176478_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e171868_))
                              _vars171869_))))
                (values (let () (declare (not safe)) (cons 'datum _e171764_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g176494_
                             (let ()
                               (declare (not safe))
                               (_recur171759_ _e171755_ gx#ellipsis?))))
                        (begin
                          (let ((_g176495_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g176494_)
                                       (##vector-length _g176494_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g176495_ 2)))
                                (error "Context expects 2 values" _g176495_)))
                          (let ((_tree171761_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g176494_ 0)))
                                (_vars171762_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g176494_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars171762_))
                                _tree171761_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx171711_
                                   _vars171762_))))))))))
          (let* ((_e171715171725_ _stx171711_)
                 (_E171717171729_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx171711_))))
                 (_E171716171751_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e171715171725_))
                        (let ((_e171718171733_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e171715171725_))))
                          (let ((_hd171719171736_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e171718171733_)))
                                (_tl171720171738_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e171718171733_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl171720171738_))
                                (let ((_e171721171741_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl171720171738_))))
                                  (let ((_hd171722171744_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e171721171741_)))
                                        (_tl171723171746_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e171721171741_))))
                                    (let ((_form171749_ _hd171722171744_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl171723171746_))
                                          (if '#t
                                              (let ((__tmp176497
                                                     (let ((__tmp176498
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse171714_
                                                               _form171749_))))
                                                       (declare (not safe))
                                                       (_generate171713_
                                                        __tmp176498)))
                                                    (__tmp176496
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx171711_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp176497
                                                 __tmp176496))
                                              (let ()
                                                (declare (not safe))
                                                (_E171717171729_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E171717171729_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E171717171729_)))))
                        (let () (declare (not safe)) (_E171717171729_))))))
            (let () (declare (not safe)) (_E171716171751_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx170975_
               _identifier=?170976_
               _unwrap-e170977_
               _wrap-e170978_)
        (letrec ((_generate-bindings170980_
                  (lambda (_target171575_
                           _ids171576_
                           _clauses171577_
                           _clause-ids171578_
                           _E171579_)
                    (letrec ((_generate1171581_
                              (lambda (_clause171678_
                                       _clause-id171679_
                                       _E171680_)
                                (let ((__tmp176503
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id171679_ '())))
                                      (__tmp176499
                                       (let ((__tmp176500
                                              (let ((__tmp176502
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target171575_
                                                             '())))
                                                    (__tmp176501
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause170982_
                                                        _target171575_
                                                        _ids171576_
                                                        _clause171678_
                                                        _E171680_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp176502
                                                 __tmp176501))))
                                         (declare (not safe))
                                         (cons __tmp176500 '()))))
                                  (declare (not safe))
                                  (cons __tmp176503 __tmp176499)))))
                      (let _lp171583_ ((_rest171585_ _clauses171577_)
                                       (_rest-ids171586_ _clause-ids171578_)
                                       (_bindings171587_ '()))
                        (let* ((_rest171588171596_ _rest171585_)
                               (_else171590171604_
                                (lambda () _bindings171587_))
                               (_K171592171666_
                                (lambda (_rest171607_ _clause171608_)
                                  (let* ((_rest-ids171609171616_
                                          _rest-ids171586_)
                                         (_E171611171620_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids171609171616_)))
                                         (_K171612171654_
                                          (lambda (_rest-ids171623_
                                                   _clause-id171624_)
                                            (let* ((_rest-ids171625171633_
                                                    _rest-ids171623_)
                                                   (_else171627171641_
                                                    (lambda ()
                                                      (let ((__tmp176504
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1171581_
                        _clause171608_
                        _clause-id171624_
                        _E171579_))))
                (declare (not safe))
                (cons __tmp176504 _bindings171587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K171629171646_
                                                    (lambda (_next-clause-id171644_)
                                                      (let ((__tmp176505
                                                             (let ((__tmp176506
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1171581_
                               _clause171608_
                               _clause-id171624_
                               _next-clause-id171644_))))
                       (declare (not safe))
                       (cons __tmp176506 _bindings171587_))))
                (declare (not safe))
                (_lp171583_ _rest171607_ _rest-ids171623_ __tmp176505)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids171625171633_))
                                                  (let* ((_hd171630171649_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids171625171633_)))
                                                         (_next-clause-id171652_
                                                          _hd171630171649_))
                                                    (declare (not safe))
                                                    (_K171629171646_
                                                     _next-clause-id171652_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else171627171641_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids171609171616_))
                                        (let ((_hd171613171657_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids171609171616_)))
                                              (_tl171614171659_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids171609171616_))))
                                          (let* ((_clause-id171662_
                                                  _hd171613171657_)
                                                 (_rest-ids171664_
                                                  _tl171614171659_))
                                            (declare (not safe))
                                            (_K171612171654_
                                             _rest-ids171664_
                                             _clause-id171662_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E171611171620_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest171588171596_))
                              (let ((_hd171593171669_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest171588171596_)))
                                    (_tl171594171671_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest171588171596_))))
                                (let* ((_clause171674_ _hd171593171669_)
                                       (_rest171676_ _tl171594171671_))
                                  (declare (not safe))
                                  (_K171592171666_
                                   _rest171676_
                                   _clause171674_)))
                              (let ()
                                (declare (not safe))
                                (_else171590171604_))))))))
                 (_generate-body170981_
                  (lambda (_bindings171535_ _body171536_)
                    (let _recur171538_ ((_rest171540_ _bindings171535_))
                      (let* ((_rest171541171549_ _rest171540_)
                             (_else171543171557_ (lambda () _body171536_))
                             (_K171545171563_
                              (lambda (_rest171560_ _hd171561_)
                                (let ((__tmp176508
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd171561_ '())))
                                      (__tmp176507
                                       (let ()
                                         (declare (not safe))
                                         (_recur171538_ _rest171560_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp176508
                                   __tmp176507)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest171541171549_))
                            (let ((_hd171546171566_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest171541171549_)))
                                  (_tl171547171568_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest171541171549_))))
                              (let* ((_hd171571_ _hd171546171566_)
                                     (_rest171573_ _tl171547171568_))
                                (declare (not safe))
                                (_K171545171563_ _rest171573_ _hd171571_)))
                            (let ()
                              (declare (not safe))
                              (_else171543171557_)))))))
                 (_generate-clause170982_
                  (lambda (_target171398_ _ids171399_ _clause171400_ _E171401_)
                    (letrec ((_generate1171403_
                              (lambda (_hd171490_ _fender171491_ _body171492_)
                                (let ((_g176509_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause170984_
                                          _hd171490_
                                          _ids171399_))))
                                  (begin
                                    (let ((_g176510_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176509_)
                                                 (##vector-length _g176509_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176510_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176510_)))
                                    (let ((_e171494_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176509_ 0)))
                                          (_mvars171495_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176509_ 1))))
                                      (let* ((_pvars171497_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars171495_))))
                                             (_E171499_
                                              (let ((__tmp176511
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target171398_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E171401_ __tmp176511)))
                                             (_K171532_
                                              (let ((__tmp176512
                                                     (let ((__tmp176514
                                                            (map (lambda (_mvar171501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar171502_)
                           (let* ((_mvar171503171510_ _mvar171501_)
                                  (_E171505171514_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar171503171510_)))
                                  (_K171506171520_
                                   (lambda (_depth171517_ _id171518_)
                                     (let ((__tmp176515
                                            (let ((__tmp176516
                                                   (let ((__tmp176518
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id171518_)))
                                                         (__tmp176517
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar171502_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp176518
                                                      __tmp176517
                                                      _depth171517_))))
                                              (declare (not safe))
                                              (cons __tmp176516 '()))))
                                       (declare (not safe))
                                       (cons _id171518_ __tmp176515)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar171503171510_))
                                 (let ((_hd171507171523_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar171503171510_)))
                                       (_tl171508171525_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar171503171510_))))
                                   (let* ((_id171528_ _hd171507171523_)
                                          (_depth171530_ _tl171508171525_))
                                     (declare (not safe))
                                     (_K171506171520_
                                      _depth171530_
                                      _id171528_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E171505171514_)))))
                         _mvars171495_
                         _pvars171497_))
                   (__tmp176513
                    (if (let () (declare (not safe)) (eq? _fender171491_ '#t))
                        _body171492_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender171491_
                           _body171492_
                           _E171499_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp176514 __tmp176513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars171497_
                                                 __tmp176512))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match170983_
                                           _hd171490_
                                           _target171398_
                                           _e171494_
                                           _mvars171495_
                                           _K171532_
                                           _E171499_)))))))))
                      (let* ((_e171404171424_ _clause171400_)
                             (_E171413171428_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e171404171424_))))
                             (_E171406171462_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e171404171424_))
                                    (let ((_e171414171432_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e171404171424_))))
                                      (let ((_hd171415171435_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e171414171432_)))
                                            (_tl171416171437_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e171414171432_))))
                                        (let ((_hd171440_ _hd171415171435_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl171416171437_))
                                              (let ((_e171417171442_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl171416171437_))))
                                                (let ((_hd171418171445_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e171417171442_)))
                                                      (_tl171419171447_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e171417171442_))))
                                                  (let ((_fender171450_
                                                         _hd171418171445_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl171419171447_))
                                                        (let ((_e171420171452_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl171419171447_))))
                  (let ((_hd171421171455_
                         (let () (declare (not safe)) (##car _e171420171452_)))
                        (_tl171422171457_
                         (let ()
                           (declare (not safe))
                           (##cdr _e171420171452_))))
                    (let ((_body171460_ _hd171421171455_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl171422171457_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1171403_
                                 _hd171440_
                                 _fender171450_
                                 _body171460_))
                              (let () (declare (not safe)) (_E171413171428_)))
                          (let () (declare (not safe)) (_E171413171428_))))))
                (let () (declare (not safe)) (_E171413171428_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E171413171428_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E171413171428_)))))
                             (_E171405171486_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e171404171424_))
                                    (let ((_e171407171466_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e171404171424_))))
                                      (let ((_hd171408171469_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e171407171466_)))
                                            (_tl171409171471_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e171407171466_))))
                                        (let ((_hd171474_ _hd171408171469_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl171409171471_))
                                              (let ((_e171410171476_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl171409171471_))))
                                                (let ((_hd171411171479_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e171410171476_)))
                                                      (_tl171412171481_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e171410171476_))))
                                                  (let ((_body171484_
                                                         _hd171411171479_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl171412171481_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1171403_
                                                               _hd171474_
                                                               '#t
                                                               _body171484_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E171406171462_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E171406171462_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E171406171462_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E171406171462_))))))
                        (let () (declare (not safe)) (_E171405171486_))))))
                 (_generate-match170983_
                  (lambda (_where171147_
                           _target171148_
                           _hd171149_
                           _mvars171150_
                           _K171151_
                           _E171152_)
                    (letrec ((_BUG171154_
                              (lambda (_q171396_)
                                (error '"BUG: syntax-case; generate"
                                       _stx170975_
                                       _hd171149_
                                       _q171396_)))
                             (_recur171155_
                              (lambda (_e171246_
                                       _vars171247_
                                       _target171248_
                                       _E171249_
                                       _k171250_)
                                (let* ((_e171251171258_ _e171246_)
                                       (_E171253171262_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e171251171258_)))
                                       (_K171254171384_
                                        (lambda (_body171265_ _tag171266_)
                                          (let ((_$e171268_ _tag171266_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e171268_))
                                                (_k171250_ _vars171247_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e171268_))
                                                    (let ((__tmp176625
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target171248_)))
                                                          (__tmp176621
                                                           (let ((__tmp176623
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176624
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e170978_
                                    _body171265_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?170976_
                             __tmp176624
                             _target171248_)))
                         (__tmp176622 (_k171250_ _vars171247_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp176623 __tmp176622 _E171249_))))
              (declare (not safe))
              (gx#core-list 'if __tmp176625 __tmp176621 _E171249_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e171268_))
                                                        (_k171250_
                                                         (let ((__tmp176620
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body171265_ _target171248_))))
                   (declare (not safe))
                   (cons __tmp176620 _vars171247_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e171268_))
                    (let ((_$e171271_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd171272_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl171273_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp176619
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target171248_)))
                            (__tmp176600
                             (let ((__tmp176614
                                    (let ((__tmp176615
                                           (let ((__tmp176618
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e171271_ '())))
                                                 (__tmp176616
                                                  (let ((__tmp176617
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e170977_
                                                            _target171248_))))
                                                    (declare (not safe))
                                                    (cons __tmp176617 '()))))
                                             (declare (not safe))
                                             (cons __tmp176618 __tmp176616))))
                                      (declare (not safe))
                                      (cons __tmp176615 '())))
                                   (__tmp176601
                                    (let ((__tmp176604
                                           (let ((__tmp176610
                                                  (let ((__tmp176613
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd171272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp176611
                 (let ((__tmp176612
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e171271_))))
                   (declare (not safe))
                   (cons __tmp176612 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp176613
                                                          __tmp176611)))
                                                 (__tmp176605
                                                  (let ((__tmp176606
                                                         (let ((__tmp176609
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl171273_ '())))
                       (__tmp176607
                        (let ((__tmp176608
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e171271_))))
                          (declare (not safe))
                          (cons __tmp176608 '()))))
                   (declare (not safe))
                   (cons __tmp176609 __tmp176607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp176606 '()))))
                                             (declare (not safe))
                                             (cons __tmp176610 __tmp176605)))
                                          (__tmp176602
                                           (let* ((_body171274171281_
                                                   _body171265_)
                                                  (_E171276171285_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body171274171281_)))
                                                  (_K171277171293_
                                                   (lambda (_tl171288_
                                                            _hd171289_)
                                                     (let ((__tmp176603
                                                            (lambda (_vars171291_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur171155_
                         _tl171288_
                         _vars171291_
                         _$tl171273_
                         _E171249_
                         _k171250_)))))
               (declare (not safe))
               (_recur171155_
                _hd171289_
                _vars171247_
                _$hd171272_
                _E171249_
                __tmp176603)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body171274171281_))
                                                 (let ((_hd171278171296_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body171274171281_)))
                                                       (_tl171279171298_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body171274171281_))))
                                                   (let* ((_hd171301_
                                                           _hd171278171296_)
                                                          (_tl171303_
                                                           _tl171279171298_))
                                                     (declare (not safe))
                                                     (_K171277171293_
                                                      _tl171303_
                                                      _hd171301_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E171276171285_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp176604
                                       __tmp176602))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp176614
                                __tmp176601))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp176619 __tmp176600 _E171249_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e171268_))
                        (let* ((_body171304171311_ _body171265_)
                               (_E171306171315_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body171304171311_)))
                               (_K171307171366_
                                (lambda (_tl171318_ _hd171319_)
                                  (let* ((_rlen171321_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen171156_ _tl171318_)))
                                         (_$target171323_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd171325_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl171327_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp171329_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e171331_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd171333_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl171335_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars171337_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars171157_ _hd171319_)))
                                         (_lvars171339_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars171337_)))
                                         (_tlvars171341_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars171337_)))
                                         (_linit171345_
                                          (map (lambda (_var171343_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars171339_)))
                                    (letrec ((_make-loop171348_
                                              (lambda (_vars171352_)
                                                (let ((__tmp176551
                                                       (let ((__tmp176552
                                                              (let ((__tmp176588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp171329_ '())))
                            (__tmp176553
                             (let ((__tmp176554
                                    (let ((__tmp176587
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd171325_ _lvars171339_)))
                                          (__tmp176555
                                           (let ((__tmp176586
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd171325_)))
                                                 (__tmp176564
                                                  (let ((__tmp176581
                                                         (let ((__tmp176582
                                                                (let ((__tmp176585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e171331_ '())))
                              (__tmp176583
                               (let ((__tmp176584
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e170977_
                                         _$hd171325_))))
                                 (declare (not safe))
                                 (cons __tmp176584 '()))))
                          (declare (not safe))
                          (cons __tmp176585 __tmp176583))))
                   (declare (not safe))
                   (cons __tmp176582 '())))
                (__tmp176565
                 (let ((__tmp176571
                        (let ((__tmp176577
                               (let ((__tmp176580
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd171333_ '())))
                                     (__tmp176578
                                      (let ((__tmp176579
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e171331_))))
                                        (declare (not safe))
                                        (cons __tmp176579 '()))))
                                 (declare (not safe))
                                 (cons __tmp176580 __tmp176578)))
                              (__tmp176572
                               (let ((__tmp176573
                                      (let ((__tmp176576
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl171335_ '())))
                                            (__tmp176574
                                             (let ((__tmp176575
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e171331_))))
                                               (declare (not safe))
                                               (cons __tmp176575 '()))))
                                        (declare (not safe))
                                        (cons __tmp176576 __tmp176574))))
                                 (declare (not safe))
                                 (cons __tmp176573 '()))))
                          (declare (not safe))
                          (cons __tmp176577 __tmp176572)))
                       (__tmp176566
                        (let ((__tmp176567
                               (lambda (_hdvars171354_)
                                 (let ((__tmp176568
                                        (let ((__tmp176569
                                               (map (lambda (_svar171356_
                                                             _lvar171357_)
                                                      (let ((__tmp176570
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar171356_ _hdvars171354_ _BUG171154_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp176570 _lvar171357_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars171337_
                                                    _lvars171339_)))
                                          (declare (not safe))
                                          (cons _$lp-tl171335_ __tmp176569))))
                                   (declare (not safe))
                                   (cons _$lp171329_ __tmp176568)))))
                          (declare (not safe))
                          (_recur171155_
                           _hd171319_
                           '()
                           _$lp-hd171333_
                           _E171249_
                           __tmp176567))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp176571 __tmp176566))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp176581
                                                     __tmp176565)))
                                                 (__tmp176556
                                                  (let ((__tmp176560
                                                         (map (lambda (_lvar171359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar171360_)
                        (let ((__tmp176563
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar171360_ '())))
                              (__tmp176561
                               (let ((__tmp176562
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar171359_))))
                                 (declare (not safe))
                                 (cons __tmp176562 '()))))
                          (declare (not safe))
                          (cons __tmp176563 __tmp176561)))
                      _lvars171339_
                      _tlvars171341_))
                (__tmp176557
                 (_k171250_
                  (let ((__tmp176558
                         (lambda (_svar171362_ _tlvar171363_ _r171364_)
                           (let ((__tmp176559
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar171362_ _tlvar171363_))))
                             (declare (not safe))
                             (cons __tmp176559 _r171364_)))))
                    (declare (not safe))
                    (foldl2 __tmp176558
                            _vars171352_
                            _svars171337_
                            _tlvars171341_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp176560
                                                     __tmp176557))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp176586
                                              __tmp176564
                                              __tmp176556))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp176587
                                       __tmp176555))))
                               (declare (not safe))
                               (cons __tmp176554 '()))))
                        (declare (not safe))
                        (cons __tmp176588 __tmp176553))))
                 (declare (not safe))
                 (cons __tmp176552 '())))
              (__tmp176549
               (let ((__tmp176550
                      (let ()
                        (declare (not safe))
                        (cons _$target171323_ _linit171345_))))
                 (declare (not safe))
                 (cons _$lp171329_ __tmp176550))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp176551
                                                   __tmp176549)))))
                                      (let ((_body171350_
                                             (let ((__tmp176590
                                                    (let ((__tmp176591
                                                           (let ((__tmp176594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176595
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl171327_ '()))))
                            (declare (not safe))
                            (cons _$target171323_ __tmp176595)))
                         (__tmp176592
                          (let ((__tmp176593
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target171248_
                                    _rlen171321_))))
                            (declare (not safe))
                            (cons __tmp176593 '()))))
                     (declare (not safe))
                     (cons __tmp176594 __tmp176592))))
              (declare (not safe))
              (cons __tmp176591 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp176589
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur171155_
                                                       _tl171318_
                                                       _vars171247_
                                                       _$tl171327_
                                                       _E171249_
                                                       _make-loop171348_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp176590
                                                __tmp176589))))
                                        (let ((__tmp176599
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target171248_)))
                                              (__tmp176596
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen171321_))
                                                   _body171350_
                                                   (let ((__tmp176597
                                                          (let ((__tmp176598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target171248_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp176598 _rlen171321_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp176597
                                                      _body171350_
                                                      _E171249_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp176599
                                           __tmp176596
                                           _E171249_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body171304171311_))
                              (let ((_hd171308171369_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body171304171311_)))
                                    (_tl171309171371_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body171304171311_))))
                                (let* ((_hd171374_ _hd171308171369_)
                                       (_tl171376_ _tl171309171371_))
                                  (declare (not safe))
                                  (_K171307171366_ _tl171376_ _hd171374_)))
                              (let () (declare (not safe)) (_E171306171315_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e171268_))
                            (let ((__tmp176548
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target171248_)))
                                  (__tmp176547 (_k171250_ _vars171247_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp176548
                               __tmp176547
                               _E171249_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e171268_))
                                (let ((_$e171378_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp176546
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target171248_)))
                                        (__tmp176538
                                         (let ((__tmp176540
                                                (let ((__tmp176541
                                                       (let ((__tmp176545
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e171378_ '())))
                     (__tmp176542
                      (let ((__tmp176543
                             (let ((__tmp176544
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e170977_
                                       _target171248_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp176544))))
                        (declare (not safe))
                        (cons __tmp176543 '()))))
                 (declare (not safe))
                 (cons __tmp176545 __tmp176542))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp176541 '())))
                                               (__tmp176539
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur171155_
                                                   _body171265_
                                                   _vars171247_
                                                   _$e171378_
                                                   _E171249_
                                                   _k171250_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp176540
                                            __tmp176539))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp176546
                                     __tmp176538
                                     _E171249_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e171268_))
                                    (let ((_$e171380_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp176537
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target171248_)))
                                            (__tmp176529
                                             (let ((__tmp176531
                                                    (let ((__tmp176532
                                                           (let ((__tmp176536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e171380_ '())))
                         (__tmp176533
                          (let ((__tmp176534
                                 (let ((__tmp176535
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e170977_
                                           _target171248_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp176535))))
                            (declare (not safe))
                            (cons __tmp176534 '()))))
                     (declare (not safe))
                     (cons __tmp176536 __tmp176533))))
              (declare (not safe))
              (cons __tmp176532 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp176530
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur171155_
                                                       _body171265_
                                                       _vars171247_
                                                       _$e171380_
                                                       _E171249_
                                                       _k171250_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp176531
                                                __tmp176530))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp176537
                                         __tmp176529
                                         _E171249_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e171268_))
                                        (let ((_$e171382_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp176528
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target171248_)))
                                                (__tmp176519
                                                 (let ((__tmp176523
                                                        (let ((__tmp176524
                                                               (let ((__tmp176527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e171382_ '())))
                             (__tmp176525
                              (let ((__tmp176526
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target171248_))))
                                (declare (not safe))
                                (cons __tmp176526 '()))))
                         (declare (not safe))
                         (cons __tmp176527 __tmp176525))))
                  (declare (not safe))
                  (cons __tmp176524 '())))
               (__tmp176520
                (let ((__tmp176522
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e171382_ _body171265_)))
                      (__tmp176521 (_k171250_ _vars171247_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp176522 __tmp176521 _E171249_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp176523
                                                    __tmp176520))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp176528
                                             __tmp176519
                                             _E171249_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG171154_ _e171246_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e171251171258_))
                                      (let ((_hd171255171387_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e171251171258_)))
                                            (_tl171256171389_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e171251171258_))))
                                        (let* ((_tag171392_ _hd171255171387_)
                                               (_body171394_ _tl171256171389_))
                                          (declare (not safe))
                                          (_K171254171384_
                                           _body171394_
                                           _tag171392_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E171253171262_))))))
                             (_splice-rlen171156_
                              (lambda (_e171208_)
                                (let _lp171210_ ((_e171212_ _e171208_)
                                                 (_n171213_ '0))
                                  (let* ((_e171214171221_ _e171212_)
                                         (_E171216171225_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e171214171221_)))
                                         (_K171217171234_
                                          (lambda (_body171228_ _tag171229_)
                                            (let ((_$e171231_ _tag171229_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e171231_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx170975_
                                                     _where171147_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e171231_))
                                                      (let ((__tmp176627
                                                             (cdr _body171228_))
                                                            (__tmp176626
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n171213_ '1))))
                (declare (not safe))
                (_lp171210_ __tmp176627 __tmp176626))
              _n171213_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e171214171221_))
                                        (let ((_hd171218171237_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e171214171221_)))
                                              (_tl171219171239_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e171214171221_))))
                                          (let* ((_tag171242_ _hd171218171237_)
                                                 (_body171244_
                                                  _tl171219171239_))
                                            (declare (not safe))
                                            (_K171217171234_
                                             _body171244_
                                             _tag171242_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E171216171225_)))))))
                             (_splice-vars171157_
                              (lambda (_e171164_)
                                (let _recur171166_ ((_e171168_ _e171164_)
                                                    (_vars171169_ '()))
                                  (let* ((_e171170171177_ _e171168_)
                                         (_E171172171181_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e171170171177_)))
                                         (_K171173171196_
                                          (lambda (_body171184_ _tag171185_)
                                            (let ((_$e171187_ _tag171185_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e171187_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body171184_
                                                          _vars171169_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e171187_))
                  (let () (declare (not safe)) (eq? 'splice _$e171187_)))
              (let ((__tmp176630 (cdr _body171184_))
                    (__tmp176628
                     (let ((__tmp176629 (car _body171184_)))
                       (declare (not safe))
                       (_recur171166_ __tmp176629 _vars171169_))))
                (declare (not safe))
                (_recur171166_ __tmp176630 __tmp176628))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e171187_))
                      (let () (declare (not safe)) (eq? 'box _$e171187_)))
                  (let ()
                    (declare (not safe))
                    (_recur171166_ _body171184_ _vars171169_))
                  _vars171169_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e171170171177_))
                                        (let ((_hd171174171199_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e171170171177_)))
                                              (_tl171175171201_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e171170171177_))))
                                          (let* ((_tag171204_ _hd171174171199_)
                                                 (_body171206_
                                                  _tl171175171201_))
                                            (declare (not safe))
                                            (_K171173171196_
                                             _body171206_
                                             _tag171204_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E171172171181_)))))))
                             (_make-body171158_
                              (lambda (_vars171160_)
                                (let ((__tmp176631
                                       (map (lambda (_mvar171162_)
                                              (let ((__tmp176632
                                                     (car _mvar171162_)))
                                                (declare (not safe))
                                                (assgetq __tmp176632
                                                         _vars171160_
                                                         _BUG171154_)))
                                            _mvars171150_)))
                                  (declare (not safe))
                                  (cons _K171151_ __tmp176631)))))
                      (let ()
                        (declare (not safe))
                        (_recur171155_
                         _hd171149_
                         '()
                         _target171148_
                         _E171152_
                         _make-body171158_)))))
                 (_parse-clause170984_
                  (lambda (_hd171053_ _ids171054_)
                    (let _recur171056_ ((_e171058_ _hd171053_)
                                        (_vars171059_ '())
                                        (_depth171060_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e171058_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e171058_))
                              (values '(any) _vars171059_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e171058_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx170975_
                                     _hd171053_))
                                  (if (let ((__tmp176648
                                             (lambda (_id171062_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e171058_
                                                  _id171062_)))))
                                        (declare (not safe))
                                        (find __tmp176648 _ids171054_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e171058_))
                                              _vars171059_)
                                      (if (let ((__tmp176646
                                                 (lambda (_var171064_)
                                                   (let ((__tmp176647
                                                          (car _var171064_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e171058_
                                                      __tmp176647)))))
                                            (declare (not safe))
                                            (find __tmp176646 _vars171059_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx170975_
                                             _e171058_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e171058_))
                                                  (let ((__tmp176645
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e171058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth171060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp176645
                                                          _vars171059_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e171058_))
                              (let* ((_e171065171072_ _e171058_)
                                     (_E171067171076_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e171065171072_))))
                                     (_E171066171137_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e171065171072_))
                                            (let ((_e171068171080_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e171065171072_))))
                                              (let ((_hd171069171083_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e171068171080_)))
                                                    (_tl171070171085_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e171068171080_))))
                                                (let* ((_hd171088_
                                                        _hd171069171083_)
                                                       (_rest171090_
                                                        _tl171070171085_))
                                                  (if '#t
                                                      (let* ((_make-pair171105_
                                                              (lambda (_tag171092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd171093_
                               _tl171094_)
                        (let* ((_hd-depth171096_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag171092_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth171060_ '1))
                                    _depth171060_))
                               (_g176640_
                                (let ()
                                  (declare (not safe))
                                  (_recur171056_
                                   _hd171093_
                                   _vars171059_
                                   _hd-depth171096_))))
                          (begin
                            (let ((_g176641_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g176640_)
                                         (##vector-length _g176640_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g176641_ 2)))
                                  (error "Context expects 2 values"
                                         _g176641_)))
                            (let ((_hd171098_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g176640_ 0)))
                                  (_vars171099_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g176640_ 1))))
                              (let ((_g176642_
                                     (let ()
                                       (declare (not safe))
                                       (_recur171056_
                                        _tl171094_
                                        _vars171099_
                                        _depth171060_))))
                                (begin
                                  (let ((_g176643_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g176642_)
                                               (##vector-length _g176642_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g176643_ 2)))
                                        (error "Context expects 2 values"
                                               _g176643_)))
                                  (let ((_tl171101_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g176642_ 0)))
                                        (_vars171102_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g176642_ 1))))
                                    (let ()
                                      (values (let ((__tmp176644
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd171098_
                                                             _tl171101_))))
                                                (declare (not safe))
                                                (cons _tag171092_ __tmp176644))
                                              _vars171102_))))))))))
                     (_e171106171113_ _rest171090_)
                     (_E171108171117_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair171105_ 'cons _hd171088_ _rest171090_))))
                     (_E171107171133_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e171106171113_))
                            (let ((_e171109171121_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e171106171113_))))
                              (let ((_hd171110171124_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e171109171121_)))
                                    (_tl171111171126_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e171109171121_))))
                                (let* ((_rest-hd171129_ _hd171110171124_)
                                       (_rest-tl171131_ _tl171111171126_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd171129_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair171105_
                                             'splice
                                             _hd171088_
                                             _rest-tl171131_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair171105_
                                             'cons
                                             _hd171088_
                                             _rest171090_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E171108171117_))))))
                            (let () (declare (not safe)) (_E171108171117_))))))
                (let () (declare (not safe)) (_E171107171133_)))
              (let () (declare (not safe)) (_E171067171076_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E171067171076_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E171066171137_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e171058_))
                                  (values '(null) _vars171059_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e171058_))
                                      (let ((_g176637_
                                             (let ((__tmp176639
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e171058_)))))
                                               (declare (not safe))
                                               (_recur171056_
                                                __tmp176639
                                                _vars171059_
                                                _depth171060_))))
                                        (begin
                                          (let ((_g176638_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g176637_)
                                                       (##vector-length
                                                        _g176637_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g176638_ 2)))
                                                (error "Context expects 2 values"
                                                       _g176638_)))
                                          (let ((_e171141_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g176637_ 0)))
                                                (_vars171142_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g176637_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e171141_))
                                                    _vars171142_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e171058_))
                                          (let ((_g176634_
                                                 (let ((__tmp176636
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e171058_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur171056_
                                                    __tmp176636
                                                    _vars171059_
                                                    _depth171060_))))
                                            (begin
                                              (let ((_g176635_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g176634_)
                                                           (##vector-length
                                                            _g176634_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g176635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g176635_)))
                                              (let ((_e171144_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g176634_
                                                        0)))
                                                    (_vars171145_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g176634_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e171144_))
                                                        _vars171145_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e171058_))
                                              (values (let ((__tmp176633
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e171058_))))
                (declare (not safe))
                (cons 'datum __tmp176633))
              _vars171059_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx170975_
                                                 _e171058_))))))))))))
          (let* ((_e170985170998_ _stx170975_)
                 (_E170987171002_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e170985170998_))))
                 (_E170986171049_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e170985170998_))
                        (let ((_e170988171006_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e170985170998_))))
                          (let ((_hd170989171009_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e170988171006_)))
                                (_tl170990171011_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e170988171006_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl170990171011_))
                                (let ((_e170991171014_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl170990171011_))))
                                  (let ((_hd170992171017_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e170991171014_)))
                                        (_tl170993171019_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e170991171014_))))
                                    (let ((_expr171022_ _hd170992171017_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl170993171019_))
                                          (let ((_e170994171024_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl170993171019_))))
                                            (let ((_hd170995171027_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e170994171024_)))
                                                  (_tl170996171029_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e170994171024_))))
                                              (let* ((_ids171032_
                                                      _hd170995171027_)
                                                     (_clauses171034_
                                                      _tl170996171029_))
                                                (if '#t
                                                    (if (let ((__tmp176666
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids171032_))))
                  (declare (not safe))
                  (not __tmp176666))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx170975_
                   _ids171032_))
                (if (let ((__tmp176665
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses171034_))))
                      (declare (not safe))
                      (not __tmp176665))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx170975_))
                    (let* ((_ids171036_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids171032_)))
                           (_clauses171038_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses171034_)))
                           (_clause-ids171040_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses171038_)))
                           (_E171042_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target171044_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first171046_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses171038_))
                                _E171042_
                                (car _clause-ids171040_))))
                      (let ((__tmp176650
                             (let ((__tmp176651
                                    (let ((__tmp176653
                                           (let ((__tmp176658
                                                  (let ((__tmp176659
                                                         (let ((__tmp176664
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E171042_ '())))
                       (__tmp176660
                        (let ((__tmp176661
                               (let ((__tmp176663
                                      (let ()
                                        (declare (not safe))
                                        (cons _target171044_ '())))
                                     (__tmp176662
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target171044_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp176663
                                  __tmp176662))))
                          (declare (not safe))
                          (cons __tmp176661 '()))))
                   (declare (not safe))
                   (cons __tmp176664 __tmp176660))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp176659 '())))
                                                 (__tmp176654
                                                  (let ((__tmp176657
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings170980_
                                                            _target171044_
                                                            _ids171036_
                                                            _clauses171038_
                                                            _clause-ids171040_
                                                            _E171042_)))
                                                        (__tmp176655
                                                         (let ((__tmp176656
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr171022_ '()))))
                   (declare (not safe))
                   (cons _first171046_ __tmp176656))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body170981_
                                                     __tmp176657
                                                     __tmp176655))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp176658
                                              __tmp176654)))
                                          (__tmp176652
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx170975_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp176653
                                       __tmp176652))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp176651)))
                            (__tmp176649
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx170975_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp176650 __tmp176649)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E170987171002_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E170987171002_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E170987171002_)))))
                        (let () (declare (not safe)) (_E170987171002_))))))
            (let () (declare (not safe)) (_E170986171049_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx171685_)
        (let* ((_identifier=?171687_ 'free-identifier=?)
               (_unwrap-e171689_ 'syntax-e)
               (_wrap-e171691_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx171685_
           _identifier=?171687_
           _unwrap-e171689_
           _wrap-e171691_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx171693_ _identifier=?171694_)
        (let* ((_unwrap-e171696_ 'syntax-e) (_wrap-e171698_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx171693_
           _identifier=?171694_
           _unwrap-e171696_
           _wrap-e171698_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx171700_ _identifier=?171701_ _unwrap-e171702_)
        (let ((_wrap-e171704_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx171700_
           _identifier=?171701_
           _unwrap-e171702_
           _wrap-e171704_))))
    (define gx#macro-expand-syntax-case
      (lambda _g176668_
        (let ((_g176667_ (let () (declare (not safe)) (##length _g176668_))))
          (cond ((let () (declare (not safe)) (##fx= _g176667_ 1))
                 (apply (lambda (_stx171685_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx171685_)))
                        _g176668_))
                ((let () (declare (not safe)) (##fx= _g176667_ 2))
                 (apply (lambda (_stx171693_ _identifier=?171694_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx171693_
                             _identifier=?171694_)))
                        _g176668_))
                ((let () (declare (not safe)) (##fx= _g176667_ 3))
                 (apply (lambda (_stx171700_
                                 _identifier=?171701_
                                 _unwrap-e171702_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx171700_
                             _identifier=?171701_
                             _unwrap-e171702_)))
                        _g176668_))
                ((let () (declare (not safe)) (##fx= _g176667_ 4))
                 (apply (lambda (_stx171706_
                                 _identifier=?171707_
                                 _unwrap-e171708_
                                 _wrap-e171709_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx171706_
                             _identifier=?171707_
                             _unwrap-e171708_
                             _wrap-e171709_)))
                        _g176668_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g176668_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx170972_)
        (if (let () (declare (not safe)) (gx#identifier? _stx170972_))
            (let ((__tmp176669
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx170972_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp176669 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd170930_ . _rest170931_)
        (let ((_len170933_ (length _hd170930_)))
          (let _lp170935_ ((_rest170937_ _rest170931_))
            (let* ((_rest170938170946_ _rest170937_)
                   (_else170940170954_ (lambda () '#!void))
                   (_K170942170960_
                    (lambda (_rest170957_ _hd170958_)
                      (if (fx= _len170933_ (length _hd170958_))
                          (let ()
                            (declare (not safe))
                            (_lp170935_ _rest170957_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd170958_))))))
              (if (let () (declare (not safe)) (##pair? _rest170938170946_))
                  (let ((_hd170943170963_
                         (let ()
                           (declare (not safe))
                           (##car _rest170938170946_)))
                        (_tl170944170965_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest170938170946_))))
                    (let* ((_hd170968_ _hd170943170963_)
                           (_rest170970_ _tl170944170965_))
                      (declare (not safe))
                      (_K170942170960_ _rest170970_ _hd170968_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx170888_ _n170889_)
        (let _lp170891_ ((_rest170893_ _stx170888_) (_r170894_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest170893_))
              (let* ((_g170895170902_
                      (let () (declare (not safe)) (gx#syntax-e _rest170893_)))
                     (_E170897170906_
                      (lambda ()
                        (error '"No clause matching" _g170895170902_)))
                     (_K170898170912_
                      (lambda (_rest170909_ _hd170910_)
                        (let ((__tmp176674
                               (let ()
                                 (declare (not safe))
                                 (cons _hd170910_ _r170894_))))
                          (declare (not safe))
                          (_lp170891_ _rest170909_ __tmp176674)))))
                (if (let () (declare (not safe)) (##pair? _g170895170902_))
                    (let ((_hd170899170915_
                           (let ()
                             (declare (not safe))
                             (##car _g170895170902_)))
                          (_tl170900170917_
                           (let ()
                             (declare (not safe))
                             (##cdr _g170895170902_))))
                      (let* ((_hd170920_ _hd170899170915_)
                             (_rest170922_ _tl170900170917_))
                        (declare (not safe))
                        (_K170898170912_ _rest170922_ _hd170920_)))
                    (let () (declare (not safe)) (_E170897170906_))))
              (let _lp170924_ ((_n170926_ _n170889_)
                               (_l170927_ _r170894_)
                               (_r170928_ _rest170893_))
                (if (let () (declare (not safe)) (null? _l170927_))
                    (values _l170927_ _r170928_)
                    (if (fxpositive? _n170926_)
                        (let ((__tmp176673
                               (let ()
                                 (declare (not safe))
                                 (fx- _n170926_ '1)))
                              (__tmp176672 (cdr _l170927_))
                              (__tmp176670
                               (let ((__tmp176671 (car _l170927_)))
                                 (declare (not safe))
                                 (cons __tmp176671 _r170928_))))
                          (declare (not safe))
                          (_lp170924_ __tmp176673 __tmp176672 __tmp176670))
                        (values (reverse _l170927_) _r170928_))))))))))
