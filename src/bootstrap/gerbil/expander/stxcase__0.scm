(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707555133)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp176435
             (let ((__tmp176436
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp176436 '()))))
        (declare (not safe))
        (make-struct-type
         'gx#syntax-pattern::t
         'syntax-pattern
         gx#expander::t
         '(id depth)
         __tmp176435
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-struct-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args172238_
        (apply make-struct-instance gx#syntax-pattern::t _$args172238_)))
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
      (lambda (_self172235_ _stx172236_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx172236_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx171717_)
        (letrec ((_generate171719_
                  (lambda (_e171946_)
                    (letrec ((_BUG171948_
                              (lambda (_q172110_)
                                (error '"BUG: syntax; generate"
                                       _stx171717_
                                       _e171946_
                                       _q172110_)))
                             (_local-pattern-e171949_
                              (lambda (_pat172108_)
                                (let ((__tmp176437
                                       (##structure-ref
                                        _pat172108_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp176437))))
                             (_getvar171950_
                              (lambda (_q172105_ _vars172106_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q172105_
                                           _vars172106_
                                           _BUG171948_))))
                             (_getarg171951_
                              (lambda (_arg172071_ _vars172072_)
                                (let* ((_arg172073172080_ _arg172071_)
                                       (_E172075172084_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg172073172080_)))
                                       (_K172076172093_
                                        (lambda (_e172087_ _tag172088_)
                                          (let ((_$e172090_ _tag172088_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e172090_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar171950_
                                                   _e172087_
                                                   _vars172072_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e172090_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e171949_
                                                       _e172087_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG171948_
                                                       _arg172071_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg172073172080_))
                                      (let ((_hd172077172096_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg172073172080_)))
                                            (_tl172078172098_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg172073172080_))))
                                        (let* ((_tag172101_ _hd172077172096_)
                                               (_e172103_ _tl172078172098_))
                                          (declare (not safe))
                                          (_K172076172093_
                                           _e172103_
                                           _tag172101_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E172075172084_)))))))
                      (let _recur171953_ ((_e171955_ _e171946_)
                                          (_vars171956_ '()))
                        (let* ((_e171957171964_ _e171955_)
                               (_E171959171968_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e171957171964_)))
                               (_K171960172059_
                                (lambda (_body171971_ _tag171972_)
                                  (let ((_$e171974_ _tag171972_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e171974_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body171971_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e171974_))
                                            (let ((_id171977_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body171971_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id171977_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks171979_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id171977_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks171979_))
                                                        (let ((__tmp176465
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body171971_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp176465))
                (let ((__tmp176464
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body171971_)))
                      (__tmp176463
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body171971_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp176464
                   __tmp176463
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id171977_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body171971_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG171948_
                                                         _e171955_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e171974_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e171949_
                                                   _body171971_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e171974_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar171950_
                                                       _body171971_
                                                       _vars171956_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e171974_))
                                                        (let ((__tmp176461
                                                               (let ((__tmp176462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body171971_)))
                         (declare (not safe))
                         (_recur171953_ __tmp176462 _vars171956_)))
                      (__tmp176459
                       (let ((__tmp176460 (cdr _body171971_)))
                         (declare (not safe))
                         (_recur171953_ __tmp176460 _vars171956_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp176461 __tmp176459))
                (if (let () (declare (not safe)) (eq? 'vector _$e171974_))
                    (let ((__tmp176458
                           (let ()
                             (declare (not safe))
                             (_recur171953_ _body171971_ _vars171956_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp176458))
                    (if (let () (declare (not safe)) (eq? 'box _$e171974_))
                        (let ((__tmp176457
                               (let ()
                                 (declare (not safe))
                                 (_recur171953_ _body171971_ _vars171956_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp176457))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e171974_))
                            (let* ((_body171980171991_ _body171971_)
                                   (_E171982171995_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body171980171991_)))
                                   (_K171983172033_
                                    (lambda (_args171998_
                                             _iv171999_
                                             _hd172000_
                                             _depth172001_)
                                      (let* ((_targets172007_
                                              (map (lambda (_g172002172004_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg171951_
                                                        _g172002172004_
                                                        _vars171956_)))
                                                   _args171998_))
                                             (_fold-in172009_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args171998_)))
                                             (_fold-out172011_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args172013_
                                              (let ((__tmp176438
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out172011_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp176438
                                                        _fold-in172009_)))
                                             (_lambda-body172030_
                                              (if (fx> _depth172001_ '1)
                                                  (let ((_r-args172021_
                                                         (map (lambda (_arg172015_)
                                                                (let ((__tmp176443
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg172015_)))
                          (declare (not safe))
                          (cons 'ref __tmp176443)))
                      _args171998_))
                (_r-vars172022_
                 (let ((__tmp176444
                        (lambda (_arg172017_ _var172018_ _r172019_)
                          (let ((__tmp176445
                                 (let ((__tmp176446 (cdr _arg172017_)))
                                   (declare (not safe))
                                   (cons __tmp176446 _var172018_))))
                            (declare (not safe))
                            (cons __tmp176445 _r172019_)))))
                   (declare (not safe))
                   (foldr2 __tmp176444
                           _vars171956_
                           _args171998_
                           _fold-in172009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp176447
                                                           (let ((__tmp176448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176452
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth172001_ '1)))
                                (__tmp176449
                                 (let ((__tmp176450
                                        (let ((__tmp176451
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out172011_))))
                                          (declare (not safe))
                                          (cons __tmp176451 _r-args172021_))))
                                   (declare (not safe))
                                   (cons _hd172000_ __tmp176450))))
                            (declare (not safe))
                            (cons __tmp176452 __tmp176449))))
                     (declare (not safe))
                     (cons 'splice __tmp176448))))
              (declare (not safe))
              (_recur171953_ __tmp176447 _r-vars172022_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars172028_
                                                          (let ((__tmp176439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg172024_ _var172025_ _r172026_)
                           (let ((__tmp176440
                                  (let ((__tmp176441 (cdr _arg172024_)))
                                    (declare (not safe))
                                    (cons __tmp176441 _var172025_))))
                             (declare (not safe))
                             (cons __tmp176440 _r172026_)))))
                    (declare (not safe))
                    (foldr2 __tmp176439
                            _vars171956_
                            _args171998_
                            _fold-in172009_)))
                 (__tmp176442
                  (let ()
                    (declare (not safe))
                    (_recur171953_ _hd172000_ _hd-vars172028_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp176442
                                                     _fold-out172011_)))))
                                        (let ((__tmp176456
                                               (if (fx> (length _targets172007_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets172007_))
                                                   '#!void))
                                              (__tmp176453
                                               (let ((__tmp176455
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args172013_
                                                         _lambda-body172030_)))
                                                     (__tmp176454
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur171953_
                                                         _iv171999_
                                                         _vars171956_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp176455
                                                  __tmp176454
                                                  _targets172007_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp176456
                                           __tmp176453))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body171980171991_))
                                  (let ((_hd171984172036_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body171980171991_)))
                                        (_tl171985172038_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body171980171991_))))
                                    (let ((_depth172041_ _hd171984172036_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl171985172038_))
                                          (let ((_hd171986172043_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl171985172038_)))
                                                (_tl171987172045_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl171985172038_))))
                                            (let ((_hd172048_
                                                   _hd171986172043_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl171987172045_))
                                                  (let ((_hd171988172050_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl171987172045_)))
                                                        (_tl171989172052_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl171987172045_))))
                                                    (let* ((_iv172055_
                                                            _hd171988172050_)
                                                           (_args172057_
                                                            _tl171989172052_))
                                                      (declare (not safe))
                                                      (_K171983172033_
                                                       _args172057_
                                                       _iv172055_
                                                       _hd172048_
                                                       _depth172041_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E171982171995_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E171982171995_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E171982171995_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e171974_))
                                _body171971_
                                (let ()
                                  (declare (not safe))
                                  (_BUG171948_ _e171955_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e171957171964_))
                              (let ((_hd171961172062_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e171957171964_)))
                                    (_tl171962172064_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e171957171964_))))
                                (let* ((_tag172067_ _hd171961172062_)
                                       (_body172069_ _tl171962172064_))
                                  (declare (not safe))
                                  (_K171960172059_ _body172069_ _tag172067_)))
                              (let ()
                                (declare (not safe))
                                (_E171959171968_))))))))
                 (_parse171720_
                  (lambda (_e171761_)
                    (letrec ((_make-cons171763_
                              (lambda (_hd171938_ _tl171939_)
                                (let ((_g176466_ _hd171938_)
                                      (_g176468_ _tl171939_))
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
                                    (let ((_hd-e171941_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176466_ 0)))
                                          (_hd-vars171942_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176466_ 1))))
                                      (let ((_tl-e171943_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g176468_ 0)))
                                            (_tl-vars171944_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g176468_ 1))))
                                        (values (let ((__tmp176470
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e171941_
                                                               _tl-e171943_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp176470))
                                                (append _hd-vars171942_
                                                        _tl-vars171944_))))))))
                             (_make-splice171764_
                              (lambda (_where171877_
                                       _depth171878_
                                       _hd171879_
                                       _tl171880_)
                                (let ((_g176471_ _hd171879_)
                                      (_g176473_ _tl171880_))
                                  (begin
                                    (let ((_g176472_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176471_)
                                                 (##vector-length _g176471_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176472_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176472_)))
                                    (let ((_g176474_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176473_)
                                                 (##vector-length _g176473_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176474_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176474_)))
                                    (let ((_hd-e171882_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176471_ 0)))
                                          (_hd-vars171883_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176471_ 1))))
                                      (let ((_tl-e171884_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g176473_ 0)))
                                            (_tl-vars171885_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g176473_ 1))))
                                        (let _lp171887_ ((_rest171889_
                                                          _hd-vars171883_)
                                                         (_targets171890_ '())
                                                         (_vars171891_
                                                          _tl-vars171885_))
                                          (let* ((_rest171892171902_
                                                  _rest171889_)
                                                 (_else171894171910_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets171890_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx171717_
                                                           _where171877_))
                                                        (values (let ((__tmp176475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp176476
                                      (let ((__tmp176477
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e171884_
                                                     _targets171890_))))
                                        (declare (not safe))
                                        (cons _hd-e171882_ __tmp176477))))
                                 (declare (not safe))
                                 (cons _depth171878_ __tmp176476))))
                          (declare (not safe))
                          (cons 'splice __tmp176475))
                        _vars171891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K171896171919_
                                                  (lambda (_rest171913_
                                                           _hd-pat171914_
                                                           _hd-depth*171915_)
                                                    (let ((_hd-depth171917_
                                                           (fx- _hd-depth*171915_
                                                                _depth171878_)))
                                                      (if (fxpositive?
                                                           _hd-depth171917_)
                                                          (let ((__tmp176482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp176483
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat171914_))))
                           (declare (not safe))
                           (cons __tmp176483 _targets171890_)))
                        (__tmp176480
                         (let ((__tmp176481
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth171917_ _hd-pat171914_))))
                           (declare (not safe))
                           (cons __tmp176481 _vars171891_))))
                    (declare (not safe))
                    (_lp171887_ _rest171913_ __tmp176482 __tmp176480))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth171917_))
                      (let ((__tmp176478
                             (let ((__tmp176479
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat171914_))))
                               (declare (not safe))
                               (cons __tmp176479 _targets171890_))))
                        (declare (not safe))
                        (_lp171887_ _rest171913_ __tmp176478 _vars171891_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx171717_
                         _where171877_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest171892171902_))
                                                (let ((_hd171897171922_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest171892171902_)))
                                                      (_tl171898171924_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest171892171902_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd171897171922_))
                                                      (let ((_hd171899171927_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd171897171922_)))
                    (_tl171900171929_
                     (let () (declare (not safe)) (##cdr _hd171897171922_))))
                (let* ((_hd-depth*171932_ _hd171899171927_)
                       (_hd-pat171934_ _tl171900171929_)
                       (_rest171936_ _tl171898171924_))
                  (declare (not safe))
                  (_K171896171919_
                   _rest171936_
                   _hd-pat171934_
                   _hd-depth*171932_)))
              (let () (declare (not safe)) (_else171894171910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else171894171910_)))))))))))
                             (_recur171765_
                              (lambda (_e171770_ _is-e?171771_)
                                (if (_is-e?171771_ _e171770_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx171717_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e171770_))
                                        (let* ((_pat171773_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e171770_)))
                                               (_depth171775_
                                                (##structure-ref
                                                 _pat171773_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth171775_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat171773_))
                                                      (let ((__tmp176499
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth171775_ _pat171773_))))
                (declare (not safe))
                (cons __tmp176499 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat171773_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e171770_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e171770_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e171770_))
                                                (let* ((_e171777171784_
                                                        _e171770_)
                                                       (_E171779171788_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e171777171784_))))
                                                       (_E171778171867_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e171777171784_))
                      (let ((_e171780171792_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e171777171784_))))
                        (let ((_hd171781171795_
                               (let ()
                                 (declare (not safe))
                                 (##car _e171780171792_)))
                              (_tl171782171797_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e171780171792_))))
                          (let* ((_hd171800_ _hd171781171795_)
                                 (_rest171802_ _tl171782171797_))
                            (if '#t
                                (if (_is-e?171771_ _hd171800_)
                                    (let* ((_e171803171810_ _rest171802_)
                                           (_E171805171814_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx171717_
                                                 _e171770_))))
                                           (_E171804171828_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e171803171810_))
                                                  (let ((_e171806171818_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e171803171810_))))
                                                    (let ((_hd171807171821_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e171806171818_)))
                                                          (_tl171808171823_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e171806171818_))))
                                                      (let ((_rest171826_
                                                             _hd171807171821_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl171808171823_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur171765_ _rest171826_ false))
                        (let () (declare (not safe)) (_E171805171814_)))
                    (let () (declare (not safe)) (_E171805171814_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E171805171814_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E171804171828_)))
                                    (let _lp171832_ ((_rest171834_
                                                      _rest171802_)
                                                     (_depth171835_ '0))
                                      (let* ((_e171836171843_ _rest171834_)
                                             (_E171838171847_
                                              (lambda ()
                                                (if (fxpositive? _depth171835_)
                                                    (let ((__tmp176493
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur171765_
                                                              _hd171800_
                                                              _is-e?171771_)))
                                                          (__tmp176492
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur171765_
                                                              _rest171834_
                                                              _is-e?171771_))))
                                                      (declare (not safe))
                                                      (_make-splice171764_
                                                       _e171770_
                                                       _depth171835_
                                                       __tmp176493
                                                       __tmp176492))
                                                    (let ((__tmp176491
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur171765_
                                                              _hd171800_
                                                              _is-e?171771_)))
                                                          (__tmp176490
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur171765_
                                                              _rest171834_
                                                              _is-e?171771_))))
                                                      (declare (not safe))
                                                      (_make-cons171763_
                                                       __tmp176491
                                                       __tmp176490)))))
                                             (_E171837171863_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e171836171843_))
                                                    (let ((_e171839171851_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e171836171843_))))
                                                      (let ((_hd171840171854_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e171839171851_)))
                    (_tl171841171856_
                     (let () (declare (not safe)) (##cdr _e171839171851_))))
                (let* ((_rest-hd171859_ _hd171840171854_)
                       (_rest-tl171861_ _tl171841171856_))
                  (if '#t
                      (if (_is-e?171771_ _rest-hd171859_)
                          (let ((__tmp176498
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth171835_ '1))))
                            (declare (not safe))
                            (_lp171832_ _rest-tl171861_ __tmp176498))
                          (if (fxpositive? _depth171835_)
                              (let ((__tmp176497
                                     (let ()
                                       (declare (not safe))
                                       (_recur171765_
                                        _hd171800_
                                        _is-e?171771_)))
                                    (__tmp176496
                                     (let ()
                                       (declare (not safe))
                                       (_recur171765_
                                        _rest171834_
                                        _is-e?171771_))))
                                (declare (not safe))
                                (_make-splice171764_
                                 _e171770_
                                 _depth171835_
                                 __tmp176497
                                 __tmp176496))
                              (let ((__tmp176495
                                     (let ()
                                       (declare (not safe))
                                       (_recur171765_
                                        _hd171800_
                                        _is-e?171771_)))
                                    (__tmp176494
                                     (let ()
                                       (declare (not safe))
                                       (_recur171765_
                                        _rest171834_
                                        _is-e?171771_))))
                                (declare (not safe))
                                (_make-cons171763_ __tmp176495 __tmp176494))))
                      (let () (declare (not safe)) (_E171838171847_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E171838171847_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E171837171863_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E171779171788_))))))
                      (let () (declare (not safe)) (_E171779171788_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E171778171867_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e171770_))
                                                    (let ((_g176487_
                                                           (let ((__tmp176489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e171770_)))))
                     (declare (not safe))
                     (_recur171765_ __tmp176489 _is-e?171771_))))
              (begin
                (let ((_g176488_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g176487_)
                             (##vector-length _g176487_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g176488_ 2)))
                      (error "Context expects 2 values" _g176488_)))
                (let ((_e171871_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g176487_ 0)))
                      (_vars171872_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g176487_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e171871_))
                          _vars171872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e171770_))
                                                        (let ((_g176484_
                                                               (let ((__tmp176486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e171770_)))))
                         (declare (not safe))
                         (_recur171765_ __tmp176486 _is-e?171771_))))
                  (begin
                    (let ((_g176485_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g176484_)
                                 (##vector-length _g176484_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g176485_ 2)))
                          (error "Context expects 2 values" _g176485_)))
                    (let ((_e171874_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g176484_ 0)))
                          (_vars171875_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g176484_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e171874_))
                              _vars171875_))))
                (values (let () (declare (not safe)) (cons 'datum _e171770_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g176500_
                             (let ()
                               (declare (not safe))
                               (_recur171765_ _e171761_ gx#ellipsis?))))
                        (begin
                          (let ((_g176501_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g176500_)
                                       (##vector-length _g176500_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g176501_ 2)))
                                (error "Context expects 2 values" _g176501_)))
                          (let ((_tree171767_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g176500_ 0)))
                                (_vars171768_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g176500_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars171768_))
                                _tree171767_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx171717_
                                   _vars171768_))))))))))
          (let* ((_e171721171731_ _stx171717_)
                 (_E171723171735_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx171717_))))
                 (_E171722171757_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e171721171731_))
                        (let ((_e171724171739_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e171721171731_))))
                          (let ((_hd171725171742_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e171724171739_)))
                                (_tl171726171744_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e171724171739_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl171726171744_))
                                (let ((_e171727171747_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl171726171744_))))
                                  (let ((_hd171728171750_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e171727171747_)))
                                        (_tl171729171752_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e171727171747_))))
                                    (let ((_form171755_ _hd171728171750_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl171729171752_))
                                          (if '#t
                                              (let ((__tmp176503
                                                     (let ((__tmp176504
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse171720_
                                                               _form171755_))))
                                                       (declare (not safe))
                                                       (_generate171719_
                                                        __tmp176504)))
                                                    (__tmp176502
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx171717_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp176503
                                                 __tmp176502))
                                              (let ()
                                                (declare (not safe))
                                                (_E171723171735_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E171723171735_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E171723171735_)))))
                        (let () (declare (not safe)) (_E171723171735_))))))
            (let () (declare (not safe)) (_E171722171757_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx170981_
               _identifier=?170982_
               _unwrap-e170983_
               _wrap-e170984_)
        (letrec ((_generate-bindings170986_
                  (lambda (_target171581_
                           _ids171582_
                           _clauses171583_
                           _clause-ids171584_
                           _E171585_)
                    (letrec ((_generate1171587_
                              (lambda (_clause171684_
                                       _clause-id171685_
                                       _E171686_)
                                (let ((__tmp176509
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id171685_ '())))
                                      (__tmp176505
                                       (let ((__tmp176506
                                              (let ((__tmp176508
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target171581_
                                                             '())))
                                                    (__tmp176507
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause170988_
                                                        _target171581_
                                                        _ids171582_
                                                        _clause171684_
                                                        _E171686_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp176508
                                                 __tmp176507))))
                                         (declare (not safe))
                                         (cons __tmp176506 '()))))
                                  (declare (not safe))
                                  (cons __tmp176509 __tmp176505)))))
                      (let _lp171589_ ((_rest171591_ _clauses171583_)
                                       (_rest-ids171592_ _clause-ids171584_)
                                       (_bindings171593_ '()))
                        (let* ((_rest171594171602_ _rest171591_)
                               (_else171596171610_
                                (lambda () _bindings171593_))
                               (_K171598171672_
                                (lambda (_rest171613_ _clause171614_)
                                  (let* ((_rest-ids171615171622_
                                          _rest-ids171592_)
                                         (_E171617171626_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids171615171622_)))
                                         (_K171618171660_
                                          (lambda (_rest-ids171629_
                                                   _clause-id171630_)
                                            (let* ((_rest-ids171631171639_
                                                    _rest-ids171629_)
                                                   (_else171633171647_
                                                    (lambda ()
                                                      (let ((__tmp176510
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1171587_
                        _clause171614_
                        _clause-id171630_
                        _E171585_))))
                (declare (not safe))
                (cons __tmp176510 _bindings171593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K171635171652_
                                                    (lambda (_next-clause-id171650_)
                                                      (let ((__tmp176511
                                                             (let ((__tmp176512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1171587_
                               _clause171614_
                               _clause-id171630_
                               _next-clause-id171650_))))
                       (declare (not safe))
                       (cons __tmp176512 _bindings171593_))))
                (declare (not safe))
                (_lp171589_ _rest171613_ _rest-ids171629_ __tmp176511)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids171631171639_))
                                                  (let* ((_hd171636171655_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids171631171639_)))
                                                         (_next-clause-id171658_
                                                          _hd171636171655_))
                                                    (declare (not safe))
                                                    (_K171635171652_
                                                     _next-clause-id171658_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else171633171647_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids171615171622_))
                                        (let ((_hd171619171663_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids171615171622_)))
                                              (_tl171620171665_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids171615171622_))))
                                          (let* ((_clause-id171668_
                                                  _hd171619171663_)
                                                 (_rest-ids171670_
                                                  _tl171620171665_))
                                            (declare (not safe))
                                            (_K171618171660_
                                             _rest-ids171670_
                                             _clause-id171668_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E171617171626_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest171594171602_))
                              (let ((_hd171599171675_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest171594171602_)))
                                    (_tl171600171677_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest171594171602_))))
                                (let* ((_clause171680_ _hd171599171675_)
                                       (_rest171682_ _tl171600171677_))
                                  (declare (not safe))
                                  (_K171598171672_
                                   _rest171682_
                                   _clause171680_)))
                              (let ()
                                (declare (not safe))
                                (_else171596171610_))))))))
                 (_generate-body170987_
                  (lambda (_bindings171541_ _body171542_)
                    (let _recur171544_ ((_rest171546_ _bindings171541_))
                      (let* ((_rest171547171555_ _rest171546_)
                             (_else171549171563_ (lambda () _body171542_))
                             (_K171551171569_
                              (lambda (_rest171566_ _hd171567_)
                                (let ((__tmp176514
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd171567_ '())))
                                      (__tmp176513
                                       (let ()
                                         (declare (not safe))
                                         (_recur171544_ _rest171566_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp176514
                                   __tmp176513)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest171547171555_))
                            (let ((_hd171552171572_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest171547171555_)))
                                  (_tl171553171574_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest171547171555_))))
                              (let* ((_hd171577_ _hd171552171572_)
                                     (_rest171579_ _tl171553171574_))
                                (declare (not safe))
                                (_K171551171569_ _rest171579_ _hd171577_)))
                            (let ()
                              (declare (not safe))
                              (_else171549171563_)))))))
                 (_generate-clause170988_
                  (lambda (_target171404_ _ids171405_ _clause171406_ _E171407_)
                    (letrec ((_generate1171409_
                              (lambda (_hd171496_ _fender171497_ _body171498_)
                                (let ((_g176515_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause170990_
                                          _hd171496_
                                          _ids171405_))))
                                  (begin
                                    (let ((_g176516_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176515_)
                                                 (##vector-length _g176515_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176516_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176516_)))
                                    (let ((_e171500_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176515_ 0)))
                                          (_mvars171501_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176515_ 1))))
                                      (let* ((_pvars171503_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars171501_))))
                                             (_E171505_
                                              (let ((__tmp176517
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target171404_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E171407_ __tmp176517)))
                                             (_K171538_
                                              (let ((__tmp176518
                                                     (let ((__tmp176520
                                                            (map (lambda (_mvar171507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar171508_)
                           (let* ((_mvar171509171516_ _mvar171507_)
                                  (_E171511171520_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar171509171516_)))
                                  (_K171512171526_
                                   (lambda (_depth171523_ _id171524_)
                                     (let ((__tmp176521
                                            (let ((__tmp176522
                                                   (let ((__tmp176524
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id171524_)))
                                                         (__tmp176523
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar171508_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp176524
                                                      __tmp176523
                                                      _depth171523_))))
                                              (declare (not safe))
                                              (cons __tmp176522 '()))))
                                       (declare (not safe))
                                       (cons _id171524_ __tmp176521)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar171509171516_))
                                 (let ((_hd171513171529_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar171509171516_)))
                                       (_tl171514171531_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar171509171516_))))
                                   (let* ((_id171534_ _hd171513171529_)
                                          (_depth171536_ _tl171514171531_))
                                     (declare (not safe))
                                     (_K171512171526_
                                      _depth171536_
                                      _id171534_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E171511171520_)))))
                         _mvars171501_
                         _pvars171503_))
                   (__tmp176519
                    (if (let () (declare (not safe)) (eq? _fender171497_ '#t))
                        _body171498_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender171497_
                           _body171498_
                           _E171505_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp176520 __tmp176519))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars171503_
                                                 __tmp176518))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match170989_
                                           _hd171496_
                                           _target171404_
                                           _e171500_
                                           _mvars171501_
                                           _K171538_
                                           _E171505_)))))))))
                      (let* ((_e171410171430_ _clause171406_)
                             (_E171419171434_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e171410171430_))))
                             (_E171412171468_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e171410171430_))
                                    (let ((_e171420171438_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e171410171430_))))
                                      (let ((_hd171421171441_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e171420171438_)))
                                            (_tl171422171443_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e171420171438_))))
                                        (let ((_hd171446_ _hd171421171441_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl171422171443_))
                                              (let ((_e171423171448_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl171422171443_))))
                                                (let ((_hd171424171451_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e171423171448_)))
                                                      (_tl171425171453_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e171423171448_))))
                                                  (let ((_fender171456_
                                                         _hd171424171451_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl171425171453_))
                                                        (let ((_e171426171458_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl171425171453_))))
                  (let ((_hd171427171461_
                         (let () (declare (not safe)) (##car _e171426171458_)))
                        (_tl171428171463_
                         (let ()
                           (declare (not safe))
                           (##cdr _e171426171458_))))
                    (let ((_body171466_ _hd171427171461_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl171428171463_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1171409_
                                 _hd171446_
                                 _fender171456_
                                 _body171466_))
                              (let () (declare (not safe)) (_E171419171434_)))
                          (let () (declare (not safe)) (_E171419171434_))))))
                (let () (declare (not safe)) (_E171419171434_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E171419171434_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E171419171434_)))))
                             (_E171411171492_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e171410171430_))
                                    (let ((_e171413171472_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e171410171430_))))
                                      (let ((_hd171414171475_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e171413171472_)))
                                            (_tl171415171477_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e171413171472_))))
                                        (let ((_hd171480_ _hd171414171475_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl171415171477_))
                                              (let ((_e171416171482_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl171415171477_))))
                                                (let ((_hd171417171485_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e171416171482_)))
                                                      (_tl171418171487_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e171416171482_))))
                                                  (let ((_body171490_
                                                         _hd171417171485_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl171418171487_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1171409_
                                                               _hd171480_
                                                               '#t
                                                               _body171490_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E171412171468_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E171412171468_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E171412171468_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E171412171468_))))))
                        (let () (declare (not safe)) (_E171411171492_))))))
                 (_generate-match170989_
                  (lambda (_where171153_
                           _target171154_
                           _hd171155_
                           _mvars171156_
                           _K171157_
                           _E171158_)
                    (letrec ((_BUG171160_
                              (lambda (_q171402_)
                                (error '"BUG: syntax-case; generate"
                                       _stx170981_
                                       _hd171155_
                                       _q171402_)))
                             (_recur171161_
                              (lambda (_e171252_
                                       _vars171253_
                                       _target171254_
                                       _E171255_
                                       _k171256_)
                                (let* ((_e171257171264_ _e171252_)
                                       (_E171259171268_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e171257171264_)))
                                       (_K171260171390_
                                        (lambda (_body171271_ _tag171272_)
                                          (let ((_$e171274_ _tag171272_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e171274_))
                                                (_k171256_ _vars171253_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e171274_))
                                                    (let ((__tmp176631
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target171254_)))
                                                          (__tmp176627
                                                           (let ((__tmp176629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176630
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e170984_
                                    _body171271_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?170982_
                             __tmp176630
                             _target171254_)))
                         (__tmp176628 (_k171256_ _vars171253_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp176629 __tmp176628 _E171255_))))
              (declare (not safe))
              (gx#core-list 'if __tmp176631 __tmp176627 _E171255_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e171274_))
                                                        (_k171256_
                                                         (let ((__tmp176626
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body171271_ _target171254_))))
                   (declare (not safe))
                   (cons __tmp176626 _vars171253_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e171274_))
                    (let ((_$e171277_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd171278_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl171279_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp176625
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target171254_)))
                            (__tmp176606
                             (let ((__tmp176620
                                    (let ((__tmp176621
                                           (let ((__tmp176624
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e171277_ '())))
                                                 (__tmp176622
                                                  (let ((__tmp176623
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e170983_
                                                            _target171254_))))
                                                    (declare (not safe))
                                                    (cons __tmp176623 '()))))
                                             (declare (not safe))
                                             (cons __tmp176624 __tmp176622))))
                                      (declare (not safe))
                                      (cons __tmp176621 '())))
                                   (__tmp176607
                                    (let ((__tmp176610
                                           (let ((__tmp176616
                                                  (let ((__tmp176619
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd171278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp176617
                 (let ((__tmp176618
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e171277_))))
                   (declare (not safe))
                   (cons __tmp176618 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp176619
                                                          __tmp176617)))
                                                 (__tmp176611
                                                  (let ((__tmp176612
                                                         (let ((__tmp176615
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl171279_ '())))
                       (__tmp176613
                        (let ((__tmp176614
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e171277_))))
                          (declare (not safe))
                          (cons __tmp176614 '()))))
                   (declare (not safe))
                   (cons __tmp176615 __tmp176613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp176612 '()))))
                                             (declare (not safe))
                                             (cons __tmp176616 __tmp176611)))
                                          (__tmp176608
                                           (let* ((_body171280171287_
                                                   _body171271_)
                                                  (_E171282171291_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body171280171287_)))
                                                  (_K171283171299_
                                                   (lambda (_tl171294_
                                                            _hd171295_)
                                                     (let ((__tmp176609
                                                            (lambda (_vars171297_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur171161_
                         _tl171294_
                         _vars171297_
                         _$tl171279_
                         _E171255_
                         _k171256_)))))
               (declare (not safe))
               (_recur171161_
                _hd171295_
                _vars171253_
                _$hd171278_
                _E171255_
                __tmp176609)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body171280171287_))
                                                 (let ((_hd171284171302_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body171280171287_)))
                                                       (_tl171285171304_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body171280171287_))))
                                                   (let* ((_hd171307_
                                                           _hd171284171302_)
                                                          (_tl171309_
                                                           _tl171285171304_))
                                                     (declare (not safe))
                                                     (_K171283171299_
                                                      _tl171309_
                                                      _hd171307_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E171282171291_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp176610
                                       __tmp176608))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp176620
                                __tmp176607))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp176625 __tmp176606 _E171255_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e171274_))
                        (let* ((_body171310171317_ _body171271_)
                               (_E171312171321_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body171310171317_)))
                               (_K171313171372_
                                (lambda (_tl171324_ _hd171325_)
                                  (let* ((_rlen171327_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen171162_ _tl171324_)))
                                         (_$target171329_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd171331_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl171333_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp171335_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e171337_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd171339_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl171341_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars171343_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars171163_ _hd171325_)))
                                         (_lvars171345_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars171343_)))
                                         (_tlvars171347_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars171343_)))
                                         (_linit171351_
                                          (map (lambda (_var171349_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars171345_)))
                                    (letrec ((_make-loop171354_
                                              (lambda (_vars171358_)
                                                (let ((__tmp176557
                                                       (let ((__tmp176558
                                                              (let ((__tmp176594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp171335_ '())))
                            (__tmp176559
                             (let ((__tmp176560
                                    (let ((__tmp176593
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd171331_ _lvars171345_)))
                                          (__tmp176561
                                           (let ((__tmp176592
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd171331_)))
                                                 (__tmp176570
                                                  (let ((__tmp176587
                                                         (let ((__tmp176588
                                                                (let ((__tmp176591
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e171337_ '())))
                              (__tmp176589
                               (let ((__tmp176590
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e170983_
                                         _$hd171331_))))
                                 (declare (not safe))
                                 (cons __tmp176590 '()))))
                          (declare (not safe))
                          (cons __tmp176591 __tmp176589))))
                   (declare (not safe))
                   (cons __tmp176588 '())))
                (__tmp176571
                 (let ((__tmp176577
                        (let ((__tmp176583
                               (let ((__tmp176586
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd171339_ '())))
                                     (__tmp176584
                                      (let ((__tmp176585
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e171337_))))
                                        (declare (not safe))
                                        (cons __tmp176585 '()))))
                                 (declare (not safe))
                                 (cons __tmp176586 __tmp176584)))
                              (__tmp176578
                               (let ((__tmp176579
                                      (let ((__tmp176582
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl171341_ '())))
                                            (__tmp176580
                                             (let ((__tmp176581
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e171337_))))
                                               (declare (not safe))
                                               (cons __tmp176581 '()))))
                                        (declare (not safe))
                                        (cons __tmp176582 __tmp176580))))
                                 (declare (not safe))
                                 (cons __tmp176579 '()))))
                          (declare (not safe))
                          (cons __tmp176583 __tmp176578)))
                       (__tmp176572
                        (let ((__tmp176573
                               (lambda (_hdvars171360_)
                                 (let ((__tmp176574
                                        (let ((__tmp176575
                                               (map (lambda (_svar171362_
                                                             _lvar171363_)
                                                      (let ((__tmp176576
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar171362_ _hdvars171360_ _BUG171160_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp176576 _lvar171363_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars171343_
                                                    _lvars171345_)))
                                          (declare (not safe))
                                          (cons _$lp-tl171341_ __tmp176575))))
                                   (declare (not safe))
                                   (cons _$lp171335_ __tmp176574)))))
                          (declare (not safe))
                          (_recur171161_
                           _hd171325_
                           '()
                           _$lp-hd171339_
                           _E171255_
                           __tmp176573))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp176577 __tmp176572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp176587
                                                     __tmp176571)))
                                                 (__tmp176562
                                                  (let ((__tmp176566
                                                         (map (lambda (_lvar171365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar171366_)
                        (let ((__tmp176569
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar171366_ '())))
                              (__tmp176567
                               (let ((__tmp176568
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar171365_))))
                                 (declare (not safe))
                                 (cons __tmp176568 '()))))
                          (declare (not safe))
                          (cons __tmp176569 __tmp176567)))
                      _lvars171345_
                      _tlvars171347_))
                (__tmp176563
                 (_k171256_
                  (let ((__tmp176564
                         (lambda (_svar171368_ _tlvar171369_ _r171370_)
                           (let ((__tmp176565
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar171368_ _tlvar171369_))))
                             (declare (not safe))
                             (cons __tmp176565 _r171370_)))))
                    (declare (not safe))
                    (foldl2 __tmp176564
                            _vars171358_
                            _svars171343_
                            _tlvars171347_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp176566
                                                     __tmp176563))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp176592
                                              __tmp176570
                                              __tmp176562))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp176593
                                       __tmp176561))))
                               (declare (not safe))
                               (cons __tmp176560 '()))))
                        (declare (not safe))
                        (cons __tmp176594 __tmp176559))))
                 (declare (not safe))
                 (cons __tmp176558 '())))
              (__tmp176555
               (let ((__tmp176556
                      (let ()
                        (declare (not safe))
                        (cons _$target171329_ _linit171351_))))
                 (declare (not safe))
                 (cons _$lp171335_ __tmp176556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp176557
                                                   __tmp176555)))))
                                      (let ((_body171356_
                                             (let ((__tmp176596
                                                    (let ((__tmp176597
                                                           (let ((__tmp176600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176601
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl171333_ '()))))
                            (declare (not safe))
                            (cons _$target171329_ __tmp176601)))
                         (__tmp176598
                          (let ((__tmp176599
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target171254_
                                    _rlen171327_))))
                            (declare (not safe))
                            (cons __tmp176599 '()))))
                     (declare (not safe))
                     (cons __tmp176600 __tmp176598))))
              (declare (not safe))
              (cons __tmp176597 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp176595
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur171161_
                                                       _tl171324_
                                                       _vars171253_
                                                       _$tl171333_
                                                       _E171255_
                                                       _make-loop171354_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp176596
                                                __tmp176595))))
                                        (let ((__tmp176605
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target171254_)))
                                              (__tmp176602
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen171327_))
                                                   _body171356_
                                                   (let ((__tmp176603
                                                          (let ((__tmp176604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target171254_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp176604 _rlen171327_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp176603
                                                      _body171356_
                                                      _E171255_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp176605
                                           __tmp176602
                                           _E171255_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body171310171317_))
                              (let ((_hd171314171375_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body171310171317_)))
                                    (_tl171315171377_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body171310171317_))))
                                (let* ((_hd171380_ _hd171314171375_)
                                       (_tl171382_ _tl171315171377_))
                                  (declare (not safe))
                                  (_K171313171372_ _tl171382_ _hd171380_)))
                              (let () (declare (not safe)) (_E171312171321_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e171274_))
                            (let ((__tmp176554
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target171254_)))
                                  (__tmp176553 (_k171256_ _vars171253_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp176554
                               __tmp176553
                               _E171255_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e171274_))
                                (let ((_$e171384_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp176552
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target171254_)))
                                        (__tmp176544
                                         (let ((__tmp176546
                                                (let ((__tmp176547
                                                       (let ((__tmp176551
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e171384_ '())))
                     (__tmp176548
                      (let ((__tmp176549
                             (let ((__tmp176550
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e170983_
                                       _target171254_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp176550))))
                        (declare (not safe))
                        (cons __tmp176549 '()))))
                 (declare (not safe))
                 (cons __tmp176551 __tmp176548))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp176547 '())))
                                               (__tmp176545
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur171161_
                                                   _body171271_
                                                   _vars171253_
                                                   _$e171384_
                                                   _E171255_
                                                   _k171256_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp176546
                                            __tmp176545))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp176552
                                     __tmp176544
                                     _E171255_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e171274_))
                                    (let ((_$e171386_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp176543
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target171254_)))
                                            (__tmp176535
                                             (let ((__tmp176537
                                                    (let ((__tmp176538
                                                           (let ((__tmp176542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e171386_ '())))
                         (__tmp176539
                          (let ((__tmp176540
                                 (let ((__tmp176541
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e170983_
                                           _target171254_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp176541))))
                            (declare (not safe))
                            (cons __tmp176540 '()))))
                     (declare (not safe))
                     (cons __tmp176542 __tmp176539))))
              (declare (not safe))
              (cons __tmp176538 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp176536
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur171161_
                                                       _body171271_
                                                       _vars171253_
                                                       _$e171386_
                                                       _E171255_
                                                       _k171256_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp176537
                                                __tmp176536))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp176543
                                         __tmp176535
                                         _E171255_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e171274_))
                                        (let ((_$e171388_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp176534
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target171254_)))
                                                (__tmp176525
                                                 (let ((__tmp176529
                                                        (let ((__tmp176530
                                                               (let ((__tmp176533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e171388_ '())))
                             (__tmp176531
                              (let ((__tmp176532
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target171254_))))
                                (declare (not safe))
                                (cons __tmp176532 '()))))
                         (declare (not safe))
                         (cons __tmp176533 __tmp176531))))
                  (declare (not safe))
                  (cons __tmp176530 '())))
               (__tmp176526
                (let ((__tmp176528
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e171388_ _body171271_)))
                      (__tmp176527 (_k171256_ _vars171253_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp176528 __tmp176527 _E171255_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp176529
                                                    __tmp176526))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp176534
                                             __tmp176525
                                             _E171255_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG171160_ _e171252_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e171257171264_))
                                      (let ((_hd171261171393_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e171257171264_)))
                                            (_tl171262171395_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e171257171264_))))
                                        (let* ((_tag171398_ _hd171261171393_)
                                               (_body171400_ _tl171262171395_))
                                          (declare (not safe))
                                          (_K171260171390_
                                           _body171400_
                                           _tag171398_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E171259171268_))))))
                             (_splice-rlen171162_
                              (lambda (_e171214_)
                                (let _lp171216_ ((_e171218_ _e171214_)
                                                 (_n171219_ '0))
                                  (let* ((_e171220171227_ _e171218_)
                                         (_E171222171231_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e171220171227_)))
                                         (_K171223171240_
                                          (lambda (_body171234_ _tag171235_)
                                            (let ((_$e171237_ _tag171235_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e171237_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx170981_
                                                     _where171153_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e171237_))
                                                      (let ((__tmp176633
                                                             (cdr _body171234_))
                                                            (__tmp176632
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n171219_ '1))))
                (declare (not safe))
                (_lp171216_ __tmp176633 __tmp176632))
              _n171219_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e171220171227_))
                                        (let ((_hd171224171243_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e171220171227_)))
                                              (_tl171225171245_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e171220171227_))))
                                          (let* ((_tag171248_ _hd171224171243_)
                                                 (_body171250_
                                                  _tl171225171245_))
                                            (declare (not safe))
                                            (_K171223171240_
                                             _body171250_
                                             _tag171248_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E171222171231_)))))))
                             (_splice-vars171163_
                              (lambda (_e171170_)
                                (let _recur171172_ ((_e171174_ _e171170_)
                                                    (_vars171175_ '()))
                                  (let* ((_e171176171183_ _e171174_)
                                         (_E171178171187_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e171176171183_)))
                                         (_K171179171202_
                                          (lambda (_body171190_ _tag171191_)
                                            (let ((_$e171193_ _tag171191_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e171193_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body171190_
                                                          _vars171175_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e171193_))
                  (let () (declare (not safe)) (eq? 'splice _$e171193_)))
              (let ((__tmp176636 (cdr _body171190_))
                    (__tmp176634
                     (let ((__tmp176635 (car _body171190_)))
                       (declare (not safe))
                       (_recur171172_ __tmp176635 _vars171175_))))
                (declare (not safe))
                (_recur171172_ __tmp176636 __tmp176634))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e171193_))
                      (let () (declare (not safe)) (eq? 'box _$e171193_)))
                  (let ()
                    (declare (not safe))
                    (_recur171172_ _body171190_ _vars171175_))
                  _vars171175_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e171176171183_))
                                        (let ((_hd171180171205_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e171176171183_)))
                                              (_tl171181171207_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e171176171183_))))
                                          (let* ((_tag171210_ _hd171180171205_)
                                                 (_body171212_
                                                  _tl171181171207_))
                                            (declare (not safe))
                                            (_K171179171202_
                                             _body171212_
                                             _tag171210_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E171178171187_)))))))
                             (_make-body171164_
                              (lambda (_vars171166_)
                                (let ((__tmp176637
                                       (map (lambda (_mvar171168_)
                                              (let ((__tmp176638
                                                     (car _mvar171168_)))
                                                (declare (not safe))
                                                (assgetq __tmp176638
                                                         _vars171166_
                                                         _BUG171160_)))
                                            _mvars171156_)))
                                  (declare (not safe))
                                  (cons _K171157_ __tmp176637)))))
                      (let ()
                        (declare (not safe))
                        (_recur171161_
                         _hd171155_
                         '()
                         _target171154_
                         _E171158_
                         _make-body171164_)))))
                 (_parse-clause170990_
                  (lambda (_hd171059_ _ids171060_)
                    (let _recur171062_ ((_e171064_ _hd171059_)
                                        (_vars171065_ '())
                                        (_depth171066_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e171064_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e171064_))
                              (values '(any) _vars171065_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e171064_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx170981_
                                     _hd171059_))
                                  (if (let ((__tmp176654
                                             (lambda (_id171068_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e171064_
                                                  _id171068_)))))
                                        (declare (not safe))
                                        (find __tmp176654 _ids171060_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e171064_))
                                              _vars171065_)
                                      (if (let ((__tmp176652
                                                 (lambda (_var171070_)
                                                   (let ((__tmp176653
                                                          (car _var171070_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e171064_
                                                      __tmp176653)))))
                                            (declare (not safe))
                                            (find __tmp176652 _vars171065_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx170981_
                                             _e171064_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e171064_))
                                                  (let ((__tmp176651
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e171064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth171066_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp176651
                                                          _vars171065_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e171064_))
                              (let* ((_e171071171078_ _e171064_)
                                     (_E171073171082_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e171071171078_))))
                                     (_E171072171143_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e171071171078_))
                                            (let ((_e171074171086_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e171071171078_))))
                                              (let ((_hd171075171089_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e171074171086_)))
                                                    (_tl171076171091_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e171074171086_))))
                                                (let* ((_hd171094_
                                                        _hd171075171089_)
                                                       (_rest171096_
                                                        _tl171076171091_))
                                                  (if '#t
                                                      (let* ((_make-pair171111_
                                                              (lambda (_tag171098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd171099_
                               _tl171100_)
                        (let* ((_hd-depth171102_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag171098_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth171066_ '1))
                                    _depth171066_))
                               (_g176646_
                                (let ()
                                  (declare (not safe))
                                  (_recur171062_
                                   _hd171099_
                                   _vars171065_
                                   _hd-depth171102_))))
                          (begin
                            (let ((_g176647_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g176646_)
                                         (##vector-length _g176646_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g176647_ 2)))
                                  (error "Context expects 2 values"
                                         _g176647_)))
                            (let ((_hd171104_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g176646_ 0)))
                                  (_vars171105_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g176646_ 1))))
                              (let ((_g176648_
                                     (let ()
                                       (declare (not safe))
                                       (_recur171062_
                                        _tl171100_
                                        _vars171105_
                                        _depth171066_))))
                                (begin
                                  (let ((_g176649_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g176648_)
                                               (##vector-length _g176648_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g176649_ 2)))
                                        (error "Context expects 2 values"
                                               _g176649_)))
                                  (let ((_tl171107_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g176648_ 0)))
                                        (_vars171108_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g176648_ 1))))
                                    (let ()
                                      (values (let ((__tmp176650
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd171104_
                                                             _tl171107_))))
                                                (declare (not safe))
                                                (cons _tag171098_ __tmp176650))
                                              _vars171108_))))))))))
                     (_e171112171119_ _rest171096_)
                     (_E171114171123_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair171111_ 'cons _hd171094_ _rest171096_))))
                     (_E171113171139_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e171112171119_))
                            (let ((_e171115171127_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e171112171119_))))
                              (let ((_hd171116171130_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e171115171127_)))
                                    (_tl171117171132_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e171115171127_))))
                                (let* ((_rest-hd171135_ _hd171116171130_)
                                       (_rest-tl171137_ _tl171117171132_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd171135_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair171111_
                                             'splice
                                             _hd171094_
                                             _rest-tl171137_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair171111_
                                             'cons
                                             _hd171094_
                                             _rest171096_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E171114171123_))))))
                            (let () (declare (not safe)) (_E171114171123_))))))
                (let () (declare (not safe)) (_E171113171139_)))
              (let () (declare (not safe)) (_E171073171082_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E171073171082_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E171072171143_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e171064_))
                                  (values '(null) _vars171065_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e171064_))
                                      (let ((_g176643_
                                             (let ((__tmp176645
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e171064_)))))
                                               (declare (not safe))
                                               (_recur171062_
                                                __tmp176645
                                                _vars171065_
                                                _depth171066_))))
                                        (begin
                                          (let ((_g176644_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g176643_)
                                                       (##vector-length
                                                        _g176643_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g176644_ 2)))
                                                (error "Context expects 2 values"
                                                       _g176644_)))
                                          (let ((_e171147_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g176643_ 0)))
                                                (_vars171148_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g176643_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e171147_))
                                                    _vars171148_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e171064_))
                                          (let ((_g176640_
                                                 (let ((__tmp176642
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e171064_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur171062_
                                                    __tmp176642
                                                    _vars171065_
                                                    _depth171066_))))
                                            (begin
                                              (let ((_g176641_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g176640_)
                                                           (##vector-length
                                                            _g176640_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g176641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g176641_)))
                                              (let ((_e171150_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g176640_
                                                        0)))
                                                    (_vars171151_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g176640_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e171150_))
                                                        _vars171151_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e171064_))
                                              (values (let ((__tmp176639
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e171064_))))
                (declare (not safe))
                (cons 'datum __tmp176639))
              _vars171065_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx170981_
                                                 _e171064_))))))))))))
          (let* ((_e170991171004_ _stx170981_)
                 (_E170993171008_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e170991171004_))))
                 (_E170992171055_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e170991171004_))
                        (let ((_e170994171012_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e170991171004_))))
                          (let ((_hd170995171015_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e170994171012_)))
                                (_tl170996171017_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e170994171012_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl170996171017_))
                                (let ((_e170997171020_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl170996171017_))))
                                  (let ((_hd170998171023_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e170997171020_)))
                                        (_tl170999171025_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e170997171020_))))
                                    (let ((_expr171028_ _hd170998171023_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl170999171025_))
                                          (let ((_e171000171030_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl170999171025_))))
                                            (let ((_hd171001171033_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e171000171030_)))
                                                  (_tl171002171035_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e171000171030_))))
                                              (let* ((_ids171038_
                                                      _hd171001171033_)
                                                     (_clauses171040_
                                                      _tl171002171035_))
                                                (if '#t
                                                    (if (let ((__tmp176672
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids171038_))))
                  (declare (not safe))
                  (not __tmp176672))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx170981_
                   _ids171038_))
                (if (let ((__tmp176671
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses171040_))))
                      (declare (not safe))
                      (not __tmp176671))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx170981_))
                    (let* ((_ids171042_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids171038_)))
                           (_clauses171044_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses171040_)))
                           (_clause-ids171046_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses171044_)))
                           (_E171048_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target171050_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first171052_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses171044_))
                                _E171048_
                                (car _clause-ids171046_))))
                      (let ((__tmp176656
                             (let ((__tmp176657
                                    (let ((__tmp176659
                                           (let ((__tmp176664
                                                  (let ((__tmp176665
                                                         (let ((__tmp176670
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E171048_ '())))
                       (__tmp176666
                        (let ((__tmp176667
                               (let ((__tmp176669
                                      (let ()
                                        (declare (not safe))
                                        (cons _target171050_ '())))
                                     (__tmp176668
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target171050_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp176669
                                  __tmp176668))))
                          (declare (not safe))
                          (cons __tmp176667 '()))))
                   (declare (not safe))
                   (cons __tmp176670 __tmp176666))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp176665 '())))
                                                 (__tmp176660
                                                  (let ((__tmp176663
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings170986_
                                                            _target171050_
                                                            _ids171042_
                                                            _clauses171044_
                                                            _clause-ids171046_
                                                            _E171048_)))
                                                        (__tmp176661
                                                         (let ((__tmp176662
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr171028_ '()))))
                   (declare (not safe))
                   (cons _first171052_ __tmp176662))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body170987_
                                                     __tmp176663
                                                     __tmp176661))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp176664
                                              __tmp176660)))
                                          (__tmp176658
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx170981_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp176659
                                       __tmp176658))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp176657)))
                            (__tmp176655
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx170981_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp176656 __tmp176655)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E170993171008_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E170993171008_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E170993171008_)))))
                        (let () (declare (not safe)) (_E170993171008_))))))
            (let () (declare (not safe)) (_E170992171055_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx171691_)
        (let* ((_identifier=?171693_ 'free-identifier=?)
               (_unwrap-e171695_ 'syntax-e)
               (_wrap-e171697_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx171691_
           _identifier=?171693_
           _unwrap-e171695_
           _wrap-e171697_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx171699_ _identifier=?171700_)
        (let* ((_unwrap-e171702_ 'syntax-e) (_wrap-e171704_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx171699_
           _identifier=?171700_
           _unwrap-e171702_
           _wrap-e171704_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx171706_ _identifier=?171707_ _unwrap-e171708_)
        (let ((_wrap-e171710_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx171706_
           _identifier=?171707_
           _unwrap-e171708_
           _wrap-e171710_))))
    (define gx#macro-expand-syntax-case
      (lambda _g176674_
        (let ((_g176673_ (let () (declare (not safe)) (##length _g176674_))))
          (cond ((let () (declare (not safe)) (##fx= _g176673_ 1))
                 (apply (lambda (_stx171691_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx171691_)))
                        _g176674_))
                ((let () (declare (not safe)) (##fx= _g176673_ 2))
                 (apply (lambda (_stx171699_ _identifier=?171700_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx171699_
                             _identifier=?171700_)))
                        _g176674_))
                ((let () (declare (not safe)) (##fx= _g176673_ 3))
                 (apply (lambda (_stx171706_
                                 _identifier=?171707_
                                 _unwrap-e171708_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx171706_
                             _identifier=?171707_
                             _unwrap-e171708_)))
                        _g176674_))
                ((let () (declare (not safe)) (##fx= _g176673_ 4))
                 (apply (lambda (_stx171712_
                                 _identifier=?171713_
                                 _unwrap-e171714_
                                 _wrap-e171715_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx171712_
                             _identifier=?171713_
                             _unwrap-e171714_
                             _wrap-e171715_)))
                        _g176674_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g176674_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx170978_)
        (if (let () (declare (not safe)) (gx#identifier? _stx170978_))
            (let ((__tmp176675
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx170978_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp176675 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd170936_ . _rest170937_)
        (let ((_len170939_ (length _hd170936_)))
          (let _lp170941_ ((_rest170943_ _rest170937_))
            (let* ((_rest170944170952_ _rest170943_)
                   (_else170946170960_ (lambda () '#!void))
                   (_K170948170966_
                    (lambda (_rest170963_ _hd170964_)
                      (if (fx= _len170939_ (length _hd170964_))
                          (let ()
                            (declare (not safe))
                            (_lp170941_ _rest170963_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd170964_))))))
              (if (let () (declare (not safe)) (##pair? _rest170944170952_))
                  (let ((_hd170949170969_
                         (let ()
                           (declare (not safe))
                           (##car _rest170944170952_)))
                        (_tl170950170971_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest170944170952_))))
                    (let* ((_hd170974_ _hd170949170969_)
                           (_rest170976_ _tl170950170971_))
                      (declare (not safe))
                      (_K170948170966_ _rest170976_ _hd170974_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx170894_ _n170895_)
        (let _lp170897_ ((_rest170899_ _stx170894_) (_r170900_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest170899_))
              (let* ((_g170901170908_
                      (let () (declare (not safe)) (gx#syntax-e _rest170899_)))
                     (_E170903170912_
                      (lambda ()
                        (error '"No clause matching" _g170901170908_)))
                     (_K170904170918_
                      (lambda (_rest170915_ _hd170916_)
                        (let ((__tmp176680
                               (let ()
                                 (declare (not safe))
                                 (cons _hd170916_ _r170900_))))
                          (declare (not safe))
                          (_lp170897_ _rest170915_ __tmp176680)))))
                (if (let () (declare (not safe)) (##pair? _g170901170908_))
                    (let ((_hd170905170921_
                           (let ()
                             (declare (not safe))
                             (##car _g170901170908_)))
                          (_tl170906170923_
                           (let ()
                             (declare (not safe))
                             (##cdr _g170901170908_))))
                      (let* ((_hd170926_ _hd170905170921_)
                             (_rest170928_ _tl170906170923_))
                        (declare (not safe))
                        (_K170904170918_ _rest170928_ _hd170926_)))
                    (let () (declare (not safe)) (_E170903170912_))))
              (let _lp170930_ ((_n170932_ _n170895_)
                               (_l170933_ _r170900_)
                               (_r170934_ _rest170899_))
                (if (let () (declare (not safe)) (null? _l170933_))
                    (values _l170933_ _r170934_)
                    (if (fxpositive? _n170932_)
                        (let ((__tmp176679
                               (let ()
                                 (declare (not safe))
                                 (fx- _n170932_ '1)))
                              (__tmp176678 (cdr _l170933_))
                              (__tmp176676
                               (let ((__tmp176677 (car _l170933_)))
                                 (declare (not safe))
                                 (cons __tmp176677 _r170934_))))
                          (declare (not safe))
                          (_lp170930_ __tmp176679 __tmp176678 __tmp176676))
                        (values (reverse _l170933_) _r170934_))))))))))
