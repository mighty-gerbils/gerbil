(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707552288)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp176430
             (let ((__tmp176431
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp176431 '()))))
        (declare (not safe))
        (make-struct-type*
         'gx#syntax-pattern::t
         'syntax-pattern
         gx#expander::t
         '(id depth)
         __tmp176430
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-struct-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args172233_
        (apply make-struct-instance gx#syntax-pattern::t _$args172233_)))
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
      (lambda (_self172230_ _stx172231_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx172231_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx171712_)
        (letrec ((_generate171714_
                  (lambda (_e171941_)
                    (letrec ((_BUG171943_
                              (lambda (_q172105_)
                                (error '"BUG: syntax; generate"
                                       _stx171712_
                                       _e171941_
                                       _q172105_)))
                             (_local-pattern-e171944_
                              (lambda (_pat172103_)
                                (let ((__tmp176432
                                       (##structure-ref
                                        _pat172103_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp176432))))
                             (_getvar171945_
                              (lambda (_q172100_ _vars172101_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q172100_
                                           _vars172101_
                                           _BUG171943_))))
                             (_getarg171946_
                              (lambda (_arg172066_ _vars172067_)
                                (let* ((_arg172068172075_ _arg172066_)
                                       (_E172070172079_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg172068172075_)))
                                       (_K172071172088_
                                        (lambda (_e172082_ _tag172083_)
                                          (let ((_$e172085_ _tag172083_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e172085_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar171945_
                                                   _e172082_
                                                   _vars172067_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e172085_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e171944_
                                                       _e172082_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG171943_
                                                       _arg172066_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg172068172075_))
                                      (let ((_hd172072172091_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg172068172075_)))
                                            (_tl172073172093_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg172068172075_))))
                                        (let* ((_tag172096_ _hd172072172091_)
                                               (_e172098_ _tl172073172093_))
                                          (declare (not safe))
                                          (_K172071172088_
                                           _e172098_
                                           _tag172096_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E172070172079_)))))))
                      (let _recur171948_ ((_e171950_ _e171941_)
                                          (_vars171951_ '()))
                        (let* ((_e171952171959_ _e171950_)
                               (_E171954171963_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e171952171959_)))
                               (_K171955172054_
                                (lambda (_body171966_ _tag171967_)
                                  (let ((_$e171969_ _tag171967_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e171969_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body171966_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e171969_))
                                            (let ((_id171972_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body171966_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id171972_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks171974_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id171972_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks171974_))
                                                        (let ((__tmp176460
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body171966_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp176460))
                (let ((__tmp176459
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body171966_)))
                      (__tmp176458
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body171966_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp176459
                   __tmp176458
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id171972_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body171966_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG171943_
                                                         _e171950_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e171969_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e171944_
                                                   _body171966_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e171969_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar171945_
                                                       _body171966_
                                                       _vars171951_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e171969_))
                                                        (let ((__tmp176456
                                                               (let ((__tmp176457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body171966_)))
                         (declare (not safe))
                         (_recur171948_ __tmp176457 _vars171951_)))
                      (__tmp176454
                       (let ((__tmp176455 (cdr _body171966_)))
                         (declare (not safe))
                         (_recur171948_ __tmp176455 _vars171951_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp176456 __tmp176454))
                (if (let () (declare (not safe)) (eq? 'vector _$e171969_))
                    (let ((__tmp176453
                           (let ()
                             (declare (not safe))
                             (_recur171948_ _body171966_ _vars171951_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp176453))
                    (if (let () (declare (not safe)) (eq? 'box _$e171969_))
                        (let ((__tmp176452
                               (let ()
                                 (declare (not safe))
                                 (_recur171948_ _body171966_ _vars171951_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp176452))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e171969_))
                            (let* ((_body171975171986_ _body171966_)
                                   (_E171977171990_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body171975171986_)))
                                   (_K171978172028_
                                    (lambda (_args171993_
                                             _iv171994_
                                             _hd171995_
                                             _depth171996_)
                                      (let* ((_targets172002_
                                              (map (lambda (_g171997171999_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg171946_
                                                        _g171997171999_
                                                        _vars171951_)))
                                                   _args171993_))
                                             (_fold-in172004_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args171993_)))
                                             (_fold-out172006_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args172008_
                                              (let ((__tmp176433
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out172006_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp176433
                                                        _fold-in172004_)))
                                             (_lambda-body172025_
                                              (if (fx> _depth171996_ '1)
                                                  (let ((_r-args172016_
                                                         (map (lambda (_arg172010_)
                                                                (let ((__tmp176438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg172010_)))
                          (declare (not safe))
                          (cons 'ref __tmp176438)))
                      _args171993_))
                (_r-vars172017_
                 (let ((__tmp176439
                        (lambda (_arg172012_ _var172013_ _r172014_)
                          (let ((__tmp176440
                                 (let ((__tmp176441 (cdr _arg172012_)))
                                   (declare (not safe))
                                   (cons __tmp176441 _var172013_))))
                            (declare (not safe))
                            (cons __tmp176440 _r172014_)))))
                   (declare (not safe))
                   (foldr2 __tmp176439
                           _vars171951_
                           _args171993_
                           _fold-in172004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp176442
                                                           (let ((__tmp176443
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176447
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth171996_ '1)))
                                (__tmp176444
                                 (let ((__tmp176445
                                        (let ((__tmp176446
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out172006_))))
                                          (declare (not safe))
                                          (cons __tmp176446 _r-args172016_))))
                                   (declare (not safe))
                                   (cons _hd171995_ __tmp176445))))
                            (declare (not safe))
                            (cons __tmp176447 __tmp176444))))
                     (declare (not safe))
                     (cons 'splice __tmp176443))))
              (declare (not safe))
              (_recur171948_ __tmp176442 _r-vars172017_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars172023_
                                                          (let ((__tmp176434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg172019_ _var172020_ _r172021_)
                           (let ((__tmp176435
                                  (let ((__tmp176436 (cdr _arg172019_)))
                                    (declare (not safe))
                                    (cons __tmp176436 _var172020_))))
                             (declare (not safe))
                             (cons __tmp176435 _r172021_)))))
                    (declare (not safe))
                    (foldr2 __tmp176434
                            _vars171951_
                            _args171993_
                            _fold-in172004_)))
                 (__tmp176437
                  (let ()
                    (declare (not safe))
                    (_recur171948_ _hd171995_ _hd-vars172023_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp176437
                                                     _fold-out172006_)))))
                                        (let ((__tmp176451
                                               (if (fx> (length _targets172002_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets172002_))
                                                   '#!void))
                                              (__tmp176448
                                               (let ((__tmp176450
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args172008_
                                                         _lambda-body172025_)))
                                                     (__tmp176449
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur171948_
                                                         _iv171994_
                                                         _vars171951_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp176450
                                                  __tmp176449
                                                  _targets172002_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp176451
                                           __tmp176448))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body171975171986_))
                                  (let ((_hd171979172031_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body171975171986_)))
                                        (_tl171980172033_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body171975171986_))))
                                    (let ((_depth172036_ _hd171979172031_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl171980172033_))
                                          (let ((_hd171981172038_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl171980172033_)))
                                                (_tl171982172040_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl171980172033_))))
                                            (let ((_hd172043_
                                                   _hd171981172038_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl171982172040_))
                                                  (let ((_hd171983172045_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl171982172040_)))
                                                        (_tl171984172047_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl171982172040_))))
                                                    (let* ((_iv172050_
                                                            _hd171983172045_)
                                                           (_args172052_
                                                            _tl171984172047_))
                                                      (declare (not safe))
                                                      (_K171978172028_
                                                       _args172052_
                                                       _iv172050_
                                                       _hd172043_
                                                       _depth172036_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E171977171990_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E171977171990_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E171977171990_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e171969_))
                                _body171966_
                                (let ()
                                  (declare (not safe))
                                  (_BUG171943_ _e171950_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e171952171959_))
                              (let ((_hd171956172057_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e171952171959_)))
                                    (_tl171957172059_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e171952171959_))))
                                (let* ((_tag172062_ _hd171956172057_)
                                       (_body172064_ _tl171957172059_))
                                  (declare (not safe))
                                  (_K171955172054_ _body172064_ _tag172062_)))
                              (let ()
                                (declare (not safe))
                                (_E171954171963_))))))))
                 (_parse171715_
                  (lambda (_e171756_)
                    (letrec ((_make-cons171758_
                              (lambda (_hd171933_ _tl171934_)
                                (let ((_g176461_ _hd171933_)
                                      (_g176463_ _tl171934_))
                                  (begin
                                    (let ((_g176462_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176461_)
                                                 (##vector-length _g176461_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176462_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176462_)))
                                    (let ((_g176464_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176463_)
                                                 (##vector-length _g176463_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176464_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176464_)))
                                    (let ((_hd-e171936_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176461_ 0)))
                                          (_hd-vars171937_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176461_ 1))))
                                      (let ((_tl-e171938_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g176463_ 0)))
                                            (_tl-vars171939_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g176463_ 1))))
                                        (values (let ((__tmp176465
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e171936_
                                                               _tl-e171938_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp176465))
                                                (append _hd-vars171937_
                                                        _tl-vars171939_))))))))
                             (_make-splice171759_
                              (lambda (_where171872_
                                       _depth171873_
                                       _hd171874_
                                       _tl171875_)
                                (let ((_g176466_ _hd171874_)
                                      (_g176468_ _tl171875_))
                                  (begin
                                    (let ((_g176467_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176466_)
                                                 (##vector-length _g176466_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176467_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176467_)))
                                    (let ((_g176469_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176468_)
                                                 (##vector-length _g176468_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176469_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176469_)))
                                    (let ((_hd-e171877_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176466_ 0)))
                                          (_hd-vars171878_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176466_ 1))))
                                      (let ((_tl-e171879_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g176468_ 0)))
                                            (_tl-vars171880_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g176468_ 1))))
                                        (let _lp171882_ ((_rest171884_
                                                          _hd-vars171878_)
                                                         (_targets171885_ '())
                                                         (_vars171886_
                                                          _tl-vars171880_))
                                          (let* ((_rest171887171897_
                                                  _rest171884_)
                                                 (_else171889171905_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets171885_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx171712_
                                                           _where171872_))
                                                        (values (let ((__tmp176470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp176471
                                      (let ((__tmp176472
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e171879_
                                                     _targets171885_))))
                                        (declare (not safe))
                                        (cons _hd-e171877_ __tmp176472))))
                                 (declare (not safe))
                                 (cons _depth171873_ __tmp176471))))
                          (declare (not safe))
                          (cons 'splice __tmp176470))
                        _vars171886_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K171891171914_
                                                  (lambda (_rest171908_
                                                           _hd-pat171909_
                                                           _hd-depth*171910_)
                                                    (let ((_hd-depth171912_
                                                           (fx- _hd-depth*171910_
                                                                _depth171873_)))
                                                      (if (fxpositive?
                                                           _hd-depth171912_)
                                                          (let ((__tmp176477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp176478
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat171909_))))
                           (declare (not safe))
                           (cons __tmp176478 _targets171885_)))
                        (__tmp176475
                         (let ((__tmp176476
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth171912_ _hd-pat171909_))))
                           (declare (not safe))
                           (cons __tmp176476 _vars171886_))))
                    (declare (not safe))
                    (_lp171882_ _rest171908_ __tmp176477 __tmp176475))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth171912_))
                      (let ((__tmp176473
                             (let ((__tmp176474
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat171909_))))
                               (declare (not safe))
                               (cons __tmp176474 _targets171885_))))
                        (declare (not safe))
                        (_lp171882_ _rest171908_ __tmp176473 _vars171886_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx171712_
                         _where171872_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest171887171897_))
                                                (let ((_hd171892171917_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest171887171897_)))
                                                      (_tl171893171919_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest171887171897_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd171892171917_))
                                                      (let ((_hd171894171922_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd171892171917_)))
                    (_tl171895171924_
                     (let () (declare (not safe)) (##cdr _hd171892171917_))))
                (let* ((_hd-depth*171927_ _hd171894171922_)
                       (_hd-pat171929_ _tl171895171924_)
                       (_rest171931_ _tl171893171919_))
                  (declare (not safe))
                  (_K171891171914_
                   _rest171931_
                   _hd-pat171929_
                   _hd-depth*171927_)))
              (let () (declare (not safe)) (_else171889171905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else171889171905_)))))))))))
                             (_recur171760_
                              (lambda (_e171765_ _is-e?171766_)
                                (if (_is-e?171766_ _e171765_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx171712_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e171765_))
                                        (let* ((_pat171768_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e171765_)))
                                               (_depth171770_
                                                (##structure-ref
                                                 _pat171768_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth171770_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat171768_))
                                                      (let ((__tmp176494
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth171770_ _pat171768_))))
                (declare (not safe))
                (cons __tmp176494 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat171768_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e171765_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e171765_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e171765_))
                                                (let* ((_e171772171779_
                                                        _e171765_)
                                                       (_E171774171783_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e171772171779_))))
                                                       (_E171773171862_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e171772171779_))
                      (let ((_e171775171787_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e171772171779_))))
                        (let ((_hd171776171790_
                               (let ()
                                 (declare (not safe))
                                 (##car _e171775171787_)))
                              (_tl171777171792_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e171775171787_))))
                          (let* ((_hd171795_ _hd171776171790_)
                                 (_rest171797_ _tl171777171792_))
                            (if '#t
                                (if (_is-e?171766_ _hd171795_)
                                    (let* ((_e171798171805_ _rest171797_)
                                           (_E171800171809_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx171712_
                                                 _e171765_))))
                                           (_E171799171823_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e171798171805_))
                                                  (let ((_e171801171813_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e171798171805_))))
                                                    (let ((_hd171802171816_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e171801171813_)))
                                                          (_tl171803171818_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e171801171813_))))
                                                      (let ((_rest171821_
                                                             _hd171802171816_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl171803171818_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur171760_ _rest171821_ false))
                        (let () (declare (not safe)) (_E171800171809_)))
                    (let () (declare (not safe)) (_E171800171809_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E171800171809_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E171799171823_)))
                                    (let _lp171827_ ((_rest171829_
                                                      _rest171797_)
                                                     (_depth171830_ '0))
                                      (let* ((_e171831171838_ _rest171829_)
                                             (_E171833171842_
                                              (lambda ()
                                                (if (fxpositive? _depth171830_)
                                                    (let ((__tmp176488
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur171760_
                                                              _hd171795_
                                                              _is-e?171766_)))
                                                          (__tmp176487
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur171760_
                                                              _rest171829_
                                                              _is-e?171766_))))
                                                      (declare (not safe))
                                                      (_make-splice171759_
                                                       _e171765_
                                                       _depth171830_
                                                       __tmp176488
                                                       __tmp176487))
                                                    (let ((__tmp176486
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur171760_
                                                              _hd171795_
                                                              _is-e?171766_)))
                                                          (__tmp176485
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur171760_
                                                              _rest171829_
                                                              _is-e?171766_))))
                                                      (declare (not safe))
                                                      (_make-cons171758_
                                                       __tmp176486
                                                       __tmp176485)))))
                                             (_E171832171858_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e171831171838_))
                                                    (let ((_e171834171846_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e171831171838_))))
                                                      (let ((_hd171835171849_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e171834171846_)))
                    (_tl171836171851_
                     (let () (declare (not safe)) (##cdr _e171834171846_))))
                (let* ((_rest-hd171854_ _hd171835171849_)
                       (_rest-tl171856_ _tl171836171851_))
                  (if '#t
                      (if (_is-e?171766_ _rest-hd171854_)
                          (let ((__tmp176493
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth171830_ '1))))
                            (declare (not safe))
                            (_lp171827_ _rest-tl171856_ __tmp176493))
                          (if (fxpositive? _depth171830_)
                              (let ((__tmp176492
                                     (let ()
                                       (declare (not safe))
                                       (_recur171760_
                                        _hd171795_
                                        _is-e?171766_)))
                                    (__tmp176491
                                     (let ()
                                       (declare (not safe))
                                       (_recur171760_
                                        _rest171829_
                                        _is-e?171766_))))
                                (declare (not safe))
                                (_make-splice171759_
                                 _e171765_
                                 _depth171830_
                                 __tmp176492
                                 __tmp176491))
                              (let ((__tmp176490
                                     (let ()
                                       (declare (not safe))
                                       (_recur171760_
                                        _hd171795_
                                        _is-e?171766_)))
                                    (__tmp176489
                                     (let ()
                                       (declare (not safe))
                                       (_recur171760_
                                        _rest171829_
                                        _is-e?171766_))))
                                (declare (not safe))
                                (_make-cons171758_ __tmp176490 __tmp176489))))
                      (let () (declare (not safe)) (_E171833171842_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E171833171842_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E171832171858_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E171774171783_))))))
                      (let () (declare (not safe)) (_E171774171783_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E171773171862_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e171765_))
                                                    (let ((_g176482_
                                                           (let ((__tmp176484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e171765_)))))
                     (declare (not safe))
                     (_recur171760_ __tmp176484 _is-e?171766_))))
              (begin
                (let ((_g176483_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g176482_)
                             (##vector-length _g176482_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g176483_ 2)))
                      (error "Context expects 2 values" _g176483_)))
                (let ((_e171866_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g176482_ 0)))
                      (_vars171867_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g176482_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e171866_))
                          _vars171867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e171765_))
                                                        (let ((_g176479_
                                                               (let ((__tmp176481
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e171765_)))))
                         (declare (not safe))
                         (_recur171760_ __tmp176481 _is-e?171766_))))
                  (begin
                    (let ((_g176480_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g176479_)
                                 (##vector-length _g176479_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g176480_ 2)))
                          (error "Context expects 2 values" _g176480_)))
                    (let ((_e171869_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g176479_ 0)))
                          (_vars171870_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g176479_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e171869_))
                              _vars171870_))))
                (values (let () (declare (not safe)) (cons 'datum _e171765_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g176495_
                             (let ()
                               (declare (not safe))
                               (_recur171760_ _e171756_ gx#ellipsis?))))
                        (begin
                          (let ((_g176496_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g176495_)
                                       (##vector-length _g176495_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g176496_ 2)))
                                (error "Context expects 2 values" _g176496_)))
                          (let ((_tree171762_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g176495_ 0)))
                                (_vars171763_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g176495_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars171763_))
                                _tree171762_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx171712_
                                   _vars171763_))))))))))
          (let* ((_e171716171726_ _stx171712_)
                 (_E171718171730_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx171712_))))
                 (_E171717171752_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e171716171726_))
                        (let ((_e171719171734_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e171716171726_))))
                          (let ((_hd171720171737_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e171719171734_)))
                                (_tl171721171739_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e171719171734_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl171721171739_))
                                (let ((_e171722171742_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl171721171739_))))
                                  (let ((_hd171723171745_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e171722171742_)))
                                        (_tl171724171747_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e171722171742_))))
                                    (let ((_form171750_ _hd171723171745_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl171724171747_))
                                          (if '#t
                                              (let ((__tmp176498
                                                     (let ((__tmp176499
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse171715_
                                                               _form171750_))))
                                                       (declare (not safe))
                                                       (_generate171714_
                                                        __tmp176499)))
                                                    (__tmp176497
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx171712_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp176498
                                                 __tmp176497))
                                              (let ()
                                                (declare (not safe))
                                                (_E171718171730_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E171718171730_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E171718171730_)))))
                        (let () (declare (not safe)) (_E171718171730_))))))
            (let () (declare (not safe)) (_E171717171752_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx170976_
               _identifier=?170977_
               _unwrap-e170978_
               _wrap-e170979_)
        (letrec ((_generate-bindings170981_
                  (lambda (_target171576_
                           _ids171577_
                           _clauses171578_
                           _clause-ids171579_
                           _E171580_)
                    (letrec ((_generate1171582_
                              (lambda (_clause171679_
                                       _clause-id171680_
                                       _E171681_)
                                (let ((__tmp176504
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id171680_ '())))
                                      (__tmp176500
                                       (let ((__tmp176501
                                              (let ((__tmp176503
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target171576_
                                                             '())))
                                                    (__tmp176502
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause170983_
                                                        _target171576_
                                                        _ids171577_
                                                        _clause171679_
                                                        _E171681_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp176503
                                                 __tmp176502))))
                                         (declare (not safe))
                                         (cons __tmp176501 '()))))
                                  (declare (not safe))
                                  (cons __tmp176504 __tmp176500)))))
                      (let _lp171584_ ((_rest171586_ _clauses171578_)
                                       (_rest-ids171587_ _clause-ids171579_)
                                       (_bindings171588_ '()))
                        (let* ((_rest171589171597_ _rest171586_)
                               (_else171591171605_
                                (lambda () _bindings171588_))
                               (_K171593171667_
                                (lambda (_rest171608_ _clause171609_)
                                  (let* ((_rest-ids171610171617_
                                          _rest-ids171587_)
                                         (_E171612171621_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids171610171617_)))
                                         (_K171613171655_
                                          (lambda (_rest-ids171624_
                                                   _clause-id171625_)
                                            (let* ((_rest-ids171626171634_
                                                    _rest-ids171624_)
                                                   (_else171628171642_
                                                    (lambda ()
                                                      (let ((__tmp176505
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1171582_
                        _clause171609_
                        _clause-id171625_
                        _E171580_))))
                (declare (not safe))
                (cons __tmp176505 _bindings171588_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K171630171647_
                                                    (lambda (_next-clause-id171645_)
                                                      (let ((__tmp176506
                                                             (let ((__tmp176507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1171582_
                               _clause171609_
                               _clause-id171625_
                               _next-clause-id171645_))))
                       (declare (not safe))
                       (cons __tmp176507 _bindings171588_))))
                (declare (not safe))
                (_lp171584_ _rest171608_ _rest-ids171624_ __tmp176506)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids171626171634_))
                                                  (let* ((_hd171631171650_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids171626171634_)))
                                                         (_next-clause-id171653_
                                                          _hd171631171650_))
                                                    (declare (not safe))
                                                    (_K171630171647_
                                                     _next-clause-id171653_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else171628171642_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids171610171617_))
                                        (let ((_hd171614171658_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids171610171617_)))
                                              (_tl171615171660_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids171610171617_))))
                                          (let* ((_clause-id171663_
                                                  _hd171614171658_)
                                                 (_rest-ids171665_
                                                  _tl171615171660_))
                                            (declare (not safe))
                                            (_K171613171655_
                                             _rest-ids171665_
                                             _clause-id171663_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E171612171621_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest171589171597_))
                              (let ((_hd171594171670_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest171589171597_)))
                                    (_tl171595171672_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest171589171597_))))
                                (let* ((_clause171675_ _hd171594171670_)
                                       (_rest171677_ _tl171595171672_))
                                  (declare (not safe))
                                  (_K171593171667_
                                   _rest171677_
                                   _clause171675_)))
                              (let ()
                                (declare (not safe))
                                (_else171591171605_))))))))
                 (_generate-body170982_
                  (lambda (_bindings171536_ _body171537_)
                    (let _recur171539_ ((_rest171541_ _bindings171536_))
                      (let* ((_rest171542171550_ _rest171541_)
                             (_else171544171558_ (lambda () _body171537_))
                             (_K171546171564_
                              (lambda (_rest171561_ _hd171562_)
                                (let ((__tmp176509
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd171562_ '())))
                                      (__tmp176508
                                       (let ()
                                         (declare (not safe))
                                         (_recur171539_ _rest171561_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp176509
                                   __tmp176508)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest171542171550_))
                            (let ((_hd171547171567_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest171542171550_)))
                                  (_tl171548171569_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest171542171550_))))
                              (let* ((_hd171572_ _hd171547171567_)
                                     (_rest171574_ _tl171548171569_))
                                (declare (not safe))
                                (_K171546171564_ _rest171574_ _hd171572_)))
                            (let ()
                              (declare (not safe))
                              (_else171544171558_)))))))
                 (_generate-clause170983_
                  (lambda (_target171399_ _ids171400_ _clause171401_ _E171402_)
                    (letrec ((_generate1171404_
                              (lambda (_hd171491_ _fender171492_ _body171493_)
                                (let ((_g176510_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause170985_
                                          _hd171491_
                                          _ids171400_))))
                                  (begin
                                    (let ((_g176511_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176510_)
                                                 (##vector-length _g176510_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176511_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176511_)))
                                    (let ((_e171495_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176510_ 0)))
                                          (_mvars171496_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176510_ 1))))
                                      (let* ((_pvars171498_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars171496_))))
                                             (_E171500_
                                              (let ((__tmp176512
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target171399_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E171402_ __tmp176512)))
                                             (_K171533_
                                              (let ((__tmp176513
                                                     (let ((__tmp176515
                                                            (map (lambda (_mvar171502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar171503_)
                           (let* ((_mvar171504171511_ _mvar171502_)
                                  (_E171506171515_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar171504171511_)))
                                  (_K171507171521_
                                   (lambda (_depth171518_ _id171519_)
                                     (let ((__tmp176516
                                            (let ((__tmp176517
                                                   (let ((__tmp176519
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id171519_)))
                                                         (__tmp176518
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar171503_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp176519
                                                      __tmp176518
                                                      _depth171518_))))
                                              (declare (not safe))
                                              (cons __tmp176517 '()))))
                                       (declare (not safe))
                                       (cons _id171519_ __tmp176516)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar171504171511_))
                                 (let ((_hd171508171524_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar171504171511_)))
                                       (_tl171509171526_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar171504171511_))))
                                   (let* ((_id171529_ _hd171508171524_)
                                          (_depth171531_ _tl171509171526_))
                                     (declare (not safe))
                                     (_K171507171521_
                                      _depth171531_
                                      _id171529_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E171506171515_)))))
                         _mvars171496_
                         _pvars171498_))
                   (__tmp176514
                    (if (let () (declare (not safe)) (eq? _fender171492_ '#t))
                        _body171493_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender171492_
                           _body171493_
                           _E171500_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp176515 __tmp176514))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars171498_
                                                 __tmp176513))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match170984_
                                           _hd171491_
                                           _target171399_
                                           _e171495_
                                           _mvars171496_
                                           _K171533_
                                           _E171500_)))))))))
                      (let* ((_e171405171425_ _clause171401_)
                             (_E171414171429_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e171405171425_))))
                             (_E171407171463_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e171405171425_))
                                    (let ((_e171415171433_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e171405171425_))))
                                      (let ((_hd171416171436_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e171415171433_)))
                                            (_tl171417171438_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e171415171433_))))
                                        (let ((_hd171441_ _hd171416171436_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl171417171438_))
                                              (let ((_e171418171443_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl171417171438_))))
                                                (let ((_hd171419171446_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e171418171443_)))
                                                      (_tl171420171448_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e171418171443_))))
                                                  (let ((_fender171451_
                                                         _hd171419171446_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl171420171448_))
                                                        (let ((_e171421171453_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl171420171448_))))
                  (let ((_hd171422171456_
                         (let () (declare (not safe)) (##car _e171421171453_)))
                        (_tl171423171458_
                         (let ()
                           (declare (not safe))
                           (##cdr _e171421171453_))))
                    (let ((_body171461_ _hd171422171456_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl171423171458_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1171404_
                                 _hd171441_
                                 _fender171451_
                                 _body171461_))
                              (let () (declare (not safe)) (_E171414171429_)))
                          (let () (declare (not safe)) (_E171414171429_))))))
                (let () (declare (not safe)) (_E171414171429_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E171414171429_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E171414171429_)))))
                             (_E171406171487_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e171405171425_))
                                    (let ((_e171408171467_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e171405171425_))))
                                      (let ((_hd171409171470_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e171408171467_)))
                                            (_tl171410171472_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e171408171467_))))
                                        (let ((_hd171475_ _hd171409171470_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl171410171472_))
                                              (let ((_e171411171477_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl171410171472_))))
                                                (let ((_hd171412171480_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e171411171477_)))
                                                      (_tl171413171482_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e171411171477_))))
                                                  (let ((_body171485_
                                                         _hd171412171480_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl171413171482_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1171404_
                                                               _hd171475_
                                                               '#t
                                                               _body171485_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E171407171463_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E171407171463_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E171407171463_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E171407171463_))))))
                        (let () (declare (not safe)) (_E171406171487_))))))
                 (_generate-match170984_
                  (lambda (_where171148_
                           _target171149_
                           _hd171150_
                           _mvars171151_
                           _K171152_
                           _E171153_)
                    (letrec ((_BUG171155_
                              (lambda (_q171397_)
                                (error '"BUG: syntax-case; generate"
                                       _stx170976_
                                       _hd171150_
                                       _q171397_)))
                             (_recur171156_
                              (lambda (_e171247_
                                       _vars171248_
                                       _target171249_
                                       _E171250_
                                       _k171251_)
                                (let* ((_e171252171259_ _e171247_)
                                       (_E171254171263_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e171252171259_)))
                                       (_K171255171385_
                                        (lambda (_body171266_ _tag171267_)
                                          (let ((_$e171269_ _tag171267_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e171269_))
                                                (_k171251_ _vars171248_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e171269_))
                                                    (let ((__tmp176626
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target171249_)))
                                                          (__tmp176622
                                                           (let ((__tmp176624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176625
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e170979_
                                    _body171266_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?170977_
                             __tmp176625
                             _target171249_)))
                         (__tmp176623 (_k171251_ _vars171248_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp176624 __tmp176623 _E171250_))))
              (declare (not safe))
              (gx#core-list 'if __tmp176626 __tmp176622 _E171250_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e171269_))
                                                        (_k171251_
                                                         (let ((__tmp176621
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body171266_ _target171249_))))
                   (declare (not safe))
                   (cons __tmp176621 _vars171248_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e171269_))
                    (let ((_$e171272_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd171273_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl171274_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp176620
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target171249_)))
                            (__tmp176601
                             (let ((__tmp176615
                                    (let ((__tmp176616
                                           (let ((__tmp176619
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e171272_ '())))
                                                 (__tmp176617
                                                  (let ((__tmp176618
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e170978_
                                                            _target171249_))))
                                                    (declare (not safe))
                                                    (cons __tmp176618 '()))))
                                             (declare (not safe))
                                             (cons __tmp176619 __tmp176617))))
                                      (declare (not safe))
                                      (cons __tmp176616 '())))
                                   (__tmp176602
                                    (let ((__tmp176605
                                           (let ((__tmp176611
                                                  (let ((__tmp176614
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd171273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp176612
                 (let ((__tmp176613
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e171272_))))
                   (declare (not safe))
                   (cons __tmp176613 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp176614
                                                          __tmp176612)))
                                                 (__tmp176606
                                                  (let ((__tmp176607
                                                         (let ((__tmp176610
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl171274_ '())))
                       (__tmp176608
                        (let ((__tmp176609
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e171272_))))
                          (declare (not safe))
                          (cons __tmp176609 '()))))
                   (declare (not safe))
                   (cons __tmp176610 __tmp176608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp176607 '()))))
                                             (declare (not safe))
                                             (cons __tmp176611 __tmp176606)))
                                          (__tmp176603
                                           (let* ((_body171275171282_
                                                   _body171266_)
                                                  (_E171277171286_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body171275171282_)))
                                                  (_K171278171294_
                                                   (lambda (_tl171289_
                                                            _hd171290_)
                                                     (let ((__tmp176604
                                                            (lambda (_vars171292_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur171156_
                         _tl171289_
                         _vars171292_
                         _$tl171274_
                         _E171250_
                         _k171251_)))))
               (declare (not safe))
               (_recur171156_
                _hd171290_
                _vars171248_
                _$hd171273_
                _E171250_
                __tmp176604)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body171275171282_))
                                                 (let ((_hd171279171297_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body171275171282_)))
                                                       (_tl171280171299_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body171275171282_))))
                                                   (let* ((_hd171302_
                                                           _hd171279171297_)
                                                          (_tl171304_
                                                           _tl171280171299_))
                                                     (declare (not safe))
                                                     (_K171278171294_
                                                      _tl171304_
                                                      _hd171302_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E171277171286_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp176605
                                       __tmp176603))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp176615
                                __tmp176602))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp176620 __tmp176601 _E171250_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e171269_))
                        (let* ((_body171305171312_ _body171266_)
                               (_E171307171316_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body171305171312_)))
                               (_K171308171367_
                                (lambda (_tl171319_ _hd171320_)
                                  (let* ((_rlen171322_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen171157_ _tl171319_)))
                                         (_$target171324_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd171326_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl171328_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp171330_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e171332_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd171334_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl171336_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars171338_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars171158_ _hd171320_)))
                                         (_lvars171340_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars171338_)))
                                         (_tlvars171342_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars171338_)))
                                         (_linit171346_
                                          (map (lambda (_var171344_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars171340_)))
                                    (letrec ((_make-loop171349_
                                              (lambda (_vars171353_)
                                                (let ((__tmp176552
                                                       (let ((__tmp176553
                                                              (let ((__tmp176589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp171330_ '())))
                            (__tmp176554
                             (let ((__tmp176555
                                    (let ((__tmp176588
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd171326_ _lvars171340_)))
                                          (__tmp176556
                                           (let ((__tmp176587
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd171326_)))
                                                 (__tmp176565
                                                  (let ((__tmp176582
                                                         (let ((__tmp176583
                                                                (let ((__tmp176586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e171332_ '())))
                              (__tmp176584
                               (let ((__tmp176585
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e170978_
                                         _$hd171326_))))
                                 (declare (not safe))
                                 (cons __tmp176585 '()))))
                          (declare (not safe))
                          (cons __tmp176586 __tmp176584))))
                   (declare (not safe))
                   (cons __tmp176583 '())))
                (__tmp176566
                 (let ((__tmp176572
                        (let ((__tmp176578
                               (let ((__tmp176581
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd171334_ '())))
                                     (__tmp176579
                                      (let ((__tmp176580
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e171332_))))
                                        (declare (not safe))
                                        (cons __tmp176580 '()))))
                                 (declare (not safe))
                                 (cons __tmp176581 __tmp176579)))
                              (__tmp176573
                               (let ((__tmp176574
                                      (let ((__tmp176577
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl171336_ '())))
                                            (__tmp176575
                                             (let ((__tmp176576
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e171332_))))
                                               (declare (not safe))
                                               (cons __tmp176576 '()))))
                                        (declare (not safe))
                                        (cons __tmp176577 __tmp176575))))
                                 (declare (not safe))
                                 (cons __tmp176574 '()))))
                          (declare (not safe))
                          (cons __tmp176578 __tmp176573)))
                       (__tmp176567
                        (let ((__tmp176568
                               (lambda (_hdvars171355_)
                                 (let ((__tmp176569
                                        (let ((__tmp176570
                                               (map (lambda (_svar171357_
                                                             _lvar171358_)
                                                      (let ((__tmp176571
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar171357_ _hdvars171355_ _BUG171155_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp176571 _lvar171358_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars171338_
                                                    _lvars171340_)))
                                          (declare (not safe))
                                          (cons _$lp-tl171336_ __tmp176570))))
                                   (declare (not safe))
                                   (cons _$lp171330_ __tmp176569)))))
                          (declare (not safe))
                          (_recur171156_
                           _hd171320_
                           '()
                           _$lp-hd171334_
                           _E171250_
                           __tmp176568))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp176572 __tmp176567))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp176582
                                                     __tmp176566)))
                                                 (__tmp176557
                                                  (let ((__tmp176561
                                                         (map (lambda (_lvar171360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar171361_)
                        (let ((__tmp176564
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar171361_ '())))
                              (__tmp176562
                               (let ((__tmp176563
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar171360_))))
                                 (declare (not safe))
                                 (cons __tmp176563 '()))))
                          (declare (not safe))
                          (cons __tmp176564 __tmp176562)))
                      _lvars171340_
                      _tlvars171342_))
                (__tmp176558
                 (_k171251_
                  (let ((__tmp176559
                         (lambda (_svar171363_ _tlvar171364_ _r171365_)
                           (let ((__tmp176560
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar171363_ _tlvar171364_))))
                             (declare (not safe))
                             (cons __tmp176560 _r171365_)))))
                    (declare (not safe))
                    (foldl2 __tmp176559
                            _vars171353_
                            _svars171338_
                            _tlvars171342_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp176561
                                                     __tmp176558))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp176587
                                              __tmp176565
                                              __tmp176557))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp176588
                                       __tmp176556))))
                               (declare (not safe))
                               (cons __tmp176555 '()))))
                        (declare (not safe))
                        (cons __tmp176589 __tmp176554))))
                 (declare (not safe))
                 (cons __tmp176553 '())))
              (__tmp176550
               (let ((__tmp176551
                      (let ()
                        (declare (not safe))
                        (cons _$target171324_ _linit171346_))))
                 (declare (not safe))
                 (cons _$lp171330_ __tmp176551))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp176552
                                                   __tmp176550)))))
                                      (let ((_body171351_
                                             (let ((__tmp176591
                                                    (let ((__tmp176592
                                                           (let ((__tmp176595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176596
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl171328_ '()))))
                            (declare (not safe))
                            (cons _$target171324_ __tmp176596)))
                         (__tmp176593
                          (let ((__tmp176594
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target171249_
                                    _rlen171322_))))
                            (declare (not safe))
                            (cons __tmp176594 '()))))
                     (declare (not safe))
                     (cons __tmp176595 __tmp176593))))
              (declare (not safe))
              (cons __tmp176592 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp176590
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur171156_
                                                       _tl171319_
                                                       _vars171248_
                                                       _$tl171328_
                                                       _E171250_
                                                       _make-loop171349_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp176591
                                                __tmp176590))))
                                        (let ((__tmp176600
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target171249_)))
                                              (__tmp176597
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen171322_))
                                                   _body171351_
                                                   (let ((__tmp176598
                                                          (let ((__tmp176599
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target171249_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp176599 _rlen171322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp176598
                                                      _body171351_
                                                      _E171250_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp176600
                                           __tmp176597
                                           _E171250_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body171305171312_))
                              (let ((_hd171309171370_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body171305171312_)))
                                    (_tl171310171372_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body171305171312_))))
                                (let* ((_hd171375_ _hd171309171370_)
                                       (_tl171377_ _tl171310171372_))
                                  (declare (not safe))
                                  (_K171308171367_ _tl171377_ _hd171375_)))
                              (let () (declare (not safe)) (_E171307171316_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e171269_))
                            (let ((__tmp176549
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target171249_)))
                                  (__tmp176548 (_k171251_ _vars171248_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp176549
                               __tmp176548
                               _E171250_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e171269_))
                                (let ((_$e171379_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp176547
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target171249_)))
                                        (__tmp176539
                                         (let ((__tmp176541
                                                (let ((__tmp176542
                                                       (let ((__tmp176546
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e171379_ '())))
                     (__tmp176543
                      (let ((__tmp176544
                             (let ((__tmp176545
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e170978_
                                       _target171249_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp176545))))
                        (declare (not safe))
                        (cons __tmp176544 '()))))
                 (declare (not safe))
                 (cons __tmp176546 __tmp176543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp176542 '())))
                                               (__tmp176540
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur171156_
                                                   _body171266_
                                                   _vars171248_
                                                   _$e171379_
                                                   _E171250_
                                                   _k171251_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp176541
                                            __tmp176540))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp176547
                                     __tmp176539
                                     _E171250_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e171269_))
                                    (let ((_$e171381_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp176538
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target171249_)))
                                            (__tmp176530
                                             (let ((__tmp176532
                                                    (let ((__tmp176533
                                                           (let ((__tmp176537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e171381_ '())))
                         (__tmp176534
                          (let ((__tmp176535
                                 (let ((__tmp176536
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e170978_
                                           _target171249_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp176536))))
                            (declare (not safe))
                            (cons __tmp176535 '()))))
                     (declare (not safe))
                     (cons __tmp176537 __tmp176534))))
              (declare (not safe))
              (cons __tmp176533 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp176531
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur171156_
                                                       _body171266_
                                                       _vars171248_
                                                       _$e171381_
                                                       _E171250_
                                                       _k171251_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp176532
                                                __tmp176531))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp176538
                                         __tmp176530
                                         _E171250_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e171269_))
                                        (let ((_$e171383_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp176529
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target171249_)))
                                                (__tmp176520
                                                 (let ((__tmp176524
                                                        (let ((__tmp176525
                                                               (let ((__tmp176528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e171383_ '())))
                             (__tmp176526
                              (let ((__tmp176527
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target171249_))))
                                (declare (not safe))
                                (cons __tmp176527 '()))))
                         (declare (not safe))
                         (cons __tmp176528 __tmp176526))))
                  (declare (not safe))
                  (cons __tmp176525 '())))
               (__tmp176521
                (let ((__tmp176523
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e171383_ _body171266_)))
                      (__tmp176522 (_k171251_ _vars171248_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp176523 __tmp176522 _E171250_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp176524
                                                    __tmp176521))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp176529
                                             __tmp176520
                                             _E171250_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG171155_ _e171247_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e171252171259_))
                                      (let ((_hd171256171388_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e171252171259_)))
                                            (_tl171257171390_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e171252171259_))))
                                        (let* ((_tag171393_ _hd171256171388_)
                                               (_body171395_ _tl171257171390_))
                                          (declare (not safe))
                                          (_K171255171385_
                                           _body171395_
                                           _tag171393_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E171254171263_))))))
                             (_splice-rlen171157_
                              (lambda (_e171209_)
                                (let _lp171211_ ((_e171213_ _e171209_)
                                                 (_n171214_ '0))
                                  (let* ((_e171215171222_ _e171213_)
                                         (_E171217171226_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e171215171222_)))
                                         (_K171218171235_
                                          (lambda (_body171229_ _tag171230_)
                                            (let ((_$e171232_ _tag171230_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e171232_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx170976_
                                                     _where171148_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e171232_))
                                                      (let ((__tmp176628
                                                             (cdr _body171229_))
                                                            (__tmp176627
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n171214_ '1))))
                (declare (not safe))
                (_lp171211_ __tmp176628 __tmp176627))
              _n171214_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e171215171222_))
                                        (let ((_hd171219171238_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e171215171222_)))
                                              (_tl171220171240_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e171215171222_))))
                                          (let* ((_tag171243_ _hd171219171238_)
                                                 (_body171245_
                                                  _tl171220171240_))
                                            (declare (not safe))
                                            (_K171218171235_
                                             _body171245_
                                             _tag171243_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E171217171226_)))))))
                             (_splice-vars171158_
                              (lambda (_e171165_)
                                (let _recur171167_ ((_e171169_ _e171165_)
                                                    (_vars171170_ '()))
                                  (let* ((_e171171171178_ _e171169_)
                                         (_E171173171182_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e171171171178_)))
                                         (_K171174171197_
                                          (lambda (_body171185_ _tag171186_)
                                            (let ((_$e171188_ _tag171186_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e171188_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body171185_
                                                          _vars171170_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e171188_))
                  (let () (declare (not safe)) (eq? 'splice _$e171188_)))
              (let ((__tmp176631 (cdr _body171185_))
                    (__tmp176629
                     (let ((__tmp176630 (car _body171185_)))
                       (declare (not safe))
                       (_recur171167_ __tmp176630 _vars171170_))))
                (declare (not safe))
                (_recur171167_ __tmp176631 __tmp176629))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e171188_))
                      (let () (declare (not safe)) (eq? 'box _$e171188_)))
                  (let ()
                    (declare (not safe))
                    (_recur171167_ _body171185_ _vars171170_))
                  _vars171170_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e171171171178_))
                                        (let ((_hd171175171200_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e171171171178_)))
                                              (_tl171176171202_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e171171171178_))))
                                          (let* ((_tag171205_ _hd171175171200_)
                                                 (_body171207_
                                                  _tl171176171202_))
                                            (declare (not safe))
                                            (_K171174171197_
                                             _body171207_
                                             _tag171205_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E171173171182_)))))))
                             (_make-body171159_
                              (lambda (_vars171161_)
                                (let ((__tmp176632
                                       (map (lambda (_mvar171163_)
                                              (let ((__tmp176633
                                                     (car _mvar171163_)))
                                                (declare (not safe))
                                                (assgetq __tmp176633
                                                         _vars171161_
                                                         _BUG171155_)))
                                            _mvars171151_)))
                                  (declare (not safe))
                                  (cons _K171152_ __tmp176632)))))
                      (let ()
                        (declare (not safe))
                        (_recur171156_
                         _hd171150_
                         '()
                         _target171149_
                         _E171153_
                         _make-body171159_)))))
                 (_parse-clause170985_
                  (lambda (_hd171054_ _ids171055_)
                    (let _recur171057_ ((_e171059_ _hd171054_)
                                        (_vars171060_ '())
                                        (_depth171061_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e171059_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e171059_))
                              (values '(any) _vars171060_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e171059_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx170976_
                                     _hd171054_))
                                  (if (let ((__tmp176649
                                             (lambda (_id171063_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e171059_
                                                  _id171063_)))))
                                        (declare (not safe))
                                        (find __tmp176649 _ids171055_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e171059_))
                                              _vars171060_)
                                      (if (let ((__tmp176647
                                                 (lambda (_var171065_)
                                                   (let ((__tmp176648
                                                          (car _var171065_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e171059_
                                                      __tmp176648)))))
                                            (declare (not safe))
                                            (find __tmp176647 _vars171060_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx170976_
                                             _e171059_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e171059_))
                                                  (let ((__tmp176646
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e171059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth171061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp176646
                                                          _vars171060_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e171059_))
                              (let* ((_e171066171073_ _e171059_)
                                     (_E171068171077_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e171066171073_))))
                                     (_E171067171138_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e171066171073_))
                                            (let ((_e171069171081_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e171066171073_))))
                                              (let ((_hd171070171084_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e171069171081_)))
                                                    (_tl171071171086_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e171069171081_))))
                                                (let* ((_hd171089_
                                                        _hd171070171084_)
                                                       (_rest171091_
                                                        _tl171071171086_))
                                                  (if '#t
                                                      (let* ((_make-pair171106_
                                                              (lambda (_tag171093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd171094_
                               _tl171095_)
                        (let* ((_hd-depth171097_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag171093_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth171061_ '1))
                                    _depth171061_))
                               (_g176641_
                                (let ()
                                  (declare (not safe))
                                  (_recur171057_
                                   _hd171094_
                                   _vars171060_
                                   _hd-depth171097_))))
                          (begin
                            (let ((_g176642_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g176641_)
                                         (##vector-length _g176641_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g176642_ 2)))
                                  (error "Context expects 2 values"
                                         _g176642_)))
                            (let ((_hd171099_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g176641_ 0)))
                                  (_vars171100_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g176641_ 1))))
                              (let ((_g176643_
                                     (let ()
                                       (declare (not safe))
                                       (_recur171057_
                                        _tl171095_
                                        _vars171100_
                                        _depth171061_))))
                                (begin
                                  (let ((_g176644_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g176643_)
                                               (##vector-length _g176643_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g176644_ 2)))
                                        (error "Context expects 2 values"
                                               _g176644_)))
                                  (let ((_tl171102_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g176643_ 0)))
                                        (_vars171103_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g176643_ 1))))
                                    (let ()
                                      (values (let ((__tmp176645
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd171099_
                                                             _tl171102_))))
                                                (declare (not safe))
                                                (cons _tag171093_ __tmp176645))
                                              _vars171103_))))))))))
                     (_e171107171114_ _rest171091_)
                     (_E171109171118_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair171106_ 'cons _hd171089_ _rest171091_))))
                     (_E171108171134_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e171107171114_))
                            (let ((_e171110171122_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e171107171114_))))
                              (let ((_hd171111171125_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e171110171122_)))
                                    (_tl171112171127_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e171110171122_))))
                                (let* ((_rest-hd171130_ _hd171111171125_)
                                       (_rest-tl171132_ _tl171112171127_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd171130_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair171106_
                                             'splice
                                             _hd171089_
                                             _rest-tl171132_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair171106_
                                             'cons
                                             _hd171089_
                                             _rest171091_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E171109171118_))))))
                            (let () (declare (not safe)) (_E171109171118_))))))
                (let () (declare (not safe)) (_E171108171134_)))
              (let () (declare (not safe)) (_E171068171077_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E171068171077_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E171067171138_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e171059_))
                                  (values '(null) _vars171060_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e171059_))
                                      (let ((_g176638_
                                             (let ((__tmp176640
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e171059_)))))
                                               (declare (not safe))
                                               (_recur171057_
                                                __tmp176640
                                                _vars171060_
                                                _depth171061_))))
                                        (begin
                                          (let ((_g176639_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g176638_)
                                                       (##vector-length
                                                        _g176638_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g176639_ 2)))
                                                (error "Context expects 2 values"
                                                       _g176639_)))
                                          (let ((_e171142_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g176638_ 0)))
                                                (_vars171143_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g176638_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e171142_))
                                                    _vars171143_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e171059_))
                                          (let ((_g176635_
                                                 (let ((__tmp176637
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e171059_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur171057_
                                                    __tmp176637
                                                    _vars171060_
                                                    _depth171061_))))
                                            (begin
                                              (let ((_g176636_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g176635_)
                                                           (##vector-length
                                                            _g176635_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g176636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g176636_)))
                                              (let ((_e171145_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g176635_
                                                        0)))
                                                    (_vars171146_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g176635_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e171145_))
                                                        _vars171146_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e171059_))
                                              (values (let ((__tmp176634
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e171059_))))
                (declare (not safe))
                (cons 'datum __tmp176634))
              _vars171060_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx170976_
                                                 _e171059_))))))))))))
          (let* ((_e170986170999_ _stx170976_)
                 (_E170988171003_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e170986170999_))))
                 (_E170987171050_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e170986170999_))
                        (let ((_e170989171007_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e170986170999_))))
                          (let ((_hd170990171010_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e170989171007_)))
                                (_tl170991171012_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e170989171007_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl170991171012_))
                                (let ((_e170992171015_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl170991171012_))))
                                  (let ((_hd170993171018_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e170992171015_)))
                                        (_tl170994171020_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e170992171015_))))
                                    (let ((_expr171023_ _hd170993171018_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl170994171020_))
                                          (let ((_e170995171025_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl170994171020_))))
                                            (let ((_hd170996171028_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e170995171025_)))
                                                  (_tl170997171030_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e170995171025_))))
                                              (let* ((_ids171033_
                                                      _hd170996171028_)
                                                     (_clauses171035_
                                                      _tl170997171030_))
                                                (if '#t
                                                    (if (let ((__tmp176667
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids171033_))))
                  (declare (not safe))
                  (not __tmp176667))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx170976_
                   _ids171033_))
                (if (let ((__tmp176666
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses171035_))))
                      (declare (not safe))
                      (not __tmp176666))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx170976_))
                    (let* ((_ids171037_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids171033_)))
                           (_clauses171039_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses171035_)))
                           (_clause-ids171041_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses171039_)))
                           (_E171043_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target171045_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first171047_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses171039_))
                                _E171043_
                                (car _clause-ids171041_))))
                      (let ((__tmp176651
                             (let ((__tmp176652
                                    (let ((__tmp176654
                                           (let ((__tmp176659
                                                  (let ((__tmp176660
                                                         (let ((__tmp176665
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E171043_ '())))
                       (__tmp176661
                        (let ((__tmp176662
                               (let ((__tmp176664
                                      (let ()
                                        (declare (not safe))
                                        (cons _target171045_ '())))
                                     (__tmp176663
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target171045_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp176664
                                  __tmp176663))))
                          (declare (not safe))
                          (cons __tmp176662 '()))))
                   (declare (not safe))
                   (cons __tmp176665 __tmp176661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp176660 '())))
                                                 (__tmp176655
                                                  (let ((__tmp176658
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings170981_
                                                            _target171045_
                                                            _ids171037_
                                                            _clauses171039_
                                                            _clause-ids171041_
                                                            _E171043_)))
                                                        (__tmp176656
                                                         (let ((__tmp176657
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr171023_ '()))))
                   (declare (not safe))
                   (cons _first171047_ __tmp176657))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body170982_
                                                     __tmp176658
                                                     __tmp176656))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp176659
                                              __tmp176655)))
                                          (__tmp176653
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx170976_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp176654
                                       __tmp176653))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp176652)))
                            (__tmp176650
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx170976_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp176651 __tmp176650)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E170988171003_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E170988171003_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E170988171003_)))))
                        (let () (declare (not safe)) (_E170988171003_))))))
            (let () (declare (not safe)) (_E170987171050_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx171686_)
        (let* ((_identifier=?171688_ 'free-identifier=?)
               (_unwrap-e171690_ 'syntax-e)
               (_wrap-e171692_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx171686_
           _identifier=?171688_
           _unwrap-e171690_
           _wrap-e171692_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx171694_ _identifier=?171695_)
        (let* ((_unwrap-e171697_ 'syntax-e) (_wrap-e171699_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx171694_
           _identifier=?171695_
           _unwrap-e171697_
           _wrap-e171699_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx171701_ _identifier=?171702_ _unwrap-e171703_)
        (let ((_wrap-e171705_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx171701_
           _identifier=?171702_
           _unwrap-e171703_
           _wrap-e171705_))))
    (define gx#macro-expand-syntax-case
      (lambda _g176669_
        (let ((_g176668_ (let () (declare (not safe)) (##length _g176669_))))
          (cond ((let () (declare (not safe)) (##fx= _g176668_ 1))
                 (apply (lambda (_stx171686_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx171686_)))
                        _g176669_))
                ((let () (declare (not safe)) (##fx= _g176668_ 2))
                 (apply (lambda (_stx171694_ _identifier=?171695_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx171694_
                             _identifier=?171695_)))
                        _g176669_))
                ((let () (declare (not safe)) (##fx= _g176668_ 3))
                 (apply (lambda (_stx171701_
                                 _identifier=?171702_
                                 _unwrap-e171703_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx171701_
                             _identifier=?171702_
                             _unwrap-e171703_)))
                        _g176669_))
                ((let () (declare (not safe)) (##fx= _g176668_ 4))
                 (apply (lambda (_stx171707_
                                 _identifier=?171708_
                                 _unwrap-e171709_
                                 _wrap-e171710_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx171707_
                             _identifier=?171708_
                             _unwrap-e171709_
                             _wrap-e171710_)))
                        _g176669_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g176669_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx170973_)
        (if (let () (declare (not safe)) (gx#identifier? _stx170973_))
            (let ((__tmp176670
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx170973_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp176670 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd170931_ . _rest170932_)
        (let ((_len170934_ (length _hd170931_)))
          (let _lp170936_ ((_rest170938_ _rest170932_))
            (let* ((_rest170939170947_ _rest170938_)
                   (_else170941170955_ (lambda () '#!void))
                   (_K170943170961_
                    (lambda (_rest170958_ _hd170959_)
                      (if (fx= _len170934_ (length _hd170959_))
                          (let ()
                            (declare (not safe))
                            (_lp170936_ _rest170958_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd170959_))))))
              (if (let () (declare (not safe)) (##pair? _rest170939170947_))
                  (let ((_hd170944170964_
                         (let ()
                           (declare (not safe))
                           (##car _rest170939170947_)))
                        (_tl170945170966_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest170939170947_))))
                    (let* ((_hd170969_ _hd170944170964_)
                           (_rest170971_ _tl170945170966_))
                      (declare (not safe))
                      (_K170943170961_ _rest170971_ _hd170969_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx170889_ _n170890_)
        (let _lp170892_ ((_rest170894_ _stx170889_) (_r170895_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest170894_))
              (let* ((_g170896170903_
                      (let () (declare (not safe)) (gx#syntax-e _rest170894_)))
                     (_E170898170907_
                      (lambda ()
                        (error '"No clause matching" _g170896170903_)))
                     (_K170899170913_
                      (lambda (_rest170910_ _hd170911_)
                        (let ((__tmp176675
                               (let ()
                                 (declare (not safe))
                                 (cons _hd170911_ _r170895_))))
                          (declare (not safe))
                          (_lp170892_ _rest170910_ __tmp176675)))))
                (if (let () (declare (not safe)) (##pair? _g170896170903_))
                    (let ((_hd170900170916_
                           (let ()
                             (declare (not safe))
                             (##car _g170896170903_)))
                          (_tl170901170918_
                           (let ()
                             (declare (not safe))
                             (##cdr _g170896170903_))))
                      (let* ((_hd170921_ _hd170900170916_)
                             (_rest170923_ _tl170901170918_))
                        (declare (not safe))
                        (_K170899170913_ _rest170923_ _hd170921_)))
                    (let () (declare (not safe)) (_E170898170907_))))
              (let _lp170925_ ((_n170927_ _n170890_)
                               (_l170928_ _r170895_)
                               (_r170929_ _rest170894_))
                (if (let () (declare (not safe)) (null? _l170928_))
                    (values _l170928_ _r170929_)
                    (if (fxpositive? _n170927_)
                        (let ((__tmp176674
                               (let ()
                                 (declare (not safe))
                                 (fx- _n170927_ '1)))
                              (__tmp176673 (cdr _l170928_))
                              (__tmp176671
                               (let ((__tmp176672 (car _l170928_)))
                                 (declare (not safe))
                                 (cons __tmp176672 _r170929_))))
                          (declare (not safe))
                          (_lp170925_ __tmp176674 __tmp176673 __tmp176671))
                        (values (reverse _l170928_) _r170929_))))))))))
